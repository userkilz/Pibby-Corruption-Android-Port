function onCreate()
	local enabled = false
end

function onEvent(n,v1,v2)
	if v1 == 'true' then
		enabled = true
	elseif v1 == 'false' then
		enabled = false
	end
end

function onStepHit()
	if enabled == true then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -22, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
	
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	elseif enabled == false then
		--debugPrint('no enableado')
	end
end