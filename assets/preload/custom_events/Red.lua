function onEvent(n,v1,v2)
	if n == "Red" then
		if not lowQuality then
			runTimer('hide',2);
			makeAnimatedLuaSprite('redload','red',-1.5,-1.5)
			addAnimationByPrefix('redload','redpog','red appear',5,true)
			objectPlayAnimation('redload','redpog',false)
			setScrollFactor('redload', 0, 0);
			scaleObject('redload', 0.999, 0.999);
			addLuaSprite('redload', true);
                        setObjectCamera('redload', 'other')
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'hide' then
		removeLuaSprite('redload', false);
    end
end
