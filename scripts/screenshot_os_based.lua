-- change property `screenshot-directory` based on OS we use

function detect_platform()
    local o = {}
    if mp.get_property_native('options/vo-mmcss-profile', o) ~= o then
        return 'windows'
    elseif mp.get_property_native('options/input-app-events', o) ~= o then
        return 'macos'
    end
    return 'linux'
end

local platform = detect_platform()

-- change values here
if platform == 'windows' then
    mp.set_property("screenshot-directory", "Q:/")
elseif platform == 'linux' then
    mp.set_property("screenshot-directory", "~/Pictures/Screenshots/")
else
    mp.set_property("screenshot-directory", "~/Pictures/Screenshots/")
end
