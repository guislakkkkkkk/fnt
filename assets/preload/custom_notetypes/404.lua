function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == '404' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', '404Note'); --Change texture
		    setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
		end
	end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == '404' then
		setProperty('health',getProperty('health')-0.4)
	end
end