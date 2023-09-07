function onCreate()

	makeAnimatedLuaSprite('reflectionDad', getProperty('dad.imageFile'), getProperty('dad.x')+110, getProperty('dad.y')+600)
	addLuaSprite('reflectionDad', false)
	addAnimationByIndices('reflectionDad', 'left', 'nitro_left', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionDad', 'down', 'nitro_down', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionDad', 'up', 'nitro_up', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionDad', 'right', 'nitro_right', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionDad', 'idle', 'nitro_IDLE', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,13', 24)
	addAnimationByIndices('reflectionDad', 'enough-static', 'nitro_enough', '0,0', 24)
	addAnimationByIndices('reflectionDad', 'enough-static2', 'nitro_enough', '22,22', 24)
	addAnimationByIndices('reflectionDad', 'enough-snap', 'nitro_enough', '30,31,32,33,34,35,36,37,38,39,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40', 24)
	objectPlayAnimation('reflectionDad', 'idle', true)
	setProperty('reflectionDad.flipX', true)
	setProperty('reflectionDad.angle', 180)
	setBlendMode('reflectionDad', 'screen')
	setProperty('reflectionDad.alpha', 1)

	makeAnimatedLuaSprite('reflectionBf', getProperty('boyfriend.imageFile'), getProperty('boyfriend.x'), getProperty('boyfriend.y')+350)
	addLuaSprite('reflectionBf', false)
	addAnimationByIndices('reflectionBf', 'left', 'BF NOTE LEFT0', '0,1,2,3', 24)
	addAnimationByIndices('reflectionBf', 'down', 'BF NOTE DOWN0', '0,1,2,3', 24)
	addAnimationByIndices('reflectionBf', 'up', 'BF NOTE UP0', '0,1,2,3', 24)
	addAnimationByIndices('reflectionBf', 'right', 'BF NOTE RIGHT0', '0,1,2,3', 24)
	addAnimationByIndices('reflectionBf', 'idle', 'BF idle dance', '0,1,2,3,4,5,6,7,8,9,10,11,12,13,13', 24)
	addAnimationByIndices('reflectionBf', 'hey', 'BF HEY!!', '0,1,2,3,4,5,6,7,8,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10', 24)
	objectPlayAnimation('reflectionBf', 'idle', true)
	setProperty('reflectionBf.flipX', true)
	setProperty('reflectionBf.angle', 180)
	setBlendMode('reflectionBf', 'screen')
	setProperty('reflectionBf.alpha', 1)
	
	makeAnimatedLuaSprite('reflectionGf1', 'characters/TORRENT_BOOMBOX_ERROR', getProperty('gf.x')-26, getProperty('gf.y')+296)
	addLuaSprite('reflectionGf1', false)
	addAnimationByPrefix('reflectionGf1', 'hmmm', 'TORRENT somethings not right', 24, false)
	setProperty('reflectionGf1.flipX', true)
	setProperty('reflectionGf1.angle', 180)
	setBlendMode('reflectionGf1', 'screen')
	setProperty('reflectionGf1.alpha', 0.0001)
	setProperty('reflectionGf1.scale.x', 0.8)
	setProperty('reflectionGf1.scale.y', 0.8)

	makeAnimatedLuaSprite('reflectionGf', 'characters/TORRENT_BOOMBOX', getProperty('gf.x'), getProperty('gf.y')+300)
	addLuaSprite('reflectionGf', false)
	addAnimationByIndices('reflectionGf', 'danceL', 'TORRENT dancing beat', '27,0,1,2,3,4,5,6,7,8,9,10,11,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12', 24)
	addAnimationByIndices('reflectionGf', 'danceR', 'TORRENT dancing beat', '13,15,16,17,18,19,20,21,22,23,24,25,26,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27', 24)
	addAnimationByIndices('reflectionGf', 'left', 'TORRENT left', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionGf', 'down', 'TORRENT down', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionGf', 'up', 'TORRENT up', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionGf', 'right', 'TORRENT right', '1,2,3,4,5,6,7,8,9,10', 24)
	addAnimationByIndices('reflectionGf', 'hey-loop', 'TORRENT peace sign', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19', 24)
	setProperty('reflectionGf.flipX', true)
	setProperty('reflectionGf.angle', 180)
	setBlendMode('reflectionGf', 'screen')
	setProperty('reflectionGf.alpha', 1)
	setObjectOrder('reflectionGf', getObjectOrder('stage1')+1)
	setProperty('reflectionGf.scale.x', 0.8)
	setProperty('reflectionGf.scale.y', 0.8)

end

function onUpdate()
	if getProperty('dad.animation.curAnim.name') == 'idle' then
		objectPlayAnimation('reflectionDad', 'idle', false)
		setProperty('reflectionDad.offset.x', 40)
		setProperty('reflectionDad.offset.y', 0)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		objectPlayAnimation('reflectionBf', 'idle', false)
		setProperty('reflectionBf.offset.x', 0)
		setProperty('reflectionBf.offset.y', 0)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'hey' then
		objectPlayAnimation('reflectionBf', 'hey', false)
		setProperty('reflectionBf.offset.x', 0)
		setProperty('reflectionBf.offset.y', 0)
	end
	if getProperty('gf.animation.curAnim.name') == 'danceLeft' then
		objectPlayAnimation('reflectionGf', 'danceL', false)
		objectPlayAnimation('reflectionGf2', 'danceL', false)
		setProperty('reflectionGf2.offset.x', 0)
		setProperty('reflectionGf2.offset.y', 0)
		setProperty('reflectionGf.offset.x', 0)
		setProperty('reflectionGf.offset.y', 0)
	end
	if getProperty('gf.animation.curAnim.name') == 'danceRight' then
		objectPlayAnimation('reflectionGf', 'danceR', false)
		objectPlayAnimation('reflectionGf2', 'danceR', false)
		setProperty('reflectionGf2.offset.x', 0)
		setProperty('reflectionGf2.offset.y', 0)
		setProperty('reflectionGf.offset.x', 0)
		setProperty('reflectionGf.offset.y', 0)
	end
		if getProperty('gf.animation.curAnim.name') == 'hey' then
		objectPlayAnimation('reflectionGf2', 'hey-loop', false)
		setProperty('reflectionGf2.offset.x', 0)
		setProperty('reflectionGf2.offset.y', 0)
	end
end

function opponentNoteHit(id, direction, note, sus)
	if direction == 0 then
		objectPlayAnimation('reflectionDad', 'left', true)
		setProperty('reflectionDad.offset.x', 88)
		setProperty('reflectionDad.offset.y', -6)
		if note == 'GF Sing' then
			objectPlayAnimation('reflectionGf2', 'left', true)
			if getProperty('gf.animation.curAnim.name') == 'singLEFT-long' then
				objectPlayAnimation('reflectionGf2', 'left-long', true)
			end
			setProperty('reflectionGf2.offset.x', 0)
			setProperty('reflectionGf2.offset.y', 6)
		end
	end
	if direction == 1 then
		objectPlayAnimation('reflectionDad', 'down', true)
		setProperty('reflectionDad.offset.x', 80)
		setProperty('reflectionDad.offset.y', 36)
		if note == 'GF Sing' then
			objectPlayAnimation('reflectionGf2', 'down', true)
			if getProperty('gf.animation.curAnim.name') == 'singDOWN-long' then
				objectPlayAnimation('reflectionGf2', 'down-long', true)
			end
			setProperty('reflectionGf2.offset.x', 0)
			setProperty('reflectionGf2.offset.y', 24)
		end
	end
	if direction == 2 then
		objectPlayAnimation('reflectionDad', 'up', true)
		setProperty('reflectionDad.offset.x', -8)
		setProperty('reflectionDad.offset.y', -32)
		if note == 'GF Sing' then
			objectPlayAnimation('reflectionGf2', 'up', true)
			if getProperty('gf.animation.curAnim.name') == 'singUP-long' then
				objectPlayAnimation('reflectionGf2', 'up-long', true)
			end
			setProperty('reflectionGf2.offset.x', 0)
			setProperty('reflectionGf2.offset.y', -50)
		end
	end
	if direction == 3 then
		objectPlayAnimation('reflectionDad', 'right', true)
		setProperty('reflectionDad.offset.x', -90)
		setProperty('reflectionDad.offset.y', 16)
		if note == 'GF Sing' then
			objectPlayAnimation('reflectionGf2', 'right', true)
			if getProperty('gf.animation.curAnim.name') == 'singRIGHT-long' then
				objectPlayAnimation('reflectionGf2', 'right-long', true)
			end
			setProperty('reflectionGf2.offset.x', 0)
			setProperty('reflectionGf2.offset.y', 9)
		end
	end
	
end

function goodNoteHit(id, direction, note, sus)
	if direction == 0 then
		objectPlayAnimation('reflectionBf', 'left', true)
		setProperty('reflectionBf.offset.x', 36)
		setProperty('reflectionBf.offset.y', 12)
	end
	if direction == 1 then
		objectPlayAnimation('reflectionBf', 'down', true)
		setProperty('reflectionBf.offset.x', 16)
		setProperty('reflectionBf.offset.y', 42)
	end
	if direction == 2 then
		objectPlayAnimation('reflectionBf', 'up', true)
		setProperty('reflectionBf.offset.x', 0)
		setProperty('reflectionBf.offset.y', -24)
	end
	if direction == 3 then
		objectPlayAnimation('reflectionBf', 'right', true)
		setProperty('reflectionBf.offset.x', -40)
		setProperty('reflectionBf.offset.y', 6)
	end
	
end
function onCreatePost()
	setObjectOrder('reflectionGf', getObjectOrder('platformTop')+1)
	setObjectOrder('reflectionDad', getObjectOrder('reflectionGf')+1)
	setObjectOrder('reflectionBf', getObjectOrder('reflectionDad')+1)
	setObjectOrder('platformBottom', getObjectOrder('reflectionBf')+1)
end

function onStepHit()
	if curStep == 1210 then
		setProperty('reflectionGf.alpha', 0.0001)
		setProperty('reflectionGf1.alpha', 1)
		objectPlayAnimation('reflectionGf1', 'hmmm', true)
	end
	if curStep == 1324 then
		setProperty('reflectionGf1.alpha', 0.0001)
		setProperty('reflectionGf.alpha', 1)
	end
end