-- Script by AquaStrikr (https://twitter.com/AquaStrikr_)
function onCreatePost()
	makeLuaSprite('HBBG', 'iconbar')
	setObjectCamera('HBBG', 'hud')
	addLuaSprite('HBBG', true)
	setObjectOrder('HBBG', getObjectOrder('healthBar') + 1)
	setProperty('healthBar.visible', false)
setProperty('healthBarBG.visible', false)
end

function onUpdatePost(elapsed)
	setProperty('HBBG.visible', getProperty('scoreTxt.visible'))
	setProperty('HBBG.alpha', getProperty('scoreTxt.alpha'))
	setProperty('HBBG.x', getProperty('healthBar.x') - 150)
	setProperty('HBBG.y', getProperty('healthBar.y') - 60)
end