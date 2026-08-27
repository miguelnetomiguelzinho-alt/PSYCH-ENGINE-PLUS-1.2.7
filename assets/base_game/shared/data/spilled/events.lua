
function onCreate()
makeLuaSprite('intro', 'intros/intro s', 300, 950);
setProperty('intro.alpha', '0');
scaleObject('intro', 1.8, 1.8, true)
setObjectCamera('intro', 'camGame');
addLuaSprite('intro', false)
end

function onCreatePost()
luaDebugMode = false

initLuaShader("Glitchy3")
setSpriteShader('intro', 'Glitchy3')
setShaderFloat('intro', 'AMT', 0.3)
setShaderFloat('intro', 'SPEED', 0.3)

makeLuaText('nya2', 'Song created by :', 0,0,20)
setTextSize('nya2', 60)
setProperty('nya2.alpha',0)
setTextFont('nya2', 'BeachmanScript.ttf')
setTextColor('nya2', 'ffffff')
setObjectCamera('nya2', 'other')
addLuaText('nya2', true)

makeLuaText('nya3', ' CosmoYT ', 0,270,20)
setTextSize('nya3', 60)
setProperty('nya3.alpha',0)
setTextFont('nya3', 'BeachmanScript.ttf')
setTextColor('nya3', 'dc143c')
setObjectCamera('nya3', 'other')
addLuaText('nya3', true)

end 


function onStepHit()
    if curStep == 32 then
        doTweenAlpha('love2', 'nya2', 1, 1, 'linear')
        doTweenAlpha('love3', 'nya3', 1, 1, 'linear')
    end
    if curStep == 32 then


    end
    if curStep == 64 then
        doTweenAlpha('love2', 'nya2', 0, 1, 'linear')
        doTweenAlpha('love3', 'nya3', 0, 1, 'linear')

    end
    if curStep == 80 then

        removeLuaText('nya2', true)
        removeLuaText('nya3', true)
    end
    if curStep == 128 then
        doTweenAlpha('hudA', 'camHUD', 1, 1, 'backOut')


        initLuaShader("uh")
        makeLuaSprite('uh')
        makeGraphic('uh', screenWidth, screenHeight);
        setSpriteShader("uh", "uh")
        setShaderFloat("uh", "d", 200)
        setShaderFloat("uh", "c", 100)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('uh').shader)]);
            ]])
    end
    if curStep == 1 then

    end
    if curStep == 256 then
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
    if curStep == 384 then
        initLuaShader("saturation")
        setSpriteShader("dad", "saturation")
        setShaderFloat("dad", "contrast", 1.3)
        setShaderFloat("dad", "saturation", 0)
        setShaderFloat("boyfriend", "contrast", 1.3)
        setShaderFloat("boyfriend", "saturation", 0)
        setShaderFloat("pcn_new_pibby", "contrast", 1.3)
        setShaderFloat("pcn_new_pibby", "saturation", 0)
        setShaderFloat("Cupheadbg", "contrast", 1.3)
        setShaderFloat("Cupheadbg", "saturation", 0)
        setShaderFloat("cup black lol", "contrast", 1.3)
        setShaderFloat("cup black lol", "saturation", 0)
        setShaderFloat("h", "contrast", 1.5)
        setShaderFloat("h", "saturation", 0)
        initLuaShader("chromaticRadialBlur")
        makeLuaSprite('chromaticRadialBlur')
        makeGraphic('chromaticRadialBlur', screenWidth, screenHeight);
        setSpriteShader("chromaticRadialBlur", "chromaticRadialBlur")
        setShaderFloat("chromaticRadialBlur", "blur", 0.85)
        setShaderFloat("chromaticRadialBlur", "falloff", 3.0)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('chromaticRadialBlur').shader)]);
            ]])
    end
    if curStep == 512 then
        setShaderFloat("dad", "contrast", 1)
        setShaderFloat("dad", "saturation", 1)
        setShaderFloat("boyfriend", "contrast", 1)
        setShaderFloat("boyfriend", "saturation", 1)
        setShaderFloat("pcn_new_pibby", "contrast", 1)
        setShaderFloat("pcn_new_pibby", "saturation", 1)
        setShaderFloat("Cupheadbg", "contrast", 1)
        setShaderFloat("Cupheadbg", "saturation", 1)
        setShaderFloat("cup black lol", "contrast", 1)
        setShaderFloat("cup black lol", "saturation", 1)
        setShaderFloat("h", "contrast", 1)
        setShaderFloat("h", "saturation", 1)
        initLuaShader("uh")
        makeLuaSprite('uh')
        makeGraphic('uh', screenWidth, screenHeight);
        setSpriteShader("uh", "uh")
        setShaderFloat("uh", "d", 100)
        setShaderFloat("uh", "c", 100)
        addHaxeLibrary('ShaderFilter', 'openfl.filters')
        runHaxeCode([[
        trace(ShaderFilter);
        game.camGame.setFilters([new ShaderFilter(game.getLuaObject('uh').shader)]);
            ]])
    end
    if curStep == 416 then
        initLuaShader("saturation")
        setSpriteShader("dad", "saturation")
        setShaderFloat("dad", "contrast", 1.3)
        setShaderFloat("dad", "saturation", 0)
    end
    if curStep == 632 then
        doTweenAngle('GameA', 'camGame', 360, 0.7, 'sineOut')
    end
    if curStep == 640 then
        setProperty('camGame.angle', 0)
    end
    if curStep == 912 then
        doTweenY('G', 'camGame', 1000, 2.5, 'backIn')
        doTweenY('H', 'camHUD', 1200, 1.7, 'backIn')
        doTweenAngle('G2a', 'camGame', 30, 2, 'cineOut')
        doTweenAngle('H2a', 'camHUD', -90, 2.2, 'cineOut')
    end
    if curStep == 128 then
        doTweenAlpha('lunaps', 'luna', 0.5, 1, 'linear')
    end
    if curStep == 224 then
        doTweenAlpha('lunaps', 'luna', 1, 2, 'linear')
    end
    if curStep == 256 then
        doTweenAlpha('lunaps', 'luna', 0.3, 0.5, 'linear')
    end
    if curStep == 384 then
        doTweenAlpha('lunaps', 'luna', 0, 0.3, 'linear')
    end
    if curStep == 512 then
        doTweenAlpha('lunaps', 'luna', 0.5, 1, 'linear')
    end
    if curStep == 640 then
        doTweenAlpha('lunaps', 'luna', 0, 0.1, 'linear')
    end
    if curStep == 768 then
        doTweenAlpha('lunaps', 'luna', 0.5, 0.1, 'linear')
    end
    if curStep == 896 then
        doTweenAlpha('lunaps', 'luna', 1, 2.3, 'linear')
    end
    if curStep == 96 then
        doTweenY('spilledY', 'intro', 350, 0.8, 'elasticOut')
        doTweenAlpha('spilled', 'intro', 1, 1, 'linear')

    end
    if curStep == 120 then
        doTweenY('spilledY', 'intro', 950, 0.8, 'backIn')
        doTweenAlpha('spilled', 'intro', 0, 1, 'linear')

    end
end

n = 15
p = 5
function onBeatHit()
if curBeat >= 32 and curBeat <= 64 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.055', '0.06')
end
end
if curBeat >= 128 and curBeat <= 144 then 
if curBeat % 4 == 0 then
triggerEvent('Add Camera Zoom', '0.055', '0.06')
end
end
if curBeat >= 144 and curBeat <= 156 then 
if curBeat % 1 == 0 then
triggerEvent('Add Camera Zoom', '0.055', '0.06')
end
end
if curBeat >= 64 and curBeat <= 96 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.025', '0.05')
setProperty('camHUD.angle', p)
doTweenAngle('luca.dice.nya', 'camHUD', 0, 0.5, 'backOut')
setProperty('camHUD.x', n, true)
doTweenX('esteban.tu.mama', 'camHUD', 0, 0.5, 'backOut')
p = -p
n = -n
end
end
if curBeat >= 160 and curBeat <= 224 then 
if curBeat % 2 == 0 then
triggerEvent('Add Camera Zoom', '0.035', '0.05')
setProperty('camHUD.angle', p)
doTweenAngle('luca.dice.nya', 'camHUD', 0, 0.5, 'backOut')
setProperty('camHUD.x', n, true)
doTweenX('esteban.tu.mama', 'camHUD', 0, 0.5, 'backOut')
p = -p
n = -n
end
end
end

function onUpdate(elapsed)
    setShaderFloat("intro", "iTime", os.clock())
end