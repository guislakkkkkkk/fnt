function onCreate()
	-- background shit
	makeAnimatedLuaSprite('nitroSky','nitro_sun_light',-600,-180)
	addAnimationByPrefix('nitroSky','light','toLight',24,false)
	addAnimationByPrefix('nitroSky','dark','toDark',24,false)
	objectPlayAnimation('nitroSky','dark',false)
	setProperty('nitroSky.animation.curAnim.curFrame', '7')
	addLuaSprite('nitroSky',false)
	setLuaSpriteScrollFactor('nitroSky',0.0,0.0)

	makeAnimatedLuaSprite('nitroCity','nitro_city_light',-600,0)
	addAnimationByPrefix('nitroCity','light','toLight',24,false)
	addAnimationByPrefix('nitroCity','dark','toDark',24,false)
	objectPlayAnimation('nitroCity','dark',false)
	setProperty('nitroCity.animation.curAnim.curFrame', '7')
	addLuaSprite('nitroCity',false)
	setLuaSpriteScrollFactor('nitroCity',0.2,0.2)

	makeLuaSprite('platformTop', 'IMG_2630', -660, 594) 
	setLuaSpriteScrollFactor('platformTop',1,1);
	addLuaSprite('platformTop')
	scaleObject('platformTop', 0.9, 0.9)

	makeLuaSprite('platformBottom', 'IMG_2630-2', -660, 593) 
	setLuaSpriteScrollFactor('platformBottom',1, 1);
	addLuaSprite('platformBottom')
	scaleObject('platformBottom', 0.9, 0.9)

	makeLuaSprite('shade', 'shader', -400, -200)
	setLuaSpriteScrollFactor('shade', 0, 0)
	addLuaSprite('shade', true)
	scaleObject('shade', 4, 4)
	setBlendMode('shade', 'screen')
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
	
end