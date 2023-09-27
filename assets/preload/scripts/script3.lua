function onCreate()
	countDeez = false
end

function onCreatePost()
	if downscroll then
		makeAnimatedLuaSprite('HealthbarThing', 'TS_healthbar', 339, 80) 
	else
		makeAnimatedLuaSprite('HealthbarThing', 'TS_healthbar', 339, 642) 
	end
	addAnimationByPrefix('HealthbarThing', 'Move', 'health_move', 24, true);
	setObjectCamera('HealthbarThing', 'hud')
	addLuaSprite('HealthbarThing', true)
	setObjectOrder('HealthbarThing', getObjectOrder('healthBar')+1)
	--setObjectOrder('HealthbarThing', 19)

	
end

--function onUpdate()
--	if startedCountdown == true then
--		if countDeez == false then
--				countDeez = true
--				makeLuaSprite('ready3', 'three', 0, 0)
--				setObjectCamera('ready3', 'hud')
--				addLuaSprite('ready3', true)
--				doTween('amogus', 'ready3.alpha', 0, 0.4)
--		end
--	end
--end