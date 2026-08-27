--[[second icon by Akira Ruzzian]]--
function onCreatePost()
	precacheImage('icons/chalice_icon_1')
	precacheImage('icons/chalice_icon_2')
    initLuaShader("Glitchy3")
    initLuaShader("Glitchy")

    makeLuaSprite('cha', 'icons/chalice_icon_1', 1740, 570)
	setObjectCamera('cha', 'hud')
	addLuaSprite('cha', true)
	setObjectOrder('cha', getObjectOrder('iconP2'))
	setProperty('cha.visible', false)
    setPropertyLuaSprite('cha', 'flipX', true);
	
	makeLuaSprite('chal', 'icons/chalice_icon_2', 1740, 570)
	setObjectCamera('chal', 'hud')
	addLuaSprite('chal', true)
	setObjectOrder('chal', getObjectOrder('iconP2'))
	setProperty('chal.visible', false)
    setPropertyLuaSprite('chal', 'flipX', true);

    setSpriteShader("cha", "Glitchy")
    setSpriteShader("chal", "Glitchy3")
end

function onUpdatePost()
    setProperty('cha.scale.x', getProperty('iconP2.scale.x'))
	setProperty('cha.scale.y', getProperty('iconP2.scale.y'))
    setProperty('chal.scale.x', getProperty('iconP1.scale.x'))
	setProperty('chal.scale.y', getProperty('iconP1.scale.y'))
    setShaderFloat("cha", "iTime", os.clock())
    setShaderFloat("chal", "iTime", os.clock())
    if getProperty('health') < 1.63 then
    setSpriteShader("cha", "Glitchy")
    setShaderFloat("cha", "AMT", 0.04)
    setShaderFloat("cha", "SPEED", 0.12)
    elseif getProperty('health') >= 1.63 then
    setSpriteShader('chal', 'Glitchy3')
    setShaderFloat("chal", "AMT", 0.3)
    setShaderFloat("chal", "SPEED", 0.2)
    end
    if getProperty('health') < 1.6 then
        setProperty('chal.visible', false)
        setProperty('cha.visible', true)
    else
        setProperty('chal.visible',  true)
        setProperty('cha.visible', false)
    end
end