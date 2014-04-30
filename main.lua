local viewer = require "plugin.viewer"

viewer.run()

-- Display message if run in simulator
if ( "simulator" == system.getInfo("environment") ) then
	local text = "To use CoronaViewer, build this project and install it on your iOS device."
	local message = display.newText{
		text = text,
		x = display.contentCenterX,
		y = display.contentCenterY,
		width = display.contentWidth - 100,
		fontSize = 16,
		align = "center",
	}
end
