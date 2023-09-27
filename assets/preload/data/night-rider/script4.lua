function onCreate()
	loadGraphic('diaBox', 'dialogue_box', 150)
	loadGraphic('nitroPortrait1', 'dialogue/nangry', 150)
	loadGraphic('torrentPortrait1', 'dialogue/t', 150)
	loadGraphic('diaBG', 'DiaBG', 150)
	songLength = 152000

	Line1 = ''
	Line2 = ''
	L2Progress = 0
	Line1typed = ''
	Line2typed = ''
	typeBuffer = 0
end

function onStartCountdown()
	
end
function onUpdatePost()
	if typeBuffer == 3 then
		typeBuffer = 0
        textProgress = textProgress + 1
	    Line1typed = Line1typed .. string.sub(Line1, textProgress, textProgress)
	    setTextString('DiaLine1', Line1typed)

		if Line2 ~= '' then
			if Line1typed == Line1 then
				Line1finished = true
			end
			if Line1finished then
				L2Progress = L2Progress + 1
				Line2typed = Line2typed .. string.sub(Line2, L2Progress, L2Progress)
				setTextString('DiaLine2', Line2typed)
			end
		end
	else
		typeBuffer = typeBuffer + 1
	end

end

function onStepHit()
	if curStep == 1248 then
		makeLuaSprite('diaBG', 'DiaBG', 0, 0)
		makeLuaSprite('nitroPortrait1', 'dialogue/nangry', -80, -80)
		makeLuaSprite('torrentPortrait1', 'dialogue/t', -80, -80)
		makeLuaSprite('diaBox', 'dialogue_box', 50, 400)
		
		setProperty('torrentPortrait1.scale.x', 0.75)
		setProperty('torrentPortrait1.scale.y', 0.75)
		setProperty('nitroPortrait1.scale.x', 0.75)
		setProperty('nitroPortrait1.scale.y', 0.75)

		setObjectCamera('diaBG', 'hud')
		setObjectCamera('nitroPortrait1', 'hud')
		setObjectCamera('torrentPortrait1', 'hud')
		setObjectCamera('diaBox', 'hud')

		addLuaSprite('diaBG', true)
		addLuaSprite('torrentPortrait1', true)
		addLuaSprite('diaBox', true)

		makeLuaText('DiaLine1', '', 0, 230, 490)
		Line1 = 'Ah, Much better.'
		textProgress = 0
		setTextAlignment('DiaLine1', 'left')
		setTextFont('DiaLine1', 'PIXEAB__.ttf')
		setTextSize('DiaLine1', '32')
		setObjectCamera('DiaLine1', 'hud')
		addLuaText('DiaLine1', true)

		makeLuaText('DiaLine2', '', 0, 230, 535)
		setTextAlignment('DiaLine2', 'left')
		setTextFont('DiaLine2', 'PIXEAB__.ttf')
		setTextSize('DiaLine2', '32')
		setObjectCamera('DiaLine2', 'hud')
	end
	if curStep == 1262 then
		addLuaSprite('nitroPortrait1', true)
		setTextString('DiaLine1', '')
		Line1 = 'Agh what have you done!?'
		textProgress = 0
		Line1typed = ''
		setProperty('torrentPortrait1.alpha', 0)
		setObjectOrder('nitroPortrait1', getObjectOrder('nitroPortrait1')-2)
	end
	if curStep == 1280 then
		setProperty('nitroPortrait1.alpha', 0)
		setTextString('DiaLine1', '')
		Line1 = 'Well i always preferred light'
		textProgress = 0
		Line1typed = ''
		Line2 = 'mode'
		Line2typed = ''
		addLuaText('DiaLine2', true)
		setTextString('DiaLine2', '')
		setProperty('torrentPortrait1.alpha', 1)
		setObjectOrder('nitroPortrait1', getObjectOrder('nitroPortrait1')-2)
	end
	if curStep == 1312 then
		makeLuaSprite('trollent', 'BOOOOOOOOOOO', 0, 0)
		addLuaSprite('trollent', true)
		setObjectCamera('trollent', 'hud')
		doTweenAlpha('aspjdfaoiefheswigf', 'trollent', 0, 1, 'quadIn')
	end
	if curStep == 1324 then
		setProperty('nitroPortrait1.alpha', 0)
		setProperty('torrentPortrait1.alpha', 0)
		setProperty('DiaLine1.alpha', 0)
		setProperty('DiaLine2.alpha', 0)
		setProperty('diaBox.alpha', 0)
		setProperty('diaBG.alpha', 0)
		songLength = 197000
	end
end
