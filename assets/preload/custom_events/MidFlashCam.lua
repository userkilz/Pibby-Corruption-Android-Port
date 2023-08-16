--event by angeltubby08

color = 'ffffff' --default value

function onEvent(n,v1,v2)
	if n == 'MidFlashCam' then
		if v2 == '1' then
			color = 'ffffff' --white
		elseif v2 == '2' then
			color = '000000' --black
		elseif v2 == '3' then
		    color = 'ff0303' --red
		elseif v2 == '4' then
			color = 'A569BD' --purple
		elseif v2 == '5' then
			color = '00FF0C' --green
		elseif v2 == '6' then
			color = '0078FF' --blue
		end

		--cameraFlash('other', color, v1, false)
		makeLuaSprite('Midflash', '', 0, 0)
		makeGraphic('Midflash', screenWidth + 100, screenHeight + 100, color)
		setProperty('Midflash.alpha', 0.1)
		setObjectCamera('Midflash', 'other')
		addLuaSprite('Midflash', true)
	
		doTweenAlpha('MidflashTween', 'Midflash', 0, v1, 'linear')

		if 'Midflash.alpha' == 0 then
			removeLuaSprite('Midflash')
		end
	end
end