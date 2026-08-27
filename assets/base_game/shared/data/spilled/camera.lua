
    xx = 50;--Enemigo
    yy = 450;--Enemigo
    xx2 = 1000;--Tu p
    yy2 = 480;--Tu p
    ofs =20
    ofs1 =20
    followchars = true
    del = 15;
    del2 = 15;
    valo = 3; --CameraSpeed


function onTimerCompleted(t)
if t == 'ru' then
setProperty('cameraSpeed',valo)
    followchars = true
end
end


function onCreate()
    setProperty('cameraSpeed', valo); 
end

function onUpdate()
function onEvent(n,v1,v2)
if n == 'camera_target' then
setProperty('cameraSpeed',v2)
runTimer('ru',0.1)
if v1 == '' then
    xx = 50;--Enemigo
    yy = 450;--Enemigo
    xx2 = 1000;--Tu p
    yy2 = 480;--Tu p
end
if v1 == 'bf' then
    xx = 1000;--Enemigo
    yy = 480;--Enemigo
    xx2 = 1000;--Tu p
    yy2 = 480;--Tu p
end
if v1 == 'dad' then
    xx = 50;--Enemigo
    yy = 450;--Enemigo
    xx2 = 50;--Tu p
    yy2 = 450;--Tu p
end
if v1 == 'gf' then
    xx = 520;--Enemigo
    yy = 460;--Enemigo
    xx2 = 530;--Tu p
    yy2 = 460;--Tu p
end
end
end

if followchars == true then
if mustHitSection == false then
if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx-ofs,yy)
doTweenAngle('camGameAngle','camGame',5.5,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx+ofs,yy)
doTweenAngle('camGameAngle','camGame',-5.5,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx,yy-ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx,yy+ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
triggerEvent('Camera Follow Pos',xx-ofs,yy)
doTweenAngle('camGameAngle','camGame',1.2,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
triggerEvent('Camera Follow Pos',xx+ofs,yy)
doTweenAngle('camGameAngle','camGame',-1.2,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
triggerEvent('Camera Follow Pos',xx,yy-ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
triggerEvent('Camera Follow Pos',xx,yy+ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
triggerEvent('Camera Follow Pos',xx,yy)
end
if getProperty('dad.animation.curAnim.name') == 'idle' then
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
triggerEvent('Camera Follow Pos',xx,yy)
end
else
if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
doTweenAngle('camGameAngle','camGame',5.5,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
doTweenAngle('camGameAngle','camGame',-5.5,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'hey' then
triggerEvent('Camera Follow Pos',xx2,yy2)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
triggerEvent('Camera Follow Pos',xx2,yy2)
end
if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then

triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
doTweenAngle('camGameAngle','camGame',7.5,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
doTweenAngle('camGameAngle','camGame',-7.5,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
doTweenAngle('camGameAngle','camGame',0,0.25,'linear')
end
end
else
    triggerEvent('Camera Follow Pos','','')
end
end