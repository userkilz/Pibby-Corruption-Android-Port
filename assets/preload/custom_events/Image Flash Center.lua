function onEvent(name, value1, value2)
    if name == "Image Flash Center" then
		local lol = stringSplit(value2, ',')

		xPos = lol[1]
		yPos = lol[2]
		timeThing = lol[3]
		scaleBGThingX = lol[4]
		scaleBGThingY = lol[5]

        makeLuaSprite('image', value1, xPos, yPos);
        setProperty('image.alpha', 1)
		scaleObject('image', scaleBGThingX, scaleBGThingY)
        addLuaSprite('image', true);
        setObjectCamera('image', 'other');

		screenCenter("image", 'xy')

		doTweenAlpha('byebye', 'image', 0, timeThing, 'linear');
    end
end