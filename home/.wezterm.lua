local wezterm = require 'wezterm'

local config = {}


if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- カラースキームの設定
config.color_scheme = 'Atlas (base16)'
config.window_background_opacity = 0.85
config.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.5,
}


-- ショートカットキー設定
local act = wezterm.action
config.leader = { key = 'f', mods = 'CTRL', timeout_milliseconds = 3000 }
config.keys = {
  -- Ctrl+Shift+tで新しいタブを作成
  {
    key = 'c',
    mods = 'LEADER',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'n',
    mods = 'LEADER',
    action = act.ActivateTabRelative(1)
  },
  {
    key = 'p',
    mods = 'LEADER',
    action = act.ActivateTabRelative(-1)
  },
  -- ペインを操作(画面を分割)
  {
    key = '\\',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '-',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'o',
    mods = 'LEADER',
    action = act.ActivatePaneDirection 'Next',
  },
  {
    key = 'o',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Next',
  },
  {
    key = 'o',
    mods = 'LEADER|SHIFT',
    action = act.ActivatePaneDirection 'Prev',
  },
  -- コピーモード
  {
    key = '[',
    mods = 'LEADER',
    action = act.CopyMode { SetSelectionMode = 'Cell' }
  },
}

return config

