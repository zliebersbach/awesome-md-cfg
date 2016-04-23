local wibox = require("wibox")
local awful = require("awful")

mytemp = wibox.widget.textbox()
mytemp:set_align("right")

function update_temp (widget)
	local fd = io.popen("sensors -u coretemp-isa-0000")
	local status = fd:read("*all")
	fd:close()

	widget:set_markup(status)
end

update_temp(mytemp)

mytimer = timer({ timeout = 10.0 })
mytimer:connect_signal("timeout", function () update_temp(mytemp) end)
mytimer:start()
