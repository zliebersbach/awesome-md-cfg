local wibox = require("wibox")
local awful = require("awful")

mytemp = wibox.layout.margin()
mytemp:set_left(4)
mytemp:set_right(4)

mytemplayout = wibox.layout.fixed.horizontal()
mytemp:set_widget(mytemplayout)

mytempicon = wibox.widget.imagebox()
mytempicon:set_image("/usr/share/awesome/themes/custom/icons/cpu.png")
mytemplayout:add(mytempicon)

mytemptext = wibox.widget.textbox()
mytemptext:set_align("right")
mytemplayout:add(mytemptext)

function update_temp (widget)
	local fd = io.popen("sensors -u coretemp-isa-0000")
	local status = fd:read("*all")
	fd:close()

	local temps = {}
	local _, corecount = string.gsub(status, "Core %d", "%1")
	for core=0, corecount, 1 do
		temps[core] = string.match(status, "temp%d_input: (%d+%.%d+)")
	end
	
	widget:set_markup(math.max(unpack(temps)) .. " °C")
end

update_temp(mytemptext)

mytimer = timer({ timeout = 10.0 })
mytimer:connect_signal("timeout", function () update_temp(mytemptext) end)
mytimer:start()
