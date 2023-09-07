local sin = math.sin
local cos = math.cos

function onCreate()
	-- background shit
	makeLuaSprite('nitroSky','nitro-sun3',-600,-180)
	addLuaSprite('nitroSky',false)
	setLuaSpriteScrollFactor('nitroSky',0.0,0.0)

	makeLuaSprite('nitroCity','nitro-city3',-224,-6)
	cityX = -224
	setLuaSpriteScrollFactor('nitroCity',0.2,0.2)

	makeLuaSprite('nitroCity-flip','nitro-city3-flip',-2186,-6)
	cityFlipX = -2186
	addLuaSprite('nitroCity',false)
	addLuaSprite('nitroCity-flip',false)
	setLuaSpriteScrollFactor('nitroCity-flip',0.2,0.2)

	makeLuaSprite('shade2', 'shader', -400, -200)
	setLuaSpriteScrollFactor('shade2', 0, 0)
	addLuaSprite('shade2', false)
	scaleObject('shade2', 4, 4)
	setBlendMode('shade2', 'screen')
	setProperty('shade2.alpha', 0)

	makeLuaSprite('platformTop', 'IMG_2696', -660, 594) 
	setLuaSpriteScrollFactor('platformTop',1,1);
	addLuaSprite('platformTop')
	scaleObject('platformTop', 0.9, 0.9)

	makeLuaSprite('platformBottom', 'IMG_2696-2', -660, 593) 
	setLuaSpriteScrollFactor('platformBottom',1, 1);
	addLuaSprite('platformBottom')
	scaleObject('platformBottom', 0.9, 0.9)

	makeLuaSprite('shade', 'shader2', -400, -200)
	setLuaSpriteScrollFactor('shade', 0, 0)
	addLuaSprite('shade', true)
	scaleObject('shade', 4, 4)
	setBlendMode('shade', 'screen')
	setProperty('shade.alpha', 0.6)

	makeLuaSprite('bgSpeed', 'empty', 0, 0)
	addLuaSprite('bgSpeed', true)

	makeLuaGroup('platformGroup')
	addToGroup('platformGroup', 'platformTop')
	addToGroup('platformGroup', 'platformBottom')
	addToGroup('platformGroup', 'gfGroup')
	addToGroup('platformGroup', 'boyfriendGroup')
	addToGroup('platformGroup', 'dadGroup')

	doTweenY('platformUp', 'aaaa', -540, 2, 'expoInOut')
end

--function onStepHit()
	--if curStep == 400 then
		--bgSpeed = 10
	--end
--end

function onUpdate()
	backSpeed = getProperty('bgSpeed.x')
	
	cityX = cityX - backSpeed
	cityFlipX = cityFlipX - backSpeed

	if cityX < -2186 then
		cityX = cityX + (1962*2)
	end
	if cityFlipX < -2186 then
		cityFlipX = cityFlipX + (1962*2)
	end
	setProperty('nitroCity.x', cityX)
	setProperty('nitroCity-flip.x', cityFlipX)
end

function onStepHit()
	
	if curStep == 368 then
		--doTweenAngle('platformTopAngle', 'platformTop', 8, 0.3, 'sineOut')
	end
	if curStep == 400 then
		doTweenX('bgSpeedChange', 'bgSpeed', 5, 0.2, 'sineIn')
		doTweenAlpha('shade2AlphaChange', 'shade2', 0.6, 0.1)
	end

	if curStep == 784 then
		doTweenX('bgSpeedChange', 'bgSpeed', 8, 0.2, 'sineIn')
	end

	if curStep == 1040 then
		doTweenX('bgSpeedChange', 'bgSpeed', 5, 0.2, 'sineIn')
	end

	if curStep == 1296 then
		doTweenX('bgSpeedChange', 'bgSpeed', 16, 0.2, 'sineIn')
		doTweenAlpha('shade2AlphaChange', 'shade2', 1, 0.1)
	end

	if curStep == 1552 then
		doTweenX('bgSpeedChange', 'bgSpeed', 5, 0.2, 'sineIn')
		doTweenAlpha('shade2AlphaChange', 'shade2', 0.6, 0.1)
	end

end

--function onUpdatePost()
		-- center x of platform is 2491 / 461
		-- center y of platform is 521 / 854
	--setProperty('platformBottom.angle', getProperty('platformTop.angle'))
	--setProperty('boyfriend.angle', getProperty('platformTop.angle'))
	----setProperty('boyfriend.x', 461 + (sin*(getProperty('boyfriend.angle')))*379)
	----setProperty('boyfriend.y', 854 - (cos*(getProperty('boyfriend.angle')))*454)

	--x = getProperty('boyfriend.angle')
	--xCos = math.cos (x)
	--xSin = math.sin (x)
	--setProperty('boyfriend.x', getProperty('platformTop.x') + xCos*10)
	--setProperty('boyfriend.y', getProperty('platformTop.y') - xSin*10)

--end