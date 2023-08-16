function onCreatePost()

    makeLuaSprite("logo", 'cnlogo', 960)
    setObjectCamera("logo", "other")
    addLuaSprite("logo", false)
scaleObject('logo', 0.2,0.2)
setProperty('logo.alpha',0.3)
setProperty('logo.y',600)
if downscroll then
setProperty('logo.y',80)
end
end
