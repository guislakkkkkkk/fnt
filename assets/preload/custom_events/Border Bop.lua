--Created by RamenDominoes (Please credit if using this, thanks! <3)
--Not bad for updating the script heh... lol
--HOLY FUCK I ACTUALLY DID IT, GOD I WAS HAVING SUCH A HARD TIME ADDING THE "DISTANCE" THING TO IT YIPPEEE!!!!!


local HudPieces = {'healthBarBG','healthBar','scoreTxt','iconP1','iconP2','timeBar','timeBarBG','timeTxt'}
local index = 1
function onCreatePost()

	

------------------------------------------------------------------------
	--THE TOP BAR--
	makeLuaSprite('UpperBarBop', 'empty', -110, -350)
	makeGraphic('UpperBarBop', 1500, 350, '000000')
	setObjectCamera('UpperBarBop', 'HUD')
	addLuaSprite('UpperBarBop', false)


	--THE BOTTOM BAR--
	makeLuaSprite('LowerBarBop', 'empty', -110, 720)
	makeGraphic('LowerBarBop', 1500, 350, '000000')
	setObjectCamera('LowerBarBop', 'HUD')
	addLuaSprite('LowerBarBop', false)
	
------------------------------------------------------------------------

	UpperBarBop = getProperty('UpperBarBop.y')
	LowerBarBop = getProperty('LowerBarBop.y')

------------------------------------------------------------------------

------------------------------------------------------------------------
end



--FOR UPSCROLL ENTRANCE--
------------------------------------------------------------------------
function onEvent(name, value1, value2)
	if name == 'Border Bop' then
	
	Speed = tonumber(value1)
	Distance = tonumber(value2)
	
	
	

	if Speed and Distance > 0 then	

	setProperty('UpperBarBop.y', UpperBarBop + Distance)
	setProperty('LowerBarBop.y', LowerBarBop - Distance)
	cancelTween('Cinematics1')
	cancelTween('Cinematics2')
	doTweenY('Cinematics1', 'UpperBarBop', UpperBarBop, Speed, 'expoOut')
	doTweenY('Cinematics2', 'LowerBarBop', LowerBarBop, Speed, 'expoOut')
	end
	end

end

function onUpdate()
	--setProperty('UpperBarBop.y', getProperty('UpperBarBop.y') - (UpperBarBop / Speed))
	--SetProperty('LowerBarBop.y', getProperty('LowerBarBop.y') - (LowerBarBop / Speed))

end
