function onCreate()
	tvThing = 'notActive'
	precacheImage('flashbang')
	precacheImage('unflashbang')
end

function onEvent(name, value1, value2)
	if name == 'tv screen thing' then
		tvThing = curBeat

		makeLuaSprite('barUp', 'unflashbang', -1, -2160)
		setObjectCamera('barUp', 'hud')

		makeLuaSprite('barDown', '', -10, screenHeight) 
		makeGraphic('barDown', 100, 100, '000000') 
		scaleObject('barDown', 15, 15) 
		setObjectCamera('barDown', 'hud')

		makeLuaSprite('flashbang', 'flashbang', 0, 0)
		setObjectCamera('flashbang', 'hud')
		setProperty('flashbang.alpha', 0)
		doTweenAlpha('tv unflash', 'flashbang', 1, 0.1, 'linear')
		
		addLuaSprite('flashbang', false)
		addLuaSprite('barUp', false) 
		addLuaSprite('barDown', false)
	end
end

function onTweenCompleted(tag)
	if tag == 'tv unflash' then
		doTweenY('barDown.y', 'barDown', 0, 0.15, 'linear')
		doTweenY('barUp.y', 'barUp', 0, 0.15, 'linear')
	end
end

function onBeatHit()
	if curBeat == tvThing+1 then
		setProperty('flashbang.alpha', 1)
		doTweenAlpha('flashbang.alpha', 'flashbang', 0, 0.5, 'linear')
		removeLuaSprite('barUp')
		removeLuaSprite('barDown')
	end
end