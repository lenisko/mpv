local mp = require 'mp'
local os = require 'os'

local last_time = os.time()

function save(event)
	if ( event == "seeking" )
	then
		time_now = os.time()
		if ( os.difftime(time_now, last_time) >= 1 )
		then
			last_time = time_now
			mp.command("write-watch-later-config")
		end
	else
		mp.command("write-watch-later-config")
	end
end

mp.observe_property("seeking", "bool", save)
mp.observe_property("pause", "bool", save)
