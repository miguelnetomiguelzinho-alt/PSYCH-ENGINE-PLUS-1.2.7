--[[icon shader by Akira Ruzzian]] --
function onCreatePost()
precacheImage('icons/pibb_icon_1')
precacheImage('icons/pibb_icon_2')

makeLuaSprite('pibby', 'icons/pibb_icon_1', 1040 , 580)
setObjectCamera('pibby', 'hud')
addLuaSprite('pibby', true)
setObjectOrder('pibby', getObjectOrder('iconP1'))
setProperty('pibby.visible', false)
setPropertyLuaSprite('pibby', 'flipX', true);

makeLuaSprite('pibbyl', 'icons/pibb_icon_2', 1040, 580)
setObjectCamera('pibbyl', 'hud')
addLuaSprite('pibbyl', true)
setObjectOrder('pibbyl', getObjectOrder('iconP1'))
setProperty('pibbyl.visible', false)
setPropertyLuaSprite('pibbyl', 'flipX', true);
 
initLuaShader('Glitchy')
initLuaShader('Glitchy3')
setSpriteShader('iconbar', 'Glitchy3')
setSpriteShader('yo', 'Glitchy')
setShaderFloat('iconbar', 'AMT', 0.01)
setShaderFloat('iconbar', 'SPEED', 0.05)
setShaderFloat('yo', 'AMT', 0.01)
setShaderFloat('yo', 'SPEED', 0.2)
end

function onUpdatePost()
setProperty('pibby.scale.x', getProperty('iconP1.scale.x'))
setProperty('pibby.scale.y', getProperty('iconP1.scale.y'))
setProperty('pibbyl.scale.x', getProperty('iconP1.scale.x'))
setProperty('pibbyl.scale.y', getProperty('iconP1.scale.y'))
setShaderFloat("iconP2", "iTime", os.clock())
setShaderFloat("iconP1", "iTime", os.clock())
if getProperty('health') < 1.63 then
setSpriteShader('iconP2', 'Glitchy')  
setShaderFloat("iconP2", "AMT", 0.03)
setShaderFloat("iconP2", "SPEED", 0.12)
elseif getProperty('health') >= 1.63 then
setSpriteShader('iconP2', 'Glitchy3')
setShaderFloat("iconP2", "AMT", 0.4)
setShaderFloat("iconP2", "SPEED", 0.2)
end
if getProperty('health') > 0.4 then
setSpriteShader('iconP1', 'Glitchy3')
setShaderFloat("iconP1", "AMT", 0)
setShaderFloat("iconP1", "SPEED", 0)
elseif getProperty('health') <= 0.4 then
setSpriteShader('iconP1', 'Glitchy3')
setShaderFloat("iconP1", "AMT", 0.3)
setShaderFloat("iconP1", "SPEED", 0.2)
end
if getProperty('health') < 0.4 then
setSpriteShader('pibbyl', 'Glitchy3')
setProperty('pibby.visible', false)
setProperty('pibbyl.visible', true)
setShaderFloat("pibbyl", "AMT", 0.3)
setShaderFloat("pibbyl", "SPEED", 0.2)
else
setProperty('pibby.visible',  true)
setProperty('pibbyl.visible', false)
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Glitch Note NCN' then
    if shadersEnabled then
        setSpriteShader("iconP2", 'Glitchy') 
        setShaderFloat("iconP2", "AMT", 0.4)
        setShaderFloat("iconP2", "SPEED", 0.3)
        setSpriteShader('yo', 'Glitchy')
        setShaderFloat('yo', 'AMT', 0.3)
        setShaderFloat('yo', 'SPEED', 0.5)
        setSpriteShader('iconbar', 'Glitchy3')  
        setShaderFloat('iconbar', 'AMT', 0.5)
        setShaderFloat('iconbar', 'SPEED', 0.7) 
        initLuaShader('Glitchy3')
        setSpriteShader('thered', 'Glitchy3')
        setSpriteShader('theneo', 'Glitchy3')
        setSpriteShader('theros', 'Glitchy3')
        setShaderFloat('thered', 'AMT', 0.3)
        setShaderFloat('thered', 'SPEED', 0.6) 
        setShaderFloat('theneo', 'AMT', 0.3)
        setShaderFloat('theneo', 'SPEED', 0.6)
        setShaderFloat('theros', 'AMT', 0.3)
        setShaderFloat('theros', 'SPEED', 0.6)
        initLuaShader("INV")
        setSpriteShader('thepcn', 'INV')
        setShaderInt("thepcn", "invert", 1)
        runTimer('elloa',0.14) 
    end
end
end 

function onTimerCompleted(t)
if t == 'elloa' then
setSpriteShader("iconP2", 'Glitchy') 
setShaderFloat("iconP2", "AMT", 0)
setShaderFloat("iconP2", "SPEED", 0)
setSpriteShader('yo', 'Glitchy')
setShaderFloat('yo', 'AMT', 0.01)
setShaderFloat('yo', 'SPEED', 0.2)
setSpriteShader('iconbar', 'Glitchy3')  
setShaderFloat('iconbar', 'AMT', 0.01)
setShaderFloat('iconbar', 'SPEED', 0.05)  
setShaderFloat('thered', 'AMT', 0)
setShaderFloat('thered', 'SPEED', 0) 
setShaderFloat('theneo', 'AMT', 0)
setShaderFloat('theneo', 'SPEED', 0) 
setShaderFloat('theros', 'AMT', 0)
setShaderFloat('theros', 'SPEED', 0)
setSpriteShader('thepcn', 'INV')
setShaderInt("thepcn", "invert", 0)

end
end
--setProperty('bf.flipX',true)
