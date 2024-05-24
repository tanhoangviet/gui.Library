local GuiLibrary = {}
GuiLibrary.__index = GuiLibrary

local function createFrame(name, size, position, color, parent, draggable, active)
    local frame = Instance.new("Frame")
    frame.Name = name
    frame.Size = size
    frame.Position = position
    frame.BackgroundColor3 = color
    frame.Active = active
    frame.Draggable = draggable
    frame.Parent = parent
    frame.BackgroundTransparency = 1 -- Make the frame invisible
    return frame
end

local function createTextLabel(text, size, position, color, parent, textSize)
    local label = Instance.new("TextLabel")
    label.Size = size
    label.Position = position
    label.BackgroundColor3 = color
    label.Text = text
    label.TextSize = textSize
    label.TextColor3 = Color3.new(0, 0, 0)
    label.Parent = parent
    return label
end

local function createButton(name, text, size, position, color, parent, callback)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = size
    button.Position = position
    button.BackgroundColor3 = color
    button.Text = text
    button.TextSize = 10
    button.TextWrapped = true
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.TextColor3 = Color3.new(0, 0, 0)
    button.Parent = parent
    button.MouseButton1Click:Connect(callback)
    return button
end

function GuiLibrary.new(name, title, color, totalPages)
    local self = setmetatable({}, GuiLibrary)

    local gui = Instance.new("ScreenGui")
    gui.Name = name
    gui.Parent = game.CoreGui

    self.window = createFrame(name, UDim2.new(0.4, 0, 0.1, 0), UDim2.new(0.1, 0, 0.2, 0), color, gui, true, true)
    createTextLabel(title, UDim2.new(1, 0, 0.1, 0), UDim2.new(0, 0, 0, 0), color, self.window, 10)

    self.pages = {}
    self.currentPage = 1
    self.totalPages = tonumber(totalPages) or 3  -- Default to 3 if totalPages is not provided

    self.frame = createFrame("ButtonFrame", UDim2.new(1, 0, 6, 0), UDim2.new(0, 0, 0.2, 0), color, self.window, false, true)
    self.leftButton = createButton("LeftButton", "◀", UDim2.new(0.1, 0, 0.8, 0), UDim2.new(0.015, 0, 0.1, 0), Color3.new(1, 1, 1), self.frame, function()
        self:previousPage()
    end)
    self.rightButton = createButton("RightButton", "▶", UDim2.new(0.1, 0, 0.8, 0), UDim2.new(0.88, 0, 0.1, 0), Color3.new(1, 1, 1), self.frame, function()
        self:nextPage()
    end)
    self.pageLabel = createTextLabel(tostring(self.currentPage), UDim2.new(0.1, 0, 0.8, 0), UDim2.new(0.45, 0, 0.1, 0), Color3.new(1, 1, 1), self.frame, 10)

    for i = 1, self.totalPages do
        self.pages[i] = {}
    end

    self:updatePage()
    return self
end

function GuiLibrary:createButton(name, page, callback)
    local button = createButton(name, name, UDim2.new(0.3, 0, 0.2, 0), UDim2.new(0, 0, 0, 0), Color3.new(1, 1, 1), nil, callback)
    table.insert(self.pages[tonumber(page)], button)
end

function GuiLibrary:updatePage()
    for i, pageButtons in ipairs(self.pages) do
        for _, button in ipairs(pageButtons) do
            button.Parent = nil
        end
    end
    for _, button in ipairs(self.pages[self.currentPage]) do
        button.Parent = self.frame
    end
    self.pageLabel.Text = tostring(self.currentPage)
end

function GuiLibrary:nextPage()
    self.currentPage = self.currentPage + 1
    if self.currentPage > self.totalPages then
        self.currentPage = 1
    end
    self:updatePage()
end

function GuiLibrary:previousPage()
    self.currentPage = self.currentPage - 1
    if self.currentPage < 1 then
        self.currentPage = self.totalPages
    end
    self:updatePage()
end

function GuiLibrary:addCloseButton()
    local closeButton = createButton("CloseButton", "X", UDim2.new(0.1, 0, 0.8, 0), UDim2.new(0.88, 0, 0.1, 0), Color3.new(1, 1, 1), self.window, function()
        self.window:Destroy()
    end)
end

return GuiLibrary
