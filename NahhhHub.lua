local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local OpenButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local TeleportButton = Instance.new("TextButton")
local EspButton = Instance.new("TextButton")
local OtherButton = Instance.new("TextButton")
local Teleport2Button = Instance.new("TextButton")
local TeleportMenu = Instance.new("Frame")
local EspMenu = Instance.new("Frame")
local OtherMenu = Instance.new("Frame")
local Teleport2Menu = Instance.new("Frame")
local MenuLabel = Instance.new("TextLabel")

-- ตั้งค่าสี
local colors = {
    red = Color3.fromRGB(255, 0, 0),
    black = Color3.fromRGB(0, 0, 0),
    gray = Color3.fromRGB(128, 128, 128)
}

-- ตั้งค่า ScreenGui
ScreenGui.Name = "NahhhHub"
ScreenGui.Parent = syn and game.CoreGui or game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- ตั้งค่า MainFrame
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = colors.gray
MainFrame.BorderColor3 = colors.red
MainFrame.BorderSizePixel = 2
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
MainFrame.Size = UDim2.new(0, 400, 0, 200)
MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.Visible = false

-- Create a boolean variable to track GUI visibility
local guiVisible = false

-- Create a function to toggle GUI visibility and update button text
local function toggleGUI()
    guiVisible = not guiVisible
    MainFrame.Visible = guiVisible
    if guiVisible then
        OpenButton.Text = "Close" -- Update text to "Close" when GUI is visible
    else
        OpenButton.Text = "Open" -- Update text to "Open" when GUI is hidden
    end
end

-- Create a TextButton for the OpenButton
local OpenButton = Instance.new("TextButton")
OpenButton.Name = "OpenButton"
OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Dark GUI color
OpenButton.TextColor3 = Color3.fromRGB(0, 255, 0) -- Green text color
OpenButton.Size = UDim2.new(0, 100, 0, 50)
OpenButton.Position = UDim2.new(0.5, -425, 0.5, 4)
OpenButton.Text = "Open Nahhh Hub" -- Initial button text
OpenButton.Font = Enum.Font.SourceSans
OpenButton.TextSize = 18
OpenButton.Draggable = true
OpenButton.Active = true
-- Connect the toggle function to the MouseButton1Click event
OpenButton.MouseButton1Click:Connect(toggleGUI)

-- ตั้งค่า CloseButton
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = colors.red
CloseButton.TextColor3 = colors.black
CloseButton.Position = UDim2.new(1, -25, 0, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Text = "X"
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

-- ตั้งค่า MenuLabel
MenuLabel.Name = "MenuLabel"
MenuLabel.Parent = MainFrame
MenuLabel.BackgroundColor3 = colors.gray
MenuLabel.TextColor3 = colors.black
MenuLabel.Position = UDim2.new(0, 0, 0, 0)
MenuLabel.Size = UDim2.new(0, 200, 0, 25)
MenuLabel.Text = "GEF Script"

-- ตั้งค่า TeleportButton
TeleportButton.Name = "TeleportButton"
TeleportButton.Parent = MainFrame
TeleportButton.BackgroundColor3 = colors.red
TeleportButton.TextColor3 = colors.black
TeleportButton.Position = UDim2.new(0, 0, 0, 25)
TeleportButton.Size = UDim2.new(0, 200, 0, 50)
TeleportButton.Text = "Teleport"

-- ตั้งค่า EspButton
EspButton.Name = "EspButton"
EspButton.Parent = MainFrame
EspButton.BackgroundColor3 = colors.red
EspButton.TextColor3 = colors.black
EspButton.Position = UDim2.new(0, 0, 0, 75)
EspButton.Size = UDim2.new(0, 200, 0, 50)
EspButton.Text = "Esp"

-- ตั้งค่า OtherButton
OtherButton.Name = "OtherButton"
OtherButton.Parent = MainFrame
OtherButton.BackgroundColor3 = colors.red
OtherButton.TextColor3 = colors.black
OtherButton.Position = UDim2.new(0, 0, 0, 125)
OtherButton.Size = UDim2.new(0, 200, 0, 50)
OtherButton.Text = "Other"

-- ตั้งค่า Teleport2Button
Teleport2Button.Name = "Teleport2Button"
Teleport2Button.Parent = MainFrame
Teleport2Button.BackgroundColor3 = colors.red
Teleport2Button.TextColor3 = colors.black
Teleport2Button.Position = UDim2.new(0, 0, 0, 175)
Teleport2Button.Size = UDim2.new(0, 200, 0, 50)
Teleport2Button.Text = "Teleport2"

-- ตั้งค่า TeleportMenu
TeleportMenu.Name = "TeleportMenu"
TeleportMenu.Parent = MainFrame
TeleportMenu.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- สีเทา
TeleportMenu.Position = UDim2.new(0, 200, 0, 0)
TeleportMenu.Size = UDim2.new(0, 200, 0, 200)
TeleportMenu.Visible = false

-- ตั้งค่า EspMenu
EspMenu.Name = "EspMenu"
EspMenu.Parent = MainFrame
EspMenu.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- สีเทา
EspMenu.Position = UDim2.new(0, 200, 0, 0)
EspMenu.Size = UDim2.new(0, 200, 0, 200)
EspMenu.Visible = false

-- ตั้งค่า OtherMenu
OtherMenu.Name = "OtherMenu"
OtherMenu.Parent = MainFrame
OtherMenu.BackgroundColor3 = colors.gray
OtherMenu.Position = UDim2.new(0, 200, 0, 0)
OtherMenu.Size = UDim2.new(0, 200, 0, 200)
OtherMenu.Visible = false

-- ตั้งค่า Teleport2Menu
Teleport2Menu.Name = "Teleport2Menu"
Teleport2Menu.Parent = MainFrame
Teleport2Menu.BackgroundColor3 = colors.gray
Teleport2Menu.Position = UDim2.new(0, 200, 0, 0)
Teleport2Menu.Size = UDim2.new(0, 200, 0, 200)
Teleport2Menu.Visible = false

-- ฟังก์ชันสำหรับแสดง/ซ่อนเมนู
local function toggleMenu(menu)
    menu.Visible = not menu.Visible
end

-- สร้างปุ่มย่อยใน TeleportMenu และกำหนดฟังก์ชันเทเลพอร์ต
for i = 1, 8 do
    local Button = Instance.new("TextButton")
    Button.Parent = TeleportMenu
    Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- สีขาว
    Button.Size = UDim2.new(0, 180, 0, 20)
    Button.Position = UDim2.new(0, 10, 0, (i - 1) * 25)
    
    -- กำหนดฟังก์ชันเทเลพอร์ตตามชื่อไอเทม
    if i == 1 then
    Button.Text = "Shotgun"
    Button.MouseButton1Click:Connect(function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local originalPosition = character.HumanoidRootPart.CFrame

        -- วาร์ปไปยัง Money
        local Shotgun = game:GetService("Workspace").Pickups.Shotgun
        character.HumanoidRootPart.CFrame = Shotgun.CFrame

        -- Auto-interact with items
        local function autoInteract()
            while true do
                -- Check if the player is close to the shotgun
                local distance = (Shotgun.Position - character.HumanoidRootPart.Position).magnitude
                if distance <= 10 then
                    -- Interact with the shotgun
                    -- Your interaction code goes here
                    break -- Exit the loop if interaction is successful
                end
                wait(0.5) -- Wait before checking again
            end
        end

        -- Start auto-interaction
        autoInteract()

        -- รอสักครู่
        wait(5) -- รอ 5 วินาที

        -- วาร์ปกลับมาที่ตำแหน่งเดิม
        character.HumanoidRootPart.CFrame = originalPosition
    end)
    elseif i == 2 then
    Button.Text = "Shells"
    Button.MouseButton1Click:Connect(function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local originalPosition = character.HumanoidRootPart.CFrame

        -- Warp to the Shells pickup
        local Shells = game:GetService("Workspace").Pickups.Shells
        character.HumanoidRootPart.CFrame = Shells.CFrame

        -- Auto-interact with Shells
        while true do
            local distance = (Shells.Position - character.HumanoidRootPart.Position).magnitude
            if distance <= 10 then
                -- Interact with the Shells
                -- Your interaction code goes here
                break
            end
            wait(0.5)
        end

        -- Wait for a few seconds
        wait(5)

        -- Warp back to the original position
        character.HumanoidRootPart.CFrame = originalPosition
    end)
    elseif i == 3 then
        Button.Text = "Medkit"
        Button.MouseButton1Click:Connect(function()
            local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Medkit = game:GetService("Workspace").Pickups.Medkit
character.HumanoidRootPart.CFrame = Medkit.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
    elseif i == 4 then
        Button.Text = "Food"
        Button.MouseButton1Click:Connect(function()
            local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Food = game:GetService("Workspace").Pickups.Food
character.HumanoidRootPart.CFrame = Food.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
    elseif i == 5 then
        Button.Text = "Bat"
        Button.MouseButton1Click:Connect(function()
            local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Bat = game:GetService("Workspace").Pickups.Bat
character.HumanoidRootPart.CFrame = Bat.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
    elseif i == 6 then
        Button.Text = "Crowbar"
        Button.MouseButton1Click:Connect(function()
            local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Crowbar = game:GetService("Workspace").Pickups.Crowbar
character.HumanoidRootPart.CFrame = Crowbar.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
    elseif i == 7 then
        Button.Text = "Hammer"
        Button.MouseButton1Click:Connect(function()
            local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Hammer = game:GetService("Workspace").Pickups.Hammer
character.HumanoidRootPart.CFrame = Hammer.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
elseif i == 8 then
        Button.Text = "Money"
        Button.MouseButton1Click:Connect(function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local money = game:GetService("Workspace").Pickups.Money
character.HumanoidRootPart.CFrame = money.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
    end
end

-- สร้างปุ่ม Esp Gefs และ Esp Menu Players
for i = 1, 2 do
    local Button = Instance.new("TextButton")
    Button.Parent = EspMenu
    Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- สีขาว
    Button.Size = UDim2.new(0, 180, 0, 20)
    Button.Position = UDim2.new(0, 10, 0, (i - 1) * 25)

    if i == 1 then
    Button.Text = "Esp Gefs"
    Button.MouseButton1Click:Connect(function()
        -- สคริปต์ ESP ที่ไม่มี GUI จะถูกใส่ที่นี่
        local espEnabled = true -- ตั้งค่าเป็น true เพื่อให้ ESP ทำงานทันที

-- ฟังก์ชันสำหรับสร้าง ESP สำหรับ RootPart ของ Mini GEF
local function createESPForMiniGEF(part)
    local espGui = Instance.new("BillboardGui", part)
    espGui.Adornee = part
    espGui.Size = UDim2.new(0, 200, 0, 50)
    espGui.AlwaysOnTop = true
    espGui.StudsOffset = Vector3.new(0, 3, 0)
    
    local nameLabel = Instance.new("TextLabel", espGui)
    nameLabel.Text = "Mini GEF"
    nameLabel.BackgroundTransparency = 1
    nameLabel.Size = UDim2.new(0, 200, 0, 20)
    nameLabel.Font = Enum.Font.SourceSansBold
    nameLabel.TextSize = 18
    
    local distanceLabel = Instance.new("TextLabel", espGui)
    distanceLabel.BackgroundTransparency = 1
    distanceLabel.Size = UDim2.new(0, 200, 0, 20)
    distanceLabel.Font = Enum.Font.SourceSansBold
    distanceLabel.TextSize = 18
    distanceLabel.Position = UDim2.new(0, 0, 0, 20)
    
    -- อัปเดตระยะห่างและสีข้อความ
    game:GetService("RunService").RenderStepped:Connect(function()
        local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
        distanceLabel.Text = string.format("Distance: %.2f", distance)
        
        if distance < 50 then
            nameLabel.TextColor3 = Color3.new(1, 0.5, 0)
            distanceLabel.TextColor3 = Color3.new(1, 0.5, 0)
        elseif distance < 100 then
            nameLabel.TextColor3 = Color3.new(1, 1, 0)
            distanceLabel.TextColor3 = Color3.new(1, 1, 0)
        else
            nameLabel.TextColor3 = Color3.new(0, 1, 0)
            distanceLabel.TextColor3 = Color3.new(0, 1, 0)
        end
    end)
end

-- ฟังก์ชันสำหรับการเปิด/ปิด ESP และอัปเดต Mini GEF ทุก ๆ 60 วินาที
local function toggleESP()
    while espEnabled do
        for _, gef in pairs(workspace.GEFs:GetChildren()) do
            if gef:IsA("Model") and gef.Name == "Mini GEF" then
                local rootPart = gef:FindFirstChild("RootPart")
                if rootPart and not rootPart:FindFirstChildOfClass("BillboardGui") then
                    createESPForMiniGEF(rootPart)
                end
            end
        end
        wait(60) -- รอ 60 วินาทีก่อนที่จะทำการลูปใหม่
    end
end

-- เรียกใช้ฟังก์ชัน toggleESP ทันทีเมื่อปุ่มถูกคลิก
toggleESP()

    end)
elseif i == 2 then
        Button.Text = "Esp Menu Players"
        Button.MouseButton1Click:Connect(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/USEXe42D"))()
        end)
    end
end

-- สร้างปุ่มย่อยใน OtherMenu และกำหนดฟังก์ชันเทเลพอร์ต
for i = 1, 5 do
    local Button = Instance.new("TextButton")
    Button.Parent = OtherMenu
    Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- สีขาว
    Button.Size = UDim2.new(0, 180, 0, 20)
    Button.Position = UDim2.new(0, 10, 0, (i - 1) * 25)

    -- กำหนดฟังก์ชัน other
    if i == 1 then
        Button.Text = "GEFs No Damage"
        Button.MouseButton1Click:Connect(function()
            local gefs = game:GetService("Workspace").GEFs

            -- ลูปผ่านทุก "Mini GEF" ใน "GEFs" และลบ "Hurtbox"
            for _, miniGEF in pairs(gefs:GetChildren()) do
                if miniGEF.Name == "Mini GEF" then
                    for _, obj in pairs(miniGEF:GetDescendants()) do
                        if obj.Name == "Hurtbox" and obj:IsA("BasePart") then
                            obj:Destroy()
                        end
                    end
                end
            end
        end)

    elseif i == 2 then
        Button.Text = "Candy Cane"
        Button.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/Sa8rfrsY"))()
end)

    elseif i == 3 then
        Button.Text = "Infinity Stamina"
        Button.MouseButton1Click:Connect(function()
            local Energy = game.Workspace.LocalPlayer.Energy

            if Energy then
                Energy.Value = 922337203685807
            end
        end)

    elseif i == 4 then
        Button.Text = "infinity Max Stamina"
        Button.MouseButton1Click:Connect(function()
            local playerUpgrades = game.Players.LocalPlayer.Upgrades

            if playerUpgrades:FindFirstChild("MaxStamina") then
                playerUpgrades.MaxStamina.Value = 9223372036854775807 -- 2^63 - 1
            else
                -- ถ้าไม่มี MaxStamina, สร้างใหม่และตั้งค่า Value เป็น 2^63 - 1
                local maxStamina = Instance.new("IntValue", playerUpgrades)
                maxStamina.Name = "MaxStamina"
                maxStamina.Value = 9223372036854775807 -- 2^63 - 1
            end
        end)

    elseif i == 5 then
        Button.Text = "Infinity Regen Stamina"
        Button.MouseButton1Click:Connect(function()
            local playerUpgrades = game.Players.LocalPlayer.Upgrades

            if playerUpgrades:FindFirstChild("StaminaRegen") then
                playerUpgrades.StaminaRegen.Value = 9223372036854775807 -- 2^63 - 1
            else
                -- ถ้าไม่มี StaminaRegen, สร้างใหม่และตั้งค่า Value เป็น 2^63 - 1
                local StaminaRegen = Instance.new("IntValue", playerUpgrades)
                StaminaRegen.Name = "StaminaRegen"
                StaminaRegen.Value = 9223372036854775807 -- 2^63 - 1
            end
        end)
    end
end

for i = 1, 5 do
    local Button = Instance.new("TextButton")
    Button.Parent = Teleport2Menu
    Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- สีขาว
    Button.Size = UDim2.new(0, 180, 0, 20)
    Button.Position = UDim2.new(0, 10, 0, (i - 1) * 25)

if i == 1 then
        Button.Text = "GPS"
        Button.MouseButton1Click:Connect(function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local GPS = game:GetService("Workspace").Pickups.GPS
character.HumanoidRootPart.CFrame = GPS.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
elseif i == 2 then
        Button.Text = "Handgun"
        Button.MouseButton1Click:Connect(function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Handgun = game:GetService("Workspace").Pickups.Handgun
character.HumanoidRootPart.CFrame = Handgun.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
elseif i == 3 then
        Button.Text = "Bullets"
        Button.MouseButton1Click:Connect(function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Bullets = game:GetService("Workspace").Pickups.Bullets
character.HumanoidRootPart.CFrame = Bullets.CFrame
-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
elseif i == 4 then
        Button.Text = "Lantern"
        Button.MouseButton1Click:Connect(function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Lantern = game:GetService("Workspace").Pickups.Lantern
character.HumanoidRootPart.CFrame = Lantern.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
    elseif i == 5 then
        Button.Text = "Soda"
        Button.MouseButton1Click:Connect(function()
            local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local originalPosition = character.HumanoidRootPart.CFrame

-- วาร์ปไปยัง Money
local Soda = game:GetService("Workspace").Pickups.Soda
character.HumanoidRootPart.CFrame = Soda.CFrame

-- รอสักครู่
wait(5) -- รอ 5 วินาที

-- วาร์ปกลับมาที่ตำแหน่งเดิม
character.HumanoidRootPart.CFrame = originalPosition
        end)
    end
end


-- เพิ่มเส้นขีดสีแดงระหว่างหัวข้อใหญ่และหัวข้อย่อย
local function createSeparator(parent, position)
    local Separator = Instance.new("Frame")
    Separator.Parent = parent
    Separator.BackgroundColor3 = colors.red
    Separator.Size = UDim2.new(0, 180, 0, 2)
    Separator.Position = position
end

-- สร้างเส้นขีดสีแดงใน TeleportMenu
for i = 1, 8 do
    createSeparator(TeleportMenu, UDim2.new(0, 10, 0, (i * 25) - 3))
end

-- สร้างเส้นขีดสีแดงใน EspMenu
for i = 1, 2 do
    createSeparator(EspMenu, UDim2.new(0, 10, 0, (i * 25) - 3))
end

-- สร้างเส้นขีดสีแดงใน OtherMenu
for i = 1, 5 do
    createSeparator(OtherMenu, UDim2.new(0, 10, 0, (i * 25) - 3))
end

for i = 1, 5 do
    createSeparator(Teleport2Menu, UDim2.new(0, 10, 0, (i * 25) - 3))
end

-- เมื่อผู้ใช้คลิกที่ TeleportButton
TeleportButton.MouseButton1Click:Connect(function()
    TeleportMenu.Visible = not TeleportMenu.Visible
    EspMenu.Visible = false
    -- ทำให้ OtherMenu ไม่มองเห็น
    OtherMenu.Visible = false
    Teleport2Menu.Visible = false
end)

-- เมื่อผู้ใช้คลิกที่ EspButton
EspButton.MouseButton1Click:Connect(function()
    EspMenu.Visible = not EspMenu.Visible
    TeleportMenu.Visible = false
    -- ทำให้ OtherMenu ไม่มองเห็น
    OtherMenu.Visible = false
    Teleport2Menu.Visible = false
end)

-- เมื่อผู้ใช้คลิกที่ TeleportButton
OtherButton.MouseButton1Click:Connect(function()
    OtherMenu.Visible = not OtherMenu.Visible
    TeleportMenu.Visible = false
    -- ทำให้ OtherMenu ไม่มองเห็น
    EspMenu.Visible = false
    Teleport2Menu.Visible = false
end)

-- เมื่อผู้ใช้คลิกที่ EspButton
Teleport2Button.MouseButton1Click:Connect(function()
    Teleport2Menu.Visible = not Teleport2Menu.Visible
    TeleportMenu.Visible = false
    -- ทำให้ OtherMenu ไม่มองเห็น
    OtherMenu.Visible = false
    EspMenu.Visible = false
end)
