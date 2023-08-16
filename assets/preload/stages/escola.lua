function onCreate()
	-- esse código de cenario foi feito por Marcelo gamer oficial
	makeLuaSprite('ata', 'school/Ilustracion_sin_titulo-1', 0, 0);
	scaleObject('ata', 5.2, 5.2);
	
    makeLuaSprite('ata2', 'school/Ilustracion_sin_titulo-2', 0, 200);
    scaleObject('ata2', 4.4, 4.4);
    
    makeLuaSprite('ata3', 'school/light', -500, 50);
    scaleObject('ata3', 4, 4);
    
    makeLuaSprite('ata4', 'school/Ilustracion_sin_titulo-3', 0, 0);
    scaleObject('ata4', 5.2, 5.2);
    
    makeLuaSprite('ata5', 'school/188_sin_titulo11_20230523094718', 0, 0);
    scaleObject('ata5', 5.2, 5.2);
    
    makeLuaSprite('ata6', 'cnlogo', 1000, 600);
    scaleObject('ata6', 0.2, 0.2);
    setObjectCamera('ata6', 'other')
	
	addLuaSprite('ata', false);
	addLuaSprite('ata2', true);
	addLuaSprite('ata3', true);
	addLuaSprite('ata4', true);
	addLuaSprite('ata5', true);
	addLuaSprite('ata6', true);

end