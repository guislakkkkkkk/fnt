function onStartCountdown()
	
	addAnimationByPrefix('nitroSky','dark','toDark',24,false)
end

function onEvent(name, value1, value2)
    if name == 'Light theme switch' then
        if value1 == 'light' then
			objectPlayAnimation('nitroSky','light',false)
			objectPlayAnimation('nitroCity','light',false)

			makeLuaSprite('platformTop2', 'IMG_2632', 660, 594) 
			setLuaSpriteScrollFactor('platformTop2',1,1);
			addLuaSprite('platformTop2')
			scaleObject('platformTop2', 0.9, 0.9)

			doTweenX('platformTop2.x', 'platformTop2', -660, 0.2, 'linear')
			doTweenX('platformTop.x', 'platformTop', -3280, 0.2, 'linear')
		end
		if value1 == 'dark' then
			objectPlayAnimation('nitroSky','dark',false)
			objectPlayAnimation('nitroCity','dark',false)
			doTweenX('platformTop.x', 'platformTop', -660, 0.2, 'linear')
			doTweenX('platformTop2.x', 'platformTop2', 1800, 0.2, 'linear')
		end
    end
end