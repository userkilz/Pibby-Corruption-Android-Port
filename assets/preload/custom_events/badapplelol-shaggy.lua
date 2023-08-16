function onEvent(name, value1, value2)
	if name == 'badapplelol-shaggy' and value1 == 'a' then
		makeLuaSprite('whitebg', '', -1250, -3875)
		makeGraphic('whitebg',5000,5000,'ffffff')
		addLuaSprite('whitebg', false)
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
	end
	if name == 'badapplelol-shaggy' and value1 == 'b' then
		removeLuaSprite('whitebg')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
	end
end