function onCreatePost()
    luaDebugMode = false
    precacheImage('GambleBack')
    precacheImage('GambleDark')
    precacheImage('GambleLigth')
    for i=0,3 do
        noteTweenAlpha(i+16, i, 0, 1, 'linear')
    end
    setProperty('camHUD.alpha',0)
    initLuaShader('Glitch2')
    setSpriteShader('tumama', 'Glitch2')

    initLuaShader("pixel")
    makeLuaSprite('pixel')
    makeGraphic('pixel', screenWidth, screenHeight);
    setSpriteShader("pixel", "pixel")
    setShaderFloat("pixel", "pxSize", 10.0)
    addHaxeLibrary('ShaderFilter', 'openfl.filters')
    runHaxeCode([[
    trace(ShaderFilter);
    game.camGame.setFilters([new ShaderFilter(game.getLuaObject('pixel').shader)]);
        ]])
end

function opponentNoteHit()
    doTweenAlpha('ara ara', 'thepcn', 0.1, 1, 'sineOut')
    runTimer('waza',0.10)
end

function onTimerCompleted(t)
	if t == 'waza' then
        doTweenAlpha('ara ara', 'thepcn', 0, 0.75, 'linear')
	end
end

function onUpdatePost (elapsed)
setShaderFloat("intro", "iTime", os.clock())
end

function onUpdatePost()
if getProperty('health') < 0.4 then
doTweenAlpha('ara ara1', 'theneo', 0.9, 1, 'linear')
else
doTweenAlpha('ara ara1', 'theneo', 0, 1, 'linear')
end
end
