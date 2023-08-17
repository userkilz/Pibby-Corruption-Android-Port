function onCreatePost()
setProperty('dad.alpha', 0)
setProperty('camHUD.alpha', 0)
setProperty('bg2.visible', false)
setProperty('bg.alpha', 0)
setProperty('bg3.visible', false)
setProperty('b.alpha', 0)
setProperty('boyfriend.alpha', 0)
setProperty('gf.alpha', 0)
end

function onSongStart()
   doTweenAlpha('hudiconbye', 'iconP1', 0, 0.1)
   doTweenAlpha('hudiconbye2', 'iconP2', 0, 0.1)
  cameraFlash('camGame', 'FFFFFF', 0.3);
 doTweenAlpha('hipibby', 'gf', 1, 0.3)
 doTweenAlpha('hibf', 'boyfriend', 1, 0.3)
end

