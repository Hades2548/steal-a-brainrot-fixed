local a = game.Players.LocalPlayer
local b = game:GetService("UserInputService")
local c = game:GetService("TweenService")
local d = game:GetService("RunService")
local e = game:GetService("Workspace")
local f = 1

-- KEY SYSTEM
local correctKey = "LACAZETTE" -- Setze hier deinen Schlüssel ein

do
    local keyGui = Instance.new("ScreenGui", a.PlayerGui)
    keyGui.Name = "KeySystem"
    keyGui.IgnoreGuiInset = true
    keyGui.ResetOnSpawn = false

    local keyFrame = Instance.new("Frame", keyGui)
    keyFrame.Size = UDim2.new(0, 300, 0, 200)
    keyFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    keyFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    keyFrame.BorderSizePixel = 0

    local keyCorner = Instance.new("UICorner", keyFrame)
    keyCorner.CornerRadius = UDim.new(0, 20)

    local keyLabel = Instance.new("TextLabel", keyFrame)
    keyLabel.Size = UDim2.new(1, 0, 0, 50)
    keyLabel.Position = UDim2.new(0, 0, 0, 10)
    keyLabel.BackgroundTransparency = 1
    keyLabel.Text = "Enter Key"
    keyLabel.Font = Enum.Font.GothamBlack
    keyLabel.TextSize = 28
    keyLabel.TextColor3 = Color3.new(1, 1, 1)
    keyLabel.TextStrokeTransparency = 0.2
    keyLabel.TextXAlignment = Enum.TextXAlignment.Center

    local keyBox = Instance.new("TextBox", keyFrame)
    keyBox.Size = UDim2.new(0.8, 0, 0, 40)
    keyBox.Position = UDim2.new(0.1, 0, 0.3, 0)
    keyBox.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
    keyBox.Text = ""
    keyBox.Font = Enum.Font.Gotham
    keyBox.TextSize = 20
    keyBox.TextColor3 = Color3.fromRGB(20, 20, 20)
    keyBox.PlaceholderText = "Enter key here"

    local keyBoxCorner = Instance.new("UICorner", keyBox)
    keyBoxCorner.CornerRadius = UDim.new(0, 10)

    local submitButton = Instance.new("TextButton", keyFrame)
    submitButton.Size = UDim2.new(0.4, 0, 0, 40)
    submitButton.Position = UDim2.new(0.3, 0, 0.6, 0)
    submitButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    submitButton.Text = "Submit"
    submitButton.Font = Enum.Font.GothamBold
    submitButton.TextSize = 24
    submitButton.TextColor3 = Color3.new(1, 1, 1)

    local submitCorner = Instance.new("UICorner", submitButton)
    submitCorner.CornerRadius = UDim.new(0, 10)

    local discordButton = Instance.new("TextButton", keyFrame)
    discordButton.Size = UDim2.new(0.4, 0, 0, 40)
    discordButton.Position = UDim2.new(0.3, 0, 0.8, 0)
    discordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    discordButton.Text = "Join Discord"
    discordButton.Font = Enum.Font.GothamBold
    discordButton.TextSize = 24
    discordButton.TextColor3 = Color3.new(1, 1, 1)

    local discordCorner = Instance.new("UICorner", discordButton)
    discordCorner.CornerRadius = UDim.new(0, 10)

    local keyValidated = false

    local function checkKey()
        if keyBox.Text == correctKey then
            keyValidated = true
            keyGui:Destroy()
        else
            keyLabel.Text = "Incorrect Key! Try again."
            keyLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
            wait(1)
            keyLabel.Text = "Enter Key"
            keyLabel.TextColor3 = Color3.new(1, 1, 1)
        end
    end

    submitButton.MouseButton1Click:Connect(checkKey)

    discordButton.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/HQ8WqhxQ")
        discordButton.Text = "Copied!"
        wait(2)
        discordButton.Text = "Join Discord"
    end)

    repeat wait() until keyValidated
end

-- LOADING
do
    local g = Instance.new("ScreenGui", a.PlayerGui)
    g.Name = "lacazette "
    g.IgnoreGuiInset = true
    g.ResetOnSpawn = false
    local h = Instance.new("Frame", g)
    h.Size = UDim2.new(1, 0, 1, 0)
    h.BackgroundColor3 = Color3.new(0, 0, 0)
    h.BorderSizePixel = 0
    local i = Instance.new("ImageLabel", h)
    i.Size = UDim2.new(0, 96, 0, 96)
    i.Position = UDim2.new(0.5, -48, 0.32, 0)
    i.BackgroundTransparency = 1
    local j = Instance.new("TextLabel", h)
    j.Size = UDim2.new(1, 0, 0, 70)
    j.Position = UDim2.new(0, 0, 0.46, 0)
    j.BackgroundTransparency = 1
    j.Text = "lacazette Hub X Steal a Brainrot"
    j.Font = Enum.Font.GothamBlack
    j.TextSize = 42
    j.TextColor3 = Color3.new(1, 1, 1)
    j.TextStrokeTransparency = 0.2
    j.TextXAlignment = Enum.TextXAlignment.Center
    j.TextYAlignment = Enum.TextYAlignment.Center
    j.TextTransparency = 1
    local k = Instance.new("TextLabel", h)
    k.Size = UDim2.new(1, 0, 0, 30)
    k.Position = UDim2.new(0, 0, 0.60, 0)
    k.BackgroundTransparency = 1
    k.Text = "Made By"
    k.Font = Enum.Font.GothamBold
    k.TextSize = 22
    k.TextColor3 = Color3.new(1, 1, 1)
    k.TextStrokeTransparency = 0.25
    k.TextXAlignment = Enum.TextXAlignment.Center
    k.TextYAlignment = Enum.TextYAlignment.Center
    k.TextTransparency = 1
    local l = Instance.new("TextLabel", h)
    l.Size = UDim2.new(1, 0, 0, 26)
    l.Position = UDim2.new(0, 0, 0.66, 0)
    l.BackgroundTransparency = 1
    l.Text = "Laccazette"
    l.Font = Enum.Font.Gotham
    l.TextSize = 19
    l.TextColor3 = Color3.new(1, 1, 1)
    l.TextStrokeTransparency = 0.35
    l.TextXAlignment = Enum.TextXAlignment.Center
    l.TextYAlignment = Enum.TextYAlignment.Center
    l.TextTransparency = 1
    local function m(n, o, p, q)
        local r = c:Create(n, TweenInfo.new(q, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {[o] = p})
        r:Play()
        return r
    end
    m(i, "ImageTransparency", 0, 0.7)
    wait(0.3)
    m(j, "TextTransparency", 0, 0.7)
    wait(0.1)
    m(k, "TextTransparency", 0, 0.6)
    wait(0.05)
    m(l, "TextTransparency", 0, 0.6)
    wait(2.1)
    wait(1.2)
    m(i, "ImageTransparency", 1, 0.6)
    m(j, "TextTransparency", 1, 0.6)
    m(k, "TextTransparency", 1, 0.6)
    m(l, "TextTransparency", 1, 0.6)
    wait(0.65)
    g:Destroy()
end

-- CHOOSE PC/MOBILE
do
    local s = Instance.new("ScreenGui", a.PlayerGui)
    s.Name = "choose"
    s.IgnoreGuiInset = true
    s.ResetOnSpawn = false
    local t = Instance.new("Frame", s)
    t.Size = UDim2.new(0, 420, 0, 220)
    t.Position = UDim2.new(0.5, -210, 0.5, -110)
    t.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    t.BorderSizePixel = 0
    local u = Instance.new("UICorner", t)
    u.CornerRadius = UDim.new(0, 20)
    local v = Instance.new("TextLabel", t)
    v.Size = UDim2.new(1, 0, 0, 70)
    v.Position = UDim2.new(0, 0, 0, 10)
    v.BackgroundTransparency = 1
    v.Text = "Choose the type of device"
    v.Font = Enum.Font.GothamBlack
    v.TextSize = 32
    v.TextColor3 = Color3.new(1, 1, 1)
    v.TextStrokeTransparency = 0.2
    v.TextXAlignment = Enum.TextXAlignment.Center
    v.TextYAlignment = Enum.TextYAlignment.Center
    local w = Instance.new("TextButton", t)
    w.Size = UDim2.new(0.41, 0, 0, 56)
    w.Position = UDim2.new(0.08, 0, 0, 110)
    w.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
    w.Text = "PC"
    w.Font = Enum.Font.GothamBlack
    w.TextSize = 28
    w.TextColor3 = Color3.fromRGB(20, 20, 20)
    w.AutoButtonColor = true
    local x = Instance.new("UICorner", w)
    x.CornerRadius = UDim.new(0, 14)
    local y = Instance.new("TextButton", t)
    y.Size = UDim2.new(0.41, 0, 0, 56)
    y.Position = UDim2.new(0.51, 0, 0, 110)
    y.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
    y.Text = "Mobile"
    y.Font = Enum.Font.GothamBlack
    y.TextSize = 28
    y.TextColor3 = Color3.fromRGB(20, 20, 20)
    y.AutoButtonColor = true
    local z = Instance.new("UICorner", y)
    z.CornerRadius = UDim.new(0, 14)
    local A = Instance.new("TextLabel", t)
    A.Size = UDim2.new(1, 0, 0, 26)
    A.Position = UDim2.new(0, 0, 1, -36)
    A.BackgroundTransparency = 1
    A.Text = "You can adjust later by reloading the script."
    A.Font = Enum.Font.Gotham
    A.TextSize = 16
    A.TextColor3 = Color3.fromRGB(200, 200, 200)
    A.TextXAlignment = Enum.TextXAlignment.Center
    A.TextYAlignment = Enum.TextYAlignment.Center
    local B = false
    w.MouseButton1Click:Connect(function() f = 1; B = true end)
    y.MouseButton1Click:Connect(function() f = 0.68; B = true end)
    repeat wait() until B
    s:Destroy()
end

-- MAIN MENU
local C = {"Set Location", "Return", "Infinite Jump", "God Mode", "Chase Nearest", "Fly [OP]", "Force Reset", "Become Invisible", "NoClip", "Hitbox"}
local D = #C
local E = math.floor(48 * f)
local F = math.floor(12 * f)
local G = math.floor(54 * f)
local H = math.floor(9 * f)
local I = math.floor(22 * f)
local J = math.floor(20 * f)
local K = math.floor(10 * f)
local L = math.floor(6 * f)
local M = math.floor(320 * f)
local N = G + H + (D * E) + ((D - 1) * F) + J + I + K + L + 10
local O = M + math.floor(8 * f)
local P = N + math.floor(8 * f)
local Q = Instance.new("ScreenGui", a.PlayerGui)
Q.Name = "Menu"
Q.ResetOnSpawn = false
Q.Enabled = true
local R = Instance.new("Frame", Q)
R.Size = UDim2.new(0, O, 0, P)
R.Position = UDim2.new(0.5, -O // 2, 0.5, -P // 2)
R.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
R.BorderSizePixel = 0
R.ZIndex = 0
local S = Instance.new("UICorner", R)
S.CornerRadius = UDim.new(0, math.floor(22 * f))
local T = Instance.new("Frame", Q)
T.Size = UDim2.new(0, M, 0, N)
T.Position = UDim2.new(0.5, -M // 2, 0.5, -N // 2)
T.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
T.BorderSizePixel = 0
T.Active = true
T.ZIndex = 1
local U = Instance.new("UICorner", T)
U.CornerRadius = UDim.new(0, math.floor(18 * f))
local V = Instance.new("Frame", T)
V.Size = UDim2.new(1, 0, 0, G)
V.Position = UDim2.new(0, 0, 0, 0)
V.BackgroundTransparency = 1
V.ZIndex = 2
local W = Instance.new("ImageLabel", V)
W.Size = UDim2.new(0, math.floor(48 * f), 0, math.floor(48 * f))
W.Position = UDim2.new(0, math.floor(8 * f), 0, math.floor(3 * f))
W.BackgroundTransparency = 1
W.ZIndex = 2
local X = Instance.new("UICorner", W)
X.CornerRadius = UDim.new(1, 0)
local Y = Instance.new("TextLabel", V)
Y.Size = UDim2.new(1, math.floor(-70 * f), 1, 0)
Y.Position = UDim2.new(0, math.floor(64 * f), 0, 0)
Y.BackgroundTransparency = 1
Y.Text = "LACCA Hub"
Y.Font = Enum.Font.GothamBold
Y.TextSize = 36 * f
Y.TextColor3 = Color3.fromRGB(22, 22, 22)
Y.TextXAlignment = Enum.TextXAlignment.Left
Y.ZIndex = 2

-- Drag
do
    local a1, b1, c1, d1
    V.InputBegan:Connect(function(e1)
        if e1.UserInputType == Enum.UserInputType.MouseButton1 or e1.UserInputType == Enum.UserInputType.Touch then
            a1 = true
            c1 = e1.Position
            d1 = T.Position
            e1.Changed:Connect(function()
                if e1.UserInputState == Enum.UserInputState.End then a1 = false end
            end)
        end
    end)
    V.InputChanged:Connect(function(e1)
        if e1.UserInputType == Enum.UserInputType.MouseMovement or e1.UserInputType == Enum.UserInputType.Touch then
            b1 = e1
        end
    end)
    b.InputChanged:Connect(function(e1)
        if e1 == b1 and a1 then
            local f1 = e1.Position - c1
            T.Position = UDim2.new(d1.X.Scale, d1.X.Offset + f1.X, d1.Y.Scale, d1.Y.Offset + f1.Y)
            R.Position = UDim2.new(T.Position.X.Scale, T.Position.X.Offset - 4, T.Position.Y.Scale, T.Position.Y.Offset - 4)
        end
    end)
    T:GetPropertyChangedSignal("Position"):Connect(function()
        R.Position = UDim2.new(T.Position.X.Scale, T.Position.X.Offset - 4, T.Position.Y.Scale, T.Position.Y.Offset - 4)
    end)
end

local g1 = math.floor(88 * f)
local h1 = M - g1 - math.floor(8 * f)
local i1 = Instance.new("Frame", V)
i1.Size = UDim2.new(0, g1, 1, 0)
i1.Position = UDim2.new(0, h1, 0, 0)
i1.BackgroundTransparency = 1
i1.ZIndex = 3
local j1 = Instance.new("TextButton", i1)
j1.Size = UDim2.new(0, math.floor(36 * f), 0, math.floor(36 * f))
j1.Position = UDim2.new(0, 0, 0, math.floor(9 * f))
j1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
j1.Text = "-"
j1.Font = Enum.Font.GothamBold
j1.TextSize = 22 * f
j1.TextColor3 = Color3.fromRGB(255, 255, 255)
j1.BorderSizePixel = 0
j1.ZIndex = 4
local k1 = Instance.new("UICorner", j1)
k1.CornerRadius = UDim.new(0, math.floor(12 * f))
local l1 = Instance.new("TextButton", i1)
l1.Size = UDim2.new(0, math.floor(36 * f), 0, math.floor(36 * f))
l1.Position = UDim2.new(0, math.floor(44 * f), 0, math.floor(9 * f))
l1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
l1.Text = "×"
l1.Font = Enum.Font.GothamBold
l1.TextSize = 22 * f
l1.TextColor3 = Color3.fromRGB(255, 255, 255)
l1.BorderSizePixel = 0
l1.ZIndex = 4
local m1 = Instance.new("UICorner", l1)
m1.CornerRadius = UDim.new(0, math.floor(12 * f))
l1.MouseButton1Click:Connect(function() Q.Enabled = false end)

-- MINIMIZED TAB
local n1 = math.floor(160 * f)
local o1 = math.floor(44 * f)
local p1 = math.floor(80 * f)
local q1 = math.floor(32 * f)
local r1 = Instance.new("Frame", Q)
r1.Size = UDim2.new(0, n1, 0, o1)
r1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
r1.BorderSizePixel = 0
r1.Visible = false
r1.Active = true
local s1 = Instance.new("UICorner", r1)
s1.CornerRadius = UDim.new(0, 16 * f)
local t1 = Instance.new("TextButton", r1)
t1.Size = UDim2.new(0, p1, 0, q1)
t1.Position = UDim2.new(0.5, -p1 / 2, 0.5, -q1 / 2)
t1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
t1.Text = "-"
t1.Font = Enum.Font.GothamBold
t1.TextSize = 26 * f
t1.TextColor3 = Color3.fromRGB(255, 255, 255)
t1.BorderSizePixel = 0
t1.ZIndex = 2
local u1 = Instance.new("UICorner", t1)
u1.CornerRadius = UDim.new(0, 13 * f)
local function v1()
    r1.Position = UDim2.new(0.5, -r1.AbsoluteSize.X / 2, 0.5, -r1.AbsoluteSize.Y / 2)
end
r1:GetPropertyChangedSignal("AbsoluteSize"):Connect(v1)
local function w1(x1)
    T.Visible = not x1
    R.Visible = not x1
    r1.Visible = x1
    if x1 then v1() end
end
j1.MouseButton1Click:Connect(function() w1(true) end)
t1.MouseButton1Click:Connect(function() w1(false) end)
do
    local y1, z1, A1, B1
    r1.InputBegan:Connect(function(C1)
        if C1.UserInputType == Enum.UserInputType.MouseButton1 or C1.UserInputType == Enum.UserInputType.Touch then
            local D1 = C1.Position
            local E1 = t1.AbsolutePosition
            local F1 = t1.AbsoluteSize
            if D1.X < E1.X or D1.X > E1.X + F1.X or D1.Y < E1.Y or D1.Y > E1.Y + F1.Y then
                y1 = true
                z1 = C1.Position
                A1 = r1.Position
                C1.Changed:Connect(function()
                    if C1.UserInputState == Enum.UserInputState.End then y1 = false end
                end)
            end
        end
    end)
    r1.InputChanged:Connect(function(C1)
        if C1.UserInputType == Enum.UserInputType.MouseMovement or C1.UserInputType == Enum.UserInputType.Touch then
            B1 = C1
        end
    end)
    b.InputChanged:Connect(function(C1)
        if C1 == B1 and y1 then
            local G1 = C1.Position - z1
            r1.Position = UDim2.new(A1.X.Scale, A1.X.Offset + G1.X, A1.Y.Scale, A1.Y.Offset + G1.Y)
        end
    end)
end

-- BUTTONS
local H1 = {}
for I1, J1 in ipairs(C) do
    local K1 = G + H + (I1 - 1) * (E + F)
    local L1 = Instance.new("Frame", T)
    L1.Size = UDim2.new(0.87, 0, 0, E)
    L1.Position = UDim2.new(0.065, 0, 0, K1)
    L1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    L1.BorderSizePixel = 0
    L1.ZIndex = 2
    local M1 = Instance.new("UICorner", L1)
    M1.CornerRadius = UDim.new(0, math.floor(16 * f))
    local N1 = Instance.new("TextButton", L1)
    N1.Size = UDim2.new(1, -math.floor(8 * f), 1, -math.floor(8 * f))
    N1.Position = UDim2.new(0, math.floor(4 * f), 0, math.floor(4 * f))
    N1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    N1.Text = J1
    N1.Font = Enum.Font.GothamBlack
    N1.TextSize = 19 * f
    N1.TextColor3 = Color3.fromRGB(26, 26, 26)
    N1.BorderSizePixel = 0
    N1.AutoButtonColor = true
    N1.ZIndex = 3
    local O1 = Instance.new("UICorner", N1)
    O1.CornerRadius = UDim.new(0, math.floor(12 * f))
    N1.MouseEnter:Connect(function() N1.BackgroundColor3 = Color3.fromRGB(240, 240, 240) end)
    N1.MouseLeave:Connect(function() N1.BackgroundColor3 = Color3.new(1, 1, 1) end)
    H1[I1] = N1
end

-- FUNÇÃO DOS BOTÕES PRINCIPAIS
local P1 = nil
H1[1].MouseButton1Click:Connect(function()
    local Q1 = a.Character
    local R1 = Q1 and Q1:FindFirstChild("HumanoidRootPart")
    if R1 then
        P1 = R1.CFrame
        H1[1].Text = "Location set!"
        wait(0.35)
        H1[1].Text = "Set Location"
    end
end)
H1[2].MouseButton1Click:Connect(function()
    if not P1 then
        H1[2].Text = "No location saved"
        wait(0.7)
        H1[2].Text = "Return"
        return
    end
    local S1 = a.Character
    local T1 = S1 and S1:FindFirstChild("HumanoidRootPart")
    local U1 = S1 and S1:FindFirstChildOfClass("Humanoid")
    if T1 and U1 then
        local V1 = 2.5
        local W1 = T1.Position
        local X1 = P1.Position
        local Y1 = tick()
        U1.PlatformStand = true
        while tick() - Y1 < V1 do
            local Z1 = math.min(1, (tick() - Y1) / V1)
            local a2 = W1:Lerp(X1, Z1)
            T1.CFrame = CFrame.new(a2, X1)
            T1.Velocity = Vector3.new()
            d.Heartbeat:Wait()
        end
        T1.CFrame = P1
        wait(0.2)
        U1.PlatformStand = false
        H1[2].Text = "Return"
    end
end)
local b2, c2 = nil, nil
H1[3].MouseButton1Click:Connect(function()
    b2 = not b2
    H1[3].Text = b2 and "Infinite Jump [ON]" or "Infinite Jump"
    if b2 and not c2 then
        c2 = b.JumpRequest:Connect(function()
            if b2 then
                local d2 = a.Character or a.CharacterAdded:Wait()
                local e2 = d2:FindFirstChildOfClass("Humanoid")
                if e2 then e2:ChangeState(Enum.HumanoidStateType.Jumping) end
            end
        end)
    elseif not b2 and c2 then
        c2:Disconnect()
        c2 = nil
    end
end)
local f2, g2 = nil, nil
H1[4].MouseButton1Click:Connect(function()
    f2 = not f2
    H1[4].Text = f2 and "God Mode [ON]" or "God Mode"
    local function h2()
        local i2 = a.Character or a.CharacterAdded:Wait()
        local j2 = i2:FindFirstChildOfClass("Humanoid")
        if j2 then
            if g2 then g2:Disconnect() end
            g2 = j2.HealthChanged:Connect(function()
                if f2 then j2.Health = j2.MaxHealth end
            end)
        end
    end
    if f2 then
        h2()
        a.CharacterAdded:Connect(function()
            if f2 then h2() end
        end)
    elseif g2 then
        g2:Disconnect()
        g2 = nil
    end
end)
local k2 = false
H1[5].MouseButton1Click:Connect(function()
    k2 = not k2
    H1[5].Text = k2 and "Chasing..." or "Chase Nearest"
    if k2 then
        spawn(function()
            while k2 and d.RenderStepped:Wait() do
                local l2 = a.Character
                local m2 = l2 and l2:FindFirstChild("HumanoidRootPart")
                if not m2 then break end
                local n2, o2 = nil, math.huge
                for _, p2 in ipairs(game.Players:GetPlayers()) do
                    if p2 ~= a and p2.Character and p2.Character:FindFirstChild("HumanoidRootPart") then
                        local q2 = (p2.Character.HumanoidRootPart.Position - m2.Position).magnitude
                        if q2 < o2 then n2 = p2 o2 = q2 end
                    end
                end
                if n2 then
                    local r2 = n2.Character.HumanoidRootPart
                    local s2 = 32
                    local t2 = (r2.Position - m2.Position)
                    if t2.Magnitude > 2 then
                        m2.Velocity = t2.Unit * s2
                    else
                        m2.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
            local u2 = a.Character and a.Character:FindFirstChild("HumanoidRootPart")
            if u2 then u2.Velocity = Vector3.new(0, 0, 0) end
        end)
    else
        local v2 = a.Character and a.Character:FindFirstChild("HumanoidRootPart")
        if v2 then v2.Velocity = Vector3.new(0, 0, 0) end
    end
end)
local w2, x2 = false, nil
H1[6].MouseButton1Click:Connect(function()
    w2 = not w2
    H1[6].Text = w2 and "Flying..." or "Fly [OP]"
    local y2 = 28
    if w2 then
        local z2 = a.Character
        local A2 = z2 and z2:FindFirstChildWhichIsA("Humanoid")
        local B2 = z2 and z2:FindFirstChild("HumanoidRootPart")
        if A2 and B2 then
            A2.PlatformStand = true
            x2 = d.RenderStepped:Connect(function()
                if not w2 then return end
                local C2 = A2.MoveDirection
                local D2 = C2 * y2
                if b:IsKeyDown(Enum.KeyCode.Space) then
                    D2 = D2 + Vector3.new(0, y2, 0)
                end
                if b:IsKeyDown(Enum.KeyCode.LeftControl) or b:IsKeyDown(Enum.KeyCode.LeftShift) or b:IsKeyDown(Enum.KeyCode.X) then
                    D2 = D2 + Vector3.new(0, -y2, 0)
                end
                B2.Velocity = D2
            end)
        end
    else
        if x2 then x2:Disconnect() x2 = nil end
        local E2 = a.Character
        local F2 = E2 and E2:FindFirstChildWhichIsA("Humanoid")
        if F2 then F2.PlatformStand = false end
        local G2 = E2 and E2:FindFirstChild("HumanoidRootPart")
        if G2 then G2.Velocity = Vector3.new() end
        H1[6].Text = "Fly [OP]"
    end
end)
H1[7].MouseButton1Click:Connect(function()
    local H2 = a.Character
    if H2 then
        local I2 = H2:FindFirstChildOfClass("Humanoid")
        if I2 then I2.Health = 0 end
    end
end)
local J2 = false
H1[8].MouseButton1Click:Connect(function()
    J2 = not J2
    H1[8].Text = J2 and "Invisible [ON]" or "Become Invisible"
    local K2 = a.Character
    if K2 then
        for _, L2 in ipairs(K2:GetDescendants()) do
            if L2:IsA("BasePart") or L2:IsA("Decal") then
                L2.LocalTransparencyModifier = J2 and 1 or 0
            elseif L2:IsA("Accessory") and L2:FindFirstChild("Handle") then
                L2.Handle.LocalTransparencyModifier = J2 and 1 or 0
            elseif L2:IsA("ParticleEmitter") or L2:IsA("Trail") then
                L2.Enabled = not J2
            end
        end
    end
end)
local M2 = false
H1[9].MouseButton1Click:Connect(function()
    M2 = not M2
    H1[9].Text = M2 and "NoClip [ON]" or "NoClip"
end)
d.Stepped:Connect(function()
    if M2 then
        local N2 = a.Character
        if N2 then
            for _, O2 in ipairs(N2:GetDescendants()) do
                if O2:IsA("BasePart") and O2.CanCollide then
                    O2.CanCollide = false
                end
            end
        end
    end
end)
local P2 = false
local Q2 = {}
local function R2()
    for _, S2 in ipairs(Q2) do
        if S2 and S2.Parent then S2:Destroy() end
    end
    Q2 = {}
end
local function T2(U2)
    for _, V2 in ipairs(U2:GetChildren()) do
        if V2:IsA("BasePart") and V2.Name ~= "HumanoidRootPart" then
            local W2 = Instance.new("BoxHandleAdornment")
            W2.Adornee = V2
            W2.AlwaysOnTop = true
            W2.ZIndex = 10
            W2.Size = V2.Size
            W2.Transparency = 0.7
            W2.Color3 = Color3.fromRGB(170, 0, 255)
            W2.Parent = V2
            table.insert(Q2, W2)
        end
    end
end
local function X2()
    R2()
    for _, Y2 in ipairs(game.Players:GetPlayers()) do
        if Y2 ~= a and Y2.Character then
            T2(Y2.Character)
        end
    end
end
H1[10].MouseButton1Click:Connect(function()
    P2 = not P2
    H1[10].Text = P2 and "Hitbox [ON]" or "Hitbox"
    if P2 then
        X2()
    else
        R2()
    end
end)
game.Players.PlayerAdded:Connect(function(Z2)
    if P2 then
        Z2.CharacterAdded:Connect(function(a3)
            wait(1)
            T2(a3)
        end)
    end
end)
for _, b3 in ipairs(game.Players:GetPlayers()) do
    if P2 then
        b3.CharacterAdded:Connect(function(c3)
            wait(1)
            T2(c3)
        end)
    end
end
d.RenderStepped:Connect(function()
    if P2 then X2() end
end)

-- Labels, Footer
local d3 = Instance.new("TextLabel", T)
d3.Size = UDim2.new(1, -math.floor(10 * f), 0, J)
d3.Position = UDim2.new(0, math.floor(5 * f), 0, N - I - J - K)
d3.BackgroundTransparency = 1
d3.Text = "Press M to open/close the menu"
d3.Font = Enum.Font.GothamBold
d3.TextSize = 16 * f
d3.TextColor3 = Color3.fromRGB(60, 60, 60)
d3.TextXAlignment = Enum.TextXAlignment.Center
local e3 = Instance.new("TextLabel", T)
e3.Size = UDim2.new(1, -math.floor(10 * f), 0, I)
e3.Position = UDim2.new(0, math.floor(5 * f), 1, -I - L)
e3.BackgroundTransparency = 1
e3.Text = "Script made by Lacazette"
e3.Font = Enum.Font.GothamBlack
e3.TextSize = 14 * f
e3.TextColor3 = Color3.fromRGB(60, 60, 60)
e3.TextXAlignment = Enum.TextXAlignment.Center
local f3 = Instance.new("TextLabel", T)
f3.Size = UDim2.new(0, 24, 0, 18)
f3.Position = UDim2.new(1, -32, 1, -20)
f3.BackgroundTransparency = 1
f3.Text = "v1"
f3.Font = Enum.Font.GothamBold
f3.TextSize = 13
f3.TextColor3 = Color3.fromRGB(90, 90, 90)
f3.TextXAlignment = Enum.TextXAlignment.Right
f3.TextYAlignment = Enum.TextYAlignment.Bottom

-- Always visible
T.Visible = true
R.Visible = true
r1.Visible = false
Q.Enabled = true
T.Position = UDim2.new(0.5, -M // 2, 0.5, -N // 2)
R.Position = UDim2.new(0.5, -O // 2, 0.5, -P // 2)

-- Toggle menu
b.InputBegan:Connect(function(g3, h3)
    if not h3 and g3.KeyCode == Enum.KeyCode.M then
        local i3 = not T.Visible
        w1(false)
        T.Visible = i3
        R.Visible = i3
        r1.Visible = false
    end
end)
