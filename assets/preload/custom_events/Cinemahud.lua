local posS = {-200, 720}
local posV = {-140,680} --off on
local on = false
function onCreate()
	for i=1,2 do
		makeLuaSprite('bar'..i, nil, -200, posS[i])
		makeGraphic('bar'..i, screenWidth + 150, 200, '000000')
		setObjectCamera('bar'..i, 'hud')
		addLuaSprite('bar'..i)
		setProperty('bar'..i..'.x', -70)
	end
end

function onUpdate(elapsed)
	if on then
		for i=1,2 do
			setProperty('bar'..i..'.y', lerp(getProperty('bar'..i..'.y'), posV[i], elapsed))
		end
		setProperty('', lerp(getProperty(''), 0.9, elapsed))
		setProperty('', lerp(getProperty(''), getProperty('') - 0.1, elapsed))
		setProperty('', false)
	else
		for i=1,2 do
			setProperty('bar'..i..'.y', lerp(getProperty('bar'..i..'.y'), posS[i], elapsed * 8))
		end
	end
end

function onChange()
	if on then on = false else on = true end
end

function lerp(a, b, ratio)
	return a + ratio * (b - a)
end

function onEvent(n)
	if n == 'Cinemahud' then onChange() end
end