local allowCountdown = false
local canskip = true
local dialstage = -999999999

function onCreate()
	Line1 = ''
	Line2 = ''
	Line3 = ''
	Line4 = ''
	Line5 = ''
	L2Progress = 0
	L3Progress = 0
	L4Progress = 0
	L5Progress = 0
	Line1typed = ''
	Line2typed = ''
	Line3typed = ''
	Line4typed = ''
	Line5typed = ''
	typeBuffer = 0
	dialogueActive = false
end

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue

	if not allowCountdown and not seenCutscene and isStoryMode then
	--if not allowCountdown and isStoryMode then
	--replace the if statement with the line above to enable dialogue replaying on song restart. it makes testing this script a little bit easier.
        
		setProperty('inCutscene', true);
		setProperty('healthBar.alpha', 0)
		setProperty('thehealth.alpha', 0)
		setProperty('thehealth-shade-opp.alpha', 0)
		setProperty('thehealth-shade-play.alpha', 0)
        setProperty('iconP1.alpha', 0)
        setProperty('iconP2.alpha', 0)
        setProperty('scoreTxt.alpha', 0)
		setProperty('HealthbarThing.alpha', 0)
		runTimer('whoaPrecountdownanim', 2, 1)
		allowCountdown = true;
		dialogueActive = true
		return Function_Stop;

	end
	return Function_Continue;
end

function onUpdate()
	if dialogueActive then
		setProperty('HealthbarThing.alpha', 0)
		if mousePressed ('accept') and dialogueActive then
			dialstage = dialstage + 1
			playSound('clickText', 1)
			nextLine(dialstage)
		end
		if keyJustPressed('back') and dialogueActive then
			dialogueActive = false
			doTweenAlpha('dialogueFadeOut', 'diaBg', 0, 1)
			doTweenAlpha('diaBox.alpha', 'diaBox', 0, 1)
			doTweenAlpha('torrentPortrait1.alpha', 'torrentPortrait1', 0, 1)
			doTweenAlpha('bfPortrait1.alpha', 'bfPortrait1', 0, 1)
			doTweenAlpha('DiaLine1.alpha', 'DiaLine1', 0, 1)
			doTweenAlpha('DiaLine2.alpha', 'DiaLine2', 0, 1)
			doTweenAlpha('DiaLine3.alpha', 'DiaLine3', 0, 1)
			doTweenAlpha('DiaLine4.alpha', 'DiaLine4', 0, 1)
			doTweenAlpha('DiaLine5.alpha', 'DiaLine5', 0, 1)
			doTweenAlpha('pressEsc.alpha', 'pressEsc', 0, 1)
			doTweenAlpha('diaBottom.alpha', 'diaBottom', 0, 1)
			setProperty('gf.visible', false)
			setProperty('gfGroup.y', 2000)
		end
	end
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

				if Line3 ~= '' then
					if Line2typed == Line2 then
						Line2finished = true
					end
					if Line2finished then
						L3Progress = L3Progress + 1
						Line3typed = Line3typed .. string.sub(Line3, L3Progress, L3Progress)
						setTextString('DiaLine3', Line3typed)
						if Line4 ~= '' then
							if Line3typed == Line3 then
								Line3finished = true
							end
							if Line3finished then
								L4Progress = L4Progress + 1
								Line4typed = Line4typed .. string.sub(Line4, L4Progress, L4Progress)
								setTextString('DiaLine4', Line4typed)
								if Line5 ~= '' then
									if Line4typed == Line4 then
										Line4finished = true
									end
									if Line4finished then
										L5Progress = L5Progress + 1
										Line5typed = Line5typed .. string.sub(Line5, L5Progress, L5Progress)
										setTextString('DiaLine5', Line5typed)
									end
								end
							end
						end
					end
				end
			end
		end
	else
		typeBuffer = typeBuffer + 1
	end

end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'dialogueFadeOut' then
        startCountdown();

	end

	if tag == 'whoaPrecountdownanim' then
		makeLuaSprite('diaBg', 'DiaBG', 0, 0)
		setObjectCamera('diaBg', 'other')
		addLuaSprite('diaBg', true)

		makeLuaSprite('torrentPortrait1', 'dialogue/t', -80, -80)
		makeLuaSprite('bfPortrait1', 'dialogue/bf', 180, -130)
		setProperty('torrentPortrait1.scale.x', 0.75)
		setProperty('torrentPortrait1.scale.y', 0.75)
		setProperty('bfPortrait1.scale.x', 0.75)
		setProperty('bfPortrait1.scale.y', 0.75)
		setObjectCamera('bfPortrait1', 'other')
		setObjectCamera('torrentPortrait1', 'other')
		addLuaSprite('torrentPortrait1', true)
		addLuaSprite('bfPortrait1',true)
		setProperty('bfPortrait1.alpha', 0)

		makeLuaSprite('diaBottom', 'DiaBGbottom', 0, screenHeight-40)
		setObjectCamera('diaBottom', 'other')
		addLuaSprite('diaBottom', true)

		makeLuaText('pressEsc', '<<Press ESC to skip all dialogue>>', 0, 380, screenHeight-35)
		setTextFont('pressEsc', 'vcr (og).ttf')
		setTextSize('pressEsc', '25')
		setObjectCamera('pressEsc', 'other')
		addLuaText('pressEsc', true)

		makeLuaSprite('diaBox', 'dialogue_box', 50, 400)
		setObjectCamera('diaBox', 'other')
		addLuaSprite('diaBox', true)

		dialstage = 1
		playSound('voiceActing/song3_0', 1)

		makeLuaText('DiaLine1', '', 0, 230, 490)
		Line1 = "I must thank you, boyfriend.xml!"
		textProgress = 0
		setTextAlignment('DiaLine1', 'left')
		setTextFont('DiaLine1', 'PIXEAB__.ttf')
		setTextSize('DiaLine1', '32')
		setObjectCamera('DiaLine1', 'other')
		addLuaText('DiaLine1', true)

		makeLuaText('DiaLine2', '', 0, 230, 535)
		Line2 = "It's been ages since I've been"
		Line2typed = ''
		setTextAlignment('DiaLine2', 'left')
		setTextFont('DiaLine2', 'PIXEAB__.ttf')
		setTextSize('DiaLine2', '32')
		setObjectCamera('DiaLine2', 'other')
		addLuaText('DiaLine2', true)

		makeLuaText('DiaLine3', '', 0, 230, 580)
		Line3 = "able to cut loose like this"
		Line3typed = ''
		setTextAlignment('DiaLine3', 'left')
		setTextFont('DiaLine3', 'PIXEAB__.ttf')
		setTextSize('DiaLine3', '32')
		setObjectCamera('DiaLine3', 'other')
		addLuaText('DiaLine3', true)

		makeLuaText('DiaLine4', '', 0, 230, 625)
		Line4 = ''
		Line4typed = ''
		setTextAlignment('DiaLine4', 'left')
		setTextFont('DiaLine4', 'PIXEAB__.ttf')
		setTextSize('DiaLine4', '32')
		setObjectCamera('DiaLine4', 'other')
		addLuaText('DiaLine4', true)

		makeLuaText('DiaLine5', '', 0, 230, 670)
		Line5 = ''
		Line5typed = ''
		setTextAlignment('DiaLine5', 'left')
		setTextFont('DiaLine5', 'PIXEAB__.ttf')
		setTextSize('DiaLine5', '32')
		setObjectCamera('DiaLine5', 'other')
		addLuaText('DiaLine5', true)
	end
end

function nextLine(number)
	
	if number == 2 then
		setProperty('bfPortrait1.alpha', 1)
		setProperty('torrentPortrait1.alpha', 0)
		Line1 = "bebop (no problem)"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = ''
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ''
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ''
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ''
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_1', 1)
	end

	if number == 3 then
		setProperty('bfPortrait1.alpha', 0)
		setProperty('torrentPortrait1.alpha', 1)
		Line1 = "...Hey I just came up with an"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = 'idea!'
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ''
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ''
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ''
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_2', 1)
	end

	if number == 4 then
		Line1 = "I'll keep you trapped here in this"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = 'space, and that way we can'
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = 'continue our game for eternity!'
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ''
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ''
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_3', 1)
	end

	if number == 5 then
		setProperty('bfPortrait1.alpha', 1)
		setProperty('torrentPortrait1.alpha', 0)
		Line1 = "bibbity boop?"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = ''
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ''
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ''
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ''
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_4', 1)
	end

	if number == 6 then
		setProperty('bfPortrait1.alpha', 0)
		setProperty('torrentPortrait1.alpha', 1)
		Line1 = "Oops! Your character file has"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = 'been encrypted.'
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ''
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ''
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ''
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_5', 1)
	end

	if number == 7 then
		setProperty('bfPortrait1.alpha', 0)
		setProperty('torrentPortrait1.alpha', 1)
		Line1 = "... Hey, have you ever wondered"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = 'why your girlfriend suddenly'
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = 'showed up?'
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ''
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ''
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_6', 1)
	end

	if number == 8 then
		setProperty('bfPortrait1.alpha', 1)
		setProperty('torrentPortrait1.alpha', 0)
		Line1 = "???"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = ''
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ''
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ''
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ''
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

	end

	if number == 9 then
		setProperty('bfPortrait1.alpha', 0)
		setProperty('torrentPortrait1.alpha', 1)
		Line1 = "She doesn't truly exist in this"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = 'space, I just thought coding her'
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = 'character file in would give you'
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = "a lil' more incentive to stay"
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = 'perhaps.'
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_8', 1)
	end

	if number == 10 then
		setProperty('bfPortrait1.alpha', 1)
		setProperty('torrentPortrait1.alpha', 0)
		Line1 = "boppitybo (you funking WHAT)"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = ""
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ""
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ""
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ""
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_9', 1)

		setProperty('gf.visible', false)
		setProperty('gfGroup.y', 2000)
	end

	if number == 11 then
		setProperty('bfPortrait1.alpha', 0)
		setProperty('torrentPortrait1.alpha', 1)
		Line1 = "Well if you truly want to see"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = "your girlfriend again..."
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ""
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ""
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ""
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_10', 1)
	end

	if number == 12 then
		setProperty('bfPortrait1.alpha', 0)
		setProperty('torrentPortrait1.alpha', 1)
		Line1 = "Let's see if you can break out of"
		textProgress = 0
		Line1typed = ''
		Line1finished = false
		Line2 = "this one..."
		setTextString('DiaLine2', '')
		Line2typed = ''
		L2Progress = 0
		Line2finished = false
		Line3 = ""
		setTextString('DiaLine3', '')
		Line3typed = ''
		L3Progress = 0
		Line3finished = false
		Line4 = ""
		setTextString('DiaLine4', '')
		Line4typed = ''
		L4Progress = 0
		Line4finished = false
		Line5 = ""
		setTextString('DiaLine5', '')
		Line5typed = ''
		L5Progress = 0

		playSound('voiceActing/song3_11', 1)
	end

	if number == 13 then
		doTweenAlpha('dialogueFadeOut', 'diaBg', 0, 1)
		doTweenAlpha('diaBox.alpha', 'diaBox', 0, 1)
		doTweenAlpha('torrentPortrait1.alpha', 'torrentPortrait1', 0, 1)
		doTweenAlpha('bfPortrait1.alpha', 'bfPortrait1', 0, 1)
		doTweenAlpha('DiaLine1.alpha', 'DiaLine1', 0, 1)
		doTweenAlpha('DiaLine2.alpha', 'DiaLine2', 0, 1)
		doTweenAlpha('DiaLine3.alpha', 'DiaLine3', 0, 1)
		doTweenAlpha('DiaLine4.alpha', 'DiaLine4', 0, 1)
		doTweenAlpha('DiaLine5.alpha', 'DiaLine5', 0, 1)
		doTweenAlpha('pressEsc.alpha', 'pressEsc', 0, 1)
		doTweenAlpha('diaBottom.alpha', 'diaBottom', 0, 1)
		dialogueActive = false
	end

end

function onTweenCompleted(tag)
	
	if tag == 'dialogueFadeOut' then
		setProperty('scoreTxt.alpha', 1)
		setProperty('healthBar.alpha', 1)
		setProperty('thehealth.alpha', 1)
		setProperty('thehealth-shade-opp.alpha', 1)
		setProperty('thehealth-shade-play.alpha', 1)
        setProperty('iconP1.alpha', 1)
        setProperty('iconP2.alpha', 1)
		setProperty('HealthbarThing.alpha', 1)
		startCountdown();
	end

end