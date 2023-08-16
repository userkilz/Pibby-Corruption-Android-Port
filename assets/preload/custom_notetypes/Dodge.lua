function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dodge' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Dodge'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0); --custom notesplash color, why not
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -20);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 1);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

local dodgeAnims = {"dodgeLEFT", "dodgeDOWN", "dodgeUP", "dodgeRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Dodge' then
		if difficulty == 2 then
			playSound('Dodged', 1.0);-----------put your custom sound here
		end
		characterPlayAnim('boyfriend', dodgeAnims[direction + 1], true);
		setProperty('boyfriend.specialAnim', true);
		setProperty('dad.specialAnim', true);
		cameraShake('camGame', 0.01, 0.05)
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Dodge' and difficulty == 2 then
		setProperty('health', getProperty('health')-1.15);
		playSound('Dodged', 1.0); -----------put your custom sound here
	elseif noteType == 'Dodge' and difficulty == 1 then
		setProperty('health', getProperty('health')-0.5);
		runTimer('bleed', 0.2, 20);
		playSound('Dodged', 1.0);-----------put your custom sound here
		characterPlayAnim('boyfriend', 'hurt', true);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001);
	end
end