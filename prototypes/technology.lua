local mk2_icons = require("prototypes.mk2-icons")

local space_age = mods["space-age"]

local speed_train_fuel_prerequisites = space_age and
  {"speed-train", "kovarex-enrichment-process", "electromagnetic-science-pack"} or
  {"speed-train", "kovarex-enrichment-process"}

local speed_train_fuel_ingredients = space_age and
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"electromagnetic-science-pack", 1}
} or
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1}
}

local speed_train_mk2_prerequisites = space_age and
  {"speed-train", "electromagnetic-science-pack", "metallurgic-science-pack"} or
  {"speed-train", "utility-science-pack"}

local speed_train_mk2_ingredients = space_age and
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"space-science-pack", 1},
  {"electromagnetic-science-pack", 1},
  {"metallurgic-science-pack", 1}
} or
{
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1}
}

data:extend(
{
  {
    type = "technology",
    name = "speed-train",
    icon_size = 128,
    icon = "__OS-Speed-Train__/graphics/icons/speed-train-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-train"
      },
      {
        type = "unlock-recipe",
        recipe = "speed-cargo-wagon"
      }
    },
    prerequisites = {"braking-force-3", "low-density-structure", "processing-unit", "electric-engine"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "b-f-h"
  },
  {
    type = "technology",
    name = "speed-train-fuel",
    icon_size = 128,
    icon = "__OS-Speed-Train__/graphics/icons/speed-train-fuel-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-train-fuel"
      }
    },
    prerequisites = speed_train_fuel_prerequisites,
    unit =
    {
      count = 500,
      ingredients = speed_train_fuel_ingredients,
      time = 30
    },
    order = "b-f-i"
  },
  {
    type = "technology",
    name = "speed-train-mk2",
    icons = mk2_icons("__OS-Speed-Train__/graphics/icons/speed-train-tech.png", 128, 256),
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-train-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "speed-cargo-wagon-mk2"
      }
    },
    prerequisites = speed_train_mk2_prerequisites,
    unit =
    {
      count = 1000,
      ingredients = speed_train_mk2_ingredients,
      time = 60
    },
    order = "b-f-j"
  }
})
