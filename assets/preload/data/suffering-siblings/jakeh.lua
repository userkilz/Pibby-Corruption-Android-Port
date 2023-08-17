function onCreatePost()
	runHaxeCode([[
		Jake = new Character(720, 580, 'Jake');
		game.addBehindDad(Jake);
		game.variables.set('Jake',Jake);
	]]);
end

function onCountdownTick(counter)
	runHaxeCode([[
		if (]]..counter..[[ % Jake.danceEveryNumBeats == 0 && Jake.animation.curAnim != null && !StringTools.startsWith(Jake.animation.curAnim.name, 'sing') && !Jake.stunned)
		{
			Jake.dance()
		}
	]]);
end

function onBeatHit()
	runHaxeCode([[
		if (]]..curBeat..[[ % Jake.danceEveryNumBeats == 0 && Jake.animation.curAnim != null && !StringTools.startsWith(Jake.animation.curAnim.name, 'sing') && !Jake.stunned)
		{
			Jake.dance();
		}
	]]);
end

function onUpdate(elapsed)
	runHaxeCode([[
		if (!game.controls.NOTE_LEFT && !game.controls.NOTE_DOWN && !game.controls.NOTE_UP && !game.controls.NOTE_RIGHT && game.startedCountdown && game.generatedMusic)
		{
			if (!Jake.stunned && Jake.holdTimer > Conductor.stepCrochet * 0.0011 * Jake.singDuration && StringTools.startsWith(Jake.animation.curAnim.name, 'sing') && !StringTools.endsWith(Jake.animation.curAnim.name, 'miss'))
			{
				Jake.dance();
			}
		}
	]]);
end

function opponentNoteHit(id, dir, nt, sus)
if nt == 'No Animation' then
        runHaxeCode([[
            Jake.playAnim(game.singAnimations[]]..dir..[[], true);
            Jake.holdTimer = 0;
        ]])
end
end

function onStepHit()
if curStep == 2080 then
runHaxeCode([[
Jake.color = 0xFF000000;
]])
end
if curStep == 2336 then
runHaxeCode([[
Jake.color = 0xFFFFFFFF;
]])
end
if curStep == 3392 then
runHaxeCode([[
Jake.color = 0xFF000000;
]])
end
end
