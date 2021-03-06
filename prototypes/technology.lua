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
    prerequisites = {"braking-force-3"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 20
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
    prerequisites = {"speed-train"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"production-science-pack", 2}
      },
      time = 40
    },
    order = "b-f-i"
  }
})