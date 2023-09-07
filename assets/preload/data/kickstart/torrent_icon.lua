function onCreate()
	if not hideHud then
	if downscroll then
		makeAnimatedLuaSprite('icon3', nil, -180, 200)
	else
		makeAnimatedLuaSprite('icon3', nil, -180, 400)
	end
	loadGraphic('icon3', 'icons/icon-torrent_glasses', 150)
	addAnimation('icon3', 'icons/icon-torrent_glasses', {0, 1}, 0, true)
	addAnimation('icon3', 'icons/icon-torrent_glasses', {1, 0}, 0, true)
	setProperty('icon3.scale.x', 1)
	setProperty('icon3.scale.y', 1)
	addLuaSprite('icon3', true)
	setObjectCamera('icon3', 'hud')
	
	makeAnimatedLuaSprite('icon4', nil, -150, getProperty('iconP2.y'))
	loadGraphic('icon4', 'icons/icon-'..getProperty('dad.healthIcon'), 150)
	addAnimation('icon4', 'icons/icon-'..getProperty('dad.healthIcon'), {1, 0}, 0, true)
	addAnimation('icon4', 'icons/icon-'..getProperty('dad.healthIcon'), {0, 1}, 0, true)
	addLuaSprite('icon4', true)
	setObjectCamera('icon4', 'hud')
	end
end
function onUpdatePost()
	if not hideHud then
		if curStep > 720 then
			setProperty('icon3.x', getProperty('iconP2.x'))
		end
	end
	if curStep > 718 then
		if curStep < 721 then
			setHealthBarColors('F9F594', '259FDF')
		end
	end
	if curStep > 716 then
		if getProperty('healthBar.percent') > 80 then
			setProperty('icon3.animation.curAnim.curFrame', '1')
		else
			setProperty('icon3.animation.curAnim.curFrame', '0')
		end
	end
end
function onCreatePost()
	iconY = getProperty('iconP2.y')
	setObjectOrder('icon3', getObjectOrder('iconP2') + 1)
	setObjectOrder('icon4', getObjectOrder('icon3') + 1)
end
function onStepHit()
	if curStep == 700 then
		doTweenX('icon3.x', 'icon3', getProperty('iconP2.x') + 30, 0.6, 'sineOut')

	end
	if curStep == 705 then
		doTweenX('icon3.x', 'icon3', getProperty('iconP2.x'), 0.2, 'sineIn')

	end
	if curStep == 708 then
		if downscroll then
			doTweenY('iconP2.y', 'iconP2', getProperty('iconP2.y')-200, 0.25, 'sineIn')
			doTweenY('icon3.y', 'icon3', 220, 0.3, 'sineOut')
		else
			doTweenY('iconP2.y', 'iconP2', getProperty('iconP2.y')+200, 0.25, 'sineIn')
			doTweenY('icon3.y', 'icon3', 380, 0.3, 'sineOut')
		end
	end
	if curStep == 709 then
		doTweenY('icon3.y', 'icon3', iconY, 0.28, 'sineIn')
	end
	if curStep == 712 then
		setHealthBarColors('F9F594', '259FDF')
	end
	if curStep == 720 then
		setHealthBarColors('F9F594', '259FDF')
		setProperty('thehealth-shade-opp.color', getColorFromHex('F9F594'))
		if downscroll then
			doTweenY('iconP2.y', 'iconP2', getProperty('iconP2.y')-200, 1, 'expoOut')
		else
			doTweenY('iconP2.y', 'iconP2', getProperty('iconP2.y')+200, 1, 'expoOut')
		end
	end
	if curStep == 876 then
		doTweenX('icon4.x', 'icon4', getProperty('iconP2.x')-150, 2, 'sineOut')
		setProperty('icon3.y', iconY)
	end
	if curStep == 892 then
		if downscroll then
			doTweenY('icon3.y', 'icon3', iconY + 30, 0.5, 'sineOut')
		else
			doTweenY('icon3.y', 'icon3', iconY - 30, 0.5, 'sineOut')
		end
		
	end
	if curStep == 895 then
		if downscroll then
			doTweenY('icon3.y', 'icon3', iconY - 200, 0.4, 'sineIn')
		else
			doTweenY('icon3.y', 'icon3', iconY + 200, 0.4, 'sineIn')
		end
	end
	if curStep == 904 then
		doTweenX('icon4.x', 'icon4', getProperty('iconP2.x')-170, 0.16, 'sineOut')
	end
	if curStep == 905 then
		doTweenX('icon4.x', 'icon4', getProperty('iconP2.x'), 0.24, 'sineIn')
	end
	if curStep == 908 then
		setProperty('iconP2.y', iconY)
		setProperty('icon4.alpha', 0)
		setHealthBarColors('5247E8', '259FDF')
		setProperty('thehealth-shade-opp.color', getColorFromHex('5247E8'))
	end
end