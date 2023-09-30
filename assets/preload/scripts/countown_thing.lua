function onCountdownTick(counter)
	if counter == 0 then
		setProperty('3.alpha', 1)
		doTweenAlpha('ohasghloags0', '3', 0, crochet/1000, 'quadIn')
	end
    if counter == 1 then  --countdownReady
		setProperty('countdownReady.visible', false)
		setProperty('2.alpha', 1)
		doTweenAlpha('ohasghloags', '2', 0, crochet/1000, 'quadIn')
    end
    if counter == 2 then --countdownSet
		setProperty('countdownSet.visible', false)
		setProperty('1.alpha', 1)
		doTweenAlpha('ohasghloagssafas', '1', 0, crochet/1000, 'quadIn')
    end
    if counter == 3 then --countdownGo
		setProperty('countdownGo.visible', false)
		setProperty('go.alpha', 1)
		doTweenAlpha('ohasghloagsgsaga', 'go', 0, crochet/1000, 'quadIn')
    end
    if counter == 4 then --countdownGo
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
		makeLuaSprite('3', '3', ((screenWidth/2) - 190), ((screenHeight/2) - 107));
		scaleObject('3', 0.5, 0.5)
		setObjectCamera('3','other');
		setProperty('3.alpha', 0.0001)
		
		--makeLuaSprite('2', '2', 330, 240);
		makeLuaSprite('2', '2', ((screenWidth/2) - 150), ((screenHeight/2) - 77));
		scaleObject('2', 0.5, 0.5)
		setObjectCamera('2','other');
		setProperty('2.alpha', 0.0001)
		
		--makeLuaSprite('1', '1', 400, 280);
		makeLuaSprite('1', '1', ((screenWidth/2) - 107), ((screenHeight/2) - 62));
		scaleObject('1', 0.5, 0.5)
		setObjectCamera('1','other');
		setProperty('1.alpha', 0.0001)
		
		--makeLuaSprite('go', 'go', 250, 150);
		makeLuaSprite('go', 'go', ((screenWidth/2) - 270), ((screenHeight/2) - 123));
		scaleObject('go', 0.75, 0.75)
		setObjectCamera('go','other');
		setProperty('go.alpha', 0.0001)
		
		addLuaSprite('3', true)
		addLuaSprite('2', true)
		addLuaSprite('1', true)
		addLuaSprite('go', true)
end

function onSongStart()
	setProperty('go.alpha', 0.0001)
end