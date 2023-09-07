function onStartCountdown()
	playSound('ambience2', 0, 'discordOSTreal')
	soundFadeIn('discordOSTreal', 0.7)
	
end

function onSongStart()
	soundFadeOut('discordOSTreal', 0.0001)

end

function onCreatePost()
	luaDebugMode = true
end

function onPause()
	pauseSound('discordOSTreal')
end

function onResume()
	resumeSound('discordOSTreal')
end