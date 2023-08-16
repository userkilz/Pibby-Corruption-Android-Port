function onUpdate(elasped)
    for i = 0, 7 do
        setPropertyFromGroup('playerStrums', i, 'alpha', 0.9)
        setPropertyFromGroup('opponentStrums', i, 'alpha', 0.9)
    end
    screenCenter('songThing', 'x')
    iconOffset = 26
    healthBarX = getProperty('healthBar.x')
    healthBarW = getProperty('healthBar.width')
    healthBarP = getProperty('healthBar.percent')

    setGraphicSize('iconP1',math.lerp(150,getProperty('iconP1.width'), 0.50))
    setProperty('iconP1.x', healthBarX + (healthBarW * (math.remapToRange(healthBarP, 0, 100, 100, 0) * 0.01) - iconOffset));

    setGraphicSize('iconP2',math.lerp(150,getProperty('iconP1.width'), 0.50))
    setProperty('iconP2.x', healthBarX + (healthBarW * (math.remapToRange(healthBarP, 0, 100, 100, 0) * 0.01) - iconOffset));

    updateHitbox('iconP1')
    updateHitbox('iconP2')
end