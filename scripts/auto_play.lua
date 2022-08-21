-- auto play file even when last state in playlist was paused

function auto_play(event)
    if mp.get_property_bool("pause") == true then
        mp.set_property("pause", "no")
    end
end

mp.register_event("file-loaded", auto_play)
