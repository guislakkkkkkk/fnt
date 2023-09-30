local defaultNotePos = {};
function boundTo(value, min, max) return math.max(min, math.min(max, value)) end
function math.lerp(from,to,i)return from+(to-from)*i end
function onCreate()
end
function onCreatePost()
makeAnimatedLuaSprite('healthTS','TS_healthbar',340,640)
addAnimationByPrefix('healthTS','idle','health_move',24,true)
addLuaSprite('healthTS',false)
if downscroll then
    setProperty('healthTS.y',80)
end
setObjectCamera('healthTS','camHUD')
setProperty('healthBarBG.visible',false)
setObjectOrder('healthTS',getObjectOrder('healthBar')+1)
setProperty('camGame.visible',false)

thesy = 190
    makeLuaSprite('warn','badnotes',1500,150)
    addLuaSprite('warn',false)
    scaleObject('warn',0.5,0.5)
    setObjectCamera('warn','other')
    makeLuaSprite('songcredit','songCred',-800,100)
    addLuaSprite('songcredit',false)
    setObjectCamera('songcredit','other')
    makeLuaText('credit1','MAELSTROM ',0,-210,thesy)
    setTextSize('credit1',25)
    setObjectCamera('credit1','other')
    setTextBorder("credit1", 1, '000001')
    addLuaText('credit1')
    makeLuaText('credit2','Artist: rivermusic ',0,-210,thesy+ 40)
    setTextSize('credit2',25)
    setObjectCamera('credit2','other')
    setTextBorder("credit2", 1, '000001')
    addLuaText('credit2')
    makeLuaText('credit3','Artist: zeroh',0,-110,thesy+80)
    setTextSize('credit3',25)
    setObjectCamera('credit3','other')
    setTextBorder("credit3", 1, '000001')
    addLuaText('credit3')
    makeLuaText('credit4','Coder: shadowfi ',0,-110,thesy+120)
    setTextSize('credit4',25)
    setObjectCamera('credit4','other')
    setTextBorder("credit4", 1, '000001')
    addLuaText('credit4')
    makeLuaText('credit5','Port Coder: laztrix ',0,-110,thesy+155)
    setTextSize('credit5',25)
    setObjectCamera('credit5','other')
    setTextBorder("credit5", 1, '000001')
    addLuaText('credit5')
end
local movehud = false
local hudx = -4
local bruhy = 0
local test = false
local multival = 0
local multix = 0
local multiy = 0
local bfturn = false
local startedmove = false
local thv = 1.2
function onMoveCamera(focus)
	if focus == 'boyfriend' then
	bfturn = true
	elseif focus == 'dad' then
	bfturn = false
	end
end
function onCountdownTick(counter)
  if counter == 2 then
    startedmove = true
end
end
function onUpdatePost()
    for i = 1,5 do
    setProperty('credit'..i..'.x',getProperty('songcredit.x')+7)
end
end
function onUpdate(elapsed)
    song_position = -(getPropertyFromClass("Conductor", "songPosition") / 1000) / 0.5
if startedmove then
end
if curStep == 1 then
    startedmove = false
        doTweenX('crr','warn',930,0.5,'sineOut')
        doTweenX('cr','songcredit',0,0.5,'sineOut') 
end
if curStep == 50 then
    doTweenX('crr','warn',1500,0.5,'sineOut')
        doTweenX('cr','songcredit',-900,0.5,'sineOut') 
end

if curStep == 1417 then
    thv = 1.6
end
if curStep == 1419 then
    thv = 2.3
end
if hudx > 100 then
    hudx = -120
end
if movehud then
    hudx = hudx + 1.1
    setProperty('camHUD.x',hudx)
    setProperty('camGame.x',-hudx)
end
end

function onStepHit()
    if curStep == 2 then
        cameraShake('game', 0.009, 11.3)
        cameraShake('hud', 0.009, 11.3)
    end
    if curStep == 127 then
        setProperty('camGame.visible',true)
    end
    if curStep == 375 then
        multival = 4
    end
    if curStep == 383 then
        cameraFlash('other', 'FFFFFF', 0.3, false)
        setProperty('camHUD.angle',0)
        setProperty('camGame.angle',0)
        removeLuaSprite('redy',false)
        multival = 0
    end
    if curStep == 1023 then
        movehud = true
    end
    if curStep == 1280 then
        movehud = false
        setProperty('camHUD.x',0)
        setProperty('camGame.x',0)
    end
    if curStep == 1415 then
        test = true
    end
    if curStep == 1528 then
        cameraShake('game', 0.009, 0.5)
        cameraShake('hud', 0.009, 0.5)
    end
    if curStep == 1792 then
        setProperty('camHUD.angle',0)
        setProperty('camGame.angle',0)
    end
    if curStep == 2446 then
    end
end
