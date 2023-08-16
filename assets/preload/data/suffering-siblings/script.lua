-- Script made by Catbrother Everything with help by NardBruh. Credit is not needed but would be nice! :)

function onCreate()
	makeAnimatedLuaSprite('jake', 'characters/Jake', 600, 500); -- Change to characters idle in XML
	addAnimationByPrefix('jake', 'idle', 'Idle', 24, true); -- Change to characters idle in XML
    addAnimationByPrefix('jake', '0', 'Left', 24, true); -- Change to characters leftnote in XML
    addAnimationByPrefix('jake', '1', 'Down', 24, true); -- Change to characters downnote in XML
    addAnimationByPrefix('jake', '2', 'Up', 24, true); -- Change to characters upnote in XML
    addAnimationByPrefix('jake', '3', 'Right', 24, true); -- Change to characters rightnote in XML
	objectPlayAnimation('jake', 'idle'); 
	addLuaSprite('jake', false); -- false = add behind characters, true = add over characters
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Dad2', 'idle');
	end
end

lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "No Animation" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('jake', lastNote[1]);
    end
end