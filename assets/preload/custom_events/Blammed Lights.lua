function onCreate()
    makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
    setProperty('blackscreen.scale.x', 1000)
    setProperty('blackscreen.scale.y', 1000)
    setProperty('blackscreen.alpha', 0)
    setScrollFactor('blackscreen', 0, 0)
    addLuaSprite('blackscreen', false)
end

function onEvent(name, value1, value2)
if name == "Blammed Lights" then
   doTweenColor('coloredbf', 'boyfriend', value1, 1.15, 'quadInOut')
   doTweenColor('coloreddad', 'dad', value1, 1.15, 'quadInOut')
   doTweenColor('coloredgf', 'gf', value1, 1.15, 'quadInOut')
   doTweenAlpha('blackscreen', 'blackscreen', value2, 0.5, 'quadInOut')
end
end