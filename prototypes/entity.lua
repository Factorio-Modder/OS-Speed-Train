require ("__base__.prototypes.entity.rail-pictures")

local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

local rolling_stock_back_light = function()
  return
  {
    {
      minimum_darkness = 0.3,
      color = {1, 0.1, 0.05, 0},
      shift = {-0.6, 3.5},
      size = 2,
      intensity = 0.6,
      add_perspective = true
    },
    {
      minimum_darkness = 0.3,
      color = {1, 0.1, 0.05, 0},
      shift = {0.6, 3.5},
      size = 2,
      intensity = 0.6,
      add_perspective = true
    }
  }
end

local rolling_stock_stand_by_light = function()
  return
  {
    {
      minimum_darkness = 0.3,
      color = {0.05, 0.2, 1, 0},
      shift = {-0.6, -3.5},
      size = 2,
      intensity = 0.5,
      add_perspective = true
    },
    {
      minimum_darkness = 0.3,
      color = {0.05, 0.2, 1, 0},
      shift = {0.6, -3.5},
      size = 2,
      intensity = 0.5,
      add_perspective = true
    }
  }
end

local drive_over_tie = function()
  return
  {
    type = "play-sound",
    sound = sound_variations("__base__/sound/train-tie", 6, 0.4, { volume_multiplier("main-menu", 2.4), volume_multiplier("driving", 1.3) } )
  }
end

-- Space Age restricts the base rolling stock to planets with gravity
local rolling_stock_surface_conditions = mods["space-age"] and {{property = "gravity", min = 1}} or nil

local locomotive_reflection = function()
  return
  {
    pictures =
    {
      filename = "__base__/graphics/entity/locomotive/reflection/locomotive-reflection.png",
      priority = "extra-high",
      width = 20,
      height = 52,
      shift = util.by_pixel(0, 40),
      variation_count = 1,
      scale = 5
    },
    rotate = true,
    orientation_to_variation = false
  }
end

data:extend({
  {
    type = "locomotive",
    name = "speed-train",
    icon = "__OS-Speed-Train__/graphics/icons/speed-train.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "speed-train"},
    mined_sound = sounds.deconstruct_large(0.8),
    max_health = 1000,
    deliver_category = "vehicle",
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    factoriopedia_simulation = simulations.factoriopedia_locomotive,
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 1,
    alert_icon_shift = util.by_pixel(0, -24),
    surface_conditions = rolling_stock_surface_conditions,
    weight = 2000,
    max_speed = 1.5,
    max_power = "1000kW",
    reversing_power_modifier = 0.6,
    braking_force = 12,
    friction_force = 0.50,
    vertical_selection_shift = -0.5,
    air_resistance = 0.0065, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 10,
    icons_positioning =
    {
      {inventory_index = defines.inventory.fuel, shift = {0, 0.3}, max_icons_per_row = 3},
    },
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 30
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 40,
        percent = 30
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 20
      },
      {
        type = "acid",
        decrease = 5,
        percent = 10
      }
    },
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.5, 0.5},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1
        }
      }
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__OS-Speed-Train__/graphics/speed-train/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 0.9, b = 1}
      },
      {
        type = "oriented",
        minimum_darkness = 0.0,
        picture =
        {
          filename = "__OS-Speed-Train__/graphics/speed-train/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 0.9, b = 1}
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0, g = 0, b = 0, a = 1},
    default_copy_color_from_train_stop = true,
    pictures =
    {
      rotated =
      {
        layers =
        {
          util.sprite_load("__OS-Speed-Train__/graphics/speed-train/locomotive",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train"
            }
          ),
          util.sprite_load("__OS-Speed-Train__/graphics/speed-train/locomotive-mask",
            {
              dice = 4,
              priority = "very-low",
              flags = { "mask" },
              apply_runtime_tint = true,
              tint_as_overlay = true,
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train"
            }
          ),
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive-shadow",
            {
              dice = 4,
              priority = "very-low",
              flags = { "shadow" },
              draw_as_shadow = true,
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train"
            }
          )
        }
      },
    },
    front_light_pictures =
    {
      rotated =
      {
        layers =
        {
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive-lights",
            {
              dice = 4,
              priority = "very-low",
              blend_mode = "additive",
              draw_as_light = true,
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5
            }
          )
        }
      },
    },
    minimap_representation =
    {
      filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    selected_minimap_representation =
    {
      filename = "__base__/graphics/entity/locomotive/minimap-representation/locomotive-selected-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    wheels = standard_train_wheels,
    stop_trigger =
    {
      -- left side
      {
        type = "create-trivial-smoke",
        repeat_count = 250,
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
      },
      -- right side
      {
        type = "create-trivial-smoke",
        repeat_count = 250,
        smoke_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
      },
      {
        type = "play-sound",
        sound = sounds.train_brakes
      },
      {
        type = "play-sound",
        sound = sounds.train_brake_screech
      }
    },
    drive_over_tie_trigger = drive_over_tie(),
    drive_over_tie_trigger_minimal_speed = 0.5,
    tie_distance = 50,
    impact_category = "metal-large",
    working_sound =
    {
      main_sounds =
      {
        {
          sound =
          {
            filename = "__base__/sound/train-engine-driving.ogg",
            volume = 0.9,
            modifiers =
            {
              volume_multiplier("main-menu", 1.8),
              volume_multiplier("driving", 0.7),
              volume_multiplier("tips-and-tricks", 0.8),
              volume_multiplier("elevation", 0.5)
            },
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers =
          {
            multiplier = 1.5,
            offset = 1.0,
          },
          match_speed_to_activity = true,
          activity_to_speed_modifiers =
          {
            multiplier = 0.6,
            minimum = 1.0,
            maximum = 1.15,
            offset = 0.2,
          }
        },
        {
          sound =
          {
            filename = "__base__/sound/train-engine.ogg",
            volume = 0.45,
            modifiers =
            {
              volume_multiplier("main-menu", 1.8),
              volume_multiplier("driving", 0.9),
              volume_multiplier("tips-and-tricks", 0.8)
            },
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers =
          {
            multiplier = 1.75,
            offset = 1.7,
            inverted = true
          },
        },
        {
          sound =
          {
            filename = "__base__/sound/train-wheels.ogg",
            volume = 1.0,
            modifiers =
            {
              volume_multiplier("main-menu", 2.0),
              volume_multiplier("driving", 0.35),
              volume_multiplier("elevation", 0.5)
            },
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers =
          {
            multiplier = 1.7,
            maximum = 1.0,
            offset = 1.1,
          },
          match_speed_to_activity = true,
          activity_to_speed_modifiers =
          {
            multiplier = 0.6,
            minimum = 1.0,
            maximum = 1.2,
            offset = 0.2,
          },
        },
      },
      max_sounds_per_type = 2,
      activate_sound = { filename = "__base__/sound/train-engine-start.ogg", volume = 0.35 },
      deactivate_sound = { filename = "__base__/sound/train-engine-stop.ogg", volume = 0.35 },
    },
    open_sound = { filename = "__base__/sound/train-door-open.ogg", volume=0.5 },
    close_sound = { filename = "__base__/sound/train-door-close.ogg", volume = 0.4 },
    water_reflection = locomotive_reflection(),
    allow_remote_driving = true
  },
  {
    type = "cargo-wagon",
    name = "speed-cargo-wagon",
    icon = "__OS-Speed-Train__/graphics/icons/speed-cargo-wagon.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 40,
    minable = {mining_time = 1, result = "speed-cargo-wagon"},
    mined_sound = sounds.deconstruct_large(0.8),
    max_health = 600,
    deliver_category = "vehicle",
    corpse = "cargo-wagon-remnants",
    dying_explosion = "cargo-wagon-explosion",
    factoriopedia_simulation = simulations.factoriopedia_cargo_wagon,
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = hit_effects.entity(),
    vertical_selection_shift = -0.796875,
    surface_conditions = rolling_stock_surface_conditions,
    weight = 1000,
    max_speed = 1.75,
    braking_force = 3,
    friction_force = 0.50,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 20,
        percent = 40
      },
      {
        type = "impact",
        decrease = 60,
        percent = 70
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      rotated =
      {
        layers =
        {
          util.sprite_load("__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              back_equals_front = true,
              direction_count = 128,
              scale = 0.5,
              usage = "train"
            }
          ),
          util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-mask",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              back_equals_front = true,
              flags = { "mask" },
              apply_runtime_tint = true,
              tint_as_overlay = true,
              direction_count = 128,
              scale = 0.5,
              usage = "train"
            }
          ),
          util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              back_equals_front = true,
              draw_as_shadow = true,
              direction_count = 128,
              scale = 0.5,
              usage = "train"
            }
          )
        }
      }
    },
    horizontal_doors =
    {
      layers =
      {
        util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal",
          {
            frame_count = 8,
            scale = 0.5,
            usage = "train"
          }
        ),
        util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-mask",
          {
            apply_runtime_tint = true,
            tint_as_overlay = true,
            flags = { "mask" },
            frame_count = 8,
            scale = 0.5,
            usage = "train"
          }
        )
      }
    },
    vertical_doors =
    {
      layers =
      {
        util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical",
          {
            frame_count = 8,
            scale = 0.5,
            usage = "train"
          }
        ),
        util.sprite_load("__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-mask",
          {
            apply_runtime_tint = true,
            tint_as_overlay = true,
            flags = { "mask" },
            frame_count = 8,
            scale = 0.5,
            usage = "train"
          }
        )
      }
    },
    minimap_representation =
    {
      filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    selected_minimap_representation =
    {
      filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-selected-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    wheels = standard_train_wheels,
    drive_over_tie_trigger = drive_over_tie(),
    drive_over_tie_trigger_minimal_speed = 0.5,
    tie_distance = 50,
    working_sound = sounds.train_wagon_wheels,
    crash_trigger = crash_trigger(),
    open_sound = sounds.cargo_wagon_open,
    close_sound = sounds.cargo_wagon_close,
    impact_category = "metal-large",
    water_reflection = locomotive_reflection(),
    door_opening_sound =
    {
      sound =
      {
        filename = "__base__/sound/cargo-wagon/cargo-wagon-opening-loop.ogg",
        volume = 0.5,
        aggregation = {max_count = 2, remove = true, count_already_playing = true}
      },
      stopped_sound =
      {
        filename = "__base__/sound/cargo-wagon/cargo-wagon-opened.ogg",
        volume = 0.35,
        aggregation = {max_count = 2, remove = true, count_already_playing = true}
      }
    },
    door_closing_sound =
    {
      sound =
      {
        filename = "__base__/sound/cargo-wagon/cargo-wagon-closing-loop.ogg",
        volume = 0.5,
        aggregation = {max_count = 2, remove = true, count_already_playing = true}
      },
      stopped_sound =
      {
        filename = "__base__/sound/cargo-wagon/cargo-wagon-closed.ogg",
        volume = 0.35,
        aggregation = {max_count = 2, remove = true, count_already_playing = true}
      }
    }
  }
})