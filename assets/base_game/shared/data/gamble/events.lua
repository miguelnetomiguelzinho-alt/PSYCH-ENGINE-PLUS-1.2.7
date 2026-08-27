function onCreate()
    makeLuaSprite('intro', 'intros/intro g', 500, 2200);
    setProperty('intro.alpha', '1');
    scaleObject('intro', 2.7, 2.7, true)
    setObjectCamera('intro', 'camGame');
    addLuaSprite('intro', false)
end

function onCreatePost()
    initLuaShader("Glitchy3")
    setSpriteShader('intro', 'Glitchy3')
    setShaderFloat('intro', 'AMT', 0.22)
    setShaderFloat('intro', 'SPEED', 0.15)
end

moveHud = false
moveHudX = false
function moveGameCam()
    if moveHud == true then
     doTweenAngle('ang', 'camHUD', 0, 1, 'sineInOut')
    end
    if moveHudX == true then
     doTweenX('x', 'camHUD', 0, 1, 'sineInOut')
    end
end

function onTweenCompleted(t)
if moveHud == true then
    if t == 'ang' then
        doTweenAngle('ang1', 'camHUD', 6, 1.8, 'sineInOut')
    end
    if t == 'ang1' then
        doTweenAngle('ang', 'camHUD', -6, 1.8, 'sineInOut')
    end
end
if moveHudX == true then
    if t == 'x' then
        doTweenX('x1', 'camHUD', 160, 3.5, 'sineInOut')
    end
    if t == 'x1' then
        doTweenX('x', 'camHUD', -160, 3.5, 'sineInOut')
    end
end
end

function onStepHit()
    if curStep == 32 then
        initLuaShader("demon_blur")
        makeLuaSprite('demon_blur')
        makeGraphic('demon_blur', screenWidth, screenHeight);
        setSpriteShader("demon_blur", "demon_blur")
        setShaderFloat("demon_blur", "u_size", 1.0)
        setShaderFloat("demon_blur", "u_alpha", 1.2)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('demon_blur').shader)]);
            ]])
    end
    if curStep == 33 then
        initLuaShader("demon_blur")
        makeLuaSprite('demon_blur')
        makeGraphic('demon_blur', screenWidth, screenHeight);
        setSpriteShader("demon_blur", "demon_blur")
        setShaderFloat("demon_blur", "u_size", 1.0)
        setShaderFloat("demon_blur", "u_alpha", 1.3)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('demon_blur').shader)]);
            ]])
    end
    if curStep == 288 then
        doTweenY('introY', 'intro', 1190, 1.5, 'backIn')
        doTweenAlpha('intro', 'intro', 0, 2, 'sineOut')
        initLuaShader("ChromaticAbberationNew")
        makeLuaSprite('ChromaticAbberationNew')
        makeGraphic('ChromaticAbberationNew', screenWidth, screenHeight);
        setSpriteShader("ChromaticAbberationNew", "ChromaticAbberationNew")
        setShaderFloat("ChromaticAbberationNew", "redX", 0.002)
        setShaderFloat("ChromaticAbberationNew", "blueX", 0.004)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('ChromaticAbberationNew').shader)]);
            ]])
    end
    if curStep == 544 then
        moveHud = true
        moveHudX = true
        moveGameCam()
        p = 5
    end
    if curStep == 544 then
        initLuaShader("demon_blur")
        makeLuaSprite('demon_blur')
        makeGraphic('demon_blur', screenWidth, screenHeight);
        setSpriteShader("demon_blur", "demon_blur")
        setShaderFloat("demon_blur", "u_size", 1.0)
        setShaderFloat("demon_blur", "u_alpha", 1.2)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('demon_blur').shader)]);
            ]])
    end
    if curStep == 100 then
        for i=0,3 do
            noteTweenAlpha(i+16, i, 0, 1, 'linear')
        end
    end
    if curStep == 160 then
        setProperty('camHUD.alpha',1)
        --doTweenX('novio', 'boyfriend', -200, 2, 'elasticOut')
        doTweenAlpha('intro', 'intro', 1, 1, 'sineOut')
        doTweenY('introY', 'intro', 290, 1.5, 'elasticOut')
    end
    if curStep == 912 then
        setProperty('camHUD.alpha',0.5)
    end
    if curStep == 928 then
        setProperty('camHUD.alpha',1)
    end
    if curStep == 1056 then
        moveHud = false
        cancelTween(ang)
        moveHudX = false
        cancelTween(x)
        cancelTween(x1)
        doTweenAngle('dgsdg','camHUD',0,1,'sineInOut')
        doTweenAngle('dgsdg1','camHUD',0,2,'sineInOut')
        doTweenX('quesesso1', 'camHUD', 0, 2, 'sineInOut')
        doTweenX('quesesso', 'camHUD', 0, 1, 'sineInOut')
    end
    if curStep == 1056 then
        initLuaShader("ChromaticAbberation")
        makeLuaSprite('ChromaticAbberation')
        makeGraphic('ChromaticAbberation', screenWidth, screenHeight);
        setSpriteShader("ChromaticAbberation", "ChromaticAbberation")
        setShaderFloat("ChromaticAbberation", "amount", 1.15)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('ChromaticAbberation').shader)]);
            ]])
    end
    if curStep == 1440 then
        p = 3.5
    end
    if curStep == 1680 then
        doTweenAngle('joder', 'camGame', 35, 0.5, 'elasticOut')
    end
    if curStep == 1696 then
-- cambio de escenario
        doTweenX('CGX', 'camGame', -160, 0.4, 'sineOut')
        doTweenY('CGY', 'camGame', 80, 0.4, 'sineOut')
        doTweenX('chalice', 'pcnchalice', 2300, 0.3, 'sineOut')
        doTweenX('pib', 'pcn_new_pibby', 1500, 0.3, 'sineOut')
        doTweenY('piv', 'pcn_new_pibby', 610, 0.3, 'sineOut')
        doTweenY('novio', 'boyfriend', 800, 0.3, 'sineOut')
        doTweenX('iconopibby', 'pibby', 620, 0.3, 'sineOut')
        doTweenX('iconopibby1', 'pibbyl', 620, 0.3, 'sineOut')
        doTweenX('iconocha', 'cha', 902, 0.3, 'sineOut')
        doTweenX('iconochal', 'chal', 902, 0.3, 'sineOut')
        doTweenY('iconopibbyY', 'pibby', 600, 0.3, 'sineOut')
        doTweenY('iconopibbyY1', 'pibbyl', 600, 0.3, 'sineOut')
        setPropertyLuaSprite('pibby', 'flipX', false)
        setPropertyLuaSprite('pibbyl', 'flipX', false)
        removeLuaSprite('Sky', true)
        removeLuaSprite('Trees', true)
        removeLuaSprite('Cup', true)
        removeLuaSprite('Dark', true)
        removeLuaSprite('Shine', true)
        setProperty('pcn_new_pibby.flipX',true)
        makeLuaSprite('GambleBack', 'GambleBack', -600, -950);
        scaleObject('GambleBack', 3, 3);
        makeLuaSprite('GambleDark', 'GambleDark', -600, -950);
        scaleObject('GambleDark', 3, 3);
        makeLuaSprite('GambleLigth', 'GambleLigth', -600, -950);
        scaleObject('GambleLigth', 3, 3);
        setBlendMode('GambleLigth','add')
        addLuaSprite('GambleBack', false)
        addLuaSprite('GambleDark', true)
        addLuaSprite('GambleLigth', true)
    end
    if curStep == 1688 then
        doTweenAngle('joder', 'camGame', -35, 0.5, 'elasticOut')
    end
    if curStep == 1696 then
        doTweenAngle('joder', 'camGame', 0, 0.5, 'elasticOut')
        moveHud = true
        moveHudX = true
        moveGameCam()
    end
    if curStep == 2208 then
        doTweenAlpha('que', 'camHUD', 0, 1.7, 'sineInOut')
        initLuaShader("demon_blur")
        makeLuaSprite('demon_blur')
        makeGraphic('demon_blur', screenWidth, screenHeight);
        setSpriteShader("demon_blur", "demon_blur")
        setShaderFloat("demon_blur", "u_size", 1.0)
        setShaderFloat("demon_blur", "u_alpha", 1.2)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('demon_blur').shader)]);
            ]])
    end
    if curStep == 2200 then
        moveHud = false
        cancelTween(ang)
        moveHudX = false
        cancelTween(x)
        cancelTween(x1)
        doTweenAngle('dgsdg','camHUD',0,1,'sineInOut')
        doTweenAngle('dgsdg1','camHUD',0,2,'sineInOut')
        doTweenX('quesesso1', 'camHUD', 0, 2, 'sineInOut')
        doTweenX('quesesso', 'camHUD', 0, 1, 'sineInOut')
    end
    if curStep == 272 then
        setProperty('camHUD.alpha',0.5)
    end
    if curStep == 288 then
        setProperty('camHUD.alpha',1)
    end
    if curStep == 512 then
        setProperty('camHUD.alpha',0.5)
    end
    if curStep == 544 then
        setProperty('camHUD.alpha',1)
    end
    if curStep == 608 then
        setProperty('camHUD.alpha',0.5)
    end
    if curStep == 672 then
        setProperty('camHUD.alpha',1)
    end
    if curStep == 800 then
        setProperty('camHUD.alpha',0.8)
    end
    if curStep == 1056 then
        setProperty('camHUD.alpha',0.5)
    end
    if curStep == 1184 then
        setProperty('camHUD.alpha',1)
    end
    if curStep == 1440 then
        setProperty('camHUD.alpha',0.7)
    end
    if curStep == 1664 then
        setProperty('camHUD.alpha',0.5)
    end
    if curStep == 1696 then
        setProperty('camHUD.alpha',0.8)
    end

end

n = 20
p = 4
function onBeatHit()
if curBeat >= 40 and curBeat <= 72 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.040', '0.05')
setProperty('camHUD.x', n, true)
doTweenX('esteban.tu.mama', 'camHUD', 0, 0.5, 'backOut')
n = -n
end
end
if curBeat >= 72 and curBeat <= 128 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.040', '0.05')
setProperty('camGame.angle', p)
doTweenAngle('luca.dice.nya', 'camGame', 0, 0.5, 'elasticOut')
setProperty('camHUD.x', n, true)
doTweenX('esteban.tu.mama', 'camHUD', 0, 0.5, 'elasticOut')
p = -p
n = -n
end
end
if curBeat >= 136 and curBeat <= 152 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.045', '0.06')
setProperty('camGame.angle', p)
doTweenAngle('luca.dice.nya', 'camGame', 0, 0.5, 'elasticOut')
p = -p
end
end
if curBeat >= 168 and curBeat <= 228 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.045', '0.06')
setProperty('camGame.angle', p)
doTweenAngle('luca.dice.nya', 'camGame', 0, 0.5, 'elasticOut')
p = -p
end
end
if curBeat >= 232 and curBeat <= 264 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.045', '0.06')
setProperty('camGame.angle', p)
doTweenAngle('luca.dice.nya', 'camGame', 0, 0.5, 'elasticOut')
p = -p
end
end
if curBeat >= 360 and curBeat <= 416 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.040', '0.05')
setProperty('camGame.angle', p)
doTweenAngle('luca.dice.nya', 'camGame', 0, 0.5, 'elasticOut')
p = -p
end
end
if curBeat >= 424 and curBeat <= 552 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.045', '0.06')
setProperty('camGame.angle', p)
doTweenAngle('luca.dice.nya', 'camGame', 0, 0.5, 'elasticOut')
p = -p
end
end
end

function onUpdatePost()
    if curStep >= 1696 then
        setProperty('iconP1.x', 480)
    end 
end