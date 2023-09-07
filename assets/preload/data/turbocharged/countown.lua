function onStepHit(counter)
	if curStep == 1280 then
		setProperty('3mid.alpha', 1)
		doTweenY('ohasghloags0', '3mid', 900, 1, 'sineIn')
		doTweenAlpha('asjfhodugh', 'flashWhite', 0.25, 0.16, 'expoOut')
	end
    if curStep == 1284 then  --countdownReady
		setProperty('2mid.alpha', 1)
		doTweenY('ohasghloags', '2mid', 900, 1, 'sineIn')
		doTweenAlpha('asjfhodugh', 'flashWhite', 0.5, 0.16, 'expoOut')
    end
    if curStep == 1288 then --countdownSet
		setProperty('1mid.alpha', 1)
		doTweenY('ohasghloagssafas', '1mid', 900, 1, 'sineIn')
		doTweenAlpha('asjfhodugh', 'flashWhite', 0.75, 0.16, 'expoOut')
    end
    if curStep == 1292 then --countdownGo
		setProperty('goMid.alpha', 1)
		doTweenY('ohasghloagsgsaga', 'goMid', 900, 1, 'sineIn')
		doTweenAlpha('asjfhodugh', 'flashWhite', 1, 0.16, 'expoOut')
    end
    if curStep == 1296 then
		doTweenAlpha('asjfhodugh', 'flashWhite', 0, 0.5)
    end

	if curStep == 1552 then
		setProperty('flashWhite.alpha', 1)
		doTweenAlpha('kafkjdfja', 'flashWhite', 0, 0.3)
	end
end
function onTweenCompleted(tag)
	if tag == 'thej0' then
	end
	if tag == 'thej1' then
	end
	if tag == 'thej2' then
	end
	if tag == 'thej3' then
	end
end
function onCreate()
		--makeLuaSprite('3', '3', 250, 200);
		makeLuaSprite('3mid', '3', ((screenWidth/2) - 190), ((screenHeight/2) - 107));
		scaleObject('3mid', 0.5, 0.5)
		setObjectCamera('3mid','other');
		setProperty('3mid.alpha', 0.0001)
		
		--makeLuaSprite('2', '2', 330, 240);
		makeLuaSprite('2mid', '2', ((screenWidth/2) - 150), ((screenHeight/2) - 77));
		scaleObject('2mid', 0.5, 0.5)
		setObjectCamera('2mid','other');
		setProperty('2mid.alpha', 0.0001)
		
		--makeLuaSprite('1', '1', 400, 280);
		makeLuaSprite('1mid', '1', ((screenWidth/2) - 107), ((screenHeight/2) - 62));
		scaleObject('1mid', 0.5, 0.5)
		setObjectCamera('1mid','other');
		setProperty('1mid.alpha', 0.0001)
		
		--makeLuaSprite('go', 'go', 250, 150);
		makeLuaSprite('goMid', 'go', ((screenWidth/2) - 270), ((screenHeight/2) - 123));
		scaleObject('goMid', 0.75, 0.75)
		setObjectCamera('goMid','other');
		setProperty('goMid.alpha', 0.0001)

		makeLuaSprite('flashWhite', 'flashbang', 0, 0);
		setObjectCamera('flashWhite','hud');
		setProperty('flashWhite.alpha', 0.0001)
		
		addLuaSprite('flashWhite', false)
		addLuaSprite('3mid', true)
		addLuaSprite('2mid', true)
		addLuaSprite('1mid', true)
		addLuaSprite('goMid', true)
end

function onSongStart()
	setProperty('go.alpha', 0.0001)
end