function onCreate()
	-- background shit
	makeAnimatedLuaSprite('nitroSky','pixelskyNitro',-220,-120)
	addAnimationByPrefix('nitroSky','skyAnim','Anim',24,true)
	addLuaSprite('nitroSky',false)
	setProperty('nitroSky.antialiasing', false);
	setLuaSpriteScrollFactor('nitroSky',0,0)
	scaleObject('nitroSky', 5.5, 5.5)

	makeLuaSprite('nitroCity','pixel-city1',-220,60)
	addLuaSprite('nitroCity',false)
	setProperty('nitroCity.antialiasing', false);
	setLuaSpriteScrollFactor('nitroCity',0.2,0.2)
	scaleObject('nitroCity', 5.5, 5.5)

	makeLuaSprite('frontPlatform', 'pixel-platform1', -550, 0) 
	setProperty('frontPlatform.antialiasing', false);
	setLuaSpriteScrollFactor('frontPlatform',1,1);
	addLuaSprite('frontPlatform', false)
	scaleObject('frontPlatform', 7.5, 7.5)

end

function onSectionHit()
end

function onCreatePost()
	setProperty("defaultCamZoom",0.9) 
	doTweenZoom('susAmongus', 'camGame', 0.9, 0.01, 'expoOut')
	setProperty('gfGroup.y', 300)
	setProperty('boyfriendGroup.y', 200)
	setProperty('boyfriendGroup.x', 1000)
	setProperty('dadGroup.x', 200)
	setProperty('dadGroup.y', 120)
end