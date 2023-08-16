function onCreate()
    precacheImage('fundo');
    precacheImage('casa');
    precacheImage('chao');
    precacheImage('peda');
    precacheImage('peda2');
    precacheImage('oi');
    precacheImage('efeitos2');
    precacheImage('opa');
    precacheImage('fundo2');
    precacheImage('casa2');
    precacheImage('chao2');
    precacheImage('peda');
    precacheImage('peda2');
    precacheImage('efeitos3');
    end
function onStepHit()

	if curStep == 1187 then
      removeLuaSprite('fundo', false);
      removeLuaSprite('casa', false);
      removeLuaSprite('chao', false);
      removeLuaSprite('pedra', false);
      removeLuaSprite('pedra2', false);
      removeLuaSprite('pedra3', false);
      removeLuaSprite('objetos', false);
end

if curStep == 1442 then

    makeLuaSprite('fundo2', 'voidFW/void3/1b', 0, -200);
	scaleObject('fundo2', 1.2, 1.2);
	
	makeLuaSprite('efeitos3', 'voidFW/void3/2b', 0, -200);
	scaleObject('efeitos3', 1.2, 1.2);
	
	makeLuaSprite('casa2', 'voidFW/void3/3b', 0, -200);
	scaleObject('casa2', 1.2, 1.2);
	
	makeLuaSprite('chao2', 'voidFW/void3/5b', 0, -200);
	scaleObject('chao2', 1.2, 1.2);
	
	makeLuaSprite('peda', 'voidFW/void3/11', 0, -200);
	scaleObject('peda', 1.2, 1.2);
	
	makeLuaSprite('peda2', 'voidFW/void3/4', 0, -200);
	scaleObject('peda2', 1.2, 1.2);
	
	makeLuaSprite('oi', 'voidFW/void3/6', 0, -200);
	scaleObject('oi', 1.2, 1.2);
	
	makeLuaSprite('efeitos2', 'voidFW/void3/2b', 0, 210);
	scaleObject('efeitos2', 1.2, 1.2);
	
	makeLuaSprite('opa', 'vignette', 0, 0);
    scaleObject('opa', 1.1, 1.1);
    setObjectCamera('opa', 'other')
	
	addLuaSprite('fundo2', false);
	addLuaSprite('efeitos3', false);
	addLuaSprite('casa2', false);
	addLuaSprite('chao2', false);
	addLuaSprite('peda', true);
	addLuaSprite('peda2', true);
	addLuaSprite('oi', true);
	addLuaSprite('efeitos2', true);
	addLuaSprite('opa', true);
	
end
end