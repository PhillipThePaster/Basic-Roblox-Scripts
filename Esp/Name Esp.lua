--Basic ESP:
        local esp_settings = { ---- table for esp settings 
        textsize = 10,
        colour = 0,255,255
    }


    
    local gui = Instance.new("BillboardGui")
    local esp = Instance.new("TextLabel",gui) ---- new instances to make the billboard gui and the textlabel
    
    
    
    gui.Name = "Zachs ESP"; ---- properties of the esp
    gui.ResetOnSpawn = false
    gui.AlwaysOnTop = true;
    gui.LightInfluence = 0;
    gui.Size = UDim2.new(2, 0, 2, 0);
    esp.BackgroundColor3 = Color3.fromRGB(0,255,255);
    esp.Text = ""
    esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
    esp.BorderSizePixel = 4;
    esp.BorderColor3 = Color3.new(esp_settings.colour)
    esp.BorderSizePixel = 0
    esp.Font = "Arial"
    esp.TextSize = esp_settings.textsize
    esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour
    
    game:GetService("RunService").RenderStepped:Connect(function() ---- loops faster than a while loop :)
        for i,v in pairs (game:GetService("Players"):GetPlayers()) do
            if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Zachs ESP")==nil  then
                esp.Text = "["..v.Name.."]"
                gui:Clone().Parent = v.Character.Head
        end
    end
    end)
