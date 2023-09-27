function onStartCountdown()
	playSound('ambience', 0, 'virusOSTmoment')
	soundFadeIn('virusOSTmoment', 0.7)
	
end

function onSongStart()
	soundFadeOut('virusOSTmoment', 0.0001)

end

function onCreatePost()
	luaDebugMode = true
end

function onPause()
	pauseSound('virusOSTmoment')
end

function onResume()
	resumeSound('virusOSTmoment')
end