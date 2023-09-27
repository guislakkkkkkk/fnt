function onCreate()
	-- background shit
	makeLuaSprite('torrentBack0','backgroundpixel0',-220,-120)
	addLuaSprite('torrentBack0',false)
	setProperty('torrentBack0.antialiasing', false);
	setLuaSpriteScrollFactor('torrentBack0',0.2,0.2)
	scaleObject('torrentBack0', 5.5, 5.5)

	makeLuaSprite('torrentBack1','backgroundpixel1',-35000,-120)
	addLuaSprite('torrentBack1',false)
	setProperty('torrentBack1.antialiasing', false);
	setLuaSpriteScrollFactor('torrentBack1',0.2,0.2)
	scaleObject('torrentBack1', 5.5, 5.5)

	makeLuaSprite('torrentBack2','backgroundpixel2',-35000,-120)
	addLuaSprite('torrentBack2',false)
	setProperty('torrentBack2.antialiasing', false);
	setLuaSpriteScrollFactor('torrentBack2',0.2,0.2)
	scaleObject('torrentBack2', 5.5, 5.5)

	makeLuaSprite('bgBinary', 'binarypixel', 480, 150)
	setProperty('bgBinary.antialiasing', false);
	setProperty('bgBinary.scale.x', 7.5)
	setProperty('bgBinary.scale.y', 7.5)
	addLuaSprite('bgBinary',false)
	setLuaSpriteScrollFactor('bgBinary',0.5,0.5)
	doTweenY('binaryUp', 'bgBinary', 100, 2, 'sineInOut')

	makeLuaSprite('stoneFront', 'platformpixel', -150, 95) 
	setProperty('stoneFront.antialiasing', false);
	setLuaSpriteScrollFactor('stoneFront',1,1);
	addLuaSprite('stoneFront', false)
	scaleObject('stoneFront', 5.5, 5.5)

end

function onTweenCompleted(tag)
	if tag == 'binaryUp' then
		doTweenY('binaryDown', 'bgBinary', 150, 2, 'sineInOut')
	end
	if tag == 'binaryDown' then
		doTweenY('binaryUp', 'bgBinary', 100, 2, 'sineInOut')
	end
end

function onSectionHit()
	MonitorBG = math.random(0,2)
	if MonitorBG == 0 then
		setProperty('torrentBack0.x', -220)
		setProperty('torrentBack1.x', -35000)
		setProperty('torrentBack2.x', -35000)
		setProperty('torrentBack3.x', -35000)
	end
	if MonitorBG == 1 then
		setProperty('torrentBack0.x', -35000)
		setProperty('torrentBack1.x', -220)
		setProperty('torrentBack2.x', -35000)
		setProperty('torrentBack3.x', -35000)
	end
	if MonitorBG == 2 then
		setProperty('torrentBack0.x', -35000)
		setProperty('torrentBack1.x', -35000)
		setProperty('torrentBack2.x', -220)
		setProperty('torrentBack3.x', -35000)
	end
end

function onCreatePost()
	setProperty("defaultCamZoom",0.9) 
	doTweenZoom('susAmongus', 'camGame', 0.9, 0.01, 'expoOut')
	setProperty('gfGroup.y', 400)
	setProperty('boyfriendGroup.y', 200)
	setProperty('boyfriendGroup.x', 1000)
	setProperty('dadGroup.x', 200)
end