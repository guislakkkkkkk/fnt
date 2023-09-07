function onCreatePost()
	charSwitchTime = 'inactive'
	addCharacterToList('PringlesDies', 'gf')
	addCharacterToList('TorrentGfTest', 'gf')
end

function onEvent(name,value1,value2)	
	if name == 'Pringles dies lmfao' then
		triggerEvent('Change Character', 'gf', 'PringlesDies')
		triggerEvent('Play Animation', 'dies', 'gf')
	end
end

function onBeatHit()

	if charSwitchTime ~= 'inactive' then
		if charSwitchTime < 4 then
			charSwitchTime = charSwitchTime + 1
		else
			triggerEvent('Change Character', 'gf', 'TorrentGfTest')
		end
	end
end