function onCreatePost()
	charSwitchTime = 'inactive'
	addCharacterToList('TorrentHmmm', 'gf')
end

function onEvent(name,value1,value2)	
	if name == 'Torrent Error' then
		triggerEvent('Change Character', 'gf', 'TorrentHmmm')
		triggerEvent('Play Animation', 'Error', 'gf')
		charSwitchTime = 'torrentHmmm'
	end
end

function onStepHit()
	if curStep == 1324 then
		if charSwitchTime == 'torrentHmmm' then
			triggerEvent('Change Character', 'gf', 'TorrentGfTest')
		end
	end
end