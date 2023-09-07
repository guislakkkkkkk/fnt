function onCreate()
	-- background shit
	makeLuaSprite('nitroSky','nitro-sun4',-600,-180)
	addLuaSprite('nitroSky',false)
	setLuaSpriteScrollFactor('nitroSky',0.0,0.0)

	makeLuaSprite('nitroCity','nitro-city4',-600,0)
	addLuaSprite('nitroCity',false)
	setLuaSpriteScrollFactor('nitroCity',0.2,0.2)

	makeLuaSprite('platform', 'nitro-platform4', -660, 594) 
	setLuaSpriteScrollFactor('platform',1,1);
	addLuaSprite('platform')
	scaleObject('platform', 0.9, 0.9)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
	
end