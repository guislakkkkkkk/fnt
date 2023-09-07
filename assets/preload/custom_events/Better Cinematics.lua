--Created by RamenDominoes (Please credit if using this, thanks! <3)
--Not bad for updating the script heh... lol
--HOLY FUCK I ACTUALLY DID IT, GOD I WAS HAVING SUCH A HARD TIME ADDING THE "DISTANCE" THING TO IT YIPPEEE!!!!!


local HudPieces = {'healthBarBG','healthBar','scoreTxt','iconP1','iconP2','timeBar','timeBarBG','timeTxt'}
local index = 1
function onCreatePost()

	

------------------------------------------------------------------------
	--THE TOP BAR--
	makeLuaSprite('UpperBar', 'empty', -110, -350)
	makeGraphic('UpperBar', 1500, 350, '000000')
	setObjectCamera('UpperBar', 'HUD')
	addLuaSprite('UpperBar', false)


	--THE BOTTOM BAR--
	makeLuaSprite('LowerBar', 'empty', -110, 720)
	makeGraphic('LowerBar', 1500, 350, '000000')
	setObjectCamera('LowerBar', 'HUD')
	addLuaSprite('LowerBar', false)
	
------------------------------------------------------------------------

	UpperBar = getProperty('UpperBar.y')
	LowerBar = getProperty('LowerBar.y')

------------------------------------------------------------------------

	for Notes = 0,7 do 
        	StrumY = getPropertyFromGroup('strumLineNotes', Notes, 'y')
	
	end
------------------------------------------------------------------------
end



--FOR UPSCROLL ENTRANCE--
------------------------------------------------------------------------
function onEvent(name, value1, value2)
	if name == 'Better Cinematics' then
	
	Speed = tonumber(value1)
	Distance = tonumber(value2)
	
	
	
	end

	if Speed and Distance > 0 then	

	doTweenY('Cinematics1', 'UpperBar', UpperBar + Distance, Speed, 'quadInOut')
	doTweenY('Cinematics2', 'LowerBar', LowerBar - Distance, Speed, 'quadInOut')
	end


--FOR DOWNSCROLL ENTRANCE--
------------------------------------------------------------------------
	if downscroll and Speed and Distance > 0 then	

	doTweenY('Cinematics1', 'UpperBar', UpperBar + Distance, Speed, 'quadInOut')
	doTweenY('Cinematics2', 'LowerBar', LowerBar - Distance, Speed, 'quadInOut')
	end


--FOR EXIT--
------------------------------------------------------------------------
	if Distance <= 0 then		

	doTweenY('Cinematics1', 'UpperBar', UpperBar, Speed, 'QuadOut')
	doTweenY('Cinematics2', 'LowerBar', LowerBar, Speed, 'QuadOut')
		
	end	
end

