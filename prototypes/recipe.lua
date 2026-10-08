local space_age = mods["space-age"]

local speed_train_fuel_ingredients = space_age and
{
  {type = "item", name = "nuclear-fuel", amount = 1},
  {type = "item", name = "low-density-structure", amount = 2},
  {type = "item", name = "supercapacitor", amount = 1}
} or
{
  {type = "item", name = "nuclear-fuel", amount = 1},
  {type = "item", name = "low-density-structure", amount = 2}
}

local speed_train_mk2_ingredients = space_age and
{
  {type = "item", name = "speed-train", amount = 1},
  {type = "item", name = "supercapacitor", amount = 30},
  {type = "item", name = "tungsten-carbide", amount = 30},
  {type = "item", name = "processing-unit", amount = 20}
} or
{
  {type = "item", name = "speed-train", amount = 1},
  {type = "item", name = "electric-engine-unit", amount = 30},
  {type = "item", name = "processing-unit", amount = 30},
  {type = "item", name = "low-density-structure", amount = 30}
}

local speed_cargo_wagon_mk2_ingredients = space_age and
{
  {type = "item", name = "speed-cargo-wagon", amount = 1},
  {type = "item", name = "tungsten-carbide", amount = 20},
  {type = "item", name = "holmium-plate", amount = 10}
} or
{
  {type = "item", name = "speed-cargo-wagon", amount = 1},
  {type = "item", name = "low-density-structure", amount = 20},
  {type = "item", name = "processing-unit", amount = 10}
}

data:extend({
  {
    type = "recipe",
    name = "speed-train",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "locomotive", amount = 1},
      {type = "item", name = "electric-engine-unit", amount = 20},
      {type = "item", name = "processing-unit", amount = 10},
      {type = "item", name = "low-density-structure", amount = 20},
      {type = "item", name = "steel-plate", amount = 50}
    },
    energy_required = 30,
    results = {{type="item", name="speed-train", amount=1}}
  },
  {
    type = "recipe",
    name = "speed-cargo-wagon",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "cargo-wagon", amount = 1},
      {type = "item", name = "low-density-structure", amount = 10},
      {type = "item", name = "advanced-circuit", amount = 10}
    },
    energy_required = 5,
    results = {{type="item", name="speed-cargo-wagon", amount=1}}
  },
  {
    type = "recipe",
    name = "speed-train-fuel",
    enabled = false,
    ingredients = speed_train_fuel_ingredients,
    energy_required = 30,
    results = {{type="item", name="speed-train-fuel", amount=1}}
  },
  {
    type = "recipe",
    name = "speed-train-mk2",
    enabled = false,
    ingredients = speed_train_mk2_ingredients,
    energy_required = 30,
    results = {{type="item", name="speed-train-mk2", amount=1}}
  },
  {
    type = "recipe",
    name = "speed-cargo-wagon-mk2",
    enabled = false,
    ingredients = speed_cargo_wagon_mk2_ingredients,
    energy_required = 10,
    results = {{type="item", name="speed-cargo-wagon-mk2", amount=1}}
  }
})
