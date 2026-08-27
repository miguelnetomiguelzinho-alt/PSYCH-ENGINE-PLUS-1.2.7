--[[second icon by Akira Ruzzian]]--
function onCreatePost()
	precacheImage('icons/cup_icon_1')
	precacheImage('icons/cup_icon_2')
    initLuaShader("Glitchy3")
    initLuaShader("Glitchy")

    makeLuaSprite('cup', 'icons/cup_icon_1', 140, 545)
	setObjectCamera('cup', 'hud')
	addLuaSprite('cup', true)
	setObjectOrder('cup', getObjectOrder('iconP2'))
	setProperty('cup.visible', false)
	
	makeLuaSprite('cupl', 'icons/cup_icon_2', 138, 545)
	setObjectCamera('cupl', 'hud')
	addLuaSprite('cupl', true)
	setObjectOrder('cupl', getObjectOrder('iconP2'))
	setProperty('cupl.visible', false)

    setSpriteShader("cup", "Glitchy")
    setSpriteShader("cupl", "Glitchy3")
end

function onUpdatePost()
    setProperty('cup.scale.x', getProperty('iconP2.scale.x'))
	setProperty('cup.scale.y', getProperty('iconP2.scale.y'))
    setProperty('cupl.scale.x', getProperty('iconP1.scale.x'))
	setProperty('cupl.scale.y', getProperty('iconP1.scale.y'))
    setShaderFloat("cup", "iTime", os.clock())
    setShaderFloat("cupl", "iTime", os.clock())
    if getProperty('health') < 1.63 then
    setSpriteShader("cup", "Glitchy")
    setShaderFloat("cup", "AMT", 0.04)
    setShaderFloat("cup", "SPEED", 0.12)
    elseif getProperty('health') >= 1.63 then
    setSpriteShader('cupl', 'Glitchy3')
    setShaderFloat("cupl", "AMT", 0.3)
    setShaderFloat("cupl", "SPEED", 0.2)
    end
    if getProperty('health') < 1.6 then
        setProperty('cupl.visible', false)
        setProperty('cup.visible', true)
    else
        setProperty('cupl.visible',  true)
        setProperty('cup.visible', false)
    end
end