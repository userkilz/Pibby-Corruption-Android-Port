function onCreate()
	-- esse código de cenario foi feito por Marcelo gamer oficial
	
	makeLuaSprite('fundo', 'void/Ilustracion_sin_titulo-1', 0, -200);
	scaleObject('fundo', 2.5, 2.5);
	
	makeLuaSprite('casa', 'void/Ilustracion_sin_titulo-2', 0, -200);
    scaleObject('casa', 2.5, 2.5);
    
    makeLuaSprite('chao', 'void/Ilustracion_sin_titulo-3', 0, -200);
    scaleObject('chao', 2.5, 2.5);
    
    makeLuaSprite('pedra', 'void/Ilustracion_sin_titulo-4', 0, -200);
    scaleObject('pedra', 2.5, 2.5);
    
    makeLuaSprite('pedra2', 'void/Ilustracion_sin_titulo-5', 0, -200);
    scaleObject('pedra2', 2.5, 2.5);
    
    makeLuaSprite('pedra3', 'void/Ilustracion_sin_titulo-6', 0, -200);
    scaleObject('pedra3', 2.5, 2.5);
    
    makeLuaSprite('objetos', 'void/Ilustracion_sin_titulo-7', 0, -200);
    scaleObject('objetos', 2.5, 2.5);
    
    makeLuaSprite('cnlogo', 'cnlogo', 1000, 600);
    scaleObject('cnlogo', 0.2, 0.2);
    setObjectCamera('cnlogo', 'other')
    
    
	addLuaSprite('fundo', false);
	addLuaSprite('casa', false);
	addLuaSprite('chao', false);
	addLuaSprite('pedra', false);
	addLuaSprite('pedra2', false);
	addLuaSprite('pedra3', false);
	addLuaSprite('objetos', false);
	addLuaSprite('cnlogo', true);

end