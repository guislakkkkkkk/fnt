local defaultNotePos = {};


function onSongStart()
	hudde = getProperty('camHUD.x')
	hudda = getProperty('camHUD.y')
end
local song_position = 0
function onEvent(name,value1,value2)
if name == 'random window' then 
	setProperty('camGame.angle',getRandomInt(-10,10))
	setProperty('camHUD.angle',getRandomInt(10,-10))
	if value1 == 'reset' then
		setProperty('camGame.angle',0)
		setProperty('camHUD.angle',0)
	end
	
end
end
