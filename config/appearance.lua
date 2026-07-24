local Utils = require "utils"
local color = Utils.fn.color

---@diagnostic disable-next-line: undefined-field
local G = require("wezterm").GLOBAL

local Config = {}

Config.color_schemes = color.get_schemes()
Config.color_scheme = color.get_scheme()

local theme = Config.color_schemes[Config.color_scheme]

-- 🔥 Adiciona cores personalizadas (mais escuras) em cima do tema
Config.colors = {
  background = "#0d0d0d",
  foreground = "#d4d4d4",
  cursor_bg = "#d4d4d4",
  cursor_fg = "#0d0d0d",
  cursor_border = "#d4d4d4",
  selection_fg = "#0d0d0d",
  selection_bg = "#d4d4d4",
  ansi = {
    "#1e1e1e",
    "#cd3131",
    "#0dbc79",
    "#e5e510",
    "#2472c8",
    "#bc3fbc",
    "#11a8cd",
    "#e5e5e5",
  },
  brights = {
    "#666666",
    "#f14c4c",
    "#23d18b",
    "#f5f543",
    "#3b8eea",
    "#d670d6",
    "#29b8db",
    "#ffffff",
  },
}

Config.background = {
  {
    source = { Color = "#0d0d0d" },
    width = "100%",
    height = "100%",
    opacity = G.opacity or 0.70,
  },
}

Config.bold_brightens_ansi_colors = "BrightAndBold"

Config.char_select_bg_color = theme.brights[6]
Config.char_select_fg_color = theme.background
Config.char_select_font_size = 12

Config.command_palette_bg_color = theme.brights[6]
Config.command_palette_fg_color = theme.background
Config.command_palette_font_size = 14
Config.command_palette_rows = 20

Config.cursor_blink_ease_in = "EaseIn"
Config.cursor_blink_ease_out = "EaseOut"
Config.cursor_blink_rate = 500
Config.default_cursor_style = "BlinkingUnderline"
Config.cursor_thickness = 1
Config.force_reverse_video_cursor = true

Config.enable_scroll_bar = true

Config.hide_mouse_cursor_when_typing = true

Config.text_blink_ease_in = "EaseIn"
Config.text_blink_ease_out = "EaseOut"
Config.text_blink_rapid_ease_in = "Linear"
Config.text_blink_rapid_ease_out = "Linear"
Config.text_blink_rate = 500
Config.text_blink_rate_rapid = 250

Config.audible_bell = "SystemBeep"
Config.visual_bell = {
  fade_in_function = "EaseOut",
  fade_in_duration_ms = 200,
  fade_out_function = "EaseIn",
  fade_out_duration_ms = 200,
}

Config.window_padding = { left = 2, right = 2, top = 2, bottom = 1 }
Config.integrated_title_button_alignment = "Right"
Config.integrated_title_button_style = "Windows"
Config.integrated_title_buttons = { "Hide", "Maximize", "Close" }

Config.clean_exit_codes = { 130 }
Config.exit_behavior = "CloseOnCleanExit"
Config.exit_behavior_messaging = "Verbose"
Config.skip_close_confirmation_for_processes_named = {
  "bash",
  "sh",
  "zsh",
  "fish",
  "tmux",
  "nu",
  "cmd.exe",
  "pwsh.exe",
  "powershell.exe",
}
Config.window_close_confirmation = "AlwaysPrompt"

color.set_tab_button(Config, theme)

return Config
