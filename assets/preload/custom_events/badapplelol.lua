local hasSpawned = false
function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' and hasSpawned == false then
		makeLuaSprite('whitebg', '', -500, -300)
		setScrollFactor('whitebg', 0, 0)
		makeGraphic('whitebg', 5000, 5000, 'ffffff')
		addLuaSprite('whitebg', false)
		setProperty('whitebg.alpha', 0)
		scaleObject('whitebg', 18, 22);
		doTweenAlpha('applebadxd69', 'whitebg', 1, value2, 'linear')
		doTweenColor('badapplexd', 'boyfriend', '000000', value2, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', value2, 'linear')
		doTweenColor('badapplexd2', 'gf', '000000', value2, 'linear')
		doTweenColor('badapplexd3', 'PibbyP', '000000', value2, 'linear')
		doTweenColor('badapplexd6', 'healthBar', '000000', value2, 'linear')
		doTweenColor('badapplexd100', 'iconP1', '000000', value2, 'linear')
		doTweenColor('badapplexd10', 'iconP2', '000000', value2, 'linear')
		doTweenColor('badapplexd10', 'icon-Pibby', '000000', value2, 'linear')
		
		doTweenColor('pib5', 'charBFExtra1', '000000', value2, 'linear')
		doTweenColor('pib6', 'icon-charIcon', '000000', value2, 'linear')
		hasSpawned = true
	end
	if name == 'badapplelol' and value1 == 'a' and hasSpawned == true then
		doTweenAlpha('applebadxd69', 'whitebg', 1, value2, 'linear')
		doTweenColor('badapplexd', 'boyfriend', '000000', value2, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', value2, 'linear')
		doTweenColor('badapplexd2', 'gf', '000000', value2, 'linear')
		doTweenColor('badapplexd6', 'healthBar', '000000', value2, 'linear')
		doTweenColor('badapplexd100', 'iconP1', '000000', value2, 'linear')
		doTweenColor('badapplexd10', 'iconP2', '000000', value2, 'linear')
		
		doTweenColor('pib', 'charBFExtra1', '000000', value2, 'linear')
		doTweenColor('pib2', 'icon-charIcon', '000000', value2, 'linear')
	end
	if name == 'badapplelol' and value1 == 'b' then
		doTweenAlpha('applebadxd', 'whitebg', 0, value2, 'linear')
		doTweenColor('badapplexd3', 'boyfriend', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd4', 'dad', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd5', 'gf', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd7', 'healthBar', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd101', 'iconP1', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd11', 'iconP2', 'FFFFFF', value2, 'linear')

		doTweenColor('pib3', 'charBFExtra1', 'FFFFFF', value2, 'linear')
		doTweenColor('pib4', 'icon-charIcon', 'FFFFFF', value2, 'linear')
	end
end