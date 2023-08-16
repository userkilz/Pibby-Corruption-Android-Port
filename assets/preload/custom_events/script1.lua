function onEvent(event, value1, value2)
    if event == 'Apple Filter' then
        if value1 == 'on' then
            if not ClientPrefs.lowQuality then
                wall.alpha = 0.0001;
                vignette2.alpha = 0.0001;
                vignette.alpha = 0.0001;
                light.alpha = 0.0001;
            end
        elseif value1 == 'off' then
            if not ClientPrefs.lowQuality then
                wall.alpha = 1;
                vignette2.alpha = 1;
                vignette.alpha = 1;
                light.alpha = 1;
            end
        end
    end
end