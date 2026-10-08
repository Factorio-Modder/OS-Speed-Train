local mk2_icons = require("prototypes.mk2-icons")

local mk2_from = function(prototype, name, overrides)
  local mk2 = util.merge({prototype, overrides})
  mk2.name = name
  mk2.icon = nil
  mk2.icon_size = nil
  mk2.icons = mk2_icons(prototype.icon, prototype.icon_size, 64)
  mk2.minable = {mining_time = prototype.minable.mining_time, result = name}
  return mk2
end

data:extend({
  mk2_from(data.raw["locomotive"]["speed-train"], "speed-train-mk2",
  {
    max_health = 1500,
    weight = 1600,
    max_speed = 2.0,
    max_power = "2000kW",
    braking_force = 22,
    friction_force = 0.35,
    air_resistance = 0.005,
    color = {r = 0.1, g = 0.3, b = 0.8, a = 1}
  }),
  mk2_from(data.raw["cargo-wagon"]["speed-cargo-wagon"], "speed-cargo-wagon-mk2",
  {
    inventory_size = 50,
    max_health = 750,
    weight = 900,
    max_speed = 2.0,
    braking_force = 5,
    friction_force = 0.40,
    color = {r = 0.1, g = 0.3, b = 0.8, a = 0.5}
  })
})
