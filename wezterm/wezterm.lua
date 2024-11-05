-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Customize the tab title to add padding using non-breaking spaces
wezterm.on("format-tab-title", function(tab)
  local padding = "\u{00A0}\u{00A0}"  -- Two non-breaking spaces
  local title = padding .. tab.active_pane.title .. padding  -- Adds padding around the tab title
  return title
end)

-- Customize the tab title to show the updated title from Neovim and Zsh
wezterm.on("format-tab-title", function(tab)
  local title = tab.active_pane.title  -- This will use the title set by Neovim or Zsh

  if tab.active_pane.foreground_process_name:find("nvim") then
    -- Neovim title, which now includes the filename
    return title
  elseif tab.active_pane.foreground_process_name:find("zsh") then
    -- Zsh title, which now includes the current directory
    return title
  else
    -- Default title for other programs
    return title
  end
end)

-- This is where you actually apply your config choices
config.font = wezterm.font 'MesloLGL Nerd Font Mono'
config.font_size = 14
config.colors = {
  -- The default text color
  foreground = 'silver',
  -- The default background color
  background = '#1C1C1C',
  -- Tab bar colors
  tab_bar = {
    background = "#232026",  -- Background color of the tab bar

    active_tab = {
      bg_color = "#413c59",  -- Background color of the active tab
      fg_color = "#8f8bfc",  -- Text color of the active tab
      italic = false,
      intensity = "Bold",
    },

    inactive_tab = {
      bg_color = "#201d24",  -- Background color of inactive tabs
      fg_color = "#716f78",  -- Text color of inactive tabs
    },

    inactive_tab_hover = {
      bg_color = "#514c6a",  -- Background color when hovering over inactive tabs
      fg_color = "#c4cccf",  -- Text color when hovering over inactive tabs
      italic = true,         -- Optional: Make the text italic when hovering
    },

    new_tab = {
      bg_color = "#26232b",  -- Background color of the new tab button
      fg_color = "#716f78",  -- Text color of the new tab button
    },

    new_tab_hover = {
      bg_color = "#514c6a",  -- Background color when hovering over the new tab button
      fg_color = "#cfcfe3",  -- Text color when hovering over the new tab button
      italic = true,         -- Optional: Make the text italic when hovering
    },
  }
}

-- Custom key bindings
config.keys = {
  --default navigate the panes
  {key="LeftArrow", mods="CTRL|SHIFT", action=wezterm.action.ActivatePaneDirection("Left")},
  {key="RightArrow", mods="CTRL|SHIFT", action=wezterm.action.ActivatePaneDirection("Right")},
  {key="UpArrow", mods="CTRL|SHIFT", action=wezterm.action.ActivatePaneDirection("Up")},
  {key="DownArrow", mods="CTRL|SHIFT", action=wezterm.action.ActivatePaneDirection("Down")},
  -- split panes
  {key="v", mods="ALT|SHIFT", action=wezterm.action.SplitHorizontal{domain="CurrentPaneDomain"}},
  {key="h", mods="ALT|SHIFT", action=wezterm.action.SplitVertical{domain="CurrentPaneDomain"}},
  --exit current pane
  {key="X", mods="ALT|SHIFT", action=wezterm.action.CloseCurrentPane{confirm=true}},
  --toggle fullscreen
  {key = "f", mods = "CTRL|CMD", action = wezterm.action.ToggleFullScreen,},
}

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_max_width = 45
config.show_tab_index_in_tab_bar = false
config.switch_to_last_active_tab_when_closing_tab = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.88
config.macos_window_background_blur = 70
config.window_background_image = wezterm.home_dir ..'/.config/wezterm//img/023.jpg'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.1,
  saturation = 1.0,
  hue = 1.0
}

config.color_scheme = 'nord'

-- and finally, return the configuration to wezterm
return config
