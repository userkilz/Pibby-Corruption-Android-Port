--I'm too lazy to use the event that they gave me ok?
function onStepHit()
if curStep == 1664 then
setProperty('camGame.alpha',0)
setProperty('camHUD.alpha',0)
end
if curStep == 1696 then
doTweenAlpha('helpmeisnotajokelmao','camGame',1,1)
doTweenAlpha('helpmeisnotajokelmao2','camHUD',1,1)
setProperty('boyfriend.alpha',0.3)
setProperty('dad.alpha',0.3)
end
if curStep == 1830 then
doTweenAlpha('helpmeisnotajokelmaopart2','dad',1,1)
end
if curStep == 2064 then
doTweenAlpha('helpmeisnotajokelmaopart1','boyfriend',1,1)
end
if curStep == 2070 then
removeLuaScript('scripts/hudalpha')
 setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
    setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
    setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
    setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
  cameraFlash('camGame', 'FFFFFF', 0.3);
setProperty('gf.alpha',0)
runHaxeCode([[
game.dad.setColorTransform(1,1,1,1,255,255,255,0);
game.boyfriend.setColorTransform(1,1,1,1,255,255,255,0);
    ]])
doTweenAlpha('nothing', 'bg', 0, 0.2)
setProperty('bg2.visible',false)
setProperty('bg3.visible',false)
doTweenColor('nothingb', 'b', '000000', 0.2, 'linear')
end
if curStep == 2336 then
addLuaScript('scripts/hudalpha')
 setPropertyFromGroup('opponentStrums', 0, 'alpha', 0.9)
    setPropertyFromGroup('opponentStrums', 1, 'alpha', 0.9)
    setPropertyFromGroup('opponentStrums', 2, 'alpha', 0.9)
    setPropertyFromGroup('opponentStrums', 3, 'alpha', 0.9)
  cameraFlash('camGame', 'FFFFFF', 0.3);
    runHaxeCode([[
        for (boyfriend in game.boyfriendGroup)
        {
            boyfriend.setColorTransform(1,1,1,1,0,0,0,0);
        }
    ]])
doTweenAlpha('nothinga', 'bg', 1, 0.2)
setProperty('bg2.visible',true)
setProperty('bg3.visible',true)
doTweenColor('nothingba', 'b', 'FFFFFF', 0.2, 'linear')
setProperty('gf.alpha',1)
end
if curStep == 2376 then
triggerEvent('Play Animation', 'cmon','gf');
end
if curStep == 3392 then
cameraFlash('camGame', 'FFFFFF', 0.3);
setProperty('dad.alpha',0)
    runHaxeCode([[
        for (gf in game.gfGroup)
        {
            gf.setColorTransform(1,1,1,1,255,255,255,0);
        }
        for (boyfriend in game.boyfriendGroup)
        {
            boyfriend.setColorTransform(1,1,1,1,255,255,255,0);
        }
    ]])
doTweenAlpha('nothing6', 'bg', 0, 0.2)
setProperty('bg2.visible',false)
setProperty('bg3.visible',false)
doTweenColor('nothingbside', 'b', '000000', 0.2, 'linear')
end
if curStep == 3776 then
cameraFlash('camGame', 'FFFFFF', 0.3);
doTweenAlpha('what', 'camHUD', 0, 0.2)
end
end

function onEvent(name)
if name == 'Change Character' then
if dadName == 'finn-slash' then
runHaxeCode([[
game.dad.setColorTransform(1,1,1,1,255,255,255,0);
    ]])
elseif dadName == 'finn-R' then
runHaxeCode([[
game.dad.setColorTransform(1,1,1,1,0,0,0,0);
    ]])
end
end
end