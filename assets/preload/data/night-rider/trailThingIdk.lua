
-- I don't know what to call these animations so I'm just calling them "trails". Idk if they actually have a name.


-- The function below sets what steps in the song the trail animations get enabled and disabled. This is what you should edit if you want to use it for your own stuff.
function onStepHit()

	if curStep == 368 then
		trailAnimEnabled = true
	end

	if curStep == 572 then
		trailAnimEnabled = false
	end

	if curStep == 959 then
		trailAnimEnabled = true
	end

	if curStep == 1088 then
		trailAnimEnabled = false
	end

	if curStep == 1471 then
		trailAnimEnabled = true
	end

end

function opponentNoteHit(id, direction, note, isSustainNote)
	if trailAnimEnabled then
		if isSustainNote == false then
			if direction == 0 then
				makeDadImage(0)
				dadLeftImageTimer = 0
			end
			if direction == 1 then
				makeDadImage(1)
				dadDownImageTimer = 0
			end
			if direction == 2 then
				makeDadImage(2)
				dadUpImageTimer = 0
			end
			if direction == 3 then
				makeDadImage(3)
				dadRightImageTimer = 0
			end
		else
			if direction == 0 then
				if dadLeftImageTimer < 6 then
					dadLeftImageTimer = dadLeftImageTimer + 1
				else
					makeDadImage(0)
					bfLeftImageTimer = 0
				end
			end
			if direction == 1 then
				if dadDownImageTimer < 6 then
					dadDownImageTimer = dadDownImageTimer + 1
				else
					makeDadImage(1)
					dadDownImageTimer = 0
				end
			end
			if direction == 2 then
				if dadUpImageTimer < 6 then
					dadUpImageTimer = dadUpImageTimer + 1
				else
					makeDadImage(2)
					dadUpImageTimer = 0
				end
			end
			if direction == 3 then
				if dadRightImageTimer < 6 then
					dadRightImageTimer = dadRightImageTimer + 1
				else
					makeDadImage(3)
					dadRightImageTimer = 0
				end
			end
		end
	end
end

function goodNoteHit(id, direction, note, isSustainNote)
	if trailAnimEnabled then
		if isSustainNote == false then
			if direction == 0 then
				makeBfImage(0)
				bfLeftImageTimer = 0
			end
			if direction == 1 then
				makeBfImage(1)
				bfDownImageTimer = 0
			end
			if direction == 2 then
				makeBfImage(2)
				bfUpImageTimer = 0
			end
			if direction == 3 then
				makeBfImage(3)
				bfRightImageTimer = 0
			end
		else
			if direction == 0 then
				if bfLeftImageTimer < 6 then
					bfLeftImageTimer = bfLeftImageTimer + 1
				else
					makeBfImage(0)
					bfLeftImageTimer = 0
				end
			end
			if direction == 1 then
				if bfDownImageTimer < 6 then
					bfDownImageTimer = bfDownImageTimer + 1
				else
					makeBfImage(1)
					bfDownImageTimer = 0
				end
			end
			if direction == 2 then
				if bfUpImageTimer < 6 then
					bfUpImageTimer = bfUpImageTimer + 1
				else
					makeBfImage(2)
					bfUpImageTimer = 0
				end
			end
			if direction == 3 then
				if bfRightImageTimer < 6 then
					bfRightImageTimer = bfRightImageTimer + 1
				else
					makeBfImage(3)
					bfRightImageTimer = 0
				end
			end
		end
	end
end

function makeBfImage(note)
	if note == 0 then
		if bfLeftImageBuffer == 'imageBfleft1' then
			bfLeftImageBuffer = 'imageBfleft2'
		else
			if bfLeftImageBuffer == 'imageBfleft2' then
				bfLeftImageBuffer = 'imageBfleft3'
			else
				bfLeftImageBuffer = 'imageBfleft1'
			end
		end
		makeAnimatedLuaSprite(bfLeftImageBuffer, getProperty('boyfriend.imageFile'), getProperty('boyfriend.x'), getProperty('boyfriend.y'))
		addAnimationByIndices(bfLeftImageBuffer, 'left', 'BF NOTE LEFT0', '0,1', 24)
		objectPlayAnimation(bfLeftImageBuffer, 'left', true)
		addLuaSprite(bfLeftImageBuffer, false)
		setProperty(bfLeftImageBuffer .. '.offset.x', 5)
		setProperty(bfLeftImageBuffer .. '.offset.y', -6)
		doTweenX(bfLeftImageBuffer .. '.x', bfLeftImageBuffer, getProperty('boyfriend.x')-60, 0.4, 'expoOut')
		setObjectOrder(bfLeftImageBuffer, getObjectOrder('boyfriendGroup')-1)
		doTweenAlpha(bfLeftImageBuffer .. '.alpha', bfLeftImageBuffer, 0, 0.4, 'sineOut')
	end

	if note == 1 then
		if bfDownImageBuffer == 'imageBfdown1' then
			bfDownImageBuffer = 'imageBfdown2'
		else
			if bfDownImageBuffer == 'imageBfdown2' then
				bfDownImageBuffer = 'imageBfdown3'
			else
				bfDownImageBuffer = 'imageBfdown1'
			end
		end
		makeAnimatedLuaSprite(bfDownImageBuffer, getProperty('boyfriend.imageFile'), getProperty('boyfriend.x'), getProperty('boyfriend.y'))
		addAnimationByIndices(bfDownImageBuffer, 'down', 'BF NOTE DOWN0', '0,1', 24)
		objectPlayAnimation(bfDownImageBuffer, 'down', true)
		addLuaSprite(bfDownImageBuffer, false)
		setProperty(bfDownImageBuffer .. '.offset.x', -20)
		setProperty(bfDownImageBuffer .. '.offset.y', -51)
		doTweenY(bfDownImageBuffer .. '.y', bfDownImageBuffer, getProperty('boyfriend.y')+60, 0.4, 'expoOut')
		setObjectOrder(bfDownImageBuffer, getObjectOrder('boyfriendGroup')-1)
		doTweenAlpha(bfDownImageBuffer .. '.alpha', bfDownImageBuffer, 0, 0.4, 'sineOut')
	end

	if note == 2 then
		if bfUpImageBuffer == 'imageBfup1' then
			bfUpImageBuffer = 'imageBfup2'
		else
			if bfUpImageBuffer == 'imageBfup2' then
				bfUpImageBuffer = 'imageBfup3'
			else
				bfUpImageBuffer = 'imageBfup1'
			end
		end
		makeAnimatedLuaSprite(bfUpImageBuffer, getProperty('boyfriend.imageFile'), getProperty('boyfriend.x'), getProperty('boyfriend.y'))
		addAnimationByIndices(bfUpImageBuffer, 'up', 'BF NOTE UP0', '0,1', 24)
		objectPlayAnimation(bfUpImageBuffer, 'up', true)
		addLuaSprite(bfUpImageBuffer, false)
		setProperty(bfUpImageBuffer .. '.offset.x', -46)
		setProperty(bfUpImageBuffer .. '.offset.y', 27)
		doTweenY(bfUpImageBuffer .. '.y', bfUpImageBuffer, getProperty('boyfriend.y')-60, 0.4, 'expoOut')
		setObjectOrder(bfUpImageBuffer, getObjectOrder('boyfriendGroup')-1)
		doTweenAlpha(bfUpImageBuffer .. '.alpha', bfUpImageBuffer, 0, 0.4, 'sineOut')
	end

	if note == 3 then
		if bfRightImageBuffer == 'imageBfright1' then
			bfRightImageBuffer = 'imageBfright2'
		else
			if bfRightImageBuffer == 'imageBfright2' then
				bfRightImageBuffer = 'imageBfright3'
			else
				bfRightImageBuffer = 'imageBfright1'
			end
		end
		makeAnimatedLuaSprite(bfRightImageBuffer, getProperty('boyfriend.imageFile'), getProperty('boyfriend.x'), getProperty('boyfriend.y'))
		addAnimationByIndices(bfRightImageBuffer, 'right', 'BF NOTE RIGHT0', '0,1', 24)
		objectPlayAnimation(bfRightImageBuffer, 'right', true)
		addLuaSprite(bfRightImageBuffer, false)
		setProperty(bfRightImageBuffer .. '.offset.x', -48)
		setProperty(bfRightImageBuffer .. '.offset.y', -7)
		doTweenX(bfRightImageBuffer .. '.x', bfRightImageBuffer, getProperty('boyfriend.x')+60, 0.4, 'expoOut')
		setObjectOrder(bfRightImageBuffer, getObjectOrder('boyfriendGroup')-1)
		doTweenAlpha(bfRightImageBuffer .. '.alpha', bfRightImageBuffer, 0, 0.4, 'sineOut')
	end
end





function makeDadImage(note)
	if note == 0 then
		if dadLeftImageBuffer == 'imageDadLeft1' then
			dadLeftImageBuffer = 'imageDadLeft2'
		else
			if dadLeftImageBuffer == 'imageDadLeft2' then
				dadLeftImageBuffer = 'imageDadLeft3'
			else
				dadLeftImageBuffer = 'imageDadLeft1'
			end
		end
		makeAnimatedLuaSprite(dadLeftImageBuffer, getProperty('dad.imageFile'), getProperty('dad.x'), getProperty('dad.y'))
		addAnimationByIndices(dadLeftImageBuffer, 'left', 'nitro_left', '0,1', 24)
		objectPlayAnimation(dadLeftImageBuffer, 'left', true)
		addLuaSprite(dadLeftImageBuffer, false)
		setProperty(dadLeftImageBuffer .. '.offset.x', 0)
		setProperty(dadLeftImageBuffer .. '.offset.y', 0)
		doTweenX(dadLeftImageBuffer .. '.x', dadLeftImageBuffer, getProperty('dad.x')-60, 0.4, 'expoOut')
		setObjectOrder(dadLeftImageBuffer, getObjectOrder('dadGroup')-1)
		doTweenAlpha(dadLeftImageBuffer .. '.alpha', dadLeftImageBuffer, 0, 0.4, 'sineOut')
	end

	if note == 1 then
		if dadDownImageBuffer == 'imageDadDown1' then
			dadDownImageBuffer = 'imageDadDown2'
		else
			if dadDownImageBuffer == 'imageDadDown2' then
				dadDownImageBuffer = 'imageDadDown3'
			else
				dadDownImageBuffer = 'imageDadDown1'
			end
		end
		makeAnimatedLuaSprite(dadDownImageBuffer, getProperty('dad.imageFile'), getProperty('dad.x'), getProperty('dad.y'))
		addAnimationByIndices(dadDownImageBuffer, 'down', 'nitro_down', '0,1', 24)
		objectPlayAnimation(dadDownImageBuffer, 'down', true)
		addLuaSprite(dadDownImageBuffer, false)
		setProperty(dadDownImageBuffer .. '.offset.x', 0)
		setProperty(dadDownImageBuffer .. '.offset.y', -46)
		doTweenY(dadDownImageBuffer .. '.y', dadDownImageBuffer, getProperty('dad.y')+60, 0.4, 'expoOut')
		setObjectOrder(bfDownImageBuffer, getObjectOrder('dadGroup')-1)
		doTweenAlpha(dadDownImageBuffer .. '.alpha', dadDownImageBuffer, 0, 0.4, 'sineOut')
	end

	if note == 2 then
		if dadUpImageBuffer == 'imageDadUp1' then
			dadUpImageBuffer = 'imageDadUp2'
		else
			if dadUpImageBuffer == 'imageDadUp2' then
				dadUpImageBuffer = 'imageDadUp3'
			else
				dadUpImageBuffer = 'imageDadUp1'
			end
		end
		makeAnimatedLuaSprite(dadUpImageBuffer, getProperty('dad.imageFile'), getProperty('dad.x'), getProperty('dad.y'))
		addAnimationByIndices(dadUpImageBuffer, 'up', 'nitro_up', '0,1', 24)
		objectPlayAnimation(dadUpImageBuffer, 'up', true)
		addLuaSprite(dadUpImageBuffer, false)
		setProperty(dadUpImageBuffer .. '.offset.x', 14)
		setProperty(dadUpImageBuffer .. '.offset.y', 37)
		doTweenY(dadUpImageBuffer .. '.y', dadUpImageBuffer, getProperty('dad.y')-60, 0.4, 'expoOut')
		setObjectOrder(dadUpImageBuffer, getObjectOrder('dadGroup')-1)
		doTweenAlpha(dadUpImageBuffer .. '.alpha', dadUpImageBuffer, 0, 0.4, 'sineOut')
	end

	if note == 3 then
		if dadRightImageBuffer == 'imageDadRight1' then
			dadRightImageBuffer = 'imageDadRight2'
		else
			if dadRightImageBuffer == 'imageDadRight2' then
				dadRightImageBuffer = 'imageDadRight3'
			else
				dadRightImageBuffer = 'imageDadRight1'
			end
		end
		makeAnimatedLuaSprite(dadRightImageBuffer, getProperty('dad.imageFile'), getProperty('dad.x'), getProperty('dad.y'))
		addAnimationByIndices(dadRightImageBuffer, 'right', 'nitro_right', '0,1', 24)
		objectPlayAnimation(dadRightImageBuffer, 'right', true)
		addLuaSprite(dadRightImageBuffer, false)
		setProperty(dadRightImageBuffer .. '.offset.x', -20)
		setProperty(dadRightImageBuffer .. '.offset.y', 0)
		doTweenX(dadRightImageBuffer .. '.x', dadRightImageBuffer, getProperty('dad.x')+60, 0.4, 'expoOut')
		setObjectOrder(dadRightImageBuffer, getObjectOrder('dadGroup')-1)
		doTweenAlpha(dadRightImageBuffer .. '.alpha', dadRightImageBuffer, 0, 0.4, 'sineOut')
	end
end