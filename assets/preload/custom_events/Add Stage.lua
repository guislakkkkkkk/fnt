function onEvent(name, value1, value2)
    if name == 'Add Stage' then
        stage = tonumber(value1)
        if value1 ~= nil or value1 ~= '' then
            addLuaScript('stages/'..stage)
        end
    end
end