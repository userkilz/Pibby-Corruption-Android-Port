function onSongStart()
    PlayState.camZooming = true;
end

function onMoveCamera(focus)
    if focus == 'dad' then
        PlayState.defaultCamZoom = 1.2;
    else
        PlayState.defaultCamZoom = 0.9;
    end
end