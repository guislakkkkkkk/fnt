
function onCreate()
    makeLuaSprite('backbg', 'mal/secret_bg',-1200 ,-550)
    addLuaSprite('backbg',false)

    makeLuaSprite('screen', 'mal/secret_screens',-900 ,-400 )
    addLuaSprite('screen',false)

    makeLuaSprite('alert', 'mal/alert',-900 ,-400 )
    addLuaSprite('alert',false)

    makeLuaSprite('broken', 'mal/broken',-900 ,-400 )
    addLuaSprite('broken',false)


    makeLuaSprite('plat', 'mal/secret_platform', 20, 730)
    addLuaSprite('plat', false)

    makeLuaSprite('plat2', 'mal/secret_platform2', 150, 730)
    addLuaSprite('plat2', false)


    scaleObject('backbg',2.5,2.5)
    scaleObject('screen',1.9,1.9)
    scaleObject('alert',1.9,1.9)
    scaleObject('broken',1.9,1.9)


    setProperty('screen.visible',false)
    setProperty('broken.visible',false)
    setProperty('plat2.visible',false)

makeLuaSprite('redy','',0,0)
makeGraphic('redy', 5000, 5000, 'FF0000')
addLuaSprite('redy',true)
screenCenter('redy','xy')
setObjectCamera('redy','camHUD')
setBlendMode('redy','multiply')
setScrollFactor('redy',1.5,1.5)
setProperty('redy.alpha',0.9)
--------------
makeAnimatedLuaSprite('bfWinningIcon', 'bf icons win', getProperty('iconP1.x'), getProperty('iconP1.y'))
addAnimationByPrefix('bfWinningIcon','lose','lose',24,true)
addAnimationByPrefix('bfWinningIcon','win','win',24,true)
addAnimationByPrefix('bfWinningIcon','neutral','neutral',24,true)
setObjectCamera('bfWinningIcon', 'hud')
addLuaSprite('bfWinningIcon', true)
setProperty('bfWinningIcon.flipX', true)


makeAnimatedLuaSprite('dadWinningIcon', 'mael icons win', getProperty('iconP2.x'), getProperty('iconP2.y'))
addAnimationByPrefix('dadWinningIcon','lose','lose',24,true)
addAnimationByPrefix('dadWinningIcon','win','win',24,true)
addAnimationByPrefix('dadWinningIcon','neutral','neutral',24,true)
setObjectCamera('dadWinningIcon', 'hud')
addLuaSprite('dadWinningIcon', true)
setProperty('dadWinningIcon.flipX', false)
------------- top 1 reason why i hate this ---- its ducking mess
makeAnimatedLuaSprite('scren1', 'mal/textwin', -1200, 150)
makeAnimatedLuaSprite('scren2', 'mal/textwin', -1200, -390)
makeAnimatedLuaSprite('scren3', 'mal/textwin', -300, -390)
makeAnimatedLuaSprite('scren4', 'mal/textwin', -300, 150)
makeAnimatedLuaSprite('scren5', 'mal/textwin', 630, 150)
makeAnimatedLuaSprite('scren6', 'mal/textwin', 630, -390)
makeAnimatedLuaSprite('scren7', 'mal/textwin', 1550, -390)
makeAnimatedLuaSprite('scren8', 'mal/textwin', 1550, 150)
for i = 1,24 do
    addAnimationByPrefix('scren1','textwin '..i,'textwin '..i,24,false)
    addAnimationByPrefix('scren2','textwin '..i,'textwin '..i,24,false)
    addAnimationByPrefix('scren3','textwin '..i,'textwin '..i,24,false)
    addAnimationByPrefix('scren4','textwin '..i,'textwin '..i,24,false)
    addAnimationByPrefix('scren6','textwin '..i,'textwin '..i,24,false)
    addAnimationByPrefix('scren7','textwin '..i,'textwin '..i,24,false)
    addAnimationByPrefix('scren8','textwin '..i,'textwin '..i,24,false)
end
for i = 1,8 do
addLuaSprite('scren'..i,false)
setProperty('scren'..i..'.visible',false)
end

    objectPlayAnimation('scren1','textwin 1')
    objectPlayAnimation('scren2','textwin 2')
    objectPlayAnimation('scren3','textwin 3')
    objectPlayAnimation('scren4','textwin 4')
    objectPlayAnimation('scren5','textwin 5')
    objectPlayAnimation('scren6','textwin 6')
    objectPlayAnimation('scren7','textwin 7')
    objectPlayAnimation('scren8','textwin 8')
    runTimer('bitchgone',3)
end
function disabletext(value)
    if value == 'true' then
        for i = 1,8 do
            setProperty('scren'..i..'.visible',false)
        end
    end
    if value == 'false' then
        for i = 1,8 do
            setProperty('scren'..i..'.visible',true)
        end
    end
end
function onStepHit()
    if curStep == 383 then
        setProperty('screen.visible',true)
        setProperty('alert.visible',false)
        disabletext('false')
    end
    if curStep == 763 then
        setProperty('screen.visible',false)
        setProperty('alert.visible',true)
        disabletext('true')
    end
    if curStep == 767 then
        setProperty('screen.visible',true)
        setProperty('alert.visible',false)
        disabletext('false')
    end
    if curStep == 1405 then
        setProperty('screen.visible',false)
        setProperty('alert.visible',true)
        disabletext('true')
    end
    if curStep == 1407 then
        cameraFlash('other', 'FFFFFF', 0.4, false)
        setProperty('broken.visible',true)
        setProperty('alert.visible',false)
        doTweenY('brok','broken',900,5,'easeOut')
        doTweenAngle('broke','broken',60,3,'easeOut')
    end
    if curStep == 1479 then
        setProperty('broken.visible',false)
        setProperty('plat.visible',false)
        setProperty('plat2.visible',true)
        scaleObject('backbg',5,5)
        setProperty('backbg.y',-1000)
    end

end

function onCreatePost()
    setObjectOrder('redy',9999)
    setTextFont("scoreTxt", "Square.ttf");
    setProperty('gf.visible',false)
    setProperty('camZooming',true)
    setProperty('iconP2.visible',false)
    setProperty('iconP1.visible',false)
    setProperty('timeBarBG.visible',false)
    setProperty('timeBar.visible',false)
    setProperty('timeTxt.visible',false)
end
function onMoveCamera(focus)
	if focus == 'boyfriend' then
        setProperty('cameraSpeed',0)
        runTimer('th',0.6)
        camzo = false
	elseif focus == 'dad' then
        setProperty('cameraSpeed',0)
        runTimer('th',0.6)
        camzo = false
	end
end

function onUpdatePost()
    setObjectOrder('plat2',getObjectOrder('dad')+18)
    setProperty('bfWinningIcon.x', getProperty('iconP1.x') - 5)
    setProperty('dadWinningIcon.x', getProperty('iconP2.x') + 5)
    setProperty('bfWinningIcon.y', getProperty('iconP1.y'))
	setProperty('dadWinningIcon.y', getProperty('iconP2.y'))
    setObjectOrder('bfWinningIcon', getObjectOrder('healthTS')+1)
    setObjectOrder('dadWinningIcon', getObjectOrder('iconP2') + 1)
end
local camzo = false
function onUpdate()
    if getProperty('healthBar.percent') < 20 then
		objectPlayAnimation('dadWinningIcon','win')
        objectPlayAnimation('bfWinningIcon','lose')
	else
        objectPlayAnimation('bfWinningIcon','neutral')
		objectPlayAnimation('dadWinningIcon','neutral')
	end
    if getProperty('healthBar.percent') > 80 then
		objectPlayAnimation('bfWinningIcon','win')
        objectPlayAnimation('dadWinningIcon','lose')
	else
        objectPlayAnimation('dadWinningIcon','neutral')
		objectPlayAnimation('bfWinningIcon','neutral')
	end
    if camzo then
    if not mustHitSection then
       doTweenZoom('shesh','camGame',0.05,5.5,'easeOut')
    else
       doTweenZoom('shesh','camGame',0.65,5.5,'easeOut')
    end
end
end
function onTimerCompleted(t)
    if t == 'th' then
      camzo = true
        setProperty('cameraSpeed',1.5)
    end
    if t == 'bitchgone' then
        runTimer('bitchback',0.1)
        for i = 1,8 do
        objectPlayAnimation('scren'..i,'textwin '..math.random(1,24))
        end
        runTimer('bitchgone',5)
        for i = 1,8 do
            doTweenY('bitchtime'..i,'scren'..i..'.scale',0,0.1,'easeOut')
        end
    end
    if t == 'bitchback' then
        for i = 1,8 do
            doTweenY('bitchtime'..i,'scren'..i..'.scale',1,0.1,'easeOut')
        end
    end
end
