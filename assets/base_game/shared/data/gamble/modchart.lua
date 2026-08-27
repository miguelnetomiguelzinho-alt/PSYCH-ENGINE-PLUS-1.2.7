local beatT = false
local moveNote = false

local time = 0.3
local amount = 15

function onBeatHit()
    if moveNote then
        if curBeat % 2 == 0 then
            if moveNote == 'on' then
            if beatT then
                noteTweenY('note4Up', 4, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note5Down', 5, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note6Up', 6, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note7Down', 7, defaultPlayerStrumY0-amount, time, 'elasticOut')
                beatT = false
            else
                noteTweenY('note4Down', 4, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note5Up', 5, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note6Down', 6, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note7Up', 7, defaultPlayerStrumY0+amount, time, 'elasticOut')
                beatT = true
            end
            end
        end
    end
    if moveNote == 'off' then
        for i = 4,7 do
            noteTweenY('notesBack'..i, i, defaultPlayerStrumY0, 0.2, 'elasticOut')
        end
    end
end

function onStepHit()
    if curStep == 288 then
        moveNote = 'on'
    end
    if curStep == 512 then
        moveNote = 'off'
    end
    if curStep == 544 then
        moveNote = 'on'
    end
    if curStep == 608 then
        moveNote = 'off'
    end
    if curStep == 672 then
        moveNote = 'on'
    end
    if curStep == 1056 then
        moveNote = 'off'
    end
    if curStep == 1440 then
        moveNote = 'on'
    end
    if curStep == 1664 then
        moveNote = 'off'
    end
    if curStep == 1696 then
        moveNote = 'on'
    end
    if curStep == 2208 then
        moveNote = 'off'
    end
end