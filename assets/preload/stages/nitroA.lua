function onCreate()
	-- background shit
	makeLuaSprite('nitroSky','nitro-sun1',-600,-180)
	addLuaSprite('nitroSky',false)
	setLuaSpriteScrollFactor('nitroSky',0.0,0.0)

	makeLuaSprite('nitroCity','nitro-city1',-600,0)
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