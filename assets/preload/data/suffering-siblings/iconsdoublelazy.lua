--iconChange script originally created by Onionring1403.
--Feel free to add/replace characters listed if need be.


local dorito = true;
local yam = true;
local papu = false;

function onCreatePost()
	precacheImage('pibby')
	precacheImage('pibbylose')
	precacheImage('pibby')
	precacheImage('pibby')
	precacheImage('jake')
	precacheImage('jakelose')


	makeLuaSprite('pibby', 'pibby', 950 ,setProperty('pibby.y', getProperty('iconP1.y')))
	setObjectCamera('pibby', 'hud')
	addLuaSprite('pibby', true)
	setObjectOrder('pibby', getObjectOrder('iconP1'))
	setProperty('pibby.visible', false)
	setPropertyLuaSprite('pibby', 'flipX', true);
	
	makeLuaSprite('pibbylose', 'pibbylose', 950, setProperty('pibbylose.y', getProperty('iconP1.y')))
	setObjectCamera('pibbylose', 'hud')
	addLuaSprite('pibbylose', true)
	setObjectOrder('pibbylose', getObjectOrder('iconP1'))
	setProperty('pibbylose.visible', false)
	setPropertyLuaSprite('pibbylose', 'flipX', true);

	makeLuaSprite('jake', 'jake', 200, setProperty('jake.y', getProperty('iconP2.y')))
	setObjectCamera('jake', 'hud')
	addLuaSprite('jake', true)
	setObjectOrder('jake', getObjectOrder('iconP2'))
	setProperty('jake.visible', false)
	
	makeLuaSprite('jakelose', 'jakelose', 200, setProperty('jakelose.y', getProperty('iconP2.y')))
	setObjectCamera('jakelose', 'hud')
	addLuaSprite('jakelose', true)
	setObjectOrder('jakelose', getObjectOrder('iconP2'))
	setProperty('jakelose.visible', false)

	
end	
function onUpdatePost(e)
setProperty('jake.scale.x', getProperty('iconP2.scale.x'))
	setProperty('jake.scale.y', getProperty('iconP2.scale.y'))
setProperty('pibby.scale.x', getProperty('iconP1.scale.x'))
	setProperty('pibby.scale.y', getProperty('iconP1.scale.y'))
setProperty('pibbylose.scale.x', getProperty('iconP1.scale.x'))
	setProperty('pibbylose.scale.y', getProperty('iconP1.scale.y'))
setProperty('jakelose.scale.x', getProperty('iconP1.scale.x'))
	setProperty('jakelose.scale.y', getProperty('iconP1.scale.y'))
setProperty('jake.y', getProperty('iconP2.y'))
setProperty('jakelose.y', getProperty('iconP2.y'))
setProperty('pibbylose.y', getProperty('iconP1.y'))
setProperty('pibby.y', getProperty('iconP1.y'))
		if dorito then
		health = getProperty('health')
		if health < 0.4 then
			setProperty('pibby.visible', false)
			setProperty('pibbylose.visible', true)
		else
			setProperty('pibby.visible',  true)
			setProperty('pibbylose.visible', false)

	end
	end
		if yam then
		health = getProperty('health')
		if health < 1.6 then
			setProperty('jakelose.visible', false)
			setProperty('jake.visible', true)
		else
			setProperty('jakelose.visible',  true)
			setProperty('jake.visible', false)
		end
	end
if papu then
		health = getProperty('health')
		if health < 1.6 then
			setProperty('jakelose.visible', false)
			setProperty('jake.visible', true)
		else
			setProperty('jakelose.visible',  true)
			setProperty('jake.visible', false)
		end
	end
	end
