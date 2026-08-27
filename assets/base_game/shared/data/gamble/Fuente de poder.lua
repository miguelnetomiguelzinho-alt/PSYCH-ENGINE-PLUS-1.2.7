-- Ampliado y modificado por Akira Ruzzian

function onCreate()
	makeLuaSprite('thevig', 'ytc/vig', 0, 0);
	setProperty('thevig.alpha', '0');
	setObjectCamera('thevig', 'other');

	makeLuaSprite('theros', 'ytc/ros', 0, 0);
	setProperty('theros.alpha', '0');
	setObjectCamera('theros', 'other');

	makeLuaSprite('themom', 'ytc/mom', 0, 0);
	setProperty('themom.alpha', '0');
	setObjectCamera('themom', 'other');

	makeLuaSprite('theneg', 'ytc/neg', 0, 0);
	setProperty('theneg.alpha', '0');
	setObjectCamera('theneg', 'other');

	makeLuaSprite('thenig', 'ytc/nig', 0, 0);
	setProperty('thenig.alpha', '0');
	setObjectCamera('thenig', 'other');

	makeAnimatedLuaSprite('thered', 'ytc/Red Pulse', 0, 0);
	addAnimationByPrefix('thered', 'idle', 'Red Pulse idle', 12, true);
	setGraphicSize('thered', 1280, 720);
	objectPlayAnimation('thered', 'idle');
	setProperty('thered.alpha', '0.5');
	setObjectCamera('thered', 'other');

	makeAnimatedLuaSprite('theneo', 'ytc/Neo', 0, 0);
	addAnimationByPrefix('theneo', 'idle', 'Neo idle', 24, false);
	setGraphicSize('theneo', 1280, 720);
	objectPlayAnimation('theneo', 'idle');
	setProperty('theneo.alpha', '0');
	setObjectCamera('theneo', 'other');

	makeAnimatedLuaSprite('thepcn', 'ytc/Pcn Pulse', 0, 0);
	addAnimationByPrefix('thepcn', 'idle', 'Pcn Pulse idle', 10, true);
	setGraphicSize('thepcn', 1280, 720);
	objectPlayAnimation('thepcn', 'idle');
	setProperty('thepcn.alpha', '0.15');
	setObjectCamera('thepcn', 'other');
	
   addLuaSprite('thevig', true);
   addLuaSprite('theros', true);
   addLuaSprite('themom', true);
   addLuaSprite('theneg', true);
   addLuaSprite('theneo', true);
   addLuaSprite('thenig', true);
   addLuaSprite('thepcn', true);
   addLuaSprite('thered', true);

   setPropertyFromClass('GameOverSubstate', 'characterName', 'proto-rapper-dead');
   precacheImage('characters/PROTO-RAPPER-GAMEOVER');
   precacheImage('characters/bf-pcn-beatbox');
   precacheImage('characters/pcn_new_pibby');
   precacheImage('characters/pcn-bf-new');
end

function onCreatePost()
	initLuaShader("glitch", 225)
	setSpriteShader("dad", "glitch")
	setShaderFloat("dad", "binaryIntensity", -0.42)

	initLuaShader("ChromaticAbberationNew")
	makeLuaSprite('ChromaticAbberationNew')
	makeGraphic('ChromaticAbberationNew', screenWidth, screenHeight);
	setSpriteShader("ChromaticAbberationNew", "ChromaticAbberationNew")
	setShaderFloat("ChromaticAbberationNew", "redX", 0.002)
	setShaderFloat("ChromaticAbberationNew", "blueX", 0.004)
	addHaxeLibrary('ShaderFilter', 'openfl.filters')
	runHaxeCode([[
	trace(ShaderFilter);
	game.camHUD.setFilters([new ShaderFilter(game.getLuaObject('ChromaticAbberationNew').shader)]);
		]])
end

function onSongStart()
doTweenAlpha('fuente', 'thered', 0, 1, 'sineOut')
doTweenAlpha('fuente1', 'thepcn', 0, 1, 'sineOut')
doTweenAlpha('SANSITO', 'alerta', 0, 1, 'linear')
end

function onBeatHit()

	objectPlayAnimation('theneo', 'idle', true);

end

function onEvent(n,v1,v2)
if n == 'setProperty' then
if v1 == 'h.alpha' then
setShaderInt("h", "invert", 0)
end
end
end

function onUpdatePost (elapsed)
    if downscroll then
		setProperty('logo.y', 20)
		setProperty('pibby.y', 50)
		setProperty('pibbyl.y', 50)
		setProperty('Jake.y', 50)
		setProperty('jakel.y', 50)
		setProperty('cup.y', 50)
		setProperty('cupl.y', 50)
		setProperty('cha.y', 50)
		setProperty('chal.y', 50)
	end
setTextString("botplayTxt", "[Pibby Classic Nexus] ")
setTextFont('scoreTxt','BeachmanScript.ttf')
setTextSize('scoreTxt', 29)
setTextFont('timeTxt','AlegreyaSansSC-Black.ttf')
setTextFont('botplayTxt','Adult-Swim-Font.ttf')
setTextColor('botplayTxt','191970')
setTextColor('timeTxt','8b008b')
setTextColor('scoreTxt','ffffff')

setShaderFloat("shader", "iTime", os.clock())
setShaderFloat("cen", "iTime", os.clock())
setShaderFloat("opponentStrums.members[0]", "iTime", os.clock())
setShaderFloat("opponentStrums.members[1]", "iTime", os.clock())
setShaderFloat("opponentStrums.members[2]", "iTime", os.clock())
setShaderFloat("opponentStrums.members[3]", "iTime", os.clock())
setShaderFloat("logo", "iTime", os.clock())
setShaderFloat("uh", "iTime", os.clock())
setShaderFloat("vcrshader", "iTime", os.clock())
setShaderFloat("Glitchy", "iTime", os.clock())
setShaderFloat("demon_blur", "iTime", os.clock())
setShaderFloat("iconbar", "iTime", os.clock())
setShaderFloat("yo", "iTime", os.clock())
setShaderFloat("thered", "iTime", os.clock())
setShaderFloat("thepcn", "iTime", os.clock())
setShaderFloat("theneo", "iTime", os.clock())
setShaderFloat("theros", "iTime", os.clock())
end

function opponentNoteHit()
	initLuaShader('Glitchy')
    setSpriteShader("iconP2", 'Glitchy') 
    setShaderFloat("iconP2", "AMT", 0.3)
    setShaderFloat("iconP2", "SPEED", 0.2)
    runTimer('tooo',0.14)
    health = getProperty('health')
 if getProperty('health') > 0.35 then
    setProperty('health', health- 0.014);
 end
end

function onTimerCompleted(t)
	if t == 'tooo' then
		initLuaShader('Glitchy')
		setSpriteShader("iconP2", 'Glitchy') 
		setShaderFloat("iconP2", "AMT", 0)
		setShaderFloat("iconP2", "SPEED", 0)
	end
end
