function onCreate()
makeLuaSprite('BlackOAlgo2', '', -250, -200)
makeGraphic('BlackOAlgo2', screenWidth, screenHeight,'000000')
setProperty('BlackOAlgo2.alpha', 0)
addLuaSprite('BlackOAlgo2', true)
scaleObject('BlackOAlgo2', 2,5);
end


function onEvent(name,value1,value2)
if name == 'blackall2' then
doTweenAlpha('BlackOAlgo2', 'BlackOAlgo2', value1, value2, 'linear')
end 
end