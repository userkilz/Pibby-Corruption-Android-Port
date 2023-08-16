function onCreate()
makeLuaSprite('FlashOAlgo', '', 0, 0)
makeGraphic('FlashOAlgo', screenWidth, screenHeight,'FFFFFF')
setObjectCamera('FlashOAlgo', 'other')
setProperty('FlashOAlgo.alpha', 0)
addLuaSprite('FlashOAlgo', true)
end


function onEvent(name,value1,value2)
if name == 'fadepam' then
doTweenAlpha('FlashOAlgo', 'FlashOAlgo', value1, value2, 'linear')
end 
end