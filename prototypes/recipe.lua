data:extend({
  {
    type = "recipe",
    name = "speed-train",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "locomotive", amount = 1},
      {type = "item", name = "electronic-circuit", amount = 200},
      {type = "item", name = "advanced-circuit", amount = 50},
      {type = "item", name = "iron-gear-wheel", amount = 50},
      {type = "item", name = "plastic-bar", amount = 150}
    },
    energy_required = 60,
    results = {{type="item", name="speed-train", amount=1}}
  },
  {
    type = "recipe",
    name = "speed-cargo-wagon",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "cargo-wagon", amount = 1},
      {type = "item", name = "electronic-circuit", amount = 100},
      {type = "item", name = "advanced-circuit", amount = 20},
      {type = "item", name = "iron-gear-wheel", amount = 50},
      {type = "item", name = "plastic-bar", amount = 75}
    },
    energy_required = 15,
    results = {{type="item", name="speed-cargo-wagon", amount=1}}
  },
  {
    type = "recipe",
    name = "speed-train-fuel",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "rocket-fuel", amount = 2},
      {type = "item", name = "sulfur", amount = 3}
    },
    energy_required = 5,
    results = {{type="item", name="speed-train-fuel", amount=1}}
  }
})