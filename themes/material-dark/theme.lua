theme = {}

theme.font          = "Roboto 8"

theme.bg_normal     = "#303030"
theme.bg_focus      = "#424242"
theme.bg_urgent     = theme.bg_focus
theme.bg_minimize   = theme.bg_focus
theme.bg_systray    = "#212121"

theme.fg_normal     = "#FFFFFF"
theme.fg_focus      = "#FFFFFF"
theme.fg_urgent     = theme.fg_focus
theme.fg_minimize   = theme.fg_normal

theme.border_width  = 2
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = theme.bg_focus

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#FF0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "/usr/share/awesome/themes/material-dark/taglist/squarefw.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/material-dark/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/usr/share/awesome/themes/material-dark/icons/submenu.png"
theme.menu_height = 16
theme.menu_width  = 128

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#CC0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/material-dark/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/material-dark/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/material-dark/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/material-dark/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/material-dark/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/material-dark/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/material-dark/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/material-dark/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/material-dark/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/material-dark/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/material-dark/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/material-dark/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/material-dark/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/material-dark/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/material-dark/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/material-dark/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/material-dark/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/material-dark/titlebar/maximized_focus_active.png"

theme.wallpaper = "/usr/share/awesome/themes/material-dark/wallpapers/wallpaper.png"

-- You can use your own layout icons like this:
theme.layout_fairh = "/usr/share/awesome/themes/material-dark/layouts/fairhw.png"
theme.layout_fairv = "/usr/share/awesome/themes/material-dark/layouts/fairvw.png"
theme.layout_floating  = "/usr/share/awesome/themes/material-dark/layouts/floatingw.png"
theme.layout_magnifier = "/usr/share/awesome/themes/material-dark/layouts/magnifierw.png"
theme.layout_max = "/usr/share/awesome/themes/material-dark/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/material-dark/layouts/fullscreenw.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/material-dark/layouts/tilebottomw.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/material-dark/layouts/tileleftw.png"
theme.layout_tile = "/usr/share/awesome/themes/material-dark/layouts/tilew.png"
theme.layout_tiletop = "/usr/share/awesome/themes/material-dark/layouts/tiletopw.png"
theme.layout_spiral  = "/usr/share/awesome/themes/material-dark/layouts/spiralw.png"
theme.layout_dwindle = "/usr/share/awesome/themes/material-dark/layouts/dwindlew.png"

theme.menu_icon = "/usr/share/awesome/themes/material-dark/icons/menu.png"
theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "Adwaita"

-- Widget icons.
theme.cpu_icon = "/usr/share/awesome/themes/material-dark/icons/cpu.png"
theme.volume_icon = "/usr/share/awesome/themes/material-dark/icons/volume.png"
theme.volumemute_icon = "/usr/share/awesome/themes/material-dark/icons/volumemute.png"

return theme
