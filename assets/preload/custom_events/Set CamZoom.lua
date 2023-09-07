function onEvent(name,value1,value2)

    if name == "Set CamZoom" then
        
        if value2 == '' then
            doTweenZoom('susAmongus', 'camGame', value1, 0.8, 'expoOut')
        else
            doTweenZoom('susAmongus', 'camGame', value1, value2, 'expoOut')
        end
        setProperty("defaultCamZoom",value1) 
            
    end


end