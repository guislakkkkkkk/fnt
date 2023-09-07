local defaultNotePos = {};
local window_default = {}
local window_offset = {0, 0}



function onSongStart()
	window_default[1] = getPropertyFromClass("openfl.Lib", "application.window.x")
	window_default[2] = getPropertyFromClass("openfl.Lib", "application.window.y")
	hudde = getProperty('camHUD.x')
	hudda = getProperty('camHUD.y')
	winscx = getPropertyFromClass("openfl.Lib", "application.width.x")
	winscy = getPropertyFromClass("openfl.Lib", "application.height.y")
end
local song_position = 0
function onEvent(name,value1,value2)
if name == 'random window' then 
	setPropertyFromClass("openfl.Lib", "application.window.x",window_default[1] + math.random(400, -300))
	setPropertyFromClass("openfl.Lib", "application.window.y",window_default[2] + math.random(-50, 50))
	setProperty('camGame.angle',getRandomInt(-10,10))
	setProperty('camHUD.angle',getRandomInt(10,-10))
	if value1 == 'reset' then
		setProperty('camGame.angle',0)
		setProperty('camHUD.angle',0)
		setPropertyFromClass("openfl.Lib", "application.window.x",window_default[1])
		setPropertyFromClass("openfl.Lib", "application.window.y",window_default[2])
	end
	
end
end
