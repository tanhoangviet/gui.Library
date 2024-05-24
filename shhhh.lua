local function CreateFrame(name, size, position, color, parent, draggable, active)
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

local function CreateTextLabel(text, size, position, color, parent, textSize)
    local label = Instance.new("TextLabel")
    label.Size = size
    label.Position = position
    label.BackgroundColor3 = color
    label.Text = text
    label.TextSize = textSize
    label.TextColor3 = Color3.new(0, 0, 0)
    label.Font = Enum.Font.Gotham -- Set font to Gotham
    label.Parent = parent
    return label
end

local function CreateButton(name, text, size, position, color, parent, callback)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = size
    button.Position = position
    button.BackgroundColor3 = color
    button.Text = text
    button.TextSize = 14 -- Increase text size
    button.TextWrapped = true
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.TextColor3 = Color3.new(1, 1, 1) -- White text color
    button.Font = Enum.Font.Gotham -- Set font to Gotham
    button.Parent = parent
    button.MouseButton1Click:Connect(callback)
    return button
end

local function CreateImageButton(size, position, parent, imageId)
    local imageButton = Instance.new("ImageButton")
    imageButton.Size = size
    imageButton.Position = position
    imageButton.BackgroundColor3 = Color3.new(1, 1, 1)
    imageButton.ImageColor3 = Color3.new(0, 0, 0)
    imageButton.Image = imageId
    imageButton.Parent = parent
    return imageButton
end

local function CreateScrollingFrame(size, position, parent)
    local scrollingFrame = Instance.new("ScrollingFrame")
    scrollingFrame.Size = size
    scrollingFrame.Position = position
    scrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
    scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scrollingFrame.Parent = parent
    return scrollingFrame
end

local function CreateUIListLayout(parent)
    local uiListLayout = Instance.new("UIGridLayout")
    uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout.CellSize = UDim2.new(0.2, 0, 0.2, 0)
    uiListLayout.CellPadding = UDim2.new(0.01, 0, 0.05, 0)
    uiListLayout.Parent = parent
    return uiListLayout
end

local GuiLibrary = {}

function GuiLibrary.makeWindow(windowInfo)
    local self = setmetatable({}, GuiLibrary)

    local gui = Instance.new("ScreenGui")
    gui.Name = windowInfo.Name
    gui.Parent = game.CoreGui

    self.window = CreateFrame(windowInfo.Name, UDim2.new(0.4, 0, 0.1, 0), UDim2.new(0.1, 0, 0.2, 0), windowInfo.Color, gui, true, true)
    CreateTextLabel(windowInfo.Title, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), windowInfo.Color, self.window, 18) -- Increase title size

    return self
end

function GuiLibrary:addButtonToScrollingFrame(scrollingFrame, name, callback)
    local button = CreateButton(name, name, UDim2.new(0.3, 0, 0.2, 0), UDim2.new(0, 0, 0, 0), Color3.new(0.2, 0.2, 0.2), scrollingFrame, callback) -- Dark gray button color
    return button
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
    local closeButton = CreateButton("CloseButton", "X", UDim2.new(0.1, 0, 0.8, 0), UDim2.new(0.88, 0, 0.1, 0), Color3.new(0.8, 0.2, 0.2), self.window, function()
        self.window:Destroy()
    end)
end

return GuiLibrary
