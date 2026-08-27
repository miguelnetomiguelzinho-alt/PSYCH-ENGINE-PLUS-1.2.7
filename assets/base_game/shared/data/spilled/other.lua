function onCreatePost()
    luaDebugMode = false
    setProperty('camHUD.alpha', 0)
    setProperty('gf.visible', false)
    triggerEvent('VhsApple', 'INV', '')
    
    initLuaShader("saturation")
    setSpriteShader("boyfriend", "saturation")
    setSpriteShader("Cupheadbg", "saturation")
    setSpriteShader("cup black lol", "saturation")
    setSpriteShader("pcn_new_pibby", "saturation")
    setSpriteShader("h", "saturation")
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
    
    initLuaShader("chromaticRadialBlur")
    makeLuaSprite('chromaticRadialBlur')
    makeGraphic('chromaticRadialBlur', screenWidth, screenHeight);
    setSpriteShader("chromaticRadialBlur", "chromaticRadialBlur")
    setShaderFloat("chromaticRadialBlur", "blur", 0.75)
    setShaderFloat("chromaticRadialBlur", "falloff", 3.0)
    addHaxeLibrary('ShaderFilter', 'openfl.filters')
    runHaxeCode([[
    trace(ShaderFilter);
    game.camGame.setFilters([new ShaderFilter(game.getLuaObject('chromaticRadialBlur').shader)]);
        ]])
end 