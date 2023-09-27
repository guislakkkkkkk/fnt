function onStepHit()
	if curStep == 824 then
		makeLuaSprite('torrentError', 'riptorrent', ((screenWidth/2) - 565), ((screenHeight/2) - 225));
		scaleObject('torrentError', 3, 3)
		setObjectCamera('torrentError','other');
		addLuaSprite('torrentError', true)
	end
	if curStep == 832 then
		setProperty('torrentError.alpha', 0)
	end
end