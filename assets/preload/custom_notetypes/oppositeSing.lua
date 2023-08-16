-- Notetype By Elykdanger

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'oppositeSing' then
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'oppositeSing' then
		local note = 'UP'
		
		if direction == 0 then
			note = 'LEFT'
		elseif direction == 1 then
			note = 'DOWN'
		elseif direction == 2 then
			note = 'UP'
		elseif direction == 3 then
			note = 'RIGHT'
		end
		
		triggerEvent('Play Animation', 'sing'..note, 'dad')
		setProperty('dad.holdTimer', 0)
	end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'oppositeSing' then
		local note = 'UP'
		
		if direction == 0 then
			note = 'LEFT'
		elseif direction == 1 then
			note = 'DOWN'
		elseif direction == 2 then
			note = 'UP'
		elseif direction == 3 then
			note = 'RIGHT'
		end
		
		triggerEvent('Play Animation', 'sing'..note, 'bf')
	end
end
