function onEvent(name, v1, v2)
    if name == 'addCameraZoomdelBeat' then
        if v1 == 'true' then
            setPropertyFromClass('ClientPrefs', 'camZooms', true)
        else if v1 == 'false' then
            setPropertyFromClass('ClientPrefs', 'camZooms', false)
        end
    end
    end
end