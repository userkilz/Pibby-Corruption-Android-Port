function onCreate()
    precacheImage('ata');
    precacheImage('ata2');
    precacheImage('ata3');
    precacheImage('ata4');
    precacheImage('ata5');
    end
function onStepHit()

	if curStep == 2080 then
      removeLuaSprite('ata', false);
      removeLuaSprite('ata2', false);
      removeLuaSprite('ata3', false);
      removeLuaSprite('ata4', false);
      removeLuaSprite('ata5', false);
end

if curStep == 2688 then

makeAnimatedLuaSprite('telona','void/gumballglitchbg',-1100,-4200)addAnimationByPrefix('void/gumballglitchbg','dance','spin',24,true)
	objectPlayAnimation('telona','dance',false)
	setScrollFactor('telona', 1, 1);
	scaleObject('telona', 2.5, 2.5);
	
	makeLuaSprite('fundo', 'void/Ilustracion_sin_titulo-1', 0, -200);
	scaleObject('fundo', 2.5, 2.5);
	
    makeLuaSprite('casa', 'void/Ilustracion_sin_titulo-2', 0, -200);
    scaleObject('casa', 2.5, 2.5);
    doTweenAlpha('casa', 'void/Ilustracion_sin_titulo-2', 0, 75, 'linear')  
    
    makeLuaSprite('chao', 'void/Ilustracion_sin_titulo-3', 0, -200);
    scaleObject('chao', 2.5, 2.5);
    
    makeLuaSprite('pedra', 'void/Ilustracion_sin_titulo-4', 0, -200);
    doTweenAlpha('casa', 'void/Ilustracion_sin_titulo-4', 0, 75, 'linear')  
    scaleObject('pedra', 2.5, 2.5);
    
    makeLuaSprite('pedra2', 'void/Ilustracion_sin_titulo-5', 0, -200);
    doTweenAlpha('casa', 'void/Ilustracion_sin_titulo-5', 0, 75, 'linear')  
    scaleObject('pedra2', 2.5, 2.5);
    
    makeLuaSprite('pedra3', 'void/Ilustracion_sin_titulo-6', 0, -200);
    doTweenAlpha('casa', 'void/Ilustracion_sin_titulo-6', 0, 75, 'linear')  
    scaleObject('pedra3', 2.5, 2.5);
    
    makeLuaSprite('objetos', 'void/Ilustracion_sin_titulo-7', 0, -200);
    doTweenAlpha('casa', 'void/Ilustracion_sin_titulo-7', 0, 75, 'linear')  
    scaleObject('objetos', 2.5, 2.5);
    
    
	addLuaSprite('fundo', false);
	addLuaSprite('casa', false);
	addLuaSprite('chao', false);
	addLuaSprite('pedra', true);
	addLuaSprite('pedra2', true);
	addLuaSprite('pedra3', true);
	addLuaSprite('objetos', true);
	addLuaSprite('telona', false);

end
end