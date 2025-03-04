--[[
    __        __       _
    \ \      / /__ ___| |_ ___ _ __ _ __ ___
     \ \ /\ / / _ \_  / __/ _ \ '__| '_ ` _ \
      \ V  V /  __// /| ||  __/ |  | | | | | |
       \_/\_/ \___/___|\__\___|_|  |_| |_| |_|
    
]]

local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Color scheme
config.color_scheme = 'Catppuccin Mocha'

-- Font
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 11
config.line_height = 1

-- Appereance
config.hide_tab_bar_if_only_one_tab = false
config.window_background_opacity = 0.9
config.use_fancy_tab_bar = false

config.keys = {

    -- Split horizontally (CTRL+SHIFT+H)
    {key="h", mods="CTRL|SHIFT", action=wezterm.action.SplitHorizontal{domain="CurrentPaneDomain"}},
    
    -- Split vertically (CTRL+SHIFT+V)
    {key="g", mods="CTRL|SHIFT", action=wezterm.action.SplitVertical{domain="CurrentPaneDomain"}},

    -- Kill pane (CTRL+SHIFT+W)
    {key="w", mods="CTRL|SHIFT", action=wezterm.action.CloseCurrentPane{confirm=false}},


    -- Switch between panes using ALT + Arrow Keys
    {key="LeftArrow", mods="ALT", action=wezterm.action.ActivatePaneDirection "Left"},
    {key="RightArrow", mods="ALT", action=wezterm.action.ActivatePaneDirection "Right"},
    {key="UpArrow", mods="ALT", action=wezterm.action.ActivatePaneDirection "Up"},
    {key="DownArrow", mods="ALT", action=wezterm.action.ActivatePaneDirection "Down"},
}


return config