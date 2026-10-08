-- Mk2 uses its own body sprites (a blue recolor of the gold Mk1); mask, shadow and other layers are shared.
local recolor_body = function(pictures, from, to)
  local result = util.table.deepcopy(pictures)
  local body = result.rotated.layers[1]
  local filenames = {}
  for k, filename in pairs(body.filenames) do
    filenames[k] = to .. filename:sub(#from + 1)
  end
  body.filenames = filenames
  return result
end

local mk2_from = function(prototype, name, graphics, overrides)
  local mk2 = util.merge({prototype, overrides})
  mk2.name = name
  mk2.icon = graphics.icon
  mk2.pictures = recolor_body(prototype.pictures, graphics.from, graphics.to)
  mk2.minable = {mining_time = prototype.minable.mining_time, result = name}
  return mk2
end

data:extend({
  mk2_from(data.raw["locomotive"]["speed-train"], "speed-train-mk2",
  {
    icon = "__OS-Speed-Train__/graphics/icons/speed-train-mk2.png",
    from = "__OS-Speed-Train__/graphics/speed-train/locomotive",
    to = "__OS-Speed-Train__/graphics/speed-train/locomotive-mk2"
  },
  {
    max_health = 1500,
    weight = 1600,
    max_speed = 2.0,
    max_power = "2000kW",
    braking_force = 22,
    friction_force = 0.35,
    air_resistance = 0.005,
    color = {r = 1, g = 0.45, b = 0, a = 1}
  }),
  mk2_from(data.raw["cargo-wagon"]["speed-cargo-wagon"], "speed-cargo-wagon-mk2",
  {
    icon = "__OS-Speed-Train__/graphics/icons/speed-cargo-wagon-mk2.png",
    from = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon",
    to = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-mk2"
  },
  {
    inventory_size = 50,
    max_health = 750,
    weight = 900,
    max_speed = 2.0,
    braking_force = 5,
    friction_force = 0.40,
    color = {r = 0.75, g = 0.78, b = 0.82, a = 0.5}
  })
})
