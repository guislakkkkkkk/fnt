function onCreate()
	-- background shit
	makeLuaSprite('torrentBack0','monitorBack9',-400,-160)
	addLuaSprite('torrentBack0',false)
	setLuaSpriteScrollFactor('torrentBack0',0.2,0.2)
	scaleObject('torrentBack0', 1.1, 1.1)

	makeLuaSprite('torrentBack1','monitorBack10',-35000,-160)
	addLuaSprite('torrentBack1',false)
	setLuaSpriteScrollFactor('torrentBack1',0.2,0.2)
	scaleObject('torrentBack1', 1.1, 1.1)

	makeLuaSprite('torrentBack2','monitorBack11',-35000,-160)
	addLuaSprite('torrentBack2',false)
	setLuaSpriteScrollFactor('torrentBack2',0.2,0.2)
	scaleObject('torrentBack2', 1.1, 1.1)

	makeLuaSprite('torrentBack3','monitorBack12',-35000,-160)
	addLuaSprite('torrentBack3',false)
	setLuaSpriteScrollFactor('torrentBack3',0.2,0.2)
	scaleObject('torrentBack3', 1.1, 1.1)

	makeAnimatedLuaSprite('bgBinary', 'binary', -300, 50)
	addAnimationByPrefix('bgBinary','funniNumbers','binaryglow',24,true)
	setProperty('bgBinary.scale.x', 1.5)
	setProperty('bgBinary.scale.y', 1.5)
	objectPlayAnimation('bgBinary','funniNumbers',true)
	addLuaSprite('bgBinary',false)
	setLuaSpriteScrollFactor('bgBinary',0.5,0.5)
	doTweenY('binaryUp', 'bgBinary', -100, 4.2, 'sineInOut')

	makeLuaSprite('stoneFront', 'stageStone', -700, -250) 
	setLuaSpriteScrollFactor('stoneFront',1,1);
	addLuaSprite('stoneFront', false)
	scaleObject('stoneFront', 1, 1)

end

function onTweenCompleted(tag)
	if tag == 'binaryUp' then
		doTweenY('binaryDown', 'bgBinary', 50, 4.2, 'sineInOut')
	end
	if tag == 'binaryDown' then
		doTweenY('binaryUp', 'bgBinary', -100, 4.2, 'sineInOut')
	end
end

function onSectionHit()
	MonitorBG = math.random(0,3)
	if MonitorBG == 0 then
		setProperty('torrentBack0.x', -400)
		setProperty('torrentBack1.x', -35000)
		setProperty('torrentBack2.x', -35000)
		setProperty('torrentBack3.x', -35000)
	end
	if MonitorBG == 1 then
		setProperty('torrentBack0.x', -35000)
		setProperty('torrentBack1.x', -400)
		setProperty('torrentBack2.x', -35000)
		setProperty('torrentBack3.x', -35000)
	end
	if MonitorBG == 2 then
		setProperty('torrentBack0.x', -35000)
		setProperty('torrentBack1.x', -35000)
		setProperty('torrentBack2.x', -400)
		setProperty('torrentBack3.x', -35000)
	end
	if MonitorBG == 3 then
		setProperty('torrentBack0.x', -35000)
		setProperty('torrentBack1.x', -35000)
		setProperty('torrentBack2.x', -35000)
		setProperty('torrentBack3.x', -400)
	end
end
