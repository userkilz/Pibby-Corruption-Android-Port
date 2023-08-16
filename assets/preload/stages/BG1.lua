function onCreatePost()

	makeLuaSprite('theblack', 'cooloutline', 0, 0);
	setProperty('theblack.alpha', '0');
	setObjectCamera('theblack', 'other')
        scaleObject('theblack', 1,1);

	addLuaSprite('theblack', true);

	-- background shit
	makeLuaSprite('bg', 'class', -300, -300);
    addLuaSprite('bg', false);
    scaleObject('bg', 1.8, 1.8);

    makeLuaSprite('bg2', 'dark', -300, -300);
    addLuaSprite('bg2', true);
    setProperty('bg2.alpha',0.8)
    scaleObject('bg2', 1.8, 1.8);

 makeLuaSprite('bg3', 'light', -300, -300);
    addLuaSprite('bg3', false);
    setProperty('bg3.alpha',0)
    scaleObject('bg3', 1.8, 1.8);


  makeLuaSprite('b', 'bulb', 350, -300);
    addLuaSprite('b', false);
end
function onUpdate()

glitchAmount=getProperty('Glitch.x')

if startGlitching then

		setShaderFloat('background','prob',glitchAmount / 4)
		if not endGlitching then
			setShaderFloat('background','time',(math.floor((getSongPosition() / crochet)) * crochet) / 1000)
	    end

		setShaderFloat('FiltreRef','prob',0.25 - (glitchAmount / 8))
		if not endGlitching then
			setShaderFloat('FiltreRef','time',(math.floor((getSongPosition() / crochet)) * crochet) / 1000)
	    end
		setShaderFloat('dad','binaryIntensity',(10 - ((math.floor(glitchAmount / 20) * 20) * 9)) / 8)
	end
end
function onEvent(eventName, value1, value2)
    if eventName=='Missingno Tempo Change' then
		startGlitching=true
	end
    function SetShader()
        makeLuaSprite('FiltreRef')
        if shadersEnabled then
            runHaxeCode([[
                var shaderName = "glitch";
        
                var shader0 = game.createRuntimeShader(shaderName);
                game.camGame.setFilters([new ShaderFilter(shader0)]);
                game.getLuaObject("FiltreRef").shader = shader0;
            ]])
        end
    end
    end    

function onBeatHit()
 if curBeat % 4 == 2 then
doTweenAlpha('darkerbye', 'bg3', 0.5, 0.5, 'linear')
doTweenAngle('spin1', 'bg2', 5, 0.5)
doTweenAngle('spin2', 'bg3', 5, 0.5)
elseif curBeat % 2 == 0 then
doTweenAlpha('moreclearbye', 'bg3', 0, 0.5, 'linear')
doTweenAngle('spin1', 'bg2', -5, 0.5)
doTweenAngle('spin2', 'bg3', -5, 0.5)
end
end
