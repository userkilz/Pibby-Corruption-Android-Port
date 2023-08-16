local ZoomBool = 1;
local doThunder = false;
function setCamFilter(cam, shader)
    if shadersEnabled then
        initLuaShader(shader)
        if not luaSpriteExists('shaderImage') then
            makeLuaSprite('shaderImage')
            makeGraphic('shaderImage', 'strumLineNotes.x', 'strumLineNotes.y')
            setSpriteShader('shaderImage', shader)
        end
        runHaxeCode('game.'..cam..'.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);')
        if luaDebugMode then
            debugPrint('setCamFilter : Shader successfully added to the camera "'..cam..'"')
        end
    end
end
    
function removeCamFilter(cam)
    -- `cam` - Camera you want the shader to be removed from. Should be camGame, camHUD, or camOther.
    if shadersEnabled then
        if luaSpriteExists('shaderImage') then
            removeLuaSprite('shaderImage')
        end
        runHaxeCode('game.'..cam..'.setFilters(null);')	
        if luaDebugMode then
            debugPrint('removeCamFilter : Shader successfully removed from the camera "'..cam..'"')
        end
    end
end
    
-- function onCreate()
--     setCamFilter('camHUD', 'rgb effect2')
-- end

function onUpdatePost(elapsed)
    setShaderFloat("shaderImage", "iTime", os.clock())
end


function onCreatePost()
	
	-- background TreeHouse
	makeLuaSprite('backTree', 'treehouse/back', -700, -550);
	scaleObject('backTree', 11.2, 11.2);
	addLuaSprite('backTree', false);
	setProperty('backTree.alpha', 0)
	

	makeLuaSprite('tree', 'treehouse/tree', -700, -550);
	scaleObject('tree', 7.5, 7.5);
	addLuaSprite('tree', false);
	setProperty('tree.alpha', 0)

	makeAnimatedLuaSprite('rainDrop', 'treehouse/rain', -510,500)
	addAnimationByPrefix('rainDrop', 'bounce', 'rain tho',60,true)
	scaleObject('rainDrop', 11.2, 11.2);
	addLuaSprite('rainDrop',true)
	setProperty('rainDrop.alpha',0);

	

	


	-- background Intro
	makeLuaSprite('backFake', 'treehouse/intro/IMG_8337', 1500, 1750);
	scaleObject('backFake', 1.4, 1.4);
	addLuaSprite('backFake', false);
	setProperty('backFake.alpha', 0)
	

	makeLuaSprite('sinTitulo2', 'treehouse/intro/Ilustracion_sin_titulo-2', 1500, 1750);
	scaleObject('sinTitulo2', 1.2, 1.2);
	addLuaSprite('sinTitulo2', false);
	setProperty('sinTitulo2.alpha', 0)

	makeLuaSprite('sinTitulo3', 'treehouse/intro/Ilustracion_sin_titulo-3', 1500, 1750);
	scaleObject('sinTitulo3', 1.4, 1.4);
	addLuaSprite('sinTitulo3', false);
	setProperty('sinTitulo3.alpha', 0)
	
	-- background Corrupted
	makeLuaSprite('BackGlitch', 'treehouse/reveal/BackGlitch', 1500, 2020);
	scaleObject('BackGlitch', 1.4, 1.4);
	addLuaSprite('BackGlitch', false);
	setProperty('BackGlitch.alpha', 0)

	makeLuaSprite('AboveGlitch', 'treehouse/reveal/AboveGlitch', 1500, 2020);
	scaleObject('AboveGlitch', 1.2, 1.2);
	addLuaSprite('AboveGlitch', false);
	setProperty('AboveGlitch.alpha', 0)

	makeLuaSprite('Particles', 'treehouse/reveal/Particles', 1500, 2020);
	scaleObject('Particles', 1.0, 1.0);
	addLuaSprite('Particles', false);
	setProperty('Particles.alpha', 0)
	
	makeLuaSprite('HillStuff', 'treehouse/reveal/HillStuff', 1500, 2020);
	scaleObject('HillStuff', 1.4, 1.4);
	addLuaSprite('HillStuff', false);
	setProperty('HillStuff.alpha', 0)

	makeLuaSprite('Dangling', 'treehouse/reveal/Dangling', 1500, 2020);
	scaleObject('Dangling', 1.4, 1.4);
	addLuaSprite('Dangling', false);
	setProperty('Dangling.alpha', 0)

	makeLuaSprite('Corruption', 'treehouse/reveal/Corruption', 1500, 2020);
	scaleObject('Corruption', 1.4, 1.4);
	addLuaSprite('Corruption', false);
	setProperty('Corruption.alpha', 0)

	makeLuaSprite('CameraShtuff', 'treehouse/reveal/CameraShtuff', 1500, 2020);
	scaleObject('CameraShtuff', 1.4, 1.4);
	addLuaSprite('CameraShtuff', false);
	setProperty('CameraShtuff.alpha', 0)
	


	-- background Negro
	makeLuaSprite('blackscreen', 'blackscreen', 0, 0);
	scaleObject('blackscreen', 5, 5);
	addLuaSprite('blackscreen', true);
	setProperty('blackscreen.alpha', 1)

	makeLuaSprite('vignette', 'vignette', 1500, 2010);
	scaleObject('vignette', 3.0, 3.0);
	addLuaSprite('vignette', true);
	setProperty('vignette.alpha', 0)

	-- background HUD
	setProperty('camHUD.alpha', 0)
	-- setProperty('boyfriend.color', '696EEF')
	
	
	
	
	
	
	
	
end






function onStepHit()
	
	-- setProperty('blackscreen.alpha', 0)
	
	if curStep == 30 then
		
		doTweenAlpha('backFake', 'backFake', 1, 0.08, 'backInOut')
		doTweenAlpha('sinTitulo2', 'sinTitulo2', 1, 0.08, 'backInOut')
		doTweenAlpha('sinTitulo3', 'sinTitulo3', 1, 0.08, 'backInOut')
	end
	if curStep == 47 then
		doTweenAlpha('blackscreen', 'blackscreen', 0, 6.5, 'backOut')
		
	end
	if curStep == 128 then
		triggerEvent('Flash Camera','1')
		doTweenAlpha('camHUD', 'camHUD', 1, 0.01, 'backInOut')
		setProperty('iconP1.visible',false)
		setProperty('iconP2.visible',false)
		setProperty('healthBar.visible',false)
		setProperty('healthBarBG.visible',false)
removeLuaSprite('HBBG',true)
	end
	if curStep == 608 then
		doTweenAlpha('vignette', 'vignette', 1, 0.6, 'backOut')
		doTweenAlpha('backFake', 'backFake', 0, 0.5, 'backInOut')
		doTweenAlpha('sinTitulo2', 'sinTitulo2', 0, 0.4, 'backInOut')
		doTweenAlpha('sinTitulo3', 'sinTitulo3', 0, 0.1, 'backInOut')
	end
	if curStep == 624 then
		doTweenAlpha('camHUD', 'camHUD', 0.7, 0.2, 'backOut')
		setProperty('defaultCamZoom', 1.4)
	end
	if curStep == 640 then
		doTweenAlpha('camHUD', 'camHUD', 1, 0.1, 'backOut')
		doTweenAlpha('BackGlitch', 'BackGlitch', 1, 0.5, 'backOut')
		doTweenAlpha('HillStuff', 'HillStuff', 1, 0.3, 'backOut')
		doTweenAlpha('Dangling', 'Dangling', 1, 0.2, 'backOut')
		doTweenAlpha('Corruption', 'Corruption', 1, 0.1, 'backOut')
		setCamFilter('camHUD', 'static')
	end

	if curStep == 864 then
		
		doTweenAlpha('blackscreen', 'blackscreen', 1, 4, 'backOut')
		doTweenAlpha('vignette', 'vignette', 0, 4, 'backOut')
		doTweenAlpha('BackGlitch', 'BackGlitch', 0, 4, 'backOut')
		doTweenAlpha('AboveGlitch', 'AboveGlitch', 0, 4, 'backOut')
		doTweenAlpha('Particles', 'Particles', 0, 4, 'backOut')
		doTweenAlpha('HillStuff', 'HillStuff', 0, 4, 'backOut')
		doTweenAlpha('Dangling', 'Dangling', 0, 4, 'backOut')
		doTweenAlpha('Corruption', 'Corruption', 0, 4, 'backOut')
		
		
	end

	

	if curStep == 896 then
		setCamFilter('camHUD', 'rgb effect2')
		doTweenColor('bf', 'boyfriend', '696EEF', 0.01, 'linear')
		doTweenAlpha('rainDrop', 'rainDrop', 0.2, 0.001, 'backOut')
		doTweenAlpha('blackscreen', 'blackscreen', 0, 0.001, 'backOut')
		doTweenAlpha('backTree', 'backTree', 1, 0.01, 'backOut')
		doTweenAlpha('tree', 'tree', 1, 0.01, 'backOut')
		setProperty('defaultCamZoom', 0.185)
		ZoomBool = 2;
		
	end

	if curStep == 1536 then
		setProperty('defaultCamZoom', 0.8)
		doTweenAlpha('rainDrop', 'rainDrop', 0, 0.001, 'backOut')
		doTweenAlpha('backTree', 'backTree', 0, 0.01, 'backOut')
		doTweenAlpha('tree', 'tree', 0, 0.01, 'backOut')

		doTweenAlpha('backFake', 'backFake', 1, 0.08, 'backInOut')
		doTweenAlpha('sinTitulo2', 'sinTitulo2', 1, 0.08, 'backInOut')
		doTweenAlpha('sinTitulo3', 'sinTitulo3', 1, 0.08, 'backInOut')
		doTweenAlpha('vignette', 'vignette', 1, 0.08, 'backOut')
		setProperty('defaultCamZoom', 1.5)
		removeCamFilter('camHUD')
		ZoomBool = 1;
	end

	if curStep == 1648 then
		
		doTweenAlpha('backFake', 'backFake', 0, 0.08, 'backInOut')
		doTweenAlpha('sinTitulo2', 'sinTitulo2', 0, 0.08, 'backInOut')
		doTweenAlpha('sinTitulo3', 'sinTitulo3', 0, 0.08, 'backInOut')
		doTweenAlpha('vignette', 'vignette', 0, 0.08, 'backOut')

		doTweenAlpha('BackGlitch', 'BackGlitch', 1, 0.08, 'backOut')
		doTweenAlpha('AboveGlitch', 'AboveGlitch', 1, 0.08, 'backOut')
		doTweenAlpha('Particles', 'Particles', 1,0.08, 'backOut')
		doTweenAlpha('HillStuff', 'HillStuff', 1, 0.08, 'backOut')
		doTweenAlpha('Dangling', 'Dangling', 1, 0.08, 'backOut')
		doTweenAlpha('Corruption', 'Corruption', 1, 0.08, 'backOut')
		setCamFilter('camHUD', 'static')

		
	end

	if curStep == 1664 then
		-- setCamFilter('camHUD', 'rgb effect2')
		doTweenAlpha('BackGlitch', 'BackGlitch', 0, 0.08, 'backOut')
		doTweenAlpha('AboveGlitch', 'AboveGlitch', 0, 0.08, 'backOut')
		doTweenAlpha('Particles', 'Particles', 0,0.08, 'backOut')
		doTweenAlpha('HillStuff', 'HillStuff', 0, 0.08, 'backOut')
		doTweenAlpha('Dangling', 'Dangling', 0, 0.08, 'backOut')
		doTweenAlpha('Corruption', 'Corruption', 0, 0.08, 'backOut')

		doTweenColor('bf', 'boyfriend', '696EEF', 0.01, 'linear')
		doTweenColor('bf', 'boyfriend', '696EEF', 0.01, 'linear')
		doTweenAlpha('rainDrop', 'rainDrop', 0.2, 0.001, 'backOut')
		doTweenAlpha('backTree', 'backTree', 1, 0.01, 'backOut')
		doTweenAlpha('tree', 'tree', 1, 0.01, 'backOut')
		
		ZoomBool = 2;
		
	end

	if curStep == 1774 then
		

		doTweenAlpha('blackscreen', 'blackscreen', 1, 1.8, 'backOut')
		doTweenAlpha('camHUD', 'camHUD', 0, 1.8, 'backOut')
		
		ZoomBool = 2;
		
	end
	if curStep == 1792 then
		ZoomBool = 3;
		removeCamFilter('camHUD')
		
		doTweenAngle('bf', 'boyfriend', 180, 0.01, 'easeInOut')
		doTweenAlpha('blackscreen', 'blackscreen', 0, 0.01, 'backOut')
		doTweenAlpha('rainDrop', 'rainDrop', 0, 0.001, 'backOut')
		doTweenAlpha('backTree', 'backTree', 0, 0.01, 'backOut')
		doTweenAlpha('tree', 'tree', 0, 0.01, 'backOut')
		setProperty('defaultCamZoom', 0.88)
		setCamFilter('camGame', 'change from colors')
		

		
		
	end
	if curStep >= 1792 then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes',i,'x',-330)
		end
		setProperty('camHUD.alpha', 1)
		
		
	end
	if curStep >= 2433 then
		doTweenAlpha('blackscreen', 'blackscreen', 1, 0.01, 'backOut')
		setProperty('camHUD.alpha', 0)
		
		
	end

	


	if ZoomBool == 1 then
		function onMoveCamera(char)
			if char == 'dad' then
				setProperty('defaultCamZoom', 0.8)
			else
				setProperty('defaultCamZoom', 1)
			end
		end
	elseif ZoomBool == 2 then
			function onMoveCamera(char)
				if char == 'dad' then
					setProperty('defaultCamZoom', 0.35)
				else
					setProperty('defaultCamZoom', 0.5)
				end
			end
		elseif ZoomBool == 3 then
			function onMoveCamera(char)
				if char == 'dad' then
					setProperty('defaultCamZoom', 0.88)
				else
					setProperty('defaultCamZoom', 0.88)
				end
			end
		end
end





-- if ZoomBool == true then
-- 	function onMoveCamera(char)
--     	if char == 'dad' then
--         	setProperty('defaultCamZoom', 0.8)
--     	else
--         	setProperty('defaultCamZoom', 1)
--     	end
-- 	end
-- else
-- 	function onMoveCamera(char)
--     	if char == 'dad' then
--         	setProperty('defaultCamZoom', 0.6)
--     	else
--         	setProperty('defaultCamZoom', 0.4)
--     	end
-- 	end
-- end

