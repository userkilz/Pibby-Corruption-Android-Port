function onCreatePost()
    initLuaShader('rgb effect2')
end
function onStepHit()
if curStep == 1 then
    setSpriteShader('opponentStrums.members[0]', 'rgb effect2')
        setSpriteShader('opponentStrums.members[1]', 'rgb effect2')
        setSpriteShader('opponentStrums.members[2]', 'rgb effect2')
        setSpriteShader('opponentStrums.members[3]', 'rgb effect2')
setProperty('camHUD.alpha', 1)
setProperty('scoreTxt.alpha', 0)
end
if curStep == 2 then
setProperty('HBBG.visible',false)
     end
if curStep == 263 then
doTweenAlpha('byebye', 'camGame', 0, 2)
doTweenAlpha('byebye2', 'camHUD', 0, 2)
end
if curStep == 300 then 
setProperty('scoreTxt.alpha', 1)
doTweenAlpha('hiii2', 'camGame', 1, 1)
doTweenAlpha('hiii', 'camHUD', 1, 1)
setProperty('HBBG.visible',false)
   doTweenAlpha('healthno', 'healthBar', 0, 1.01)
   doTweenAlpha('healthno2', 'Health', 0, 1.01)
   doTweenAlpha('hudiconbye', 'iconP1', 0, 1.01)
   doTweenAlpha('hudiconbye2', 'iconP2', 0, 1.01)
doTweenAlpha('bgyes','bg',1,1)
doTweenAlpha('bgyes2','bg2',1,1)
doTweenAlpha('bgyes3','bg3',1,1)
doTweenAlpha('byes','b',1,1)
doTweenAlpha('hifinn','dad',1,1)
setProperty('bg2.visible', true)
setProperty('bg3.visible', true)

end
if curStep == 319 then
   doTweenAlpha('healthyes', 'healthBar', 1, 1)
   doTweenAlpha('healthyes2', 'Health', 1, 1)
   doTweenAlpha('hudiconhi', 'iconP1', 1, 1)
   doTweenAlpha('hudiconhi2', 'iconP2', 1, 1)
end
end
function onUpdate(elapsed)
setShaderFloat("opponentStrums.members[0]", "iTime", os.clock())
    setShaderFloat("opponentStrums.members[1]", "iTime", os.clock())
    setShaderFloat("opponentStrums.members[2]", "iTime", os.clock())
    setShaderFloat("opponentStrums.members[3]", "iTime", os.clock())
end