data:extend({
    {
    type = "locomotive",
    name = "speed-train",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "speed-train"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 3000,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    drawing_box = {{-1, -4}, {1, 3}},
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 1500,
    max_speed = 1.6,
    max_power = "2000kW",
    reversing_power_modifier = 0.6,
    braking_force = 25,
    friction_force = 0.25,
    vertical_selection_shift = -0.5,
    air_resistance = 0.0050,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 10,
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
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.8,
      fuel_inventory_size = 5,
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
    pictures =
    {
      layers =
      {
        {
          slice = 4,
          priority = "very-low",
          width = 238,
          height = 230,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-01.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-02.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-03.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-04.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-05.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-06.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-07.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5}
        },
        {
          priority = "very-low",
          flags = { "mask" },
          slice = 4,
          width = 236,
          height = 228,
          direction_count = 256,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-01.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-02.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-03.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-04.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-05.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-06.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-07.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-mask-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          apply_runtime_tint = true
        },
        {
          priority = "very-low",
          slice = 4,
          flags = { "shadow" },
          width = 253,
          height = 212,
          direction_count = 256,
          draw_as_shadow = true,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-01.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-02.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-03.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-04.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-05.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-06.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-07.png",
            "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-shadow-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {1, 0.3}
        }
      }
    },
    minimap_representation =
    {
      filename = "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    selected_minimap_representation =
    {
      filename = "__OS-Speed-Train__/graphics/speed-train/diesel-locomotive-selected-minimap-representation.png",
      flags = {"icon"},
      size = {20, 40},
      scale = 0.5
    },
    wheels = standard_train_wheels,
    rail_category = "regular",
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
        sound =
        {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 1.2
          }
        }
      }
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
  {
    type = "cargo-wagon",
    name = "speed-cargo-wagon",
    icon = "__OS-Speed-Train__/graphics/icons/speed-cargo-wagon.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 50,
    minable = {mining_time = 1, result = "speed-cargo-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    vertical_selection_shift = -0.796875,
    weight = 800,
    max_speed = 2,
    braking_force = 5,
    friction_force = 0.40,
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
      layers =
      {
        {
          priority = "very-low",
          slice = 4,
          width = 222,
          height = 205,
          back_equals_front = true,
          direction_count = 128,
          allow_low_quality_rotation = true,
          filenames =
          {
            "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-1.png",
            "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-2.png",
            "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-3.png",
            "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0, -0.796875}
        }
      }
    },horizontal_doors =
    {
      layers =
      {
        {
          filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-door-horizontal-end.png",
          line_length = 1,
          width = 220,
          height = 33,
          frame_count = 8,
          shift = {0, -0.921875}
        },
        {
          filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-door-horizontal-side.png",
          line_length = 1,
          width = 186,
          height = 38,
          frame_count = 8,
          shift = {0, -0.78125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          width = 182,
          height = 35,
          line_length = 1,
          frame_count = 8,
          shift = {0, -0.828125},
          apply_runtime_tint = true
        },
        {
          filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-door-horizontal-top.png",
          line_length = 1,
          width = 184,
          height = 28,
          frame_count = 8,
          shift = {0.015625, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          width = 185,
          height = 23,
          frame_count = 8,
          line_length = 1,
          shift = {0.015625, -1.17188},
          apply_runtime_tint = true
        }
      }
    },
    vertical_doors =
    {
      layers =
      {
        {
          filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-door-vertical-end.png",
          line_length = 8,
          width = 30,
          height = 23,
          frame_count = 8,
          shift = util.by_pixel(0, 62.5)
        },
        {
          filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-door-vertical-side.png",
          line_length = 8,
          width = 67,
          height = 169,
          frame_count = 8,
          shift = {0.015625, -1.01563}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          line_length = 8,
          width = 56,
          height = 163,
          frame_count = 8,
          shift = {0, -1.10938},
          apply_runtime_tint = true
        },
        {
          filename = "__OS-Speed-Train__/graphics/speed-cargo-wagon/speed-cargo-wagon-door-vertical-top.png",
          line_length = 8,
          width = 32,
          height = 168,
          frame_count = 8,
          shift = {0, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          line_length = 8,
          width = 32,
          height = 166,
          frame_count = 8,
          shift = {0, -1.15625},
          apply_runtime_tint = true
        }
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
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.6
      },
      match_volume_to_activity = true
    },
    crash_trigger = crash_trigger(),
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  }
})