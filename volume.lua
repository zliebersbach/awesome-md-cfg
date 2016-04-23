local wibox = require("wibox")
local awful = require("awful")

local volumeicon = "/usr/share/awesome/themes/custom/icons/volume.png"
local volumemuteicon = "/usr/share/awesome/themes/custom/icons/volumemute.png"

myvolume = wibox.layout.fixed.horizontal()

myvolumeicon = wibox.widget.imagebox()
myvolume:add(myvolumeicon)

myvolumetext = wibox.widget.textbox()
myvolumetext:set_align("right")
myvolume:add(myvolumetext)

function update_volume (widget, icon)
    local fd = io.popen("amixer sget Master")
    local status = fd:read("*all")
    fd:close()

    local volume = string.match(status, "(%d?%d?%d)%%")
    volume = string.format("% 3d", volume) .. "%"

    status = string.match(status, "%[(o[^%]]*)%]")

    if string.find(status, "on", 1, true) then
        -- For the volume number percentage
        icon:set_image(volumeicon)
    else
        -- For displaying the mute status.
        icon:set_image(volumemuteicon)
    end
    widget:set_markup(volume)
end

update_volume(myvolumetext, myvolumeicon)

mytimer = timer({ timeout = 0.2 })
mytimer:connect_signal("timeout", function ()
		update_volume(myvolumetext, myvolumeicon)
end)
mytimer:start()
