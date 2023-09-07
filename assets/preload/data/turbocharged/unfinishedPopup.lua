function onTweenCompleted(tag)
	if tag == 'creditsExit' then
		makeLuaSprite('notice', 'noticeUnfinished', -319, 120)
		setObjectCamera('notice', 'hud')
		addLuaSprite('notice', true)
		scaleObject('notice', 1.5, 1.5)
		doTweenX('noticeEnter', 'notice', 0, 0.8, 'expoOut')
	end

	if tag == 'noticeEnter' then
		runTimer('noticeWait', 3, 1)
	end
end

function onTimerCompleted(tag)
	if tag == 'noticeWait' then
		doTweenX('noticeExit', 'notice', -322, 0.8, 'expoIn')
	end
end