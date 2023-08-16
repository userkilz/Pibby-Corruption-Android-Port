function onCreate()
    makeAnimatedLuaSprite('BONES','stagesans/BONES',-300, 500);
    addLuaSprite('BONES', true)
    addAnimationByPrefix('BONES','idle', 'BONES',24, true);
    setProperty('BONES.alpha', 0)

end
function onEvent(name, value1, value2)
    if name == 'huesos' then
        doTweenAlpha('BONES', 'BONES', value1, 0.01, 'quadInOut')
        setObjectOrder('BONES', getObjectOrder('gfGroup'));
    end
end