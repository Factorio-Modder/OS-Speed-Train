data:extend({

  {
    type = "item",
    name = "speed-train",
    icon = "__OS-Speed-Train__/graphics/icons/speed-train.png",
    icon_size = 64,
    subgroup = "train-transport",
    order = "c[rolling-stock]-a[locomotive]-b[speed-train]",
    place_result = "speed-train",
    stack_size = 1
	
  },
  {
    type = "item",
    name = "speed-cargo-wagon",
    icon = "__OS-Speed-Train__/graphics/icons/speed-cargo-wagon.png",
    icon_size = 64,
    subgroup = "train-transport",
    order = "c[rolling-stock]-b[cargo-wagon]-b[speed-cargo-wagon]",
    place_result = "speed-cargo-wagon",
    stack_size = 5
	
  },
  {
    type = "item",
    name = "speed-train-fuel",
    icon = "__OS-Speed-Train__/graphics/icons/speed-train-fuel.png",
    icon_size = 32,
    fuel_category = "chemical",
    fuel_value = "1.21GJ",
    fuel_acceleration_multiplier = 1.0,
    fuel_top_speed_multiplier = 1.35,
    fuel_glow_color = {r = 0.5, g = 0, b = 1},
    subgroup = "intermediate-product",
    order = "p[speed-train-fuel]",
    stack_size = 1
  },
  {
    type = "item",
    name = "speed-train-mk2",
    icon = "__OS-Speed-Train__/graphics/icons/speed-train-mk2.png",
    icon_size = 64,
    subgroup = "train-transport",
    order = "c[rolling-stock]-a[locomotive]-c[speed-train-mk2]",
    place_result = "speed-train-mk2",
    stack_size = 1
  },
  {
    type = "item",
    name = "speed-cargo-wagon-mk2",
    icon = "__OS-Speed-Train__/graphics/icons/speed-cargo-wagon-mk2.png",
    icon_size = 64,
    subgroup = "train-transport",
    order = "c[rolling-stock]-b[cargo-wagon]-c[speed-cargo-wagon-mk2]",
    place_result = "speed-cargo-wagon-mk2",
    stack_size = 5
  },

})