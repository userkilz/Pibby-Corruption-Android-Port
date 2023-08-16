--I'm too lazy to use the event that they gave me ok?
function onCreatePost()
makeLuaSprite('whitebg', '', -500, -300)
		setScrollFactor('whitebg', 0, 0)
		makeGraphic('whitebg', 1920, 1080, 'ffffff')
setObjectCamera('whitebg', 'other')
		addLuaSprite('whitebg', false)
		setProperty('whitebg.alpha', 0)
		scaleObject('whitebg', 22, 22);
end
function onStepHit()
if curStep == 1016 then
doTweenAlpha('byebye', 'camGame', 0, 0.4)
doTweenAlpha('byebye2', 'camHUD', 0, 0.4)
end
if curStep == 1024 then
doTweenAlpha('higameagainlmao', 'camGame', 1, 0.3)
doTweenAlpha('hihihud2', 'camHUD', 1, 0.3)
    runHaxeCode([[
        for (dad in game.dadGroup)
        {
            dad.setColorTransform(1,1,1,1,255,255,255,0);
        }
        for (boyfriend in game.boyfriendGroup)
        {
            boyfriend.setColorTransform(1,1,1,1,255,255,255,0);
        }
  for (gf in game.gfGroup)
        {
            gf.setColorTransform(1,1,1,1,255,255,255,0);
        }
    ]])
doTweenAlpha('nothing', 'bg', 0, 0.2)
setProperty('bg2.visible',false)
setProperty('bg3.visible',false)
doTweenColor('nothingb', 'b', '000000', 0.2, 'linear')
end
if curStep == 1408 then
doTweenAlpha('whiteeffect', 'whitebg', 1, 8.5)
end
if curStep == 1520 then
setProperty('camGame.alpha',0)
setProperty('whitebg.alpha',0)
end
if curStep == 1536 then
doTweenAlpha('hihihihigame2', 'camGame', 1, 0.4)
doTweenAlpha('nothingagain', 'bg', 1, 0.2)
   runHaxeCode([[
        for (dad in game.dadGroup)
        {
            dad.setColorTransform(1,1,1,1,0,0,0,0);
        }
        for (boyfriend in game.boyfriendGroup)
        {
            boyfriend.setColorTransform(1,1,1,1,0,0,0,0);
        }
  for (gf in game.gfGroup)
        {
            gf.setColorTransform(1,1,1,1,0,0,0,0);
        }
    ]])
setProperty('bg2.visible',true)
setProperty('bg3.visible',true)
doTweenAlpha('nothingb', 'b', 'FFFFFF', 0.2)
end
end