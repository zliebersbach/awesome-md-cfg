local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")

myvolume = wibox.layout.margin()
myvolume:set_left(4)
myvolume:set_right(4)

myvolumelayout = wibox.layout.fixed.horizontal()
myvolume:set_widget(myvolumelayout)

myvolumeicon = wibox.widget.imagebox()
myvolumelayout:add(myvolumeicon)

myvolumetext = wibox.widget.textbox()
myvolumetext:set_align("right")
myvolumelayout:add(myvolumetext)

function update_volume (widget, icon)
    local fd = io.popen("amixer sget Master")
    local status = fd:read("*all")
    fd:close()

    local volume = string.match(status, "(%d?%d?%d)%%") .. "%"
    status = string.match(status, "%[(o[^%]]*)%]")

    if string.find(status, "on", 1, true) then
        -- For the volume number percentage
        icon:set_image(beautiful.volume_icon)
    else
        -- For displaying the mute status.
        icon:set_image(beautiful.volumemute_icon)
    end
    widget:set_markup(volume)
end

update_volume(myvolumetext, myvolumeicon)

mytimer = timer({ timeout = 0.2 })
mytimer:connect_signal("timeout", function ()
		update_volume(myvolumetext, myvolumeicon)
end)
mytimer:start()
