function onCreatePost()
if downscroll then

makeLuaSprite('yo', 'healthbar/1', 241, -280)
setObjectCamera('yo', 'hud')
scaleObject('yo', 0.4, 0.4)

makeAnimatedLuaSprite('iconbar','healthbar/pcn-healthbar', -110, -446)
addAnimationByPrefix('iconbar','dance','nariz',24,true)
scaleObject('iconbar', 0.5, 0.5)
objectPlayAnimation('iconbar','dance',false)
setObjectCamera('iconbar', 'hud')
setObjectOrder('iconbar', getObjectOrder('healthBar') + 1)
setProperty('iconbar.visible', true)

makeLuaSprite('ola', 'healthbar/nota', 439, -110)
setObjectCamera('ola', 'hud')
scaleObject('ola', 0.2, 0.2)

addLuaSprite('yo', false);
addLuaSprite('iconbar', true);
addLuaSprite('ola', true);
end
if not downscroll then

makeLuaSprite('yo', 'healthbar/1', 241, 315)
setObjectCamera('yo', 'hud')
scaleObject('yo', 0.4, 0.4)

makeAnimatedLuaSprite('iconbar','healthbar/pcn-healthbar', -110, 150)
addAnimationByPrefix('iconbar','dance','nariz',24,true)
scaleObject('iconbar', 0.5, 0.5)
objectPlayAnimation('iconbar','dance',false)
setObjectCamera('iconbar', 'hud')
setObjectOrder('iconbar', getObjectOrder('healthBar') + 1)
setProperty('iconbar.visible', true)

makeLuaSprite('ola', 'healthbar/nota', 440, 478)
setObjectCamera('ola', 'hud')
scaleObject('ola', 0.2, 0.2)

addLuaSprite('yo', false);
addLuaSprite('iconbar', true);
addLuaSprite('ola', true);
end
end
function onUpdatePost()
if downscroll then
setProperty('iconP1.x', 890)
setProperty('iconP2.x', 250)
end
if not downscroll then
setProperty('iconP1.x', 890)
setProperty('iconP1.y', 605)
setProperty('iconP2.y', 590)
setProperty('iconP2.x', 260)
setProperty('scoreTxt.y', 595)
setProperty('healthBar.y', 679)
end
end
--ol