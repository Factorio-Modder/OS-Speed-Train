data:extend({

  {
    type = "item",
    name = "speed-train",
    icon = "__OS-Speed-Train__/graphics/icons/speed-train.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "a[train-system]-f[diesel-locomotive]",
    place_result = "speed-train",
    stack_size = 5
	
  },
  {
    type = "item",
    name = "speed-train-fuel",
    icon = "__OS-Speed-Train__/graphics/icons/speed-train-fuel.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    fuel_category = "chemical",
    fuel_value = "0.86GJ",
    fuel_acceleration_multiplier = 0.9,
    fuel_top_speed_multiplier = 1.5,
    fuel_glow_color = {r = 0.5, g = 0, b = 1},
    subgroup = "intermediate-product",
    order = "p[speed-train-fuel]",
    stack_size = 5
  },

})