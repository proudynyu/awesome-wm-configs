local vicious = require("vicious")
local wibox = require("wibox")
local beautiful = require("beautiful")

batwidget = wibox.widget.progressbar()

batbox = wibox.layout.margin(
	wibox.widget {
		{
			max_value = 1,
			widget = batwidget,
			border_width = 0.5,
			border_color = beautiful.fg_widget,
			color = {
				type = "linear",
				from = { 0, 0 },
				to = { 0, 30 },
				stops = {
					{ 0, "#AECF96" },
					{ 1, "#FF5656" }
				}
			}
		},
		forced_height = 10,
		forced_width = 8,
		direction = "east",
		color = "#000",
		layout = wibox.container.rotate
	}, 
	1, 1, 3, 3 
)
	
vicious.register(
	batwidget,
	vicious.widgets.bat,
	"$2",
	61,
	"BAT0"
)

