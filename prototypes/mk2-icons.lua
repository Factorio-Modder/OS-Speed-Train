-- Mk2 reuses the Mk1 graphics, so its icons get a "2" badge in the bottom right corner.
-- Shift and scale are relative to the overall icon, which is expected_size / 2 pixels wide.
local badge = "__base__/graphics/icons/signal/signal_2.png"
local badge_size = 64

return function(icon, icon_size, expected_size)
  local overall = expected_size / 2
  return
  {
    {icon = icon, icon_size = icon_size},
    {
      icon = badge,
      icon_size = badge_size,
      scale = overall / 2 / badge_size,
      shift = {overall / 4, overall / 4}
    }
  }
end
