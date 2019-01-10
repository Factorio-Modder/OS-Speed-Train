data:extend(
{
  {
    type = "technology",
    name = "speed-train",
    icon_size = 128,
    icon = "__SO-Speed-Train__/graphics/icons/speed-train-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-train"
      }
    },
    prerequisites = {"braking-force-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"production-science-pack", 1}
      },
      time = 25
    },
    order = "b-f-h"
  }
})