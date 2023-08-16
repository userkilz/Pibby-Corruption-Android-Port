function onCreate()
    makeAnimatedLuaSprite('VHS', 'screenstatic', 0, 0)
    addAnimationByPrefix('VHS', 'Anim', 'screenSTATIC', 24, true)
    playAnim('VHS', 'Anim', false)
    setObjectCamera('VHS', 'other')
    addLuaSprite('VHS', true)
    setProperty('VHS.alpha', 0)
end

function onEvent(n, v1, v2)
    if n == 'estaticaCOSO' then
        doTweenAlpha('VHSAlpha', 'VHS', tonumber(v1), tonumber(v2), 'linear');
    end
end