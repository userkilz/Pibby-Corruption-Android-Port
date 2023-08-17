function onCreatePost()
    setProperty("introSoundsSuffix", nil)

    makeLuaSprite("cuadro", nil, 0.0, 0.0)
    makeGraphic("cuadro", screenWidth, screenHeight, "000000")
    screenCenter("cuadro", 'xy')
    setObjectCamera("cuadro", "other")
    addLuaSprite("cuadro", false)

    setObjectOrder("cuadro", 100)
end

function onSongStart()
    doTweenAlpha("123", "cuadro", 0, 0.3, "circInOut")
end