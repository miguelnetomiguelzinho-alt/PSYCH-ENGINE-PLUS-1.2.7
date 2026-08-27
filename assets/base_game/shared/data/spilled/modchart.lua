local beatT = false
local moveNote = false

local time = 0.3
local amount = 13.5

function onBeatHit()
    if moveNote then
        if curBeat % 1 == 0 then
            if moveNote == 'on 1' then
            if beatT then
                noteTweenY('note4Up', 4, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note5Down', 5, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note6Up', 6, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note7Down', 7, defaultPlayerStrumY0-amount, time, 'elasticOut')

                noteTweenY('note0Up', 0, defaultOpponentStrumY0+amount, time, 'elasticOut')
                noteTweenY('note1Down', 1, defaultOpponentStrumY0-amount, time, 'elasticOut')
                noteTweenY('note2Up', 2, defaultOpponentStrumY0+amount, time, 'elasticOut')
                noteTweenY('note3Down', 3, defaultOpponentStrumY0-amount, time, 'elasticOut')
                beatT = false
            else
                noteTweenY('note4Down', 4, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note5Up', 5, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note6Down', 6, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note7Up', 7, defaultPlayerStrumY0+amount, time, 'elasticOut')

                noteTweenY('note0Down', 0, defaultOpponentStrumY0-amount, time, 'elasticOut')
                noteTweenY('note1Up', 1, defaultOpponentStrumY0+amount, time, 'elasticOut')
                noteTweenY('note2Down', 2, defaultOpponentStrumY0-amount, time, 'elasticOut')
                noteTweenY('note3Up', 3, defaultOpponentStrumY0+amount, time, 'elasticOut')
                beatT = true
            end
            end
        end
        if curBeat % 2 == 0 then
            if moveNote == 'on 2' then
            if beatT then
                noteTweenY('note4Up', 4, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note5Down', 5, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note6Up', 6, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note7Down', 7, defaultPlayerStrumY0-amount, time, 'elasticOut')

                noteTweenY('note0Up', 0, defaultOpponentStrumY0+amount, time, 'elasticOut')
                noteTweenY('note1Down', 1, defaultOpponentStrumY0-amount, time, 'elasticOut')
                noteTweenY('note2Up', 2, defaultOpponentStrumY0+amount, time, 'elasticOut')
                noteTweenY('note3Down', 3, defaultOpponentStrumY0-amount, time, 'elasticOut')
                beatT = false
            else
                noteTweenY('note4Down', 4, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note5Up', 5, defaultPlayerStrumY0+amount, time, 'elasticOut')
                noteTweenY('note6Down', 6, defaultPlayerStrumY0-amount, time, 'elasticOut')
                noteTweenY('note7Up', 7, defaultPlayerStrumY0+amount, time, 'elasticOut')

                noteTweenY('note0Down', 0, defaultOpponentStrumY0-amount, time, 'elasticOut')
                noteTweenY('note1Up', 1, defaultOpponentStrumY0+amount, time, 'elasticOut')
                noteTweenY('note2Down', 2, defaultOpponentStrumY0-amount, time, 'elasticOut')
                noteTweenY('note3Up', 3, defaultOpponentStrumY0+amount, time, 'elasticOut')
                beatT = true
            end
            end
        end
    end
    if moveNote == 'off' then
        for i = 0,7 do
            noteTweenY('notesBack'..i, i, defaultPlayerStrumY0, 0.2, 'elasticOut')
        end
    end
end

function onStepHit()
    if curStep == 640 then
        moveNote = 'on 2'
    end
    if curStep == 894 then
        moveNote = 'off'
    end
end