-- InformaTron pages. Stats are read from the prototypes at runtime, so the pages
-- stay correct when the prototypes change or another mod adjusts them.

local interface_name = "OS-Speed-Train"

local locomotives = {"locomotive", "speed-train", "speed-train-mk2"}
local cargo_wagons = {"cargo-wagon", "speed-cargo-wagon", "speed-cargo-wagon-mk2"}
local fuels = {"rocket-fuel", "nuclear-fuel", "speed-train-fuel"}
local technologies = {"speed-train", "speed-train-fuel", "speed-train-mk2"}

local ticks_per_second = 60

local text = function(key, ...)
  return {interface_name .. "." .. key, ...}
end

local km_per_hour = function(tiles_per_tick)
  return string.format("%.0f km/h", tiles_per_tick * ticks_per_second * 3.6)
end

local number = function(value)
  return string.format("%g", value)
end

local percent = function(multiplier)
  return string.format("%.0f%%", multiplier * 100)
end

local existing = function(names, prototype_table)
  local result = {}
  for _, name in pairs(names) do
    if prototype_table[name] then
      table.insert(result, prototype_table[name])
    end
  end
  return result
end

local add_heading = function(element, caption)
  element.add{type = "label", caption = caption, style = "heading_1_label"}
end

local add_text = function(element, caption)
  element.add{type = "label", caption = caption}
end

-- rows: list of {caption, function(prototype) -> string}
local add_stat_table = function(element, prototype_list, rich_text_type, rows)
  local stat_table = element.add{
    type = "table",
    column_count = #prototype_list + 1,
    style = "bordered_table"
  }
  stat_table.style.horizontally_stretchable = true
  stat_table.add{type = "label", caption = ""}
  for _, prototype in pairs(prototype_list) do
    stat_table.add{
      type = "label",
      caption = {"", "[" .. rich_text_type .. "=" .. prototype.name .. "] ", prototype.localised_name},
      style = "caption_label"
    }
  end
  for _, row in pairs(rows) do
    stat_table.add{type = "label", caption = row[1]}
    for _, prototype in pairs(prototype_list) do
      stat_table.add{type = "label", caption = row[2](prototype)}
    end
  end
end

local rich_text_list = function(rich_text_type, names)
  local parts = {}
  for _, name in pairs(names) do
    table.insert(parts, "[" .. rich_text_type .. "=" .. name .. "]")
  end
  return #parts > 0 and table.concat(parts, " ") or "-"
end

local pages = {}

pages[interface_name] = function(element)
  add_text(element, text("page_main_intro"))
  add_heading(element, text("heading_upgrading"))
  add_text(element, text("page_main_upgrading"))
end

pages.rolling_stock = function(element)
  local entities = prototypes.entity
  add_heading(element, text("heading_locomotives"))
  add_stat_table(element, existing(locomotives, entities), "entity", {
    {text("stat_top_speed"), function(p) return km_per_hour(p.speed) end},
    {text("stat_power"), function(p) return string.format("%.0f kW", p.get_max_energy_usage() * ticks_per_second / 1000) end},
    {text("stat_weight"), function(p) return number(p.weight) end},
    {text("stat_braking_force"), function(p) return number(p.braking_force) end},
    {text("stat_health"), function(p) return number(p.get_max_health()) end}
  })
  add_heading(element, text("heading_cargo_wagons"))
  add_stat_table(element, existing(cargo_wagons, entities), "entity", {
    {text("stat_slots"), function(p) return number(p.get_inventory_size(defines.inventory.cargo_wagon)) end},
    {text("stat_top_speed"), function(p) return km_per_hour(p.speed) end},
    {text("stat_weight"), function(p) return number(p.weight) end},
    {text("stat_braking_force"), function(p) return number(p.braking_force) end},
    {text("stat_health"), function(p) return number(p.get_max_health()) end}
  })
  add_heading(element, text("heading_mixing"))
  add_text(element, text("page_rolling_stock_mixing"))
end

pages.fuel = function(element)
  add_text(element, text("page_fuel_intro"))
  add_stat_table(element, existing(fuels, prototypes.item), "item", {
    {text("stat_fuel_value"), function(p) return string.format("%g MJ", p.fuel_value / 1000000) end},
    {text("stat_acceleration"), function(p) return percent(p.fuel_acceleration_multiplier) end},
    {text("stat_fuel_top_speed"), function(p) return percent(p.fuel_top_speed_multiplier) end},
    {text("stat_stack_size"), function(p) return number(p.stack_size) end}
  })
end

local add_technology = function(element, technology)
  local prerequisites = {}
  for name in pairs(technology.prerequisites) do
    table.insert(prerequisites, name)
  end
  local unlocks = {}
  for _, effect in pairs(technology.effects) do
    if effect.type == "unlock-recipe" then
      table.insert(unlocks, effect.recipe)
    end
  end
  local cost = {}
  for _, ingredient in pairs(technology.research_unit_ingredients) do
    table.insert(cost, ingredient.name)
  end
  add_heading(element, {"", "[technology=" .. technology.name .. "] ", technology.localised_name})
  add_text(element, text("technology_details",
    rich_text_list("technology", prerequisites),
    rich_text_list("recipe", unlocks),
    number(technology.research_unit_count),
    rich_text_list("item", cost)
  ))
end

pages.research = function(element)
  add_text(element, text("page_research_intro"))
  for _, technology in pairs(existing(technologies, prototypes.technology)) do
    add_technology(element, technology)
  end
end

remote.add_interface(interface_name, {
  informatron_menu = function(data)
    return {rolling_stock = 1, fuel = 1, research = 1}
  end,
  informatron_page_content = function(data)
    local page = pages[data.page_name]
    if page then
      page(data.element)
    end
  end
})
