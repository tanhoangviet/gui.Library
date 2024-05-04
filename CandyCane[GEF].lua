local player = game:GetService("Players").LocalPlayer

if player then
    local playerGui = player:FindFirstChild("PlayerGui")
    local backpack = player:FindFirstChild("Backpack")
    
    if playerGui and backpack then
        local candyCane = playerGui:FindFirstChild("Candy Cane")
        
        if candyCane then
            local copy = candyCane:Clone()
            copy.Parent = backpack
        else
            warn("Candy Cane not found in PlayerGui")
        end
    else
        warn("Could not find PlayerGui or Backpack.")
    end
else
    warn("LocalPlayer player not found")
end
