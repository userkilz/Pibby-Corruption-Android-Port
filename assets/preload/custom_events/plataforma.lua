function onCreate()
    makeLuaSprite('plataforma','stagesans/plataforma',200, 1300);
    addLuaSprite('plataforma', false)
    setProperty('plataforma.alpha', 0)

end
function onEvent(name, value1, value2)
    if name == 'plataforma' then
        doTweenAlpha('plataforma', 'plataforma', value1, 0.01, 'quadInOut')
        setObjectOrder('plataforma', getObjectOrder('gfGroup')+0);
    end
end