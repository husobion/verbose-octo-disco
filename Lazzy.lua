-- ONLY LEAKED BY SOLAR ITS REAL SOURCE
-- leaked at discord.gg/rifthub and discord.gg/freesources
-- LEAKED BY SOLAR SOLAR SOLAR SOLAR solars Solarp
-- SOLARINOOOOO OSOLAR RALOS RAMOS? SOLARP .gg/rifthub and .gg/freesources are best servers rn
-- IF U DOTN JOIN DISCORD.GG/RIFTHUB OR DISCORD.GG/FREESOURCES UR NOT OGNNA GET OP SOURCES LIKE THAT

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local HS = game:GetService("HttpService")
local player = Players.LocalPlayer


local introSoundEnabled = true
if isfile and isfile("Dice_Mobile.json") then
    local ok, data = pcall(function() return HS:JSONDecode(readfile("Dice_Mobile.json")) end)
    if ok and type(data) == "table" and data.introSoundEnabled ~= nil then
        introSoundEnabled = data.introSoundEnabled
    end
end

local animEnabled = false
local backgroundEnabled = false
local backgroundIndex = 1
local currentColorTheme = "SILVER"


local THEME_DEFS = {
    SILVER = {accent=Color3.fromRGB(70,200,180), accentDark=Color3.fromRGB(40,180,160), accentBg=Color3.fromRGB(15,35,40), accentHover=Color3.fromRGB(30,80,75), accentRowHover=Color3.fromRGB(12,30,32), bgAsset="106065423404162"},
}



local _GACC = {}
do local _t0=THEME_DEFS[currentColorTheme] or THEME_DEFS.SILVER
    _GACC.accent=_t0.accent; _GACC.accentDark=_t0.accentDark
    _GACC.accentBg=_t0.accentBg; _GACC.accentHover=_t0.accentHover
    _GACC.accentRowHover=_t0.accentRowHover
end

local _themeExtRefs = {}
local _themeStealPills = {}

local function _gAccentGrad(t)
    local a=_GACC.accent; local d=_GACC.accentDark
    local pulse=math.sin(t*0.7)*0.14
    local aR=math.clamp(math.floor(a.R*255*(1+pulse)),0,255)
    local aG=math.clamp(math.floor(a.G*255*(1+pulse)),0,255)
    local aB=math.clamp(math.floor(a.B*255*(1+pulse)),0,255)
    local dR=math.clamp(math.floor(d.R*255*(0.75+pulse*0.25)),0,255)
    local dG=math.clamp(math.floor(d.G*255*(0.75+pulse*0.25)),0,255)
    local dB=math.clamp(math.floor(d.B*255*(0.75+pulse*0.25)),0,255)
    return ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(dR,dG,dB)),
        ColorSequenceKeypoint.new(0.3, Color3.fromRGB(aR,aG,aB)),
        ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255,255,255)),
        ColorSequenceKeypoint.new(0.82,Color3.fromRGB(aR,aG,aB)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(dR,dG,dB))
    })
end

if isfile and isfile("Dice_Mobile.json") then
    local ok2, d2 = pcall(function() return HS:JSONDecode(readfile("Dice_Mobile.json")) end)
    if ok2 and type(d2)=="table" then
        if type(d2.animEnabled)=="boolean" then animEnabled=d2.animEnabled end
        if type(d2.backgroundEnabled)=="boolean" then backgroundEnabled=d2.backgroundEnabled end
        if type(d2.backgroundIndex)=="number" then backgroundIndex=d2.backgroundIndex end
        if type(d2.colorThemeName)=="string" and THEME_DEFS[d2.colorThemeName] then currentColorTheme=d2.colorThemeName end
    end
end


local introSoundInstance = nil
if introSoundEnabled then
    task.spawn(function()
        
        local urlIntro = "https://files.catbox.moe/66xaq4.mp3"
        local numeFisier = "dicenew_introo.mp3"
        if not (isfile and isfile(numeFisier)) then
            local ok, data = pcall(function() return game:HttpGet(urlIntro) end)
            if ok and data then pcall(function() writefile(numeFisier, data) end) end
        end
        introSoundInstance = Instance.new("Sound")
        pcall(function()
            introSoundInstance.SoundId = getcustomasset(numeFisier)
            introSoundInstance.Volume = 3
            introSoundInstance.Looped = false
            introSoundInstance.Parent = game:GetService("CoreGui")
            introSoundInstance:Play()
        end)
    end)
end

if false then
    task.spawn(function()
        
        task.wait(1.7)

        
        local shaking = true
        local shakeConn = RunService.RenderStepped:Connect(function()
            if not shaking then return end
            local cam = workspace.CurrentCamera
            if cam then
                local ox = (math.random() * 2 - 1) * 1.8
                local oy = (math.random() * 2 - 1) * 1.8
                cam.CFrame = cam.CFrame * CFrame.new(ox, oy, 0)
            end
        end)
        task.wait(1.6)

        
        shaking = false
        shakeConn:Disconnect()

        
        local introGui = Instance.new("ScreenGui")
        introGui.Name = "DicePrivateIntroTitle"
        introGui.ResetOnSpawn = false
        introGui.IgnoreGuiInset = true
        introGui.DisplayOrder = 9999
        pcall(function() if syn and syn.protect_gui then syn.protect_gui(introGui) end end)
        if not pcall(function() introGui.Parent = game:GetService("CoreGui") end) then
            introGui.Parent = player:WaitForChild("PlayerGui")
        end

        local pokerLbl = Instance.new("TextLabel")
        pokerLbl.Size = UDim2.new(0.8, 0, 0, 130)
        pokerLbl.AnchorPoint = Vector2.new(0.5, 0.5)
        pokerLbl.Position = UDim2.new(0.5, 0, 0.5, 0)
        pokerLbl.BackgroundTransparency = 1
        pokerLbl.RichText = true
        pokerLbl.Text = 'DICE <font color="rgb(166,170,182)">DUELS</font>'
        pokerLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
        pokerLbl.TextScaled = true
        pokerLbl.Font = Enum.Font.GothamBlack
        pokerLbl.TextTransparency = 1
        pokerLbl.TextStrokeTransparency = 1
        pokerLbl.ZIndex = 10
        pokerLbl.Parent = introGui

        
        for i = 1, 25 do
            pokerLbl.TextTransparency = 1 - (i / 25)
            pokerLbl.TextStrokeTransparency = 1 - (i / 25)
            task.wait(0.016)
        end
        pokerLbl.TextTransparency = 0
        pokerLbl.TextStrokeTransparency = 0

        
        task.wait(2.5)

        
        for i = 1, 30 do
            local a = i / 30
            pokerLbl.TextTransparency = a
            pokerLbl.TextStrokeTransparency = a
            task.wait(0.03)
        end

        pokerLbl.TextTransparency = 1
        task.wait(0.05)
        pcall(function() introGui:Destroy() end)
        pcall(function() introGui.Parent = nil end)
    end)
end

if introSoundEnabled then
    task.spawn(function()
        local introStarted=tick()
        task.wait(.35)
        local introGui=Instance.new("ScreenGui")
        introGui.Name="DicePrivateDiceIntro"; introGui.ResetOnSpawn=false; introGui.IgnoreGuiInset=true
        introGui.DisplayOrder=9999; introGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
        pcall(function() if syn and syn.protect_gui then syn.protect_gui(introGui) end end)
        if not pcall(function() introGui.Parent=game:GetService("CoreGui") end) then introGui.Parent=player:WaitForChild("PlayerGui") end
        local stage=Instance.new("Frame",introGui); stage.Size=UDim2.fromScale(1,1); stage.BackgroundTransparency=1; stage.ClipsDescendants=true
        local function waitForIntroSecond(second)
            local remaining=second-(tick()-introStarted)
            if remaining>0 then task.wait(remaining) end
        end
        local layouts={
            [1]={{.5,.5}},
            [2]={{.28,.28},{.72,.72}},
            [3]={{.27,.27},{.5,.5},{.73,.73}},
            [4]={{.28,.28},{.72,.28},{.28,.72},{.72,.72}},
            [5]={{.27,.27},{.73,.27},{.5,.5},{.27,.73},{.73,.73}},
            [6]={{.28,.23},{.72,.23},{.28,.5},{.72,.5},{.28,.77},{.72,.77}},
        }
        local function makeIntroDie(size,pos,value)
            local group=Instance.new("CanvasGroup",stage)
            group.AnchorPoint=Vector2.new(.5,.5); group.Position=pos; group.Size=UDim2.fromOffset(size+14,size+16); group.BackgroundTransparency=1; group.ZIndex=20; group.ClipsDescendants=true
            local shadow=Instance.new("Frame",group); shadow.Size=UDim2.fromOffset(size,size); shadow.Position=UDim2.fromOffset(10,11)
            shadow.BackgroundColor3=Color3.fromRGB(0,0,0); shadow.BackgroundTransparency=.48; shadow.BorderSizePixel=0; Instance.new("UICorner",shadow).CornerRadius=UDim.new(0,math.floor(size*.2))
            local depth=Instance.new("Frame",group); depth.Size=UDim2.fromOffset(size,size); depth.Position=UDim2.fromOffset(8,8)
            depth.BackgroundColor3=Color3.fromRGB(80,83,98); depth.BorderSizePixel=0; Instance.new("UICorner",depth).CornerRadius=UDim.new(0,math.floor(size*.2))
            local face=Instance.new("Frame",group); face.Size=UDim2.fromOffset(size,size); face.Position=UDim2.fromOffset(7,5)
            face.BackgroundColor3=Color3.fromRGB(225,228,238); face.BorderSizePixel=0; face.ZIndex=22; Instance.new("UICorner",face).CornerRadius=UDim.new(0,math.floor(size*.2))
            local stroke=Instance.new("UIStroke",face); stroke.Color=_GACC.accentDark; stroke.Thickness=2
            local grad=Instance.new("UIGradient",face); grad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(.55,Color3.fromRGB(211,214,225)),ColorSequenceKeypoint.new(1,Color3.fromRGB(126,130,147))}); grad.Rotation=35
            local rim=Instance.new("Frame",face); rim.Size=UDim2.new(1,-10,1,-10); rim.Position=UDim2.fromOffset(5,5); rim.BackgroundTransparency=1; rim.ZIndex=23; Instance.new("UICorner",rim).CornerRadius=UDim.new(0,math.floor(size*.15))
            local rimStroke=Instance.new("UIStroke",rim); rimStroke.Color=Color3.fromRGB(255,255,255); rimStroke.Transparency=.58; rimStroke.Thickness=1
            for _,point in ipairs(layouts[value]) do
                local pip=Instance.new("Frame",face); pip.AnchorPoint=Vector2.new(.5,.5); pip.Position=UDim2.fromScale(point[1],point[2])
                pip.Size=UDim2.fromOffset(math.max(7,math.floor(size*.13)),math.max(7,math.floor(size*.13))); pip.BackgroundColor3=Color3.fromRGB(16,17,24); pip.BorderSizePixel=0; pip.ZIndex=24
                Instance.new("UICorner",pip).CornerRadius=UDim.new(1,0); local pipStroke=Instance.new("UIStroke",pip); pipStroke.Color=Color3.fromRGB(255,255,255); pipStroke.Transparency=.8; pipStroke.Thickness=1
            end
            local scale=Instance.new("UIScale",group)
            return group,scale,grad
        end
        local dice={}
        local routes={
            {44,UDim2.new(-.1,0,.24,0),UDim2.new(.27,0,.33,0),1,900,.00},
            {54,UDim2.new(-.12,0,.65,0),UDim2.new(.31,0,.62,0),4,1080,.08},
            {38,UDim2.new(.22,0,-.12,0),UDim2.new(.40,0,.27,0),2,-900,.16},
            {46,UDim2.new(.38,0,1.12,0),UDim2.new(.42,0,.72,0),5,1080,.12},
            {44,UDim2.new(1.1,0,.25,0),UDim2.new(.73,0,.34,0),3,-900,.00},
            {54,UDim2.new(1.12,0,.68,0),UDim2.new(.69,0,.63,0),6,-1080,.08},
            {38,UDim2.new(.78,0,-.12,0),UDim2.new(.60,0,.27,0),4,900,.16},
            {46,UDim2.new(.64,0,1.12,0),UDim2.new(.58,0,.72,0),2,-1080,.12},
        }
        for _,route in ipairs(routes) do
            local die,scale,grad=makeIntroDie(route[1],route[2],route[4]); scale.Scale=.35; die.GroupTransparency=.18
            table.insert(dice,{die,scale,grad,route[3],route[5],route[2]})
            task.delay(route[6],function()
                TweenService:Create(die,TweenInfo.new(.78,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=route[3],Rotation=route[5],GroupTransparency=0}):Play()
                TweenService:Create(scale,TweenInfo.new(.7,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1}):Play()
                TweenService:Create(grad,TweenInfo.new(.78),{Rotation=route[5]>0 and 395 or -325,Offset=Vector2.new(route[5]>0 and .28 or -.28,0)}):Play()
            end)
        end
        task.wait(.88)
        for i,item in ipairs(dice) do
            local drift=i%2==0 and 32 or -32
            TweenService:Create(item[1],TweenInfo.new(.48,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Rotation=item[1].Rotation+drift}):Play()
        end
        waitForIntroSecond(4.4)
        for _,item in ipairs(dice) do
            local direction=item[5]>0 and 1 or -1
            local retreat=item[4]:Lerp(item[6],.42)
            TweenService:Create(item[1],TweenInfo.new(.46,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{Position=retreat,Rotation=item[1].Rotation+direction*360}):Play()
            TweenService:Create(item[2],TweenInfo.new(.46,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale=.82}):Play()
            TweenService:Create(item[3],TweenInfo.new(.46),{Offset=Vector2.new(-direction*.2,0),Rotation=direction*210}):Play()
        end
        waitForIntroSecond(5.0)
        for _,item in ipairs(dice) do
            local direction=item[5]>0 and 1 or -1
            TweenService:Create(item[1],TweenInfo.new(.58,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Position=item[4],Rotation=item[1].Rotation+direction*720}):Play()
            TweenService:Create(item[2],TweenInfo.new(.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1}):Play()
            TweenService:Create(item[3],TweenInfo.new(.58),{Offset=Vector2.new(direction*.3,0),Rotation=direction*395}):Play()
        end
        local center,centerScale,centerGrad=makeIntroDie(98,UDim2.new(.5,0,1.18,0),6); centerScale.Scale=.56; center.GroupTransparency=.08; center.ZIndex=40
        TweenService:Create(center,TweenInfo.new(.82,Enum.EasingStyle.Bounce,Enum.EasingDirection.Out),{Position=UDim2.new(.5,0,.5,0),Rotation=1440,GroupTransparency=0}):Play()
        TweenService:Create(centerScale,TweenInfo.new(.66,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1}):Play(); TweenService:Create(centerGrad,TweenInfo.new(.82),{Rotation=430,Offset=Vector2.new(.42,0)}):Play()
        task.wait(.76)
        local impact=Instance.new("Frame",stage); impact.AnchorPoint=Vector2.new(.5,.5); impact.Position=UDim2.fromScale(.5,.5); impact.Size=UDim2.fromOffset(80,80); impact.BackgroundTransparency=1; impact.ZIndex=15
        Instance.new("UICorner",impact).CornerRadius=UDim.new(1,0); local impactStroke=Instance.new("UIStroke",impact); impactStroke.Color=_GACC.accent; impactStroke.Thickness=3; impactStroke.Transparency=.05
        TweenService:Create(impact,TweenInfo.new(.52,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Size=UDim2.fromOffset(310,310)}):Play(); TweenService:Create(impactStroke,TweenInfo.new(.52),{Transparency=1,Thickness=1}):Play()
        for i=1,12 do
            local spark=Instance.new("Frame",stage); spark.AnchorPoint=Vector2.new(.5,.5); spark.Position=UDim2.fromScale(.5,.5); spark.Size=UDim2.fromOffset(i%3==0 and 6 or 3,i%3==0 and 18 or 12)
            spark.BackgroundColor3=i%2==0 and _GACC.accent or Color3.fromRGB(245,247,255); spark.BorderSizePixel=0; spark.ZIndex=16; spark.Rotation=i*30; Instance.new("UICorner",spark).CornerRadius=UDim.new(1,0)
            local angle=math.rad(i*30); local radius=115+(i%3)*18
            TweenService:Create(spark,TweenInfo.new(.48,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(.5,math.cos(angle)*radius,.5,math.sin(angle)*radius),BackgroundTransparency=1,Rotation=i*30+90}):Play()
        end
        TweenService:Create(centerScale,TweenInfo.new(.12,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Scale=.88}):Play(); task.wait(.12); TweenService:Create(centerScale,TweenInfo.new(.24,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1}):Play()
        task.wait(.55); for _,item in ipairs(dice) do TweenService:Create(item[1],TweenInfo.new(.38,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Position=UDim2.fromScale(.5,.5),Rotation=item[1].Rotation+180,GroupTransparency=1}):Play(); TweenService:Create(item[2],TweenInfo.new(.38),{Scale=.3}):Play() end
        TweenService:Create(center,TweenInfo.new(.34,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Position=UDim2.new(.5,0,.45,0),Rotation=1530,GroupTransparency=1}):Play(); TweenService:Create(centerScale,TweenInfo.new(.34),{Scale=.55}):Play()
        task.wait(.25)
        local title=Instance.new("TextLabel",stage); title.AnchorPoint=Vector2.new(.5,.5); title.Position=UDim2.new(.5,0,.62,0); title.Size=UDim2.new(0,360,0,80)
        title.BackgroundTransparency=1; title.RichText=true; title.Text='DICE <font color="rgb(166,170,182)">PRIVATE</font>'; title.TextColor3=Color3.fromRGB(245,247,255); title.TextSize=46; title.Font=Enum.Font.GothamBlack
        title.TextTransparency=1; title.TextStrokeColor3=Color3.fromRGB(10,10,16); title.TextStrokeTransparency=1; title.ZIndex=30
        TweenService:Create(title,TweenInfo.new(.52,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Position=UDim2.new(.5,0,.5,0),TextTransparency=0,TextStrokeTransparency=.3}):Play()
        local underline=Instance.new("Frame",stage); underline.AnchorPoint=Vector2.new(.5,.5); underline.Position=UDim2.new(.5,0,.555,0); underline.Size=UDim2.fromOffset(0,2); underline.BackgroundColor3=_GACC.accent; underline.BorderSizePixel=0; underline.ZIndex=30; Instance.new("UICorner",underline).CornerRadius=UDim.new(1,0)
        TweenService:Create(underline,TweenInfo.new(.55,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Size=UDim2.fromOffset(148,2)}):Play()
        task.wait(1.25); TweenService:Create(title,TweenInfo.new(.38,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Position=UDim2.new(.5,0,.42,0),TextTransparency=1,TextStrokeTransparency=1}):Play()
        TweenService:Create(underline,TweenInfo.new(.3,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size=UDim2.fromOffset(0,2),BackgroundTransparency=1}):Play()
        task.wait(.4); pcall(function() introGui:Destroy() end)
    end)
end

repeat task.wait() until game:IsLoaded()


local CANDY_SKY_TAG = "MoveeSkyTheme"
local currentSkyTheme = "Night"
local CANDY_SKY_PRESETS = {
    ["Off"]={kind="off"},
    ["Night"]={clock=22,brightness=2,ambient={110,100,130},outAmb={120,110,140},sky={stars=4000,moon=18,sun=0,moonTex=true},atm={dens=0.45,color={120,60,180},decay={60,20,100},glare=0.5,haze=1.2}},
    ["Aurora"]={clock=14,brightness=3,ambient={150,120,150},outAmb={160,130,150},atm={dens=0.55,color={255,80,200},decay={255,20,150},glare=2.5,haze=3},clouds={cover=0.7,dens=0.7,color={255,240,250}}},
    ["Sunset"]={clock=17.2,brightness=2.5,ambient={170,120,100},outAmb={180,130,110},sky={stars=0,sun=25,moon=0},atm={dens=0.5,color={255,130,60},decay={255,80,30},glare=2,haze=2.5},clouds={cover=0.55,dens=0.55,color={255,200,140}}},
    ["Galaxy"]={clock=0,brightness=1.5,ambient={70,60,100},outAmb={80,70,110},sky={stars=10000,moon=30,sun=0},atm={dens=0.15,color={40,20,80},decay={20,10,50},glare=0.3,haze=0.5}},
    ["Cyber"]={clock=21,brightness=2.2,ambient={90,130,170},outAmb={100,140,180},sky={stars=2000,moon=12},atm={dens=0.4,color={0,200,255},decay={150,0,255},glare=2,haze=2},clouds={cover=0.4,dens=0.6,color={100,200,255}}},
    ["Sakura"]={clock=11,brightness=3.5,ambient={170,150,160},outAmb={180,160,170},sky={sun=8},atm={dens=0.3,color={255,200,220},decay={255,170,200},glare=1,haze=1.5},clouds={cover=0.6,dens=0.4,color={255,250,252}}},
    ["Pink Night"]={clock=23,brightness=2.2,ambient={120,60,110},outAmb={140,70,120},sky={stars=5000,moon=22,sun=0,moonTex=true},atm={dens=0.5,color={255,80,180},decay={140,30,100},glare=0.7,haze=1.4},clouds={cover=0.3,dens=0.5,color={180,90,150}}},
    ["Blood Moon"]={clock=22.5,brightness=1.6,ambient={130,40,40},outAmb={150,50,50},sky={stars=1500,moon=28,sun=0,moonTex=true},atm={dens=0.6,color={220,30,30},decay={120,10,10},glare=1.4,haze=2},clouds={cover=0.5,dens=0.7,color={120,30,30}}},
    ["Emerald Dawn"]={clock=6.5,brightness=2.8,ambient={130,170,140},outAmb={140,180,150},sky={sun=18,moon=0,stars=0},atm={dens=0.4,color={80,200,140},decay={40,150,90},glare=1.8,haze=2.2},clouds={cover=0.5,dens=0.5,color={200,255,220}}},
    ["Volcanic"]={clock=19,brightness=2,ambient={180,80,40},outAmb={200,90,50},sky={stars=200,sun=12,moon=0},atm={dens=0.75,color={255,60,0},decay={180,20,0},glare=3,haze=3.5},clouds={cover=0.8,dens=0.9,color={120,40,20}}},
    ["Arctic"]={clock=9,brightness=3.2,ambient={200,220,235},outAmb={210,230,245},sky={sun=10,stars=0,moon=0},atm={dens=0.3,color={180,220,255},decay={140,200,240},glare=1.5,haze=1.8},clouds={cover=0.7,dens=0.6,color={250,253,255}}},
    ["Midnight Ocean"]={clock=1.5,brightness=1.7,ambient={60,90,130},outAmb={70,100,140},sky={stars=6000,moon=24,sun=0,moonTex=true},atm={dens=0.5,color={20,60,140},decay={10,30,90},glare=0.6,haze=1.5}},
    ["Vaporwave"]={clock=19.5,brightness=2.4,ambient={180,120,200},outAmb={190,130,210},sky={stars=1000,moon=14},atm={dens=0.45,color={255,100,220},decay={120,60,255},glare=2.2,haze=2.4},clouds={cover=0.5,dens=0.55,color={200,150,255}}},
    ["Toxic"]={clock=13,brightness=2.5,ambient={140,180,80},outAmb={150,190,90},atm={dens=0.55,color={100,220,40},decay={60,150,20},glare=1.8,haze=2.6},clouds={cover=0.65,dens=0.7,color={180,255,120}}},
    ["Solar Eclipse"]={clock=12,brightness=0.9,ambient={50,40,60},outAmb={60,50,70},sky={stars=3500,sun=22,moon=0},atm={dens=0.5,color={255,140,40},decay={30,20,40},glare=2.8,haze=1.8}},
    ["Hellscape"]={clock=18,brightness=1.8,ambient={200,60,30},outAmb={220,70,40},sky={stars=100,sun=30,moon=0},atm={dens=0.85,color={255,30,0},decay={120,0,0},glare=3.5,haze=4},clouds={cover=0.95,dens=0.95,color={80,20,10}}},
    ["Heaven"]={clock=12,brightness=4,ambient={240,235,210},outAmb={250,245,220},sky={sun=16,moon=0,stars=0},atm={dens=0.25,color={255,250,220},decay={255,240,200},glare=3,haze=1.5},clouds={cover=0.85,dens=0.5,color={255,255,255}}},
    ["Storm"]={clock=15,brightness=1.4,ambient={90,90,110},outAmb={100,100,120},sky={stars=0,sun=6,moon=0},atm={dens=0.65,color={80,90,120},decay={40,50,80},glare=0.5,haze=3},clouds={cover=0.95,dens=0.95,color={60,65,80}}},
    ["Sunrise"]={clock=6.2,brightness=2.8,ambient={220,180,130},outAmb={230,190,140},sky={sun=22,stars=0,moon=0},atm={dens=0.45,color={255,180,100},decay={255,140,80},glare=2.4,haze=2.2},clouds={cover=0.4,dens=0.4,color={255,220,180}}},
    ["Deep Space"]={clock=0,brightness=1,ambient={30,25,50},outAmb={40,35,60},sky={stars=15000,moon=0,sun=0},atm={dens=0.08,color={15,5,40},decay={5,0,20},glare=0.2,haze=0.3}},
    ["Lavender Dream"]={clock=18.5,brightness=2.6,ambient={180,160,220},outAmb={190,170,230},sky={stars=800,moon=16,sun=0},atm={dens=0.4,color={200,160,255},decay={160,120,220},glare=1.4,haze=1.8},clouds={cover=0.55,dens=0.5,color={220,200,255}}},
    ["Inferno"]={clock=17.5,brightness=2.2,ambient={220,100,40},outAmb={235,110,50},sky={sun=26,moon=0,stars=0},atm={dens=0.6,color={255,90,20},decay={200,40,0},glare=3,haze=3.2},clouds={cover=0.7,dens=0.7,color={200,80,40}}},
    ["Mint Sky"]={clock=10,brightness=3.2,ambient={180,230,210},outAmb={190,240,220},sky={sun=10},atm={dens=0.32,color={150,255,210},decay={100,220,180},glare=1.6,haze=1.6},clouds={cover=0.55,dens=0.45,color={240,255,250}}},
}
local SkyOrder={"Off","Night","Aurora","Sunset","Galaxy","Cyber","Sakura","Pink Night","Blood Moon","Emerald Dawn","Volcanic","Arctic","Midnight Ocean","Vaporwave","Toxic","Solar Eclipse","Hellscape","Heaven","Storm","Sunrise","Deep Space","Lavender Dream","Inferno","Mint Sky"}
local function candyColor(rgb) return Color3.fromRGB(rgb[1],rgb[2],rgb[3]) end
local function CandyApplyCustomSky(mode)
    for _,child in ipairs(Lighting:GetChildren()) do if child:GetAttribute(CANDY_SKY_TAG) then pcall(function() child:Destroy() end) end end
    local terrain=workspace:FindFirstChildOfClass("Terrain")
    if terrain then for _,child in ipairs(terrain:GetChildren()) do if child:GetAttribute(CANDY_SKY_TAG) then pcall(function() child:Destroy() end) end end end
    local preset=CANDY_SKY_PRESETS[mode]
    if not preset or preset.kind=="off" then Lighting.ClockTime=14;Lighting.Brightness=2;Lighting.OutdoorAmbient=Color3.fromRGB(127,127,127);Lighting.Ambient=Color3.fromRGB(127,127,127);Lighting.FogEnd=100000;Lighting.GlobalShadows=true;return end
    Lighting.FogStart=0;Lighting.FogEnd=100000;Lighting.FogColor=Color3.fromRGB(200,200,200);Lighting.ColorShift_Top=Color3.fromRGB(0,0,0);Lighting.ColorShift_Bottom=Color3.fromRGB(0,0,0);Lighting.GlobalShadows=true
    Lighting.ClockTime=preset.clock or 14;Lighting.Brightness=preset.brightness or 2
    if preset.outAmb then Lighting.OutdoorAmbient=candyColor(preset.outAmb) end
    if preset.ambient then Lighting.Ambient=candyColor(preset.ambient) end
    if preset.sky then
        local skyInst=Instance.new("Sky");skyInst:SetAttribute(CANDY_SKY_TAG,true)
        if preset.sky.stars then skyInst.StarCount=preset.sky.stars end
        if preset.sky.moon then skyInst.MoonAngularSize=preset.sky.moon end
        if preset.sky.sun then skyInst.SunAngularSize=preset.sky.sun end
        if preset.sky.moonTex then skyInst.MoonTextureId="rbxasset://sky/moon.jpg" end
        skyInst.Parent=Lighting
    end
    if preset.atm then
        local atm=Instance.new("Atmosphere");atm:SetAttribute(CANDY_SKY_TAG,true)
        atm.Density=preset.atm.dens or 0.3;atm.Color=candyColor(preset.atm.color);atm.Decay=candyColor(preset.atm.decay);atm.Glare=preset.atm.glare or 1;atm.Haze=preset.atm.haze or 1;atm.Parent=Lighting
    end
    if preset.clouds and terrain then
        local clouds=Instance.new("Clouds");clouds:SetAttribute(CANDY_SKY_TAG,true)
        clouds.Cover=preset.clouds.cover or 0.5;clouds.Density=preset.clouds.dens or 0.5;clouds.Color=candyColor(preset.clouds.color);clouds.Parent=terrain
    end
end


local TS=TweenService
local LP=Players.LocalPlayer
local NS,CS=59,29
local LAGGER_SPEED=30
local LAGGER_CARRY_SPEED=15
local carrySpeedActive = false
local laggerModeEnabled = false

local antiRagdollEnabled,infJumpEnabled=false,false
local medusaCounterEnabled,batCounterEnabled,unwalkEnabled=false,false,false
local medusaDebounce,medusaLastUsed,dropActive=false,0,false
local autoLeftEnabled,autoRightEnabled=false,false
local autoLeftSetVisual,autoRightSetVisual=nil,nil
local speedLabel=nil
local autoBatEnabled=false
local batDesyncTpEnabled=false
local batDesyncTpSetVisual=nil
local autoSwingEnabled=true
local autoMoveSwingEnabled=false
local autoMoveSwingInterval=0.3
local _alSwingDebounce=false
local _arSwingDebounce=false
local autoBatSetVisual=nil
local resetAutoBatMotion=nil
local setBatCounterVisual=nil
local startBatCounter,stopBatCounter
local antiLagEnabled,removeAccessoriesEnabled,antiLagDescConn=false,false,nil
local stretchRezEnabled,stretchRezConn,setStretchRezVisual=false,nil,nil
local unwalkSavedAnimate,_anyKeyListening=nil,false
local autoTPEnabled,autoTPHeight,autoTPConn,setAutoTPVisual=false,20,nil,nil
local cursedResetRemote=nil
local CURSED_RESET_GUID="f888ee6e-c86d-46e1-93d7-0639d6635d42"
local guiTransparencyEnabled,mobileButtonsEnabled,mobileButtonsLocked=false,true,true
local mobileButtonsSize=64
local circleButtonsEnabled=false
local stealBarFrame
local mobBtnRefs={}
local mobGuiRef=nil
local fovValue=80
local fovOptions={80,120,180}
local fovIndex=1
local laggerModePillRef=nil
local carryModePillRef=nil
local autoSwitchSpeedEnabled=false
local mobBtnTransparencyEnabled=false
local perButtonDragEnabled=false
_GACC.mobileButtonPositions={}
_GACC.mobileGroupPosition={x=.86,y=.5}
_GACC.mobileButtonsGrouped=false
_GACC.pingDismissed=false
local brainrotDetected=false
_GACC.safeModeEnabled=false
_GACC.safeModeActive=false
_GACC.autoCarrySpeedEnabled=false
local activeBatBillboard=nil
local activeMedusaBillboard=nil
local espEnabled=false
local espObjects={}
local espConnections={}
local ragdollGuiEnabled=true
local persistentRagdollGui=nil
local uiLocked=false
local infJumpMode="manual"
local holdInfJumpConn=nil
local DROP_ASCEND_DURATION=0.2
local DROP_ASCEND_SPEED=150
local _GuiKeys = nil
local pingNotification = nil
local _perfFps,_perfPing=0,0


local bgImageRef = nil
local bgImageContainer = nil 
local bgImageCorner = nil
local function applyBackgroundImage()
    if bgImageRef then bgImageRef.Visible = false end
    backgroundEnabled = false
end

local RembembiAnims = {
    WalkAnim  = 73718308412641,
    RunAnim   = 135515454877967,
    JumpAnim  = 78508480717326,
    FallAnim  = 78147885297412,
    SwimIdle  = 129183123083281,
    Swim      = 110657013921774,
    ClimbAnim = 129447497744818,
    Animation1 = 92849173543269,
    Animation2 = 132238900951109,
}

local startAnimToggle, stopAnimToggle

do
    local AnimRefs = { heartbeat=nil, savedAnimate=nil, originalAnims=nil }
    local LP_anim = Players.LocalPlayer
    local function isRembembiAnim(id)
        if not id then return false end
        for _,v in pairs(RembembiAnims) do if v == id then return true end end
        return false
    end
    local function saveOriginalAnims(char)
        local animate = char:FindFirstChild("Animate")
        if not animate then return end
        local function g(obj) return obj and obj.AnimationId or nil end
        local ids = {
            walk=g(animate.walk and animate.walk.WalkAnim),
            run=g(animate.run and animate.run.RunAnim),
            jump=g(animate.jump and animate.jump.JumpAnim),
            fall=g(animate.fall and animate.fall.FallAnim),
            climb=g(animate.climb and animate.climb.ClimbAnim),
            swim=g(animate.swim and animate.swim.Swim),
            swimidle=g(animate.swimidle and animate.swimidle.SwimIdle),
            idle1=g(animate.idle and animate.idle.Animation1),
            idle2=g(animate.idle and animate.idle.Animation2),
        }
        if not isRembembiAnim(ids.walk) then AnimRefs.originalAnims = ids end
    end
    local function applyRembembiAnims(char)
        local animate = char:FindFirstChild("Animate")
        if not animate then return end
        local function s(obj, id) if obj then obj.AnimationId = "rbxassetid://" .. id end end
        s(animate.walk and animate.walk.WalkAnim, RembembiAnims.WalkAnim)
        s(animate.run and animate.run.RunAnim, RembembiAnims.RunAnim)
        s(animate.jump and animate.jump.JumpAnim, RembembiAnims.JumpAnim)
        s(animate.fall and animate.fall.FallAnim, RembembiAnims.FallAnim)
        s(animate.climb and animate.climb.ClimbAnim, RembembiAnims.ClimbAnim)
        s(animate.swim and animate.swim.Swim, RembembiAnims.Swim)
        s(animate.swimidle and animate.swimidle.SwimIdle, RembembiAnims.SwimIdle)
        s(animate.idle and animate.idle.Animation1, RembembiAnims.Animation1)
        s(animate.idle and animate.idle.Animation2, RembembiAnims.Animation2)
    end
    local function restoreOriginalAnims(char)
        local orig = AnimRefs.originalAnims
        if not orig then return end
        local animate = char:FindFirstChild("Animate")
        if not animate then return end
        local function s(obj, id) if obj and id then obj.AnimationId = id end end
        s(animate.walk and animate.walk.WalkAnim, orig.walk)
        s(animate.run and animate.run.RunAnim, orig.run)
        s(animate.jump and animate.jump.JumpAnim, orig.jump)
        s(animate.fall and animate.fall.FallAnim, orig.fall)
        s(animate.climb and animate.climb.ClimbAnim, orig.climb)
        s(animate.swim and animate.swim.Swim, orig.swim)
        s(animate.swimidle and animate.swimidle.SwimIdle, orig.swimidle)
        s(animate.idle and animate.idle.Animation1, orig.idle1)
        s(animate.idle and animate.idle.Animation2, orig.idle2)
    end
    function startAnimToggle()
        if AnimRefs.heartbeat then AnimRefs.heartbeat:Disconnect(); AnimRefs.heartbeat = nil end
        local char = LP_anim.Character
        if char then saveOriginalAnims(char); applyRembembiAnims(char) end
        AnimRefs.heartbeat = RunService.Heartbeat:Connect(function()
            if not animEnabled then return end
            local c = LP_anim.Character
            if c then applyRembembiAnims(c) end
        end)
    end
    function stopAnimToggle()
        if AnimRefs.heartbeat then AnimRefs.heartbeat:Disconnect(); AnimRefs.heartbeat = nil end
        local char = LP_anim.Character
        if char then restoreOriginalAnims(char) end
    end
end

local cursedInstaReset
_GACC.extras={}
do
local ANIMATION_PACKS={
    ["Adidas Sports"]={WalkAnim=18537392113,RunAnim=18537384940,JumpAnim=18537380791,FallAnim=18537367238,SwimIdle=18537387180,Swim=18537389531,Animation1=18537376492,Animation2=18537371272,ClimbAnim=18537363391},
    ["Adidas Community"]={WalkAnim=122150855457006,RunAnim=82598234841035,JumpAnim=75290611992385,FallAnim=98600215928904,SwimIdle=109346520324160,Swim=133308483266208,Animation1=122257458498464,Animation2=102357151005774,ClimbAnim=88763136693023},
    ["Adidas Aura"]={WalkAnim=83842218823011,RunAnim=118320322718866,JumpAnim=109996626521204,FallAnim=95603166884636,SwimIdle=94922130551805,Swim=134530128383903,Animation1=110211186840347,Animation2=114191137265065,ClimbAnim=97824616490448},
    ["Wicked Popular"]={WalkAnim=92072849924640,RunAnim=72301599441680,JumpAnim=104325245285198,FallAnim=121152442762481,Animation1=118832222982049,ClimbAnim=131326830509784,SwimIdle=113199415118199,Swim=99384245425157,Animation2=76049494037641},
    Elder={WalkAnim=10921111375,RunAnim=10921104374,JumpAnim=10921107367,FallAnim=10921105765,SwimIdle=10921110146,Swim=10921108971,ClimbAnim=10921100400,Animation1=10921101664,Animation2=10921102574},
    Zombie={WalkAnim=10921355261,RunAnim=616163682,JumpAnim=10921351278,FallAnim=10921350320,SwimIdle=10921353442,Swim=10921352344,Animation1=10921344533,Animation2=10921345304,ClimbAnim=10921343576},
    Mage={WalkAnim=10921152678,RunAnim=10921148209,JumpAnim=10921149743,FallAnim=10921148939,SwimIdle=10921151661,Swim=10921150788,ClimbAnim=10921143404,Animation1=10921144709,Animation2=10921145797},
    ["Catwalk Glam"]={WalkAnim=109168724482748,RunAnim=81024476153754,JumpAnim=116936326516985,FallAnim=92294537340807,SwimIdle=98854111361360,Swim=134591743181628,ClimbAnim=119377220967554,Animation1=133806214992291,Animation2=94970088341563},
    Astronaut={WalkAnim=10921046031,RunAnim=10921039308,JumpAnim=10921042494,FallAnim=10921040576,SwimIdle=10921045006,Swim=10921044000,ClimbAnim=10921032124,Animation1=10921034824,Animation2=10921036806},
    ['Wicked "Dancing Through Life"']={WalkAnim=73718308412641,RunAnim=135515454877967,JumpAnim=78508480717326,FallAnim=78147885297412,SwimIdle=129183123083281,Swim=110657013921774,ClimbAnim=129447497744818,Animation1=92849173543269,Animation2=132238900951109},
    Werewolf={WalkAnim=10921342074,RunAnim=10921336997,FallAnim=10921337907,SwimIdle=10921341319,Swim=10921340419,ClimbAnim=10921329322,Animation1=10921330408,Animation2=10921333667},
    Superhero={WalkAnim=10921298616,RunAnim=10921291831,JumpAnim=10921294559,FallAnim=10921293373,SwimIdle=10921297391,Swim=10921295495,ClimbAnim=10921286911,Animation1=10921288909,Animation2=10921290167},
    Toy={WalkAnim=10921312010,RunAnim=10921306285,JumpAnim=10921308158,FallAnim=10921307241,SwimIdle=10921310341,Swim=10921309319,ClimbAnim=10921300839,Animation1=10921301576},
    ["No Boundaries"]={WalkAnim=18747074203,RunAnim=18747070484,JumpAnim=18747069148,FallAnim=18747062535,SwimIdle=18747071682,Swim=18747073181,ClimbAnim=18747060903,Animation1=18747067405,Animation2=18747063918},
    NFL={WalkAnim=110358958299415,RunAnim=117333533048078,JumpAnim=119846112151352,FallAnim=129773241321032,SwimIdle=79090109939093,Swim=132697394189921,ClimbAnim=134630013742019,Animation1=92080889861410,Animation2=74451233229259},
    ["Amazon Unboxed"]={WalkAnim=90478085024465,RunAnim=134824450619865,JumpAnim=121454505477205,FallAnim=94788218468396,SwimIdle=129126268464847,Swim=105962919001086,ClimbAnim=121145883950231,Animation1=98281136301627},
    Vampire={WalkAnim=10921326949,RunAnim=10921320299,JumpAnim=10921322186,FallAnim=10921321317,SwimIdle=10921325443,Swim=10921324408,ClimbAnim=10921314188,Animation1=10921315373},
    Ninja={Run=656118852,Walk=656121766,Jump=656117878,Fall=656115606,Swim=656119721,SwimIdle=656121397,Climb=656114359,Idle={656117400,656118341,886742569}},
    Robot={Run=616091570,Walk=616095330,Jump=616090535,Fall=616087089,Swim=616092998,SwimIdle=616094091,Climb=616086039,Idle={616088211,616089559,885531463}},
    Levitation={Run=616010382,Walk=616013216,Jump=616008936,Fall=616005863,Swim=616011509,SwimIdle=616012453,Climb=616003713,Idle={616006778,616008087,886862142}},
    Stylish={Run=616140816,Walk=616146177,Jump=616139451,Fall=616134815,Swim=616143378,SwimIdle=616144772,Climb=616133594,Idle={616136790,616138447,886888594}},
    Bubbly={Run=910025107,Walk=910034870,Jump=910016857,Fall=910001910,Swim=910028158,SwimIdle=910030921,Climb=909997997,Idle={910004836,910009958,1018536639}},
    Cartoon={Run=742638842,Walk=742640026,Jump=742637942,Fall=742637151,Swim=742639208,SwimIdle=742639812,Climb=742636889,Idle={742637544,742638445,885477856}},
}
local selectedAnimPack="Adidas Sports"
local headlessEnabled=false
local korbloxEnabled=false
local bodyLockEnabled=false
local bodyLockRadius=60
local bodyLockConn=nil
local autoResetOnDeath=false
local deathResetConn=nil
local deathResetCharConn=nil
local HEADLESS_MESH_ID="rbxassetid://1095708"
local KORBLOX_MESH_ID="rbxassetid://101851696"
local KORBLOX_TEXTURE_ID="rbxassetid://101851254"
local cosmeticState=setmetatable({},{__mode="k"})

local function animPick(pack,...)
    for i=1,select("#",...) do local v=pack[select(i,...)]; if v~=nil then return v end end
end
local function ensureAnimation(folder,name)
    if not folder then return nil end
    local obj=folder:FindFirstChild(name)
    if not obj then obj=Instance.new("Animation"); obj.Name=name; obj.Parent=folder end
    return obj
end
local applyingAnimPack=false
local function applyAnimationPack(packName,char)
    if applyingAnimPack then return false end
    local pack=ANIMATION_PACKS[packName]; if not pack then return false end
    applyingAnimPack=true
    char=char or LP.Character
    if not char then applyingAnimPack=false; return false end
    local animate,animateReady
    for _=1,40 do
        animate=char:FindFirstChild("Animate")
        if animate and animate:FindFirstChild("idle") and animate:FindFirstChild("run") and animate:FindFirstChild("walk") then animateReady=true; break end
        task.wait(.1)
    end
    if not animateReady then applyingAnimPack=false; return false end
    local hum=char:FindFirstChildOfClass("Humanoid")
    if hum then for _,track in ipairs(hum:GetPlayingAnimationTracks()) do pcall(function() track:Stop(0) end) end end
    local function set(folder,objName,id) local obj=ensureAnimation(animate:FindFirstChild(folder),objName); if obj and id then obj.AnimationId="rbxassetid://"..tostring(id) end end
    set("walk","WalkAnim",animPick(pack,"WalkAnim","Walk")); set("run","RunAnim",animPick(pack,"RunAnim","Run"))
    set("jump","JumpAnim",animPick(pack,"JumpAnim","Jump")); set("fall","FallAnim",animPick(pack,"FallAnim","Fall"))
    set("climb","ClimbAnim",animPick(pack,"ClimbAnim","Climb")); set("swim","Swim",animPick(pack,"Swim"))
    set("swimidle","SwimIdle",animPick(pack,"SwimIdle") or animPick(pack,"Swim"))
    local idle=animate:FindFirstChild("idle")
    if idle then
        local ids=pack.Idle or {animPick(pack,"Animation1"),animPick(pack,"Animation2")}
        if ids[1] or ids[2] then
            local id1=ids[1] or ids[2]; local id2=ids[2] or ids[1]
            local a1=ensureAnimation(idle,"Animation1"); local a2=ensureAnimation(idle,"Animation2")
            if a1 then a1.AnimationId="rbxassetid://"..tostring(id1) end
            if a2 then a2.AnimationId="rbxassetid://"..tostring(id2) end
            for i=3,#ids do local a=ensureAnimation(idle,"Animation"..i); if a then a.AnimationId="rbxassetid://"..tostring(ids[i]) end end
        end
    end
    animate.Disabled=true; task.wait(.06); animate.Disabled=false
    if hum then pcall(function() hum:ChangeState(Enum.HumanoidStateType.Landed); task.wait(.03); hum:ChangeState(Enum.HumanoidStateType.Running) end) end
    selectedAnimPack=packName; applyingAnimPack=false; return true
end

local function applyHeadless(char,enabled)
    local head=char and char:FindFirstChild("Head"); if not head then return end
    local state=cosmeticState[char] or {}; cosmeticState[char]=state
    if enabled then
        if state.headTransparency==nil then state.headTransparency=head.Transparency; state.headCanCollide=head.CanCollide; local face=head:FindFirstChild("face"); state.face=face and face:Clone() or nil end
        head.Transparency=1; head.CanCollide=false
        local face=head:FindFirstChild("face"); if face then face:Destroy() end
        local old=head:FindFirstChild("DiceHeadlessMesh"); if old then old:Destroy() end
        local mesh=Instance.new("SpecialMesh",head); mesh.Name="DiceHeadlessMesh"; mesh.MeshType=Enum.MeshType.FileMesh; mesh.MeshId=HEADLESS_MESH_ID; mesh.Scale=Vector3.new(.001,.001,.001)
    else
        local mesh=head:FindFirstChild("DiceHeadlessMesh"); if mesh then mesh:Destroy() end
        if state.headTransparency~=nil then
            head.Transparency=state.headTransparency; head.CanCollide=state.headCanCollide
            if state.face and not head:FindFirstChild("face") then state.face:Clone().Parent=head end
            state.headTransparency=nil; state.headCanCollide=nil; state.face=nil
        end
    end
end

local function applyKorblox(char,enabled)
    local hum=char and char:FindFirstChildOfClass("Humanoid"); if not hum then return end
    local state=cosmeticState[char] or {}; cosmeticState[char]=state
    if hum.RigType==Enum.HumanoidRigType.R6 then
        local leg=char:FindFirstChild("Right Leg"); if not leg then return end
        if enabled then
            if not state.r6LegColor then state.r6LegColor=leg.Color; state.r6Meshes={}; for _,v in ipairs(leg:GetChildren()) do if v:IsA("SpecialMesh") or v:IsA("CharacterMesh") then table.insert(state.r6Meshes,v:Clone()); v:Destroy() end end end
            leg.Color=Color3.fromRGB(64,64,64); local old=leg:FindFirstChild("DiceKorbloxMesh"); if old then old:Destroy() end
            local mesh=Instance.new("SpecialMesh",leg); mesh.Name="DiceKorbloxMesh"; mesh.MeshType=Enum.MeshType.FileMesh; mesh.MeshId=KORBLOX_MESH_ID; mesh.TextureId=KORBLOX_TEXTURE_ID
        else
            local mesh=leg:FindFirstChild("DiceKorbloxMesh"); if mesh then mesh:Destroy() end
            if state.r6LegColor then leg.Color=state.r6LegColor end
            if state.r6Meshes then for _,v in ipairs(state.r6Meshes) do v:Clone().Parent=leg end end
            state.r6LegColor=nil; state.r6Meshes=nil
        end
    else
        local upper=char:FindFirstChild("RightUpperLeg"); local lower=char:FindFirstChild("RightLowerLeg"); local foot=char:FindFirstChild("RightFoot")
        if not upper then return end
        if enabled then
            if not state.r15Transparency then state.r15Transparency={upper.Transparency,lower and lower.Transparency or 0,foot and foot.Transparency or 0} end
            upper.Transparency=1; if lower then lower.Transparency=1 end; if foot then foot.Transparency=1 end
            local old=char:FindFirstChild("DiceKorbloxLeg"); if old then old:Destroy() end
            local leg=Instance.new("Part",char); leg.Name="DiceKorbloxLeg"; leg.Size=Vector3.new(1,2,1); leg.Anchored=false; leg.CanCollide=false; leg.Massless=true; leg.Color=Color3.fromRGB(64,64,64)
            local mesh=Instance.new("SpecialMesh",leg); mesh.MeshType=Enum.MeshType.FileMesh; mesh.MeshId=KORBLOX_MESH_ID; mesh.TextureId=KORBLOX_TEXTURE_ID
            local weld=Instance.new("Weld",leg); weld.Name="DiceKorbloxWeld"; weld.Part0=upper; weld.Part1=leg; weld.C0=CFrame.new(0,-.8,0)
        else
            local vals=state.r15Transparency
            if vals then upper.Transparency=vals[1]; if lower then lower.Transparency=vals[2] end; if foot then foot.Transparency=vals[3] end end
            local leg=char:FindFirstChild("DiceKorbloxLeg"); if leg then leg:Destroy() end; state.r15Transparency=nil
        end
    end
end

local function nearestBodyLockTarget()
    local char=LP.Character; local root=char and char:FindFirstChild("HumanoidRootPart"); if not root then return nil end
    local nearest,shortest=nil,math.huge
    for _,plr in ipairs(Players:GetPlayers()) do
        if plr~=LP and plr.Character then local tr=plr.Character:FindFirstChild("HumanoidRootPart"); local hum=plr.Character:FindFirstChildOfClass("Humanoid")
            if tr and hum and hum.Health>0 then local dist=(tr.Position-root.Position).Magnitude; if dist<=bodyLockRadius and dist<shortest then shortest=dist; nearest=plr end end
        end
    end
    return nearest
end
local function stopBodyLock()
    bodyLockEnabled=false; if bodyLockConn then bodyLockConn:Disconnect(); bodyLockConn=nil end
    local hum=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid"); if hum then hum.AutoRotate=true end
end
local function startBodyLock()
    if bodyLockConn then return end; bodyLockEnabled=true
    bodyLockConn=RunService.Heartbeat:Connect(function()
        if not bodyLockEnabled then return end
        local char=LP.Character; local root=char and char:FindFirstChild("HumanoidRootPart"); local hum=char and char:FindFirstChildOfClass("Humanoid")
        if not root or not hum or hum.Health<=0 then return end
        local target=nearestBodyLockTarget(); local tr=target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")
        if tr then local offset=Vector3.new(tr.Position.X,root.Position.Y,tr.Position.Z)-root.Position
            if offset.Magnitude>.1 then hum.AutoRotate=false; local cross=root.CFrame.LookVector:Cross(offset.Unit); local av=root.AssemblyAngularVelocity; root.AssemblyAngularVelocity=Vector3.new(av.X,cross.Y*40,av.Z) end
        else hum.AutoRotate=true end
    end)
end

local function setupAutoResetOnDeath()
    if deathResetConn then deathResetConn:Disconnect(); deathResetConn=nil end
    if autoResetOnDeath then
        local hum=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
        if hum then deathResetConn=hum.Died:Connect(function() if autoResetOnDeath and cursedInstaReset then cursedInstaReset() end end) end
        if not deathResetCharConn then deathResetCharConn=LP.CharacterAdded:Connect(function() task.wait(.5); setupAutoResetOnDeath() end) end
    elseif deathResetCharConn then deathResetCharConn:Disconnect(); deathResetCharConn=nil end
end

_GACC.extras.packs=ANIMATION_PACKS
_GACC.extras.getPack=function() return selectedAnimPack end
_GACC.extras.setPack=function(name,applyNow,char)
    if ANIMATION_PACKS[name] then selectedAnimPack=name; if applyNow then return applyAnimationPack(name,char) end; return true end
    return false
end
_GACC.extras.applyPack=applyAnimationPack
_GACC.extras.getHeadless=function() return headlessEnabled end
_GACC.extras.setHeadless=function(on,char) headlessEnabled=on==true; if char then applyHeadless(char,headlessEnabled) end end
_GACC.extras.getKorblox=function() return korbloxEnabled end
_GACC.extras.setKorblox=function(on,char) korbloxEnabled=on==true; if char then applyKorblox(char,korbloxEnabled) end end
_GACC.extras.getBodyLock=function() return bodyLockEnabled end
_GACC.extras.setBodyLockState=function(on) bodyLockEnabled=on==true end
_GACC.extras.startBodyLock=startBodyLock
_GACC.extras.stopBodyLock=stopBodyLock
_GACC.extras.getBodyLockRadius=function() return bodyLockRadius end
_GACC.extras.setBodyLockRadius=function(v) bodyLockRadius=math.clamp(tonumber(v) or 60,5,200); return bodyLockRadius end
_GACC.extras.getAutoReset=function() return autoResetOnDeath end
_GACC.extras.setAutoResetState=function(on) autoResetOnDeath=on==true end
_GACC.extras.setupAutoReset=setupAutoResetOnDeath
_GACC.extras.onCharacter=function(char)
    applyHeadless(char,headlessEnabled); applyKorblox(char,korbloxEnabled)
    if selectedAnimPack and ANIMATION_PACKS[selectedAnimPack] then task.spawn(function() task.wait(.2); applyAnimationPack(selectedAnimPack,char) end) end
end
_GACC.extras.reset=function(char)
    selectedAnimPack="Adidas Sports"; headlessEnabled=false; korbloxEnabled=false; autoResetOnDeath=false; bodyLockRadius=60
    stopBodyLock(); setupAutoResetOnDeath()
    if char then applyHeadless(char,false); applyKorblox(char,false) end
    task.spawn(function() applyAnimationPack(selectedAnimPack) end)
end
end

local refreshSpeedModeLabel,saveConfig
local startUnwalk,stopUnwalk,setupMedusa,stopMedusaCounter
local startAntiRagdoll,stopAntiRagdoll,startAutoLeft,stopAutoLeft,startAutoRight,stopAutoRight
local startAutoTP,stopAutoTP,enableAntiLag,disableAntiLag,enableStretchRez,disableStretchRez
local startBatAimbot,stopBatAimbot,queueAutoBatStart,runDrop,runTPFloor
local startBatDesyncTp,stopBatDesyncTp
local startAutoSteal,stopAutoSteal,toggleCarryMode,toggleLaggerMode


local findBat = function()
    local c = LP.Character; if not c then return nil end
    local bp = LP:FindFirstChildOfClass("Backpack")
    for _,ch in ipairs(c:GetChildren()) do
        if ch:IsA("Tool") and ch.Name:lower():find("bat") then return ch end
    end
    if bp then
        for _,ch in ipairs(bp:GetChildren()) do
            if ch:IsA("Tool") and ch.Name:lower():find("bat") then return ch end
        end
    end
    return nil
end


local isNearPodiumWithPrompt

local function addShimmerToLabel(lbl,color1,color2)
    local gr=Instance.new("UIGradient",lbl)
    gr.Color=ColorSequence.new({
        ColorSequenceKeypoint.new(0,  color1 or Color3.fromRGB(150,150,150)),
        ColorSequenceKeypoint.new(0.3,Color3.fromRGB(230,230,230)),
        ColorSequenceKeypoint.new(0.6,color2 or Color3.fromRGB(255,255,255)),
        ColorSequenceKeypoint.new(1,  color1 or Color3.fromRGB(150,150,150))
    })
    gr.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0.3,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,0.3,0)})
    return gr
end

local fovConn=nil
local function applyFOV()
    if fovConn then fovConn:Disconnect() end
    fovConn=RunService.RenderStepped:Connect(function() local cam=workspace.CurrentCamera;if cam then cam.FieldOfView=fovValue end end)
end
applyFOV()


function createPingNotificationLegacy()
    if pingNotification then
        pcall(function() pingNotification:Destroy() end)
        pingNotification = nil
    end
    local sg=Instance.new("ScreenGui")
    sg.Name="PingNotification"; sg.ResetOnSpawn=false; sg.IgnoreGuiInset=true; sg.DisplayOrder=999
    pcall(function() if syn and syn.protect_gui then syn.protect_gui(sg) end end)
    if not pcall(function() sg.Parent=game:GetService("CoreGui") end) then
        sg.Parent=LP:WaitForChild("PlayerGui")
    end
    local shadow=Instance.new("Frame",sg); shadow.Size=UDim2.fromOffset(316,92); shadow.Position=UDim2.new(1,28,0,29)
    shadow.BackgroundColor3=Color3.fromRGB(0,0,0); shadow.BackgroundTransparency=.52; shadow.BorderSizePixel=0; shadow.ZIndex=8; Instance.new("UICorner",shadow).CornerRadius=UDim.new(0,16)
    local card=Instance.new("CanvasGroup",sg); card.Size=UDim2.fromOffset(316,92); card.Position=UDim2.new(1,24,0,22)
    card.BackgroundColor3=Color3.fromRGB(10,10,15); card.BackgroundTransparency=.04; card.BorderSizePixel=0; card.ZIndex=10; card.ClipsDescendants=true; card.GroupTransparency=.08
    Instance.new("UICorner",card).CornerRadius=UDim.new(0,16)
    local cStroke=Instance.new("UIStroke",card); cStroke.Color=Color3.fromRGB(255,112,90); cStroke.Thickness=1; cStroke.Transparency=.38
    local cardGrad=Instance.new("UIGradient",card); cardGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(24,17,22)),ColorSequenceKeypoint.new(.55,Color3.fromRGB(11,11,17)),ColorSequenceKeypoint.new(1,Color3.fromRGB(16,13,20))}); cardGrad.Rotation=12
    local rail=Instance.new("Frame",card); rail.Size=UDim2.new(0,4,1,-18); rail.Position=UDim2.fromOffset(0,9); rail.BackgroundColor3=Color3.fromRGB(255,96,78); rail.BorderSizePixel=0; rail.ZIndex=12; Instance.new("UICorner",rail).CornerRadius=UDim.new(1,0)
    local badge=Instance.new("Frame",card); badge.Size=UDim2.fromOffset(58,58); badge.Position=UDim2.fromOffset(15,17); badge.BackgroundColor3=Color3.fromRGB(232,230,224); badge.BorderSizePixel=0; badge.ZIndex=12; badge.Rotation=-7; Instance.new("UICorner",badge).CornerRadius=UDim.new(0,14)
    local badgeDepth=Instance.new("UIStroke",badge); badgeDepth.Color=Color3.fromRGB(255,108,82); badgeDepth.Thickness=2; badgeDepth.Transparency=.08
    local badgeGrad=Instance.new("UIGradient",badge); badgeGrad.Color=ColorSequence.new(Color3.fromRGB(255,252,244),Color3.fromRGB(150,145,145)); badgeGrad.Rotation=45
    for _,pt in ipairs({{.24,.24},{.76,.24},{.24,.76},{.76,.76}}) do
        local pip=Instance.new("Frame",badge); pip.AnchorPoint=Vector2.new(.5,.5); pip.Position=UDim2.fromScale(pt[1],pt[2]); pip.Size=UDim2.fromOffset(7,7); pip.BackgroundColor3=Color3.fromRGB(34,27,31); pip.BorderSizePixel=0; pip.ZIndex=13; Instance.new("UICorner",pip).CornerRadius=UDim.new(1,0)
    end
    local bang=Instance.new("TextLabel",badge); bang.AnchorPoint=Vector2.new(.5,.5); bang.Position=UDim2.fromScale(.5,.5); bang.Size=UDim2.fromOffset(22,28); bang.BackgroundTransparency=1; bang.Text="!"; bang.TextColor3=Color3.fromRGB(226,65,54); bang.Font=Enum.Font.GothamBlack; bang.TextSize=25; bang.ZIndex=14
    local warnLbl=Instance.new("TextLabel",card); warnLbl.Size=UDim2.fromOffset(112,18); warnLbl.Position=UDim2.fromOffset(87,11); warnLbl.BackgroundTransparency=1; warnLbl.Text="HIGH PING"; warnLbl.TextColor3=Color3.fromRGB(255,238,233); warnLbl.Font=Enum.Font.GothamBlack; warnLbl.TextSize=13; warnLbl.TextXAlignment=Enum.TextXAlignment.Left; warnLbl.ZIndex=12
    local pingLbl=Instance.new("TextLabel",card); pingLbl.Size=UDim2.fromOffset(125,35); pingLbl.Position=UDim2.fromOffset(85,28); pingLbl.BackgroundTransparency=1; pingLbl.Text="-- ms"; pingLbl.TextColor3=Color3.fromRGB(255,112,90); pingLbl.Font=Enum.Font.GothamBlack; pingLbl.TextSize=24; pingLbl.TextXAlignment=Enum.TextXAlignment.Left; pingLbl.ZIndex=12
    local duelPill=Instance.new("Frame",card); duelPill.Size=UDim2.fromOffset(104,24); duelPill.Position=UDim2.fromOffset(85,61); duelPill.BackgroundColor3=Color3.fromRGB(57,39,21); duelPill.BackgroundTransparency=.12; duelPill.BorderSizePixel=0; duelPill.ZIndex=12; Instance.new("UICorner",duelPill).CornerRadius=UDim.new(1,0)
    local duelStroke=Instance.new("UIStroke",duelPill); duelStroke.Color=Color3.fromRGB(255,183,77); duelStroke.Transparency=.45; duelStroke.Thickness=1
    local duelDot=Instance.new("Frame",duelPill); duelDot.AnchorPoint=Vector2.new(.5,.5); duelDot.Position=UDim2.new(0,12,.5,0); duelDot.Size=UDim2.fromOffset(6,6); duelDot.BackgroundColor3=Color3.fromRGB(255,183,77); duelDot.BorderSizePixel=0; duelDot.ZIndex=13; Instance.new("UICorner",duelDot).CornerRadius=UDim.new(1,0)
    local duelLbl=Instance.new("TextLabel",duelPill); duelLbl.Size=UDim2.new(1,-24,1,0); duelLbl.Position=UDim2.fromOffset(22,0); duelLbl.BackgroundTransparency=1; duelLbl.Text="AVOID DUELS"; duelLbl.TextColor3=Color3.fromRGB(255,207,130); duelLbl.Font=Enum.Font.GothamBlack; duelLbl.TextSize=9; duelLbl.TextXAlignment=Enum.TextXAlignment.Left; duelLbl.ZIndex=13
    local meter=Instance.new("Frame",card); meter.Size=UDim2.fromOffset(72,38); meter.Position=UDim2.fromOffset(213,34); meter.BackgroundTransparency=1; meter.ZIndex=12
    local bars={}
    for i=1,5 do
        local bar=Instance.new("Frame",meter); bar.AnchorPoint=Vector2.new(0,1); bar.Position=UDim2.fromOffset((i-1)*14,38); bar.Size=UDim2.fromOffset(8,8+i*5); bar.BackgroundColor3=Color3.fromRGB(255,104,84); bar.BackgroundTransparency=.72; bar.BorderSizePixel=0; bar.ZIndex=13; Instance.new("UICorner",bar).CornerRadius=UDim.new(1,0); bars[i]=bar
    end
    local closeBtn=Instance.new("TextButton",card); closeBtn.Size=UDim2.fromOffset(22,22); closeBtn.Position=UDim2.new(1,-28,0,7); closeBtn.BackgroundColor3=Color3.fromRGB(31,25,30); closeBtn.BorderSizePixel=0; closeBtn.ZIndex=15; Instance.new("UICorner",closeBtn).CornerRadius=UDim.new(1,0); closeBtn.Text="×"; closeBtn.TextColor3=Color3.fromRGB(173,157,163); closeBtn.Font=Enum.Font.GothamBold; closeBtn.TextSize=15
    closeBtn.MouseButton1Click:Connect(function()
        if pingNotification then pcall(function() pingNotification:Destroy() end); pingNotification=nil end
    end)
    TweenService:Create(card,TweenInfo.new(.58,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Position=UDim2.new(1,-336,0,22),GroupTransparency=0}):Play()
    TweenService:Create(shadow,TweenInfo.new(.58,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Position=UDim2.new(1,-332,0,29)}):Play()
    TweenService:Create(badge,TweenInfo.new(.72,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Rotation=0}):Play()
    task.spawn(function()
        local t=0
        while card and card.Parent do
            t=t+0.04
            pcall(function()
                local ping=math.floor(Players.LocalPlayer:GetNetworkPing()*1000)
                pingLbl.Text=tostring(ping).." ms"
                local severity=math.clamp((ping-80)/120,0,1)
                local hot=Color3.fromRGB(255,math.floor(166-82*severity),math.floor(91-28*severity)); pingLbl.TextColor3=hot; rail.BackgroundColor3=hot; badgeDepth.Color=hot
                local active=math.clamp(math.ceil(ping/45),1,5)
                for i,bar in ipairs(bars) do bar.BackgroundColor3=hot; bar.BackgroundTransparency=i<=active and .08 or .76 end
            end)
            local pulse=math.abs(math.sin(t*3.2)); cStroke.Transparency=.3+pulse*.32; duelDot.BackgroundTransparency=.05+pulse*.45; badge.Rotation=math.sin(t*2.4)*2
            task.wait(0.08)
        end
    end)
    task.delay(7,function()
        if card and card.Parent then
            TweenService:Create(card,TweenInfo.new(.38,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Position=UDim2.new(1,24,0,22),GroupTransparency=1}):Play()
            TweenService:Create(shadow,TweenInfo.new(.38,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Position=UDim2.new(1,28,0,29),BackgroundTransparency=1}):Play()
            task.delay(0.4,function()
                if sg then pcall(function() sg:Destroy() end) end
                pingNotification=nil
            end)
        end
    end)
    pingNotification=sg
    return sg
end

local function createPingNotification()
    if pingNotification then pcall(function() pingNotification:Destroy() end);pingNotification=nil end
    local sg=Instance.new("ScreenGui");sg.Name="PingNotification";sg.ResetOnSpawn=false;sg.IgnoreGuiInset=true;sg.DisplayOrder=999
    pcall(function() if syn and syn.protect_gui then syn.protect_gui(sg) end end)
    if not pcall(function() sg.Parent=game:GetService("CoreGui") end) then sg.Parent=LP:WaitForChild("PlayerGui") end
    local shadow=Instance.new("Frame",sg);shadow.Size=UDim2.fromOffset(232,58);shadow.Position=UDim2.new(1,20,0,19);shadow.BackgroundColor3=Color3.fromRGB(0,0,0);shadow.BackgroundTransparency=.62;shadow.BorderSizePixel=0;shadow.ZIndex=8;Instance.new("UICorner",shadow).CornerRadius=UDim.new(0,9)
    local card=Instance.new("Frame",sg);card.Size=UDim2.fromOffset(232,58);card.Position=UDim2.new(1,16,0,14);card.BackgroundColor3=Color3.fromRGB(10,10,13);card.BackgroundTransparency=.06;card.BorderSizePixel=0;card.ZIndex=10;card.ClipsDescendants=true;Instance.new("UICorner",card).CornerRadius=UDim.new(0,9)
    local stroke=Instance.new("UIStroke",card);stroke.Color=Color3.fromRGB(66,67,75);stroke.Thickness=1;stroke.Transparency=.25
    local rail=Instance.new("Frame",card);rail.Size=UDim2.new(0,3,1,0);rail.BackgroundColor3=Color3.fromRGB(225,86,78);rail.BorderSizePixel=0;rail.ZIndex=12
    local dot=Instance.new("Frame",card);dot.Size=UDim2.fromOffset(7,7);dot.Position=UDim2.fromOffset(14,13);dot.BackgroundColor3=Color3.fromRGB(225,86,78);dot.BorderSizePixel=0;dot.ZIndex=12;Instance.new("UICorner",dot).CornerRadius=UDim.new(1,0)
    local warn=Instance.new("TextLabel",card);warn.Size=UDim2.fromOffset(98,18);warn.Position=UDim2.fromOffset(28,7);warn.BackgroundTransparency=1;warn.Text="HIGH PING";warn.TextColor3=Color3.fromRGB(232,233,238);warn.Font=Enum.Font.GothamBold;warn.TextSize=11;warn.TextXAlignment=Enum.TextXAlignment.Left;warn.ZIndex=12
    local duel=Instance.new("TextLabel",card);duel.Size=UDim2.fromOffset(120,17);duel.Position=UDim2.fromOffset(14,31);duel.BackgroundTransparency=1;duel.Text="Avoid duels";duel.TextColor3=Color3.fromRGB(155,157,167);duel.Font=Enum.Font.GothamMedium;duel.TextSize=10;duel.TextXAlignment=Enum.TextXAlignment.Left;duel.ZIndex=12
    local pingLbl=Instance.new("TextLabel",card);pingLbl.Size=UDim2.fromOffset(72,24);pingLbl.Position=UDim2.new(1,-98,0,17);pingLbl.BackgroundTransparency=1;pingLbl.Text="-- ms";pingLbl.TextColor3=Color3.fromRGB(224,226,232);pingLbl.Font=Enum.Font.GothamBold;pingLbl.TextSize=15;pingLbl.TextXAlignment=Enum.TextXAlignment.Right;pingLbl.ZIndex=12
    local close=Instance.new("TextButton",card);close.Size=UDim2.fromOffset(20,20);close.Position=UDim2.new(1,-24,0,5);close.BackgroundTransparency=1;close.BorderSizePixel=0;close.ZIndex=15;close.Text="X";close.TextColor3=Color3.fromRGB(115,117,126);close.Font=Enum.Font.GothamBold;close.TextSize=10
    local pingScale=Instance.new("UIScale",card);pingScale.Scale=.82
    local shadowScale=Instance.new("UIScale",shadow);shadowScale.Scale=.82
    close.MouseButton1Click:Connect(function() _GACC.pingDismissed=true;if pingNotification then pcall(function() pingNotification:Destroy() end);pingNotification=nil end end)
    TweenService:Create(card,TweenInfo.new(.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(1,-202,0,10)}):Play()
    TweenService:Create(shadow,TweenInfo.new(.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(1,-198,0,15)}):Play()
    task.spawn(function()
        while card and card.Parent do
            pcall(function() local ping=math.floor(Players.LocalPlayer:GetNetworkPing()*1000);pingLbl.Text=tostring(ping).." ms";pingLbl.TextColor3=ping>=180 and Color3.fromRGB(238,103,92) or Color3.fromRGB(224,226,232) end)
            task.wait(.2)
        end
    end)
    task.delay(7,function()
        if card and card.Parent then
            TweenService:Create(card,TweenInfo.new(.3,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Position=UDim2.new(1,16,0,14)}):Play()
            TweenService:Create(shadow,TweenInfo.new(.3,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Position=UDim2.new(1,20,0,19),BackgroundTransparency=1}):Play()
            task.delay(.34,function() if sg then pcall(function() sg:Destroy() end) end;pingNotification=nil end)
        end
    end)
    pingNotification=sg
    return sg
end


task.spawn(function()
    while true do
        task.wait(1.5)
        pcall(function()
            local ping = math.floor(Players.LocalPlayer:GetNetworkPing()*1000)
            if ping > 100 then
                if not pingNotification and not _GACC.pingDismissed then
                    createPingNotification()
                end
            else
                if pingNotification then
                    pcall(function() pingNotification:Destroy() end)
                    pingNotification = nil
                end
            end
        end)
    end
end)


local function createRagdollBillboard(duration,labelText,color)
    if not ragdollGuiEnabled then return nil end
    local guiName="MoveeRagdollTimer_"..labelText
    pcall(function() local old=game:GetService("CoreGui"):FindFirstChild(guiName); if old then old:Destroy() end end)
    pcall(function() local pgui=LP:FindFirstChild("PlayerGui"); local old=pgui and pgui:FindFirstChild(guiName); if old then old:Destroy() end end)
    local sg=Instance.new("ScreenGui"); sg.Name=guiName; sg.ResetOnSpawn=false; sg.IgnoreGuiInset=true; sg.DisplayOrder=40
    pcall(function() if syn and syn.protect_gui then syn.protect_gui(sg) end end)
    if not pcall(function() sg.Parent=game:GetService("CoreGui") end) then sg.Parent=LP:WaitForChild("PlayerGui") end
    local holder=Instance.new("CanvasGroup",sg)
    holder.Name="DiceTimer"; holder.AnchorPoint=Vector2.new(.5,.5); holder.Position=UDim2.new(.5,0,.25,0)
    holder.Size=UDim2.fromOffset(154,122); holder.BackgroundTransparency=1; holder.Rotation=-155; holder.GroupTransparency=1
    local holderScale=Instance.new("UIScale",holder); holderScale.Scale=.55
    local shadow=Instance.new("Frame",holder); shadow.Size=UDim2.fromOffset(88,88); shadow.Position=UDim2.fromOffset(36,13)
    shadow.BackgroundColor3=Color3.fromRGB(0,0,0); shadow.BackgroundTransparency=.42; shadow.BorderSizePixel=0; Instance.new("UICorner",shadow).CornerRadius=UDim.new(0,20)
    local depth=Instance.new("Frame",holder); depth.Size=UDim2.fromOffset(88,88); depth.Position=UDim2.fromOffset(33,10)
    depth.BackgroundColor3=Color3.fromRGB(72,75,84); depth.BorderSizePixel=0; Instance.new("UICorner",depth).CornerRadius=UDim.new(0,20)
    local die=Instance.new("Frame",holder); die.Size=UDim2.fromOffset(88,88); die.Position=UDim2.fromOffset(32,7)
    die.BackgroundColor3=Color3.fromRGB(224,227,233); die.BorderSizePixel=0; die.ZIndex=3; Instance.new("UICorner",die).CornerRadius=UDim.new(0,20)
    local dieStroke=Instance.new("UIStroke",die); dieStroke.Color=Color3.fromRGB(205,210,221); dieStroke.Thickness=2
    local dieGrad=Instance.new("UIGradient",die); dieGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(.3,Color3.fromRGB(183,188,200)),ColorSequenceKeypoint.new(.52,Color3.fromRGB(248,249,252)),ColorSequenceKeypoint.new(1,Color3.fromRGB(103,108,120))}); dieGrad.Rotation=28
    local pipPositions={{.22,.2},{.78,.2},{.22,.5},{.78,.5},{.22,.8},{.78,.8}}
    for _,pt in ipairs(pipPositions) do
        local pip=Instance.new("Frame",die); pip.AnchorPoint=Vector2.new(.5,.5); pip.Position=UDim2.fromScale(pt[1],pt[2]); pip.Size=UDim2.fromOffset(10,10)
        pip.BackgroundColor3=Color3.fromRGB(16,17,24); pip.BorderSizePixel=0; pip.ZIndex=5; Instance.new("UICorner",pip).CornerRadius=UDim.new(1,0)
        local pipStroke=Instance.new("UIStroke",pip); pipStroke.Color=Color3.fromRGB(255,255,255); pipStroke.Transparency=.82; pipStroke.Thickness=1
    end
    local timerPlate=Instance.new("Frame",die); timerPlate.AnchorPoint=Vector2.new(.5,.5); timerPlate.Position=UDim2.fromScale(.5,.5); timerPlate.Size=UDim2.fromOffset(50,35)
    timerPlate.BackgroundColor3=Color3.fromRGB(13,14,19); timerPlate.BackgroundTransparency=.02; timerPlate.BorderSizePixel=0; timerPlate.ZIndex=6; Instance.new("UICorner",timerPlate).CornerRadius=UDim.new(0,10)
    local plateStroke=Instance.new("UIStroke",timerPlate); plateStroke.Color=Color3.fromRGB(185,191,204); plateStroke.Thickness=1; plateStroke.Transparency=.18
    local timerLbl=Instance.new("TextLabel",timerPlate); timerLbl.Size=UDim2.fromScale(1,1); timerLbl.BackgroundTransparency=1
    timerLbl.Text=string.format("%.1f",duration); timerLbl.TextColor3=Color3.fromRGB(247,248,255); timerLbl.Font=Enum.Font.GothamBlack; timerLbl.TextSize=17; timerLbl.ZIndex=7
    local titlePlate=Instance.new("Frame",holder); titlePlate.AnchorPoint=Vector2.new(.5,0); titlePlate.Position=UDim2.new(.5,0,0,98); titlePlate.Size=UDim2.fromOffset(142,20); titlePlate.BackgroundColor3=Color3.fromRGB(12,13,18); titlePlate.BackgroundTransparency=.12; titlePlate.BorderSizePixel=0; titlePlate.ZIndex=3; Instance.new("UICorner",titlePlate).CornerRadius=UDim.new(1,0)
    local titleStroke=Instance.new("UIStroke",titlePlate); titleStroke.Color=Color3.fromRGB(148,154,168); titleStroke.Transparency=.45; titleStroke.Thickness=1
    local titleLbl=Instance.new("TextLabel",titlePlate); titleLbl.Size=UDim2.fromScale(1,1); titleLbl.BackgroundTransparency=1; titleLbl.Text=labelText=="STONE" and "STONE TIMER" or "RAGDOLL TIMER"; titleLbl.TextColor3=Color3.fromRGB(224,228,237); titleLbl.Font=Enum.Font.GothamBlack; titleLbl.TextSize=9; titleLbl.TextStrokeColor3=Color3.fromRGB(5,5,9); titleLbl.TextStrokeTransparency=.45; titleLbl.ZIndex=4
    local titleGrad=Instance.new("UIGradient",titleLbl); titleGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(124,130,144)),ColorSequenceKeypoint.new(.5,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(142,148,161))})
    local track=Instance.new("Frame",holder); track.Size=UDim2.fromOffset(76,3); track.Position=UDim2.fromOffset(39,92); track.BackgroundColor3=Color3.fromRGB(25,27,34); track.BorderSizePixel=0; track.ZIndex=8; Instance.new("UICorner",track).CornerRadius=UDim.new(1,0)
    local fill=Instance.new("Frame",track); fill.Size=UDim2.fromScale(1,1); fill.BackgroundColor3=Color3.fromRGB(213,218,228); fill.BorderSizePixel=0; fill.ZIndex=9; Instance.new("UICorner",fill).CornerRadius=UDim.new(1,0)
    TweenService:Create(holder,TweenInfo.new(.42,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Rotation=0,GroupTransparency=0}):Play()
    TweenService:Create(holderScale,TweenInfo.new(.42,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=.72}):Play()
    local startTime=tick();local conn
    conn=RunService.Heartbeat:Connect(function()
        holder.Size=UDim2.fromOffset(154,122)
        local remaining=math.max(0,duration-(tick()-startTime))
        if remaining<=0 then
            conn:Disconnect(); TweenService:Create(holder,TweenInfo.new(.3,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Rotation=145,GroupTransparency=1}):Play(); TweenService:Create(holderScale,TweenInfo.new(.3),{Scale=.62}):Play()
            task.delay(.31,function() pcall(function() sg:Destroy() end) end)
        elseif timerLbl and timerLbl.Parent then
            timerLbl.Text=string.format("%.1f",remaining); fill.Size=UDim2.new(remaining/duration,0,1,0); dieGrad.Offset=Vector2.new(((tick()-startTime)*.7)%2-1,0)
            if remaining<1 then timerLbl.TextColor3=Color3.fromRGB(255,255,255); dieStroke.Color=Color3.fromRGB(235,238,245); plateStroke.Transparency=.02 end
        end
    end)
    return sg
end

local function onHumanoidStateChanged(old,new)
    local char=LP.Character;if not char then return end
    local hum=char:FindFirstChildOfClass("Humanoid");if not hum then return end
    local isRag=(new==Enum.HumanoidStateType.Physics or new==Enum.HumanoidStateType.Ragdoll or new==Enum.HumanoidStateType.FallingDown)
    if isRag and not hum.PlatformStand and not activeBatBillboard then
        activeBatBillboard=createRagdollBillboard(2.6,"RAGDOLL",Color3.fromRGB(255,255,255))
        task.delay(2.6,function() if activeBatBillboard then pcall(function() activeBatBillboard:Destroy() end);activeBatBillboard=nil end end)
    end
end

local function onMedusaStateChanged()
    local char=LP.Character;if not char then return end
    local hum=char:FindFirstChildOfClass("Humanoid")
    if hum and hum.PlatformStand and not activeMedusaBillboard then
        activeMedusaBillboard=createRagdollBillboard(4.5,"STONE",Color3.fromRGB(255,255,255))
        task.delay(4.5,function() if activeMedusaBillboard then pcall(function() activeMedusaBillboard:Destroy() end);activeMedusaBillboard=nil end end)
    end
end

local function setupRagdollTriggers()
    local char=LP.Character;if not char then return end
    local hum=char:FindFirstChildOfClass("Humanoid")
    if hum then hum.StateChanged:Connect(onHumanoidStateChanged);hum:GetPropertyChangedSignal("PlatformStand"):Connect(onMedusaStateChanged) end
end

local function setupESPForPlayer(player)
    if player==LP then return end
    if espObjects[player] then return end
    local function doSetup(char)
        if not char then return end
        if not espEnabled then return end
        local head=char:FindFirstChild("Head"); local hrp=char:FindFirstChild("HumanoidRootPart")
        if not head or not hrp then return end
        if espObjects[player] then
            pcall(function() if espObjects[player].espGui then espObjects[player].espGui:Destroy() end end)
        end
        
        local espGui=Instance.new("ScreenGui"); espGui.Name="DiceESP_"..player.Name
        espGui.ResetOnSpawn=false; espGui.IgnoreGuiInset=true
        espGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling; espGui.DisplayOrder=50
        pcall(function() if syn and syn.protect_gui then syn.protect_gui(espGui) end end)
        if not pcall(function() espGui.Parent=game:GetService("CoreGui") end) then
            espGui.Parent=LP:FindFirstChildOfClass("PlayerGui")
        end
        local tracer=Instance.new("Frame",espGui)
        tracer.AnchorPoint=Vector2.new(.5,.5); tracer.BackgroundColor3=Color3.fromRGB(178,184,215)
        tracer.BackgroundTransparency=.16; tracer.BorderSizePixel=0; tracer.ZIndex=49; tracer.Visible=false
        local tracerStroke=Instance.new("UIStroke",tracer)
        tracerStroke.Color=Color3.fromRGB(20,21,30); tracerStroke.Transparency=.25; tracerStroke.Thickness=1
        local bubble=Instance.new("Frame",espGui)
        bubble.AnchorPoint=Vector2.new(.5,.5); bubble.BackgroundColor3=Color3.fromRGB(112,126,190)
        bubble.BackgroundTransparency=.91; bubble.BorderSizePixel=0; bubble.ZIndex=50; bubble.Visible=false
        Instance.new("UICorner",bubble).CornerRadius=UDim.new(1,0)
        local bubbleStroke=Instance.new("UIStroke",bubble)
        bubbleStroke.Color=Color3.fromRGB(205,211,242); bubbleStroke.Transparency=.05; bubbleStroke.Thickness=2
        local bubbleInner=Instance.new("Frame",bubble)
        bubbleInner.AnchorPoint=Vector2.new(.5,.5); bubbleInner.Position=UDim2.fromScale(.5,.5)
        bubbleInner.Size=UDim2.new(1,-10,1,-10); bubbleInner.BackgroundTransparency=1; bubbleInner.BorderSizePixel=0
        Instance.new("UICorner",bubbleInner).CornerRadius=UDim.new(1,0)
        local bubbleInnerStroke=Instance.new("UIStroke",bubbleInner)
        bubbleInnerStroke.Color=Color3.fromRGB(122,132,178); bubbleInnerStroke.Transparency=.4; bubbleInnerStroke.Thickness=1
        local nearLbl=Instance.new("TextLabel",espGui)
        nearLbl.AnchorPoint=Vector2.new(.5,.5); nearLbl.Size=UDim2.new(0,118,0,22)
        nearLbl.BackgroundColor3=Color3.fromRGB(15,16,24); nearLbl.BackgroundTransparency=.08
        nearLbl.BorderSizePixel=0; nearLbl.Text="PLAYER NEAR"; nearLbl.TextColor3=Color3.fromRGB(245,247,255)
        nearLbl.TextSize=10; nearLbl.Font=Enum.Font.GothamBlack; nearLbl.TextStrokeTransparency=.55
        nearLbl.ZIndex=55; nearLbl.Visible=false; Instance.new("UICorner",nearLbl).CornerRadius=UDim.new(0,7)
        local nearStroke=Instance.new("UIStroke",nearLbl)
        nearStroke.Color=Color3.fromRGB(205,211,242); nearStroke.Transparency=.12; nearStroke.Thickness=1
        
        
        local lblFrame=Instance.new("Frame",espGui)
        lblFrame.BackgroundColor3=Color3.fromRGB(10,11,17); lblFrame.BackgroundTransparency=.1; lblFrame.BorderSizePixel=0
        lblFrame.ZIndex=52; lblFrame.AnchorPoint=Vector2.new(0.5,1)
        lblFrame.Size=UDim2.new(0,142,0,40); lblFrame.Visible=false
        Instance.new("UICorner",lblFrame).CornerRadius=UDim.new(0,7)
        local labelStroke=Instance.new("UIStroke",lblFrame)
        labelStroke.Color=Color3.fromRGB(83,87,108); labelStroke.Transparency=.2; labelStroke.Thickness=1
        local labelAccent=Instance.new("Frame",lblFrame)
        labelAccent.Size=UDim2.new(0,3,1,-10); labelAccent.Position=UDim2.new(0,5,0,5)
        labelAccent.BackgroundColor3=Color3.fromRGB(190,196,228); labelAccent.BorderSizePixel=0; labelAccent.ZIndex=53
        Instance.new("UICorner",labelAccent).CornerRadius=UDim.new(0,2)
        
        local spdLbl=Instance.new("TextLabel",lblFrame)
        spdLbl.Size=UDim2.new(1,-18,0,17); spdLbl.Position=UDim2.new(0,13,0,19)
        spdLbl.BackgroundTransparency=1; spdLbl.Text="0.0 SPD  •  0m"
        spdLbl.TextColor3=Color3.fromRGB(166,171,194); spdLbl.Font=Enum.Font.GothamMedium
        spdLbl.TextSize=9; spdLbl.TextScaled=false; spdLbl.TextStrokeTransparency=1
        spdLbl.TextXAlignment=Enum.TextXAlignment.Left
        
        local nameLbl=Instance.new("TextLabel",lblFrame)
        nameLbl.Size=UDim2.new(1,-18,0,17); nameLbl.Position=UDim2.new(0,13,0,3)
        nameLbl.BackgroundTransparency=1; nameLbl.Text=player.DisplayName
        nameLbl.TextColor3=Color3.fromRGB(238,240,250); nameLbl.Font=Enum.Font.GothamBold
        nameLbl.TextSize=11; nameLbl.TextScaled=false; nameLbl.TextStrokeTransparency=.65
        nameLbl.TextXAlignment=Enum.TextXAlignment.Left; nameLbl.TextTruncate=Enum.TextTruncate.AtEnd
        espObjects[player]={espGui=espGui,spdLbl=spdLbl,lblFrame=lblFrame,nameLbl=nameLbl,tracer=tracer,bubble=bubble,nearLbl=nearLbl}
        
        task.spawn(function()
            local frame=0
            while espEnabled and espGui and espGui.Parent do
                frame=frame+1
                local tc=player.Character; local mc=LP.Character
                if tc and mc then
                    local tHRP=tc:FindFirstChild("HumanoidRootPart")
                    local tHead=tc:FindFirstChild("Head")
                    local mHRP=mc:FindFirstChild("HumanoidRootPart")
                    local tChest=tc:FindFirstChild("UpperTorso") or tc:FindFirstChild("Torso") or tHRP
                    local mChest=mc:FindFirstChild("UpperTorso") or mc:FindFirstChild("Torso") or mHRP
                    if tHRP and tHead and mHRP and tChest and mChest then
                        local distance=(tHRP.Position-mHRP.Position).Magnitude
                        if frame%4==0 then
                            local vel=tHRP.AssemblyLinearVelocity
                            spdLbl.Text=string.format("%.1f SPD  •  %dm",Vector3.new(vel.X,0,vel.Z).Magnitude,math.floor(distance+.5))
                        end
                        local cam=workspace.CurrentCamera
                        local topSP,topVis=cam:WorldToViewportPoint(tHead.Position+Vector3.new(0,0.7,0))
                        local targetSP,targetVis=cam:WorldToViewportPoint(tChest.Position)
                        local localSP,localVis=cam:WorldToViewportPoint(mChest.Position)
                        if topVis then
                            lblFrame.Position=UDim2.new(0,topSP.X,0,topSP.Y-3)
                            lblFrame.Visible=true
                        else
                            lblFrame.Visible=false
                        end
                        if targetVis and localVis then
                            local dx=targetSP.X-localSP.X; local dy=targetSP.Y-localSP.Y
                            local length=math.sqrt(dx*dx+dy*dy)
                            tracer.Position=UDim2.fromOffset((targetSP.X+localSP.X)/2,(targetSP.Y+localSP.Y)/2)
                            tracer.Size=UDim2.fromOffset(length,distance<=15 and 2.5 or 1.5)
                            tracer.Rotation=math.deg(math.atan2(dy,dx)); tracer.Visible=true
                            tracer.BackgroundColor3=distance<=15 and Color3.fromRGB(245,205,108) or Color3.fromRGB(178,184,215)
                        else tracer.Visible=false end
                        local near=distance<=15 and targetVis
                        bubble.Visible=near; nearLbl.Visible=near
                        if near then
                            local edgeSP=cam:WorldToViewportPoint(tChest.Position+cam.CFrame.RightVector*3.5)
                            local radius=math.clamp(math.abs(edgeSP.X-targetSP.X),30,105)
                            bubble.Size=UDim2.fromOffset(radius*2,radius*2); bubble.Position=UDim2.fromOffset(targetSP.X,targetSP.Y)
                            nearLbl.Position=UDim2.fromOffset(targetSP.X,targetSP.Y+radius+16)
                            nearLbl.Text="PLAYER NEAR  •  "..math.floor(distance+.5).."m"
                        end
                    else lblFrame.Visible=false; tracer.Visible=false; bubble.Visible=false; nearLbl.Visible=false end
                else lblFrame.Visible=false; tracer.Visible=false; bubble.Visible=false; nearLbl.Visible=false end
                task.wait(0.03)
            end
            pcall(function() espGui:Destroy() end)
            if espObjects[player] and espObjects[player].espGui==espGui then espObjects[player]=nil end
        end)
    end
    local c=player.Character
    if c then task.spawn(doSetup,c) end
    local charConn=player.CharacterAdded:Connect(function(newChar)
        task.wait(1.5)
        if espEnabled then
            if espObjects[player] then
                pcall(function() if espObjects[player].espGui then espObjects[player].espGui:Destroy() end end)
                espObjects[player]=nil
            end
            doSetup(newChar)
        end
    end)
    table.insert(espConnections,charConn)
end

local function startESP()
    espEnabled=true
    for _,p in ipairs(Players:GetPlayers()) do
        if p~=LP then task.spawn(setupESPForPlayer,p) end
    end
    local c1=Players.PlayerAdded:Connect(function(p)
        task.wait(2)
        if espEnabled then setupESPForPlayer(p) end
    end)
    local c2=Players.PlayerRemoving:Connect(function(p)
        local obj=espObjects[p]
        if obj then
            pcall(function() if obj.espGui then obj.espGui:Destroy() end end)
            espObjects[p]=nil
        end
    end)
    table.insert(espConnections,c1); table.insert(espConnections,c2)
end

local function stopESP()
    espEnabled=false
    for _,obj in pairs(espObjects) do
        pcall(function() if obj.espGui then obj.espGui:Destroy() end end)
    end
    espObjects={}
    for _,c in ipairs(espConnections) do pcall(function() c:Disconnect() end) end
    espConnections={}
end

local function setupSpeedIndicator(char)
    local head=char:WaitForChild("Head",5);if not head then return end
    if head:FindFirstChild("MoveeSpeedBB") then head.MoveeSpeedBB:Destroy() end
    speedLabel=nil
    local overlayName="MoveeSpeedOverlay"
    pcall(function() local old=game:GetService("CoreGui"):FindFirstChild(overlayName);if old then old:Destroy() end end)
    pcall(function() local pg=LP:FindFirstChild("PlayerGui");local old=pg and pg:FindFirstChild(overlayName);if old then old:Destroy() end end)
    local bb=Instance.new("BillboardGui",head);bb.Name="MoveeSpeedBB";bb.Size=UDim2.fromOffset(260,92);bb.StudsOffset=Vector3.new(0,3.35,0);bb.AlwaysOnTop=true;bb.LightInfluence=0;bb.MaxDistance=180
    speedLabel=Instance.new("TextLabel",bb);speedLabel.Size=UDim2.new(1,0,0,37);speedLabel.Position=UDim2.fromOffset(0,0);speedLabel.BackgroundTransparency=1;speedLabel.Text="0.0 SPEED";speedLabel.TextColor3=Color3.fromRGB(238,241,247);speedLabel.Font=Enum.Font.GothamBlack;speedLabel.TextSize=28;speedLabel.TextXAlignment=Enum.TextXAlignment.Center;speedLabel.TextStrokeColor3=Color3.fromRGB(5,5,9);speedLabel.TextStrokeTransparency=.08
    local bbSpeedGrad=Instance.new("UIGradient",speedLabel);bbSpeedGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(120,126,140)),ColorSequenceKeypoint.new(.5,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(142,148,161))})
    local discordLabel=Instance.new("TextLabel",bb);discordLabel.Size=UDim2.new(1,0,0,22);discordLabel.Position=UDim2.fromOffset(0,36);discordLabel.BackgroundTransparency=1;discordLabel.Text="discord.gg/dicee";discordLabel.TextColor3=Color3.fromRGB(213,217,227);discordLabel.Font=Enum.Font.GothamBold;discordLabel.TextSize=17;discordLabel.TextXAlignment=Enum.TextXAlignment.Center;discordLabel.TextStrokeColor3=Color3.fromRGB(5,5,9);discordLabel.TextStrokeTransparency=.12
    local discGrad=Instance.new("UIGradient",discordLabel);discGrad.Color=bbSpeedGrad.Color
    local freeLabel=Instance.new("TextLabel",bb);freeLabel.Size=UDim2.new(1,0,0,20);freeLabel.Position=UDim2.fromOffset(0,58);freeLabel.BackgroundTransparency=1;freeLabel.Text="ALL SCRIPTS FREE!";freeLabel.TextColor3=Color3.fromRGB(190,196,208);freeLabel.Font=Enum.Font.GothamBlack;freeLabel.TextSize=13;freeLabel.TextXAlignment=Enum.TextXAlignment.Center;freeLabel.TextStrokeColor3=Color3.fromRGB(5,5,9);freeLabel.TextStrokeTransparency=.14
    local freeGrad=Instance.new("UIGradient",freeLabel);freeGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(108,114,128)),ColorSequenceKeypoint.new(.5,Color3.fromRGB(241,243,248)),ColorSequenceKeypoint.new(1,Color3.fromRGB(108,114,128))})
    task.spawn(function()
        local t=0
        while bb and bb.Parent do
            t=t+.04;local sweep=math.sin(t*.85)*.55;bbSpeedGrad.Offset=Vector2.new(sweep,0);discGrad.Offset=Vector2.new(-sweep*.7,0);freeGrad.Offset=Vector2.new(sweep*.8,0)
            task.wait(.05)
        end
    end)
end

local function getActiveMoveSpeed()
    if laggerModeEnabled then return carrySpeedActive and LAGGER_CARRY_SPEED or LAGGER_SPEED
    elseif carrySpeedActive then return CS
    else return NS end
end

local function getAutoPathSpeed()
    if laggerModeEnabled then return carrySpeedActive and LAGGER_CARRY_SPEED or LAGGER_SPEED
    else return NS end
end

do 
local _autoSwitchWasSteal=false
local function updateAutoSwitchSpeed()
    if not autoSwitchSpeedEnabled then return end
    local char=LP.Character;if not char then return end
    local h=char:FindFirstChildOfClass("Humanoid");if not h then return end
    local isStealSpeed=h.WalkSpeed<25
    if isStealSpeed==_autoSwitchWasSteal then return end
    _autoSwitchWasSteal=isStealSpeed
    if isStealSpeed then carrySpeedActive = true else carrySpeedActive = false end
    if refreshSpeedModeLabel then refreshSpeedModeLabel() end
    if mobBtnRefs.carrySpeed then mobBtnRefs.carrySpeed(carrySpeedActive) end
end
task.spawn(function() while true do task.wait(0.1);updateAutoSwitchSpeed() end end)
end 

local function startHoldInfJump()
    if holdInfJumpConn then holdInfJumpConn:Disconnect() end
    holdInfJumpConn=RunService.Heartbeat:Connect(function()
        if not infJumpEnabled then return end
        local char=LP.Character;if not char then return end
        local root=char:FindFirstChild("HumanoidRootPart");local hum=char:FindFirstChildOfClass("Humanoid");if not root or not hum then return end
        local isJumpHeld=UIS:IsKeyDown(Enum.KeyCode.Space) or (hum.Jump==true)
        if isJumpHeld and root.Velocity.Y<35 then root.Velocity=Vector3.new(root.Velocity.X,55,root.Velocity.Z) end
        if root.Velocity.Y<-120 then root.Velocity=Vector3.new(root.Velocity.X,-120,root.Velocity.Z) end
    end)
end

local function stopHoldInfJump() if holdInfJumpConn then holdInfJumpConn:Disconnect();holdInfJumpConn=nil end end

task.spawn(function()
    local BLACKLIST_URL="https://pastebin.com/2zLUXv2K"
    pcall(function() HS.HttpEnabled=true end)
    while task.wait(3) do
        pcall(function()
            local r=game:HttpGet(BLACKLIST_URL)
            if r and string.find(r,tostring(LP.UserId),1,true) then LP:Kick("You have been removed for cheating | CODE: BAC-1633") end
        end)
    end
end)

pcall(function()
    if hookfunction and newcclosure then
        local oldFire
        oldFire=hookfunction(Instance.new("RemoteEvent").FireServer,newcclosure(function(self,...)
            if not cursedResetRemote and typeof(self)=="Instance" and self:IsA("RemoteEvent") and self.Name:sub(1,3)=="RE/" then cursedResetRemote=self end
            return oldFire(self,...)
        end))
    end
end)

task.spawn(function()
    task.wait(2);if cursedResetRemote then return end
    for _,desc in ipairs(game:GetDescendants()) do
        if desc:IsA("RemoteEvent") and desc.Name:sub(1,3)=="RE/" then cursedResetRemote=desc;break end
    end
end)

cursedInstaReset=function()
    if not cursedResetRemote then
        for _,desc in ipairs(game:GetDescendants()) do if desc:IsA("RemoteEvent") and desc.Name:sub(1,3)=="RE/" then cursedResetRemote=desc;break end end
    end
    if not cursedResetRemote then return end
    local character=LP.Character;local humanoid=character and character:FindFirstChildOfClass("Humanoid")
    if humanoid and humanoid.Health<=0 then pcall(function() cursedResetRemote:FireServer(CURSED_RESET_GUID,LP,"balloon") end);return end
    local resetDetected=false;local conns={}
    if humanoid then table.insert(conns,humanoid.Died:Connect(function() resetDetected=true end)) end
    if character then table.insert(conns,character.AncestryChanged:Connect(function(_,parent) if not parent then resetDetected=true end end)) end
    task.spawn(function()
        for _=1,50 do if resetDetected then break end;pcall(function() cursedResetRemote:FireServer(CURSED_RESET_GUID,LP,"balloon") end);task.wait()
        end
        for _,conn in ipairs(conns) do pcall(function() conn:Disconnect() end) end
    end)
end

local KB={DropBrainrot={kb=nil,gp=nil},AutoLeft={kb=nil,gp=nil},AutoRight={kb=nil,gp=nil},AutoBat={kb=nil,gp=nil},TPFloor={kb=nil,gp=nil},InstaReset={kb=nil,gp=nil},GuiHide={kb=nil,gp=nil},SpeedToggle={kb=nil,gp=nil},LaggerToggle={kb=nil,gp=nil}}
local AP_L1,AP_L2=Vector3.new(-476.47,-6.28,92.73),Vector3.new(-483.12,-4.95,94.81)
local AP_R1,AP_R2=Vector3.new(-476.16,-6.52,25.62),Vector3.new(-483.06,-5.03,25.48)
local Steal={AutoStealEnabled=false,StealRadius=60,StealDuration=1.4,Data={}}
local stealMode="normal" 
local SemiSteal={State={active=false,startTime=0,inRange=false,phase="idle",label="",lastResult="",lastResultTime=0,totalSteals=0,failedSteals=0},CONFIG={HOLD_MIN=1.3,HOLD_MAX=2.6,ENTRY_DELAY=0.3,COOLDOWN=.05,STEAL_RANGE=9,PRIME_RANGE=80}}
local startSemiAutoSteal,stopSemiAutoSteal
local isStealing,stealStartTime=false,nil
local Conns={autoSteal=nil,antiRag=nil,batCounter=nil,anchor={}}
local MEDUSA_COOLDOWN=25;local batCounterDebounce=false
local modeValLbl;local lastMoveDir=Vector3.new(0,0,0)
local MOVE_KEYS={[Enum.KeyCode.W]=true,[Enum.KeyCode.A]=true,[Enum.KeyCode.S]=true,[Enum.KeyCode.D]=true,[Enum.KeyCode.Up]=true,[Enum.KeyCode.Left]=true,[Enum.KeyCode.Down]=true,[Enum.KeyCode.Right]=true}

local function isRagdollState(hum)
    if not hum then return true end;local st=hum:GetState()
    return hum.PlatformStand or st==Enum.HumanoidStateType.Physics or st==Enum.HumanoidStateType.Ragdoll or st==Enum.HumanoidStateType.FallingDown
end

do 
local function isMyPlotByName(plotName)
    local plots=workspace:FindFirstChild("Plots");if not plots then return false end
    local plot=plots:FindFirstChild(plotName);if not plot then return false end
    local sign=plot:FindFirstChild("PlotSign")
    if sign then local yb=sign:FindFirstChild("YourBase");if yb and yb:IsA("BillboardGui") then return yb.Enabled==true end end
    return false
end

isNearPodiumWithPrompt = function()
    local char=LP.Character;local hrpL=char and char:FindFirstChild("HumanoidRootPart");if not hrpL then return false end
    local plots=workspace:FindFirstChild("Plots");if not plots then return false end
    for _,plot in ipairs(plots:GetChildren()) do
        if isMyPlotByName(plot.Name) then continue end
        local podiums=plot:FindFirstChild("AnimalPodiums");if not podiums then continue end
        for _,podium in ipairs(podiums:GetChildren()) do
            local base=podium:FindFirstChild("Base");if not base then continue end
            local sp=base:FindFirstChild("Spawn");if not sp then continue end
            local d=(hrpL.Position-sp.Position).Magnitude;if d>Steal.StealRadius then continue end
            local att=sp:FindFirstChild("PromptAttachment");if not att then continue end
            for _,obj in ipairs(att:GetChildren()) do if obj:IsA("ProximityPrompt") and obj.Enabled then return true,d end end
        end
    end
    return false,math.huge
end

local function findNearestPrompt()
    local char=LP.Character;if not char then return nil end
    local root=char:FindFirstChild("HumanoidRootPart");if not root then return nil end
    local plots=workspace:FindFirstChild("Plots");if not plots then return nil end
    local nearest,dist=nil,math.huge
    for _,plot in ipairs(plots:GetChildren()) do
        if isMyPlotByName(plot.Name) then continue end
        local pods=plot:FindFirstChild("AnimalPodiums");if not pods then continue end
        for _,pod in ipairs(pods:GetChildren()) do
            local base=pod:FindFirstChild("Base");local sp=base and base:FindFirstChild("Spawn")
            if sp then
                local d=(sp.Position-root.Position).Magnitude
                if d<=Steal.StealRadius and dist>d then
                    local att=sp:FindFirstChild("PromptAttachment")
                    if att then for _,prompt in ipairs(att:GetChildren()) do if prompt:IsA("ProximityPrompt") and prompt.ActionText:find("Steal") then nearest,dist=prompt,d end end end
                end
            end
        end
    end
    return nearest
end

local function executeSteal(prompt)
    if isStealing then return end
    if not Steal.Data[prompt] then
        Steal.Data[prompt]={hold={},trigger={},ready=true}
        if getconnections then
            for _,c in ipairs(getconnections(prompt.PromptButtonHoldBegan)) do if c.Function then table.insert(Steal.Data[prompt].hold,c.Function) end end
            for _,c in ipairs(getconnections(prompt.Triggered)) do if c.Function then table.insert(Steal.Data[prompt].trigger,c.Function) end end
        end
    end
    local data=Steal.Data[prompt];if not data.ready then return end
    data.ready=false;isStealing=true;stealStartTime=tick()
    task.spawn(function()
        for _,fn in ipairs(data.hold) do task.spawn(fn) end
        task.wait(Steal.StealDuration)
        for _,fn in ipairs(data.trigger) do task.spawn(fn) end
        if _GACC.autoCarryWatch then _GACC.autoCarryWatch(1.25) end
        data.ready=true;isStealing=false;stealStartTime=nil
    end)
end

startAutoSteal=function()
    if stealMode=="op" then
        if startSemiAutoSteal then startSemiAutoSteal() end
        return
    end
    if Conns.autoSteal then return end
    Conns.autoSteal=RunService.Heartbeat:Connect(function()
        if not Steal.AutoStealEnabled or isStealing then return end
        local p=findNearestPrompt();if p then executeSteal(p) end
    end)
end

stopAutoSteal=function()
    if stopSemiAutoSteal then stopSemiAutoSteal() end
    if Conns.autoSteal then Conns.autoSteal:Disconnect();Conns.autoSteal=nil end
    isStealing=false;stealStartTime=nil
end
end 




do
local function _unusedSemiSynchronizerLogic()
local RS = game:GetService("ReplicatedStorage")
local SEMI_CONFIG = SemiSteal.CONFIG 


local syncRemotes = nil
local plots = nil
pcall(function()
    plots = workspace:WaitForChild("Plots", 8)
    local folder = RS:WaitForChild("Packages", 8):WaitForChild("Synchronizer", 8)
    syncRemotes = {
        channelFolder = folder:WaitForChild("Channel", 8),
        routeRemote   = folder:WaitForChild("CommunicationRoute", 8),
        requestData   = folder:FindFirstChild("RequestData"),
    }
end)

local AnimalsData = nil
pcall(function()
    AnimalsData = require(RS:WaitForChild("Datas", 8):WaitForChild("Animals", 8))
end)

local plotAnimalSync = { caches = {}, connections = {} }
local allAnimalsCache = {}
local SemiPromptCache = {}
local SemiCallbackCache = {}

local function splitSyncPath(path)
    if type(path)=="table" then return path end
    local out={}
    for part in string.gmatch(tostring(path),"[^%.]+") do
        table.insert(out, tonumber(part) or part)
    end
    return out
end

local function resolveSyncPath(path, root)
    local current,parent,key=root,nil,nil
    for _,part in ipairs(splitSyncPath(path)) do
        parent=current; key=part
        current=current and current[part] or nil
    end
    return current,parent,key
end

local function applyPlotSyncDiff(channelName, packet)
    local cache=plotAnimalSync.caches[channelName]
    if type(cache)~="table" then return end
    local path,action,a,b=packet[1],packet[2],packet[3],packet[4]
    local current,parent,key=resolveSyncPath(path,cache)
    if action=="Changed" then if parent then parent[key]=a end
    elseif action=="ArrayInsert" then if current then table.insert(current,b,a) end
    elseif action=="ArrayRemoved" then if current then table.remove(current,b) end
    elseif action=="DictionaryInsert" then if current then current[b]=a end
    elseif action=="DictionaryRemoved" then if current then current[b]=nil end
    end
end

local function attachPlotChannel(remote)
    if not plots or not syncRemotes then return end
    if plotAnimalSync.connections[remote] then return end
    local channelName=tostring(remote.Name)
    if not plots:FindFirstChild(channelName) then return end
    if syncRemotes.requestData and plotAnimalSync.caches[channelName]==nil then
        local ok,data=pcall(function() return syncRemotes.requestData:InvokeServer(channelName) end)
        plotAnimalSync.caches[channelName]=(ok and type(data)=="table") and data or {}
    elseif plotAnimalSync.caches[channelName]==nil then
        plotAnimalSync.caches[channelName]={}
    end
    plotAnimalSync.connections[remote]=remote.OnClientEvent:Connect(function(queue)
        for _,packet in ipairs(queue) do applyPlotSyncDiff(channelName,packet) end
    end)
end

local function detachPlotChannel(channelName)
    for remote,conn in pairs(plotAnimalSync.connections) do
        if tostring(remote.Name)==tostring(channelName) then
            conn:Disconnect()
            plotAnimalSync.connections[remote]=nil
            plotAnimalSync.caches[tostring(channelName)]=nil
            break
        end
    end
end

pcall(function()
    if not syncRemotes then return end
    for _,child in ipairs(syncRemotes.channelFolder:GetChildren()) do
        if child:IsA("RemoteEvent") then attachPlotChannel(child) end
    end
    syncRemotes.channelFolder.ChildAdded:Connect(function(child)
        if child:IsA("RemoteEvent") then attachPlotChannel(child) end
    end)
    syncRemotes.routeRemote.OnClientEvent:Connect(function(actions)
        for _,action in ipairs(actions) do
            local kind,channelName=action[1],tostring(action[2])
            if not plots:FindFirstChild(channelName) then continue end
            if kind=="ListenerAdded" then
                local r=syncRemotes.channelFolder:FindFirstChild(channelName)
                if r and r:IsA("RemoteEvent") then attachPlotChannel(r) end
            elseif kind=="ListenerRemoved" then detachPlotChannel(channelName) end
        end
    end)
end)


local function getPlotOwner(plot)
    local sign=plot:FindFirstChild("PlotSign")
    local frame=sign and sign:FindFirstChild("SurfaceGui") and sign.SurfaceGui:FindFirstChild("Frame")
    local label=frame and frame:FindFirstChild("TextLabel")
    if not label or label.Text=="Empty Base" then return nil end
    return label.Text:gsub("'s [Bb]ase$",""):gsub("%s+$","")
end

local function isMyBaseAnimal(animalData)
    if not animalData or not animalData.plot then return false end
    local plot=plots and plots:FindFirstChild(animalData.plot)
    if not plot then return false end
    
    local sign=plot:FindFirstChild("PlotSign")
    if sign then local yb=sign:FindFirstChild("YourBase"); if yb and yb:IsA("BillboardGui") then return yb.Enabled==true end end
    
    return getPlotOwner(plot)==LP.DisplayName
end


local function scanAllPlots()
    if not plots then return end
    local newCache={}
    for _,plot in ipairs(plots:GetChildren()) do
        local cache=plotAnimalSync.caches[plot.Name]
        if not cache then continue end
        local animalList=cache.AnimalList
        if type(animalList)~="table" then continue end
        for slot,animalData in pairs(animalList) do
            if type(animalData)=="table" then
                local animalName=animalData.Index
                local displayName=animalName
                if AnimalsData then
                    local info=AnimalsData[animalName]
                    if info then displayName=info.DisplayName or animalName end
                end
                table.insert(newCache,{
                    name=displayName, plot=plot.Name,
                    slot=tostring(slot), uid=plot.Name.."_"..tostring(slot),
                })
            end
        end
    end
    allAnimalsCache=newCache
end

task.spawn(function() while true do task.wait(5); pcall(scanAllPlots) end end)
pcall(scanAllPlots)


local function getAnimalPosition(animalData)
    if not plots then return nil end
    local plot=plots:FindFirstChild(animalData.plot); if not plot then return nil end
    local podiums=plot:FindFirstChild("AnimalPodiums"); if not podiums then return nil end
    local podium=podiums:FindFirstChild(animalData.slot); if not podium then return nil end
    return podium:GetPivot().Position
end

local function distToAnimal(animalData)
    local char=LP.Character; if not char then return math.huge end
    local hrp=char:FindFirstChild("HumanoidRootPart"); if not hrp then return math.huge end
    local pos=getAnimalPosition(animalData); if not pos then return math.huge end
    return (hrp.Position-pos).Magnitude
end

local function findProximityPromptForAnimal(animalData)
    if not animalData then return nil end
    local cached=SemiPromptCache[animalData.uid]
    if cached and cached.Parent then return cached end
    if not plots then return nil end
    local plot=plots:FindFirstChild(animalData.plot); if not plot then return nil end
    local podiums=plot:FindFirstChild("AnimalPodiums"); if not podiums then return nil end
    local podium=podiums:FindFirstChild(animalData.slot); if not podium then return nil end
    local base=podium:FindFirstChild("Base"); if not base then return nil end
    local spawn=base:FindFirstChild("Spawn"); if not spawn then return nil end
    local attach=spawn:FindFirstChild("PromptAttachment"); if not attach then return nil end
    for _,p in ipairs(attach:GetChildren()) do
        if p:IsA("ProximityPrompt") then SemiPromptCache[animalData.uid]=p; return p end
    end
    return nil
end

local function pickClosest()
    local char=LP.Character; if not char then return nil end
    local hrp=char:FindFirstChild("HumanoidRootPart"); if not hrp then return nil end
    local best,bestDist=nil,math.huge
    for _,animalData in ipairs(allAnimalsCache) do
        if isMyBaseAnimal(animalData) then continue end
        local pos=getAnimalPosition(animalData); if not pos then continue end
        local dist=(hrp.Position-pos).Magnitude
        if dist>SEMI_CONFIG.PRIME_RANGE then continue end
        if dist<bestDist then bestDist=dist; best=animalData end
    end
    return best
end


local function buildSemiCallbacks(prompt)
    if SemiCallbackCache[prompt] then return end
    local data={holdCallbacks={},triggerCallbacks={},ready=true}
    local ok1,conns1=pcall(getconnections,prompt.PromptButtonHoldBegan)
    if ok1 and type(conns1)=="table" then
        for _,conn in ipairs(conns1) do if type(conn.Function)=="function" then table.insert(data.holdCallbacks,conn.Function) end end
    end
    local ok2,conns2=pcall(getconnections,prompt.Triggered)
    if ok2 and type(conns2)=="table" then
        for _,conn in ipairs(conns2) do if type(conn.Function)=="function" then table.insert(data.triggerCallbacks,conn.Function) end end
    end
    if #data.holdCallbacks>0 or #data.triggerCallbacks>0 then SemiCallbackCache[prompt]=data end
end

local function executeSemiStealAsync(prompt, animalData)
    local data=SemiCallbackCache[prompt]
    if not data or not data.ready then return false end
    data.ready=false
    SemiSteal.State.active=true
    SemiSteal.State.startTime=tick()
    SemiSteal.State.inRange=false
    SemiSteal.State.phase="holding"
    SemiSteal.State.label=animalData.name or "Animal"
    isStealing=true
    task.spawn(function()
        for _,fn in ipairs(data.holdCallbacks) do task.spawn(fn) end
        task.wait(SEMI_CONFIG.HOLD_MIN)
        SemiSteal.State.phase="waitingRange"
        local alreadyInRange=distToAnimal(animalData)<=SEMI_CONFIG.STEAL_RANGE
        local fired=false
        while true do
            local elapsed=tick()-SemiSteal.State.startTime
            if elapsed>SEMI_CONFIG.HOLD_MAX then break end
            if not prompt.Parent then break end
            if distToAnimal(animalData)<=SEMI_CONFIG.STEAL_RANGE then
                SemiSteal.State.inRange=true
                if not alreadyInRange then task.wait(SEMI_CONFIG.ENTRY_DELAY) end
                for _,fn in ipairs(data.triggerCallbacks) do task.spawn(fn) end
                if _GACC.autoCarryWatch then _GACC.autoCarryWatch(1.25) end
                fired=true
                break
            end
            task.wait()
        end
        if fired then
            SemiSteal.State.totalSteals=SemiSteal.State.totalSteals+1
            SemiSteal.State.lastResult="Stole "..SemiSteal.State.label
        else
            SemiSteal.State.failedSteals=SemiSteal.State.failedSteals+1
            SemiSteal.State.lastResult="Missed window: "..SemiSteal.State.label
        end
        SemiSteal.State.active=false
        SemiSteal.State.inRange=false
        SemiSteal.State.phase="idle"
        SemiSteal.State.lastResultTime=tick()
        task.wait(SEMI_CONFIG.COOLDOWN)
        isStealing=false
        data.ready=true
    end)
    return true
end

local function attemptSemiSteal(prompt, animalData)
    if not prompt or not prompt.Parent then return false end
    buildSemiCallbacks(prompt)
    if not SemiCallbackCache[prompt] then return false end
    return executeSemiStealAsync(prompt, animalData)
end


local semiConn=nil

startSemiAutoSteal=function()
    if semiConn then return end
    pcall(scanAllPlots)
    semiConn=RunService.Heartbeat:Connect(function()
        if not Steal.AutoStealEnabled or stealMode~="op" or isStealing then return end
        if SemiSteal.State.active then return end
        local target=pickClosest(); if not target then return end
        local prompt=SemiPromptCache[target.uid]
        if not prompt or not prompt.Parent then prompt=findProximityPromptForAnimal(target) end
        if prompt then attemptSemiSteal(prompt,target) end
    end)
end

stopSemiAutoSteal=function()
    if semiConn then semiConn:Disconnect(); semiConn=nil end
    SemiSteal.State.active=false
    SemiSteal.State.inRange=false
    SemiSteal.State.phase="idle"
    isStealing=falseend

end
end

do
local opConnection=nil
local opPromptData={}

local function opIsMyPlot(plot)
    local sign=plot and plot:FindFirstChild("PlotSign")
    local yourBase=sign and sign:FindFirstChild("YourBase")
    return yourBase and yourBase:IsA("BillboardGui") and yourBase.Enabled==true
end

local function opPromptPosition(prompt)
    local attachment=prompt and prompt.Parent
    local spawn=attachment and attachment.Parent
    return spawn and spawn:IsA("BasePart") and spawn.Position or nil
end

local function findNearestOPPrompt()
    local character=LP.Character
    local root=character and character:FindFirstChild("HumanoidRootPart")
    local plotsFolder=workspace:FindFirstChild("Plots")
    if not root or not plotsFolder then return nil end
    local nearest,minDistance=nil,math.huge
    for _,plot in ipairs(plotsFolder:GetChildren()) do
        if not opIsMyPlot(plot) then
            local podiums=plot:FindFirstChild("AnimalPodiums")
            if podiums then
                for _,podium in ipairs(podiums:GetChildren()) do
                    local base=podium:FindFirstChild("Base")
                    local spawn=base and base:FindFirstChild("Spawn")
                    local attachment=spawn and spawn:FindFirstChild("PromptAttachment")
                    if spawn and attachment then
                        local distance=(spawn.Position-root.Position).Magnitude
                        if distance<=SemiSteal.CONFIG.PRIME_RANGE and distance<minDistance then
                            for _,child in ipairs(attachment:GetChildren()) do
                                if child:IsA("ProximityPrompt") and child.Enabled and child.ActionText:find("Steal") then
                                    nearest,minDistance=child,distance
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return nearest
end

local function finishOPSteal(data,fired)
    if fired then
        SemiSteal.State.totalSteals=SemiSteal.State.totalSteals+1
        SemiSteal.State.lastResult="OP steal completed"
        if _GACC.autoCarryWatch then _GACC.autoCarryWatch(1.25) end
    else
        SemiSteal.State.failedSteals=SemiSteal.State.failedSteals+1
        SemiSteal.State.lastResult="OP steal cancelled"
    end
    SemiSteal.State.lastResultTime=tick()
    SemiSteal.State.active=false;SemiSteal.State.inRange=false;SemiSteal.State.phase="idle"
    isStealing=false;stealStartTime=nil
    data.ready=true
end

local function executeOPSteal(prompt)
    if isStealing or not prompt or not prompt.Parent then return end
    if not opPromptData[prompt] then
        local data={hold={},trigger={},ready=true}
        if getconnections then
            local okHold,holdConnections=pcall(getconnections,prompt.PromptButtonHoldBegan)
            if okHold then for _,connection in ipairs(holdConnections) do if connection.Function then table.insert(data.hold,connection.Function) end end end
            local okTrigger,triggerConnections=pcall(getconnections,prompt.Triggered)
            if okTrigger then for _,connection in ipairs(triggerConnections) do if connection.Function then table.insert(data.trigger,connection.Function) end end end
        end
        opPromptData[prompt]=data
    end
    local data=opPromptData[prompt]
    if not data.ready then return end
    data.ready=false;isStealing=true;stealStartTime=tick()
    SemiSteal.State.active=true;SemiSteal.State.startTime=stealStartTime;SemiSteal.State.phase="holding";SemiSteal.State.inRange=false
    task.spawn(function()
        for _,callback in ipairs(data.hold) do task.spawn(callback) end
        local duration=math.max(tonumber(Steal.StealDuration) or 1.4,.05)
        while Steal.AutoStealEnabled and stealMode=="op" and prompt.Parent and tick()-stealStartTime<duration do
            local position=opPromptPosition(prompt)
            local root=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
            SemiSteal.State.inRange=position and root and (root.Position-position).Magnitude<=SemiSteal.CONFIG.STEAL_RANGE or false
            task.wait()
        end
        local position=opPromptPosition(prompt)
        local root=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
        local canFire=Steal.AutoStealEnabled and stealMode=="op" and position and root and (root.Position-position).Magnitude<=SemiSteal.CONFIG.STEAL_RANGE
        if canFire then for _,callback in ipairs(data.trigger) do task.spawn(callback) end end
        finishOPSteal(data,canFire and true or false)
    end)
end

startSemiAutoSteal=function()
    if opConnection then return end
    opConnection=RunService.Heartbeat:Connect(function()
        if not Steal.AutoStealEnabled or stealMode~="op" or isStealing or SemiSteal.State.active then return end
        local prompt=findNearestOPPrompt()
        if prompt then executeOPSteal(prompt) end
    end)
end

stopSemiAutoSteal=function()
    if opConnection then opConnection:Disconnect();opConnection=nil end
    SemiSteal.State.active=false;SemiSteal.State.inRange=false;SemiSteal.State.phase="idle"
    isStealing=false;stealStartTime=nil
end
end




do
    local function showRoundResultMessage(text)
        local guiName="MoveeRoundResult"
        pcall(function() local old=game:GetService("CoreGui"):FindFirstChild(guiName); if old then old:Destroy() end end)
        pcall(function() local pgui=LP:FindFirstChild("PlayerGui"); local old=pgui and pgui:FindFirstChild(guiName); if old then old:Destroy() end end)
        local sg=Instance.new("ScreenGui"); sg.Name=guiName; sg.ResetOnSpawn=false; sg.IgnoreGuiInset=true; sg.DisplayOrder=90
        pcall(function() if syn and syn.protect_gui then syn.protect_gui(sg) end end)
        if not pcall(function() sg.Parent=game:GetService("CoreGui") end) then sg.Parent=LP:WaitForChild("PlayerGui") end
        local lbl=Instance.new("TextLabel",sg)
        lbl.AnchorPoint=Vector2.new(0.5,0.5); lbl.Position=UDim2.new(0.5,0,0.38,0); lbl.Size=UDim2.new(0,500,0,70)
        lbl.BackgroundTransparency=1; lbl.Text=text; lbl.Font=Enum.Font.GothamBlack; lbl.TextSize=44
        lbl.TextColor3=Color3.fromRGB(255,255,255); lbl.TextStrokeTransparency=0.15; lbl.TextTransparency=1
        local grad=Instance.new("UIGradient",lbl)
        grad.Color=ColorSequence.new({
            ColorSequenceKeypoint.new(0,   Color3.fromRGB(230,230,230)),
            ColorSequenceKeypoint.new(0.35,Color3.fromRGB(255,255,255)),
            ColorSequenceKeypoint.new(0.65,Color3.fromRGB(150,150,150)),
            ColorSequenceKeypoint.new(1,   Color3.fromRGB(10,10,10))
        })
        task.spawn(function()
            local t=0
            while grad and grad.Parent do t=t+0.05; grad.Rotation=math.sin(t*0.6)*25; task.wait(0.04) end
        end)
        TweenService:Create(lbl,TweenInfo.new(0.25),{TextTransparency=0}):Play()
        task.delay(1.6,function()
            if lbl and lbl.Parent then
                TweenService:Create(lbl,TweenInfo.new(0.4),{TextTransparency=1,Position=UDim2.new(0.5,0,0.34,0)}):Play()
            end
        end)
        task.delay(2.2,function() pcall(function() sg:Destroy() end) end)
    end

    local lastRoundText,lastRoundTime="",0
    local function handleRoundText(txt)
        if type(txt)~="string" or txt=="" then return end
        local trimmed=txt:gsub("^%s+",""):gsub("%s+$","")
        local name=trimmed:match("^@?([%w_]+)%s+[Ww][Oo][Nn]%s+[Tt][Hh][Ii][Ss]%s+[Rr][Oo][Uu][Nn][Dd]!?$")
        if not name then return end
        local now=tick()
        if trimmed==lastRoundText and (now-lastRoundTime)<3 then return end
        lastRoundText=trimmed; lastRoundTime=now
        if string.lower(name)==string.lower(LP.Name) then
            showRoundResultMessage("Good job!")
        else
            showRoundResultMessage("Lock In")
        end
    end

    local function isOwnGui(inst)
        local cur=inst
        while cur do
            local n=cur.Name
            if type(n)=="string" and n:sub(1,5)=="Movee" then return true end
            cur=cur.Parent
        end
        return false
    end

    local function watchInstance(inst)
        if not (inst:IsA("TextLabel") or inst:IsA("TextButton")) then return end
        if isOwnGui(inst) then return end
        handleRoundText(inst.Text)
        inst:GetPropertyChangedSignal("Text"):Connect(function() handleRoundText(inst.Text) end)
    end

    local function watchGuiRoot(root)
        if not root then return end
        for _,d in ipairs(root:GetDescendants()) do pcall(watchInstance,d) end
        root.DescendantAdded:Connect(function(d) pcall(watchInstance,d) end)
    end

    task.spawn(function()
        watchGuiRoot(LP:WaitForChild("PlayerGui"))
        pcall(function() watchGuiRoot(game:GetService("CoreGui")) end)
    end)
end

RunService.Stepped:Connect(function()
    for _,p in ipairs(Players:GetPlayers()) do if p~=LP and p.Character then for _,part in ipairs(p.Character:GetDescendants()) do if part:IsA("BasePart") then part.CanCollide=false end end end end
end)

RunService.RenderStepped:Connect(function()
    local char=LP.Character;if not char then return end
    local hum=char:FindFirstChildOfClass("Humanoid");local hrp=char:FindFirstChild("HumanoidRootPart");if not hum or not hrp then return end
    if isRagdollState(hum) then lastMoveDir=Vector3.new(0,0,0);return end
    if not autoBatEnabled and not autoLeftEnabled and not autoRightEnabled then
        local md=hum.MoveDirection;local spd=getActiveMoveSpeed()
        if md.Magnitude>0 then lastMoveDir=md;hrp.Velocity=Vector3.new(md.X*spd,hrp.Velocity.Y,md.Z*spd)
        elseif antiRagdollEnabled and lastMoveDir.Magnitude>0 then
            local anyHeld=false;for key in pairs(MOVE_KEYS) do if UIS:IsKeyDown(key) then anyHeld=true;break end end
            if anyHeld then hrp.Velocity=Vector3.new(lastMoveDir.X*spd,hrp.Velocity.Y,lastMoveDir.Z*spd) end
        end
    end
    if speedLabel then speedLabel.Text=string.format("%.1f SPEED",Vector3.new(hrp.Velocity.X,0,hrp.Velocity.Z).Magnitude) end
end)

LP.CharacterAdded:Connect(function(char)
    task.wait(0.5);setupSpeedIndicator(char);setupRagdollTriggers()
    if medusaCounterEnabled then setupMedusa(char) end
    if batCounterEnabled then startBatCounter() end
    if unwalkEnabled then task.wait(0.5);startUnwalk() end
    if refreshSpeedModeLabel then refreshSpeedModeLabel() end
    if mobBtnRefs.carrySpeed then mobBtnRefs.carrySpeed(carrySpeedActive) end
    if mobBtnRefs.lagger then mobBtnRefs.lagger(laggerModeEnabled) end
    _GACC.extras.onCharacter(char)
end)

if LP.Character then setupSpeedIndicator(LP.Character);setupRagdollTriggers() end

do 
local alConn,arConn=nil,nil;local alPhase,arPhase=1,1

stopAutoLeft=function()
    if alConn then alConn:Disconnect();alConn=nil end;alPhase=1
    local char=LP.Character;if char then local h=char:FindFirstChildOfClass("Humanoid");if h then h:Move(Vector3.zero,false) end end
    if autoLeftSetVisual then autoLeftSetVisual(false) end
    if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end
end

stopAutoRight=function()
    if arConn then arConn:Disconnect();arConn=nil end;arPhase=1
    local char=LP.Character;if char then local h=char:FindFirstChildOfClass("Humanoid");if h then h:Move(Vector3.zero,false) end end
    if autoRightSetVisual then autoRightSetVisual(false) end
    if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end
end

startAutoLeft=function()
    if _GACC.safeBlocked and _GACC.safeBlocked() then autoLeftEnabled=false;if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end;return end
    if alConn then alConn:Disconnect() end;alPhase=1
    alConn=RunService.Heartbeat:Connect(function()
        if not autoLeftEnabled then return end
        local char=LP.Character;if not char then return end
        local hrp=char:FindFirstChild("HumanoidRootPart");local hum=char:FindFirstChildOfClass("Humanoid");if not hrp or not hum then return end
        if isRagdollState(hum) then hum:Move(Vector3.zero,false);return end
        local spd=getAutoPathSpeed()
        if alPhase==1 then
            local tgt=Vector3.new(AP_L1.X,hrp.Position.Y,AP_L1.Z)
            if (tgt-hrp.Position).Magnitude<1 then alPhase=2;local d=AP_L2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit;hum:Move(mv,false);hrp.Velocity=Vector3.new(mv.X*spd,hrp.Velocity.Y,mv.Z*spd);return end
            local d=AP_L1-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit;hum:Move(mv,false);hrp.Velocity=Vector3.new(mv.X*spd,hrp.Velocity.Y,mv.Z*spd)
        elseif alPhase==2 then
            local tgt=Vector3.new(AP_L2.X,hrp.Position.Y,AP_L2.Z)
            if (tgt-hrp.Position).Magnitude<1 then hum:Move(Vector3.zero,false);hrp.Velocity=Vector3.zero;autoLeftEnabled=false;if alConn then alConn:Disconnect();alConn=nil end;alPhase=1;if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end;return end
            local d=AP_L2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit;hum:Move(mv,false);hrp.Velocity=Vector3.new(mv.X*spd,hrp.Velocity.Y,mv.Z*spd)
        end
        if autoMoveSwingEnabled and not _alSwingDebounce then
            _alSwingDebounce=true
            local bat=findBat()
            if bat then
                if bat.Parent~=char then pcall(function() hum:EquipTool(bat) end) end
                pcall(function() bat:Activate() end)
            end
            task.delay(autoMoveSwingInterval,function() _alSwingDebounce=false end)
        end
    end)
end

startAutoRight=function()
    if _GACC.safeBlocked and _GACC.safeBlocked() then autoRightEnabled=false;if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end;return end
    if arConn then arConn:Disconnect() end;arPhase=1
    arConn=RunService.Heartbeat:Connect(function()
        if not autoRightEnabled then return end
        local char=LP.Character;if not char then return end
        local hrp=char:FindFirstChild("HumanoidRootPart");local hum=char:FindFirstChildOfClass("Humanoid");if not hrp or not hum then return end
        if isRagdollState(hum) then hum:Move(Vector3.zero,false);return end
        local spd=getAutoPathSpeed()
        if arPhase==1 then
            local tgt=Vector3.new(AP_R1.X,hrp.Position.Y,AP_R1.Z)
            if (tgt-hrp.Position).Magnitude<1 then arPhase=2;local d=AP_R2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit;hum:Move(mv,false);hrp.Velocity=Vector3.new(mv.X*spd,hrp.Velocity.Y,mv.Z*spd);return end
            local d=AP_R1-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit;hum:Move(mv,false);hrp.Velocity=Vector3.new(mv.X*spd,hrp.Velocity.Y,mv.Z*spd)
        elseif arPhase==2 then
            local tgt=Vector3.new(AP_R2.X,hrp.Position.Y,AP_R2.Z)
            if (tgt-hrp.Position).Magnitude<1 then hum:Move(Vector3.zero,false);hrp.Velocity=Vector3.zero;autoRightEnabled=false;if arConn then arConn:Disconnect();arConn=nil end;arPhase=1;if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end;return end
            local d=AP_R2-hrp.Position;local mv=Vector3.new(d.X,0,d.Z).Unit;hum:Move(mv,false);hrp.Velocity=Vector3.new(mv.X*spd,hrp.Velocity.Y,mv.Z*spd)
        end
        if autoMoveSwingEnabled and not _arSwingDebounce then
            _arSwingDebounce=true
            local bat=findBat()
            if bat then
                if bat.Parent~=char then pcall(function() hum:EquipTool(bat) end) end
                pcall(function() bat:Activate() end)
            end
            task.delay(autoMoveSwingInterval,function() _arSwingDebounce=false end)
        end
    end)
end
end 

runDrop=function()
    if dropActive then return end
    if autoBatEnabled then
        autoBatEnabled=false
        if resetAutoBatMotion then resetAutoBatMotion() end
        if autoBatSetVisual then autoBatSetVisual(false) end
    end
    local char = LP.Character; if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart"); if not root then return end
    dropActive = true
    local t0 = tick()
    local dc
    dc = RunService.Heartbeat:Connect(function()
        local r = char and char:FindFirstChild("HumanoidRootPart")
        if not r then dc:Disconnect();dropActive = false;return end
        if tick() - t0 >= DROP_ASCEND_DURATION then
            dc:Disconnect()
            local rp = RaycastParams.new()
            rp.FilterDescendantsInstances = {char}
            rp.FilterType = Enum.RaycastFilterType.Exclude
            local rr = workspace:Raycast(r.Position, Vector3.new(0, -2000, 0), rp)
            if rr then
                local hum2 = char:FindFirstChildOfClass("Humanoid")
                local off = (hum2 and hum2.HipHeight or 2) + (r.Size.Y / 2)
                r.CFrame = CFrame.new(r.Position.X, rr.Position.Y + off, r.Position.Z)
                r.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
            dropActive = false
            return
        end
        r.Velocity = Vector3.new(r.Velocity.X, DROP_ASCEND_SPEED, r.Velocity.Z)
    end)
end

do 
local function doAutoTPDown(force)
    local char=LP.Character;if not char then return end;local hrp=char:FindFirstChild("HumanoidRootPart");if not hrp then return end
    local hum2=char:FindFirstChildOfClass("Humanoid");if not hum2 then return end
    if not force then if hum2.FloorMaterial~=Enum.Material.Air then return end;if not(hrp.Position.Y>=autoTPHeight) then return end end
    hrp.CFrame=CFrame.new(hrp.Position.X,-7.00,hrp.Position.Z)*CFrame.Angles(0,select(2,hrp.CFrame:ToEulerAnglesYXZ()),0);hrp.Velocity=Vector3.zero
end

startAutoTP=function()
    if autoTPConn then task.cancel(autoTPConn);autoTPConn=nil end
    autoTPConn=task.spawn(function() while autoTPEnabled do task.wait(0.1);pcall(function() doAutoTPDown(false) end) end end)
end

stopAutoTP=function() autoTPEnabled=false;if autoTPConn then task.cancel(autoTPConn);autoTPConn=nil end end
runTPFloor=function() pcall(function() doAutoTPDown(true) end) end
end 

do 
local STRETCH_NAME="Movee_Stretch"
enableStretchRez=function()
    stretchRezEnabled=true;if stretchRezConn then stretchRezConn:Disconnect() end
    pcall(function() RunService:UnbindFromRenderStep(STRETCH_NAME) end)
    pcall(function() RunService:BindToRenderStep(STRETCH_NAME,Enum.RenderPriority.Last.Value-1,function() local cam=workspace.CurrentCamera;if cam then cam.CFrame=cam.CFrame*CFrame.new(0,0,0,1,0,0,0,0.8,0,0,0,1) end end) end)
end

disableStretchRez=function() stretchRezEnabled=false;pcall(function() RunService:UnbindFromRenderStep(STRETCH_NAME) end) end

local defLightBrightness,defLightClock,defLightAmbient
local function applyAntiLagDerender(obj)
    pcall(function()
        if obj:IsA("Accessory") or obj:IsA("Hat") then obj:Destroy()
        elseif obj:IsA("BasePart") then obj.Material=Enum.Material.Plastic;obj.Reflectance=0;obj.CastShadow=false
        elseif obj:IsA("Decal") or obj:IsA("Texture") then obj.Transparency=1
        elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam") or obj:IsA("Fire") or obj:IsA("Smoke") or obj:IsA("Sparkles") then obj.Enabled=false end
    end)
end

enableAntiLag=function()
    removeAccessoriesEnabled=true;antiLagEnabled=true
    defLightBrightness=defLightBrightness or Lighting.Brightness;defLightClock=defLightClock or Lighting.ClockTime;defLightAmbient=defLightAmbient or Lighting.OutdoorAmbient
    Lighting.GlobalShadows=false;Lighting.FogEnd=1e10;Lighting.Brightness=1;Lighting.EnvironmentDiffuseScale=0;Lighting.EnvironmentSpecularScale=0
    for _,e in pairs(Lighting:GetChildren()) do pcall(function() if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then e.Enabled=false end end) end
    for _,obj in ipairs(workspace:GetDescendants()) do applyAntiLagDerender(obj) end
    if antiLagDescConn then antiLagDescConn:Disconnect() end
    antiLagDescConn=workspace.DescendantAdded:Connect(function(obj) if removeAccessoriesEnabled then applyAntiLagDerender(obj) end end)
end

disableAntiLag=function()
    removeAccessoriesEnabled=false;antiLagEnabled=false;if antiLagDescConn then antiLagDescConn:Disconnect();antiLagDescConn=nil end
    pcall(function() if defLightBrightness then Lighting.Brightness=defLightBrightness end;if defLightClock then Lighting.ClockTime=defLightClock end;if defLightAmbient then Lighting.OutdoorAmbient=defLightAmbient end;Lighting.ExposureCompensation=0 end)
end
end 

do 
local function findMedusa()
    local c=LP.Character;if not c then return nil end
    for _,t in ipairs(c:GetChildren()) do if t:IsA("Tool") then local n=t.Name:lower();if n:find("medusa") or n:find("head") or n:find("stone") then return t end end end
    local bp=LP:FindFirstChild("Backpack");if bp then for _,t in ipairs(bp:GetChildren()) do if t:IsA("Tool") then local n=t.Name:lower();if n:find("medusa") or n:find("head") or n:find("stone") then return t end end end end
    return nil
end

local function useMedusaCounter()
    if medusaDebounce then return end;if MEDUSA_COOLDOWN>(tick()-medusaLastUsed) then return end
    local c=LP.Character;if not c then return end;medusaDebounce=true
    local med=findMedusa();if not med then medusaDebounce=false;return end
    if med.Parent~=c then local hum2=c:FindFirstChildOfClass("Humanoid");if hum2 then hum2:EquipTool(med) end end
    pcall(function() med:Activate() end);medusaLastUsed=tick();medusaDebounce=false
end

local function onAnchorChanged(part)
    return part:GetPropertyChangedSignal("Anchored"):Connect(function()
        if part.Anchored and part.Transparency==1 then
            if medusaCounterEnabled then useMedusaCounter() end
        end
    end)
end

setupMedusa=function(char)
    for _,c in pairs(Conns.anchor) do pcall(function() c:Disconnect() end) end;Conns.anchor={}
    if not char then return end
    for _,part in ipairs(char:GetDescendants()) do if part:IsA("BasePart") then table.insert(Conns.anchor,onAnchorChanged(part)) end end
    table.insert(Conns.anchor,char.DescendantAdded:Connect(function(part) if part:IsA("BasePart") then table.insert(Conns.anchor,onAnchorChanged(part)) end end))
end

stopMedusaCounter=function() for _,c in pairs(Conns.anchor) do pcall(function() c:Disconnect() end) end;Conns.anchor={} end
end 

do 
local BAT_COUNTER_SLAP_LIST={"Bat","Slap","Iron Slap","Gold Slap","Diamond Slap","Emerald Slap","Ruby Slap","Dark Matter Slap","Flame Slap","Nuclear Slap","Galaxy Slap","Glitched Slap"}

local function findBatForCounter()
    local c=LP.Character;if not c then return nil end;local bp=LP:FindFirstChildOfClass("Backpack")
    for _,name in ipairs(BAT_COUNTER_SLAP_LIST) do local t=c:FindFirstChild(name) or (bp and bp:FindFirstChild(name));if t then return t end end
    for _,ch in ipairs(c:GetChildren()) do if ch:IsA("Tool") and ch.Name:lower():find("bat") then return ch end end
    if bp then for _,ch in ipairs(bp:GetChildren()) do if ch:IsA("Tool") and ch.Name:lower():find("bat") then return ch end end end
    return nil
end

local function swingBatForCounter(bat,char)
    local hum2=char:FindFirstChildOfClass("Humanoid")
    if bat.Parent~=char then if hum2 then pcall(function() hum2:EquipTool(bat) end) end;task.wait(0.05) end
    local remote=bat:FindFirstChildOfClass("RemoteEvent") or bat:FindFirstChildOfClass("RemoteFunction")
    if remote and remote:IsA("RemoteEvent") then pcall(function() remote:FireServer() end);task.wait(0.15);pcall(function() remote:FireServer() end)
    else pcall(function() bat:Activate() end);task.wait(0.15);pcall(function() bat:Activate() end) end
end

startBatCounter=function()
    if Conns.batCounter then return end
    Conns.batCounter=RunService.Heartbeat:Connect(function()
        if not batCounterEnabled or batCounterDebounce then return end
        local char=LP.Character;if not char then return end;local hum2=char:FindFirstChildOfClass("Humanoid");if not hum2 then return end
        local st=hum2:GetState()
        if st==Enum.HumanoidStateType.Physics or st==Enum.HumanoidStateType.Ragdoll or st==Enum.HumanoidStateType.FallingDown then
            batCounterDebounce=true;task.spawn(function() local bat=findBatForCounter();if bat then swingBatForCounter(bat,char) end;task.wait(0.5);batCounterDebounce=false end)
        end
    end)
end

stopBatCounter=function() if Conns.batCounter then Conns.batCounter:Disconnect();Conns.batCounter=nil end;batCounterDebounce=false end
end 


;(function() 
local CONFIG = {
    FollowSpeed = 55, MaxSpeed = 59, ActivateDistance = 13, MinFollowDistance = 1,
    PredictionTime = 0.22, PredictAhead = 3, JumpSpeedBoost = 1.5, ActivationDelay = 0.2,
    ServerTickrate = 1/60, PingSampleSize = 10, MinPingComp = 0.03, MaxPingComp = 0.25,
    VelocityHistorySize = 8, AccelHistorySize = 4, AerialHistorySize = 6, VerticalHistorySize = 5,
    VelocitySmoothing = 0.2, AerialSmoothing = 0.15, MaxVelocityChange = 150, MaxHorizontalVel = 80,
    AccelerationWeight = 0.3, Gravity = 196.2, AirControlFactor = 0.8, AerialVelocityDecay = 0.95,
    AerialDirectionWeight = 0.6, MinAirborneTime = 0.08,
}

local State = {
    TargetPlayer = nil, LastTargetPos = nil, TargetVelocity = Vector3.zero, SmoothedVelocity = Vector3.zero,
    VelocityHistory = {}, AirborneTime = 0, LastActivationTime = 0, HighYVelocityTime = 0,
    PingHistory = {}, CurrentPing = 0.1, AccelerationHistory = {}, LastDirectionChangeTime = 0,
    PreviousDirection = nil, WasAirborne = false, AerialVelocityHistory = {}, AerialSmoothVelocity = Vector3.zero,
    LastGroundedPosition = nil, LastYVelocity = 0, PeakHeight = 0, GroundHeight = 0,
    LastJumpTime = 0, IsMultiJumping = false, VerticalVelocityHistory = {}, RealPingMs = 0,
}

task.spawn(function()
    while true do
        pcall(function()
            local ok, val = pcall(function() return LP.Ping end)
            if ok and type(val) == "number" and val > 0 then State.RealPingMs = val; return end
            local stats = game:GetService("Stats")
            local ok2, val2 = pcall(function() return stats.Network.ServerStatsItem["Data Ping"]:GetValue() end)
            if ok2 and type(val2) == "number" then State.RealPingMs = math.floor(val2) end
        end)
        task.wait(0.5)
    end
end)

local function updatePing()
    local pingSeconds = State.RealPingMs / 1000
    table.insert(State.PingHistory, pingSeconds)
    if #State.PingHistory > CONFIG.PingSampleSize then table.remove(State.PingHistory, 1) end
    local sum = 0
    for _, p in ipairs(State.PingHistory) do sum = sum + p end
    State.CurrentPing = sum / #State.PingHistory
    State.CurrentPing = math.clamp(State.CurrentPing, CONFIG.MinPingComp, CONFIG.MaxPingComp)
end

task.spawn(function() while true do task.wait(0.5);pcall(updatePing) end end)

local function getNearestPlayer()
    local char = LP.Character; if not char then return nil end
    local root = char:FindFirstChild("HumanoidRootPart"); if not root then return nil end
    local myPos = root.Position; local nearestDist = math.huge; local nearestPlayer = nil
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP and p.Character then
            local otherRoot = p.Character:FindFirstChild("HumanoidRootPart")
            if otherRoot then
                local dist = (myPos - otherRoot.Position).Magnitude
                if dist < nearestDist then nearestDist = dist; nearestPlayer = p end
            end
        end
    end
    return nearestPlayer
end

local function getAverageVelocity()
    if #State.VelocityHistory == 0 then return Vector3.zero end
    local sum = Vector3.zero
    for _, vel in ipairs(State.VelocityHistory) do sum = sum + vel end
    return sum / #State.VelocityHistory
end

local function getAverageAcceleration()
    if #State.AccelerationHistory == 0 then return Vector3.zero end
    local sum = Vector3.zero
    for _, a in ipairs(State.AccelerationHistory) do sum = sum + a end
    return sum / #State.AccelerationHistory
end

local function getAverageAerialVelocity()
    if #State.AerialVelocityHistory == 0 then return Vector3.zero end
    local sum = Vector3.zero
    for _, vel in ipairs(State.AerialVelocityHistory) do sum = sum + Vector3.new(vel.X, 0, vel.Z) end
    return sum / #State.AerialVelocityHistory
end

local function getAverageVerticalVelocity()
    if #State.VerticalVelocityHistory == 0 then return 0 end
    local sum = 0
    for _, y in ipairs(State.VerticalVelocityHistory) do sum = sum + y end
    return sum / #State.VerticalVelocityHistory
end

local function detectMultiJump(currentYVel, wasRising)
    local t = tick()
    if State.LastYVelocity < -5 and currentYVel > 10 then
        if t - State.LastJumpTime < 0.2 then return true end
        State.LastJumpTime = t; return true
    end
    return false
end

local function isFallingFromHeight(currentPos, yVel) return (currentPos.Y - State.GroundHeight > 20) and yVel < -15 end

local function isAerialStrafing()
    if #State.AerialVelocityHistory < 3 then return false end
    local dc = 0
    for i = 2, #State.AerialVelocityHistory do
        local v1 = Vector3.new(State.AerialVelocityHistory[i-1].X, 0, State.AerialVelocityHistory[i-1].Z)
        local v2 = Vector3.new(State.AerialVelocityHistory[i].X, 0, State.AerialVelocityHistory[i].Z)
        if v1.Magnitude > 3 and v2.Magnitude > 3 then
            if v1.Unit:Dot(v2.Unit) < 0.7 then dc = dc + 1 end
        end
    end
    return dc >= 2
end

local function detectDirectionChange(currentVel)
    local horizontal = Vector3.new(currentVel.X, 0, currentVel.Z)
    if horizontal.Magnitude < 5 then return false end
    if State.PreviousDirection then
        local dot = State.PreviousDirection:Dot(horizontal.Unit)
        if dot < 0.5 then
            local t = tick()
            if t - State.LastDirectionChangeTime < 0.12 then
                State.PreviousDirection = horizontal.Unit; State.LastDirectionChangeTime = t; return true
            end
            State.LastDirectionChangeTime = t
        end
    end
    State.PreviousDirection = horizontal.Unit
    return false
end

local function isErraticMovement()
    if #State.VelocityHistory < 3 then return false end
    local changes = 0
    for i = 2, #State.VelocityHistory do
        local v1 = Vector3.new(State.VelocityHistory[i-1].X, 0, State.VelocityHistory[i-1].Z)
        local v2 = Vector3.new(State.VelocityHistory[i].X, 0, State.VelocityHistory[i].Z)
        if v1.Magnitude > 5 and v2.Magnitude > 5 then
            if v1.Unit:Dot(v2.Unit) < 0.3 then changes = changes + 1 end
        end
    end
    return changes >= 3
end

local function isInfiniteJumping()
    if #State.VelocityHistory < 3 then return false end
    local yc = 0
    for i = 2, #State.VelocityHistory do
        if math.abs(State.VelocityHistory[i].Y - State.VelocityHistory[i-1].Y) > 15 then yc = yc + 1 end
    end
    return yc >= 2
end

local function isJumpBoostCheat() return math.abs(State.TargetVelocity.Y) > 35 and State.HighYVelocityTime > 0.15 end
local function isExtremeJumpBoost() return math.abs(State.TargetVelocity.Y) > 50 end
local function isFloating() return State.AirborneTime > 0.15 and math.abs(State.TargetVelocity.Y) > 3 end

local function checkAirborne(targetRoot, targetPlayer)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = {targetPlayer.Character, LP.Character}
    local rayResult = workspace:Raycast(targetRoot.Position, Vector3.new(0, -100, 0), params)
    if rayResult then State.GroundHeight = rayResult.Position.Y; return false end
    return true
end

local function clampVelocityChange(newVel, oldVel, maxChange)
    local delta = newVel - oldVel
    if delta.Magnitude > maxChange then return oldVel + (delta.Unit * maxChange) end
    return newVel
end

local function smoothVelocity(current, target, alpha) return current:Lerp(target, alpha) end

local function predictAerialPosition(currentPos, velocity, dt, isStrafing, isFastFalling, isMultiJump)
    local horizVel = Vector3.new(velocity.X, 0, velocity.Z)
    local vertVel = velocity.Y
    if isStrafing then
        local avgAerial = getAverageAerialVelocity()
        horizVel = Vector3.new(avgAerial.X, 0, avgAerial.Z) * CONFIG.AirControlFactor
    else
        horizVel = horizVel * CONFIG.AirControlFactor
    end
    horizVel = horizVel * CONFIG.AerialVelocityDecay
    local gravityEffect = CONFIG.Gravity
    if isMultiJump then gravityEffect = gravityEffect * 0.3; vertVel = vertVel * 0.9 end
    local verticalDisplacement
    if isFastFalling then
        verticalDisplacement = (vertVel * dt) - (0.5 * gravityEffect * 1.2 * dt * dt) - (3.5 * dt)
    else
        verticalDisplacement = (vertVel * dt) - (0.5 * gravityEffect * dt * dt)
    end
    if vertVel > 8 and not isMultiJump then verticalDisplacement = verticalDisplacement + (2.5 * dt) end
    return currentPos + horizVel * dt + Vector3.new(0, verticalDisplacement, 0)
end

local function predictServerPosition(currentPos, velocity, acceleration, ping, isQuickTurn, isAerial, isStrafing, isFastFalling, isMultiJump)
    local serverDelay = ping + CONFIG.ServerTickrate
    if isQuickTurn then serverDelay = serverDelay * 1.5 end
    if isAerial then return predictAerialPosition(currentPos, velocity, serverDelay, isStrafing, isFastFalling, isMultiJump) end
    local predictedPos = currentPos + velocity * serverDelay
    if acceleration.Magnitude > 1 then predictedPos = predictedPos + (acceleration * CONFIG.AccelerationWeight) * (serverDelay * serverDelay * 0.5) end
    return predictedPos
end

local function updateRotationAngular(lookDirection, rootPart)
    if not rootPart then return end
    if lookDirection.Magnitude < 0.01 then return end
    local currentLook = rootPart.CFrame.LookVector
    local targetDir = lookDirection.Unit
    local axis = currentLook:Cross(targetDir)
    local angle = math.asin(math.clamp(axis.Magnitude, -1, 1))
    if axis.Magnitude > 0.01 then
        rootPart.AssemblyAngularVelocity = axis.Unit * angle * 80
    else
        rootPart.AssemblyAngularVelocity = Vector3.zero
    end
end

local rootPart = nil
local humanoid = nil

local function updateTargetInfo(dt)
    State.TargetPlayer = getNearestPlayer()
    if not State.TargetPlayer or not State.TargetPlayer.Character then
        State.TargetPlayer = nil; State.LastTargetPos = nil; State.TargetVelocity = Vector3.zero
        State.SmoothedVelocity = Vector3.zero; State.VelocityHistory = {}; State.AccelerationHistory = {}
        State.AerialVelocityHistory = {}; State.VerticalVelocityHistory = {}; State.AerialSmoothVelocity = Vector3.zero
        State.AirborneTime = 0; State.HighYVelocityTime = 0; State.PreviousDirection = nil
        State.WasAirborne = false; State.LastYVelocity = 0; State.PeakHeight = 0; State.IsMultiJumping = false
        return nil
    end
    local targetRoot = State.TargetPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not targetRoot then return nil end
    local targetPos = targetRoot.Position
    if State.LastTargetPos then
        local deltaPos = targetPos - State.LastTargetPos
        local rawVelocity = deltaPos / dt
        rawVelocity = clampVelocityChange(rawVelocity, State.TargetVelocity, CONFIG.MaxVelocityChange)
        local horizontalVel = Vector3.new(rawVelocity.X, 0, rawVelocity.Z)
        if horizontalVel.Magnitude > CONFIG.MaxHorizontalVel then
            horizontalVel = horizontalVel.Unit * CONFIG.MaxHorizontalVel
            rawVelocity = Vector3.new(horizontalVel.X, rawVelocity.Y, horizontalVel.Z)
        end
        local currentAcceleration = (rawVelocity - State.TargetVelocity) / dt
        table.insert(State.AccelerationHistory, currentAcceleration)
        if #State.AccelerationHistory > CONFIG.AccelHistorySize then table.remove(State.AccelerationHistory, 1) end
        table.insert(State.VerticalVelocityHistory, rawVelocity.Y)
        if #State.VerticalVelocityHistory > CONFIG.VerticalHistorySize then table.remove(State.VerticalVelocityHistory, 1) end
        State.TargetVelocity = rawVelocity
        State.SmoothedVelocity = smoothVelocity(State.SmoothedVelocity, State.TargetVelocity, CONFIG.VelocitySmoothing)
        table.insert(State.VelocityHistory, State.TargetVelocity)
        if #State.VelocityHistory > CONFIG.VelocityHistorySize then table.remove(State.VelocityHistory, 1) end
    end
    State.LastTargetPos = targetPos
    if math.abs(State.TargetVelocity.Y) > 35 then State.HighYVelocityTime = State.HighYVelocityTime + dt
    else State.HighYVelocityTime = 0 end
    local isAirborne = checkAirborne(targetRoot, State.TargetPlayer)
    if isAirborne then
        State.AirborneTime = State.AirborneTime + dt
        if targetPos.Y > State.PeakHeight then State.PeakHeight = targetPos.Y end
        if State.AirborneTime >= CONFIG.MinAirborneTime then
            table.insert(State.AerialVelocityHistory, State.TargetVelocity)
            if #State.AerialVelocityHistory > CONFIG.AerialHistorySize then table.remove(State.AerialVelocityHistory, 1) end
            State.AerialSmoothVelocity = smoothVelocity(State.AerialSmoothVelocity, State.TargetVelocity, CONFIG.AerialSmoothing)
        end
        State.WasAirborne = true
    else
        State.AirborneTime = 0; State.WasAirborne = false; State.AerialVelocityHistory = {}
        State.AerialSmoothVelocity = Vector3.zero; State.LastGroundedPosition = targetPos; State.PeakHeight = 0
    end
    return targetRoot
end

local function computePrediction(targetRoot, dt)
    local targetPos = targetRoot.Position; local myPos = rootPart.Position
    local isJumping = math.abs(State.TargetVelocity.Y) > 8
    local isInfJump = isInfiniteJumping()
    local isFloater = isFloating()
    local isJumpBoost = isJumpBoostCheat()
    local isExtremeBoost = isExtremeJumpBoost()
    local isErratic = isErraticMovement()
    local avgVelocity = getAverageVelocity()
    local avgAcceleration = getAverageAcceleration()
    local isQuickTurn = detectDirectionChange(State.TargetVelocity)
    local isStrafing = isAerialStrafing()
    local isTrulyAirborne = (State.AirborneTime >= CONFIG.MinAirborneTime)
    local wasRising = State.LastYVelocity > 8
    State.IsMultiJumping = detectMultiJump(State.TargetVelocity.Y, wasRising)
    local isFastFalling = isFallingFromHeight(targetPos, State.TargetVelocity.Y)
    local avgYVel = getAverageVerticalVelocity()
    State.LastYVelocity = State.TargetVelocity.Y
    local predictionVel = State.TargetVelocity
    local predictionAccel = avgAcceleration
    local useCurrentPos = false
    if isExtremeBoost then
        useCurrentPos = true
        predictionVel = Vector3.new(avgVelocity.X, 0, avgVelocity.Z)
        predictionAccel = Vector3.zero
    elseif isJumpBoost then
        local avgH = Vector3.new(avgVelocity.X, 0, avgVelocity.Z)
        predictionVel = Vector3.new(avgH.X, State.TargetVelocity.Y * 0.15, avgH.Z)
        predictionAccel = Vector3.new(avgAcceleration.X, 0, avgAcceleration.Z)
    elseif isInfJump or isFloater then
        local avgH = Vector3.new(avgVelocity.X, 0, avgVelocity.Z)
        predictionVel = Vector3.new(avgH.X, State.TargetVelocity.Y * 0.5, avgH.Z)
        predictionAccel = Vector3.new(avgAcceleration.X * 0.5, 0, avgAcceleration.Z * 0.5)
    elseif isTrulyAirborne and isStrafing then
        local avgAerial = getAverageAerialVelocity()
        predictionVel = Vector3.new(
            State.AerialSmoothVelocity.X * CONFIG.AerialDirectionWeight + avgAerial.X * (1 - CONFIG.AerialDirectionWeight),
            avgYVel,
            State.AerialSmoothVelocity.Z * CONFIG.AerialDirectionWeight + avgAerial.Z * (1 - CONFIG.AerialDirectionWeight)
        )
        predictionAccel = Vector3.new(avgAcceleration.X * 0.3, 0, avgAcceleration.Z * 0.3)
    elseif isTrulyAirborne then
        predictionVel = Vector3.new(State.AerialSmoothVelocity.X, avgYVel, State.AerialSmoothVelocity.Z)
        predictionAccel = Vector3.zero
    elseif isErratic then
        predictionVel = Vector3.new(State.SmoothedVelocity.X, State.TargetVelocity.Y, State.SmoothedVelocity.Z)
        predictionAccel = Vector3.new(avgAcceleration.X * 0.7, 0, avgAcceleration.Z * 0.7)
    end
    local serverPredictedPos
    if useCurrentPos then serverPredictedPos = targetPos
    else
        serverPredictedPos = predictServerPosition(
            targetPos, predictionVel, predictionAccel, State.CurrentPing,
            isQuickTurn, isTrulyAirborne, isStrafing, isFastFalling, State.IsMultiJumping
        )
    end
    local predTime = CONFIG.PredictionTime * 1.1
    if isErratic then predTime = predTime * 0.6
    elseif isQuickTurn then predTime = predTime * 1.2
    elseif isTrulyAirborne and isStrafing then predTime = predTime * 0.7
    elseif isTrulyAirborne and isFastFalling then predTime = predTime * 1.3
    elseif isTrulyAirborne then predTime = predTime * 0.85 end
    local predictedPos
    if isTrulyAirborne then
        predictedPos = predictAerialPosition(serverPredictedPos, predictionVel, predTime, isStrafing, isFastFalling, State.IsMultiJumping)
    else
        predictedPos = serverPredictedPos + predictionVel * predTime
    end
    local verticalOffset = Vector3.zero
    if not isTrulyAirborne and not isExtremeBoost and not isJumpBoost and not isInfJump then
        if State.TargetVelocity.Y < -8 or State.TargetVelocity.Y > 8 then verticalOffset = Vector3.new(0, State.TargetVelocity.Y * 0.15, 0) end
    end
    predictedPos = predictedPos + verticalOffset
    local interceptOffset = Vector3.zero
    local horizontalVel = Vector3.new(predictionVel.X, 0, predictionVel.Z)
    if horizontalVel.Magnitude > 1 and not useCurrentPos then interceptOffset = horizontalVel.Unit * CONFIG.PredictAhead end
    local interceptPoint = predictedPos + interceptOffset
    return interceptPoint, targetPos, myPos, isJumping, isExtremeBoost, isJumpBoost, isInfJump, isFloater,
           isErratic, isQuickTurn, isTrulyAirborne, isStrafing, isFastFalling
end

local function applyMovementAndRotation(interceptPoint, targetPos, myPos, isJumping, isExtremeBoost, isJumpBoost, isInfJump, isFloater,
                                        isErratic, isQuickTurn, isTrulyAirborne, isStrafing, isFastFalling)
    local toTarget = interceptPoint - myPos
    if toTarget.Magnitude > 0.1 then updateRotationAngular(toTarget, rootPart) end
    local actualDistance = (targetPos - myPos).Magnitude
    if autoSwingEnabled and actualDistance <= CONFIG.ActivateDistance then
        local currentTime = tick()
        if currentTime - State.LastActivationTime >= 0.3 then
            local tool = LP.Character:FindFirstChildOfClass("Tool")
            if tool then tool:Activate() end
            State.LastActivationTime = currentTime
        end
    end
    local direction = interceptPoint - myPos
    if direction.Magnitude > CONFIG.MinFollowDistance then
        local dirUnit = direction.Unit
        local currentSpeed = CONFIG.FollowSpeed
        if isJumping then currentSpeed = currentSpeed * CONFIG.JumpSpeedBoost end
        if isExtremeBoost then currentSpeed = currentSpeed * 1.3
        elseif isJumpBoost or isInfJump or isFloater then currentSpeed = currentSpeed * 1.15 end
        if isErratic then currentSpeed = currentSpeed * 0.9
        elseif isQuickTurn then currentSpeed = currentSpeed * 1.1
        elseif isTrulyAirborne and isStrafing then currentSpeed = currentSpeed * 0.95
        elseif isTrulyAirborne and isFastFalling then currentSpeed = currentSpeed * 1.15
        elseif isTrulyAirborne then currentSpeed = currentSpeed * 1.05 end
        currentSpeed = math.min(currentSpeed, CONFIG.MaxSpeed)
        rootPart.AssemblyLinearVelocity = dirUnit * currentSpeed
    else
        rootPart.AssemblyLinearVelocity = Vector3.new(0, rootPart.AssemblyLinearVelocity.Y * 0.5, 0)
    end
end

local function aimbotUpdate(dt)
    if not autoBatEnabled then stopBatAimbot(); return end
    local targetRoot = updateTargetInfo(dt)
    if not targetRoot then return end
    local interceptPoint, targetPos, myPos, isJumping, isExtremeBoost, isJumpBoost, isInfJump, isFloater,
          isErratic, isQuickTurn, isTrulyAirborne, isStrafing, isFastFalling = computePrediction(targetRoot, dt)
    applyMovementAndRotation(interceptPoint, targetPos, myPos, isJumping, isExtremeBoost, isJumpBoost, isInfJump, isFloater,
                             isErratic, isQuickTurn, isTrulyAirborne, isStrafing, isFastFalling)
end

local aimbotConn = nil

function startBatAimbot()
    if _GACC.safeBlocked and _GACC.safeBlocked() then autoBatEnabled=false;if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end;return end
    if aimbotConn then return end
    autoBatEnabled = true
    local char = LP.Character
    if not char then return end
    humanoid = char:FindFirstChildOfClass("Humanoid")
    rootPart = char:FindFirstChild("HumanoidRootPart")
    if not humanoid or not rootPart then return end
    humanoid.AutoRotate = false
    aimbotConn = RunService.RenderStepped:Connect(aimbotUpdate)
end

function stopBatAimbot()
    if aimbotConn then aimbotConn:Disconnect(); aimbotConn = nil end
    autoBatEnabled = false
    local char = LP.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then hum.AutoRotate = true end
        local root = char:FindFirstChild("HumanoidRootPart")
        if root then root.AssemblyLinearVelocity = Vector3.zero; root.AssemblyAngularVelocity = Vector3.zero end
    end
    State.TargetPlayer = nil; State.LastTargetPos = nil; State.TargetVelocity = Vector3.zero
    State.SmoothedVelocity = Vector3.zero; State.VelocityHistory = {}; State.AccelerationHistory = {}
    State.AerialVelocityHistory = {}; State.VerticalVelocityHistory = {}; State.AerialSmoothVelocity = Vector3.zero
    State.AirborneTime = 0; State.HighYVelocityTime = 0; State.PreviousDirection = nil
    State.WasAirborne = false; State.LastYVelocity = 0; State.PeakHeight = 0
    State.GroundHeight = 0; State.IsMultiJumping = false; State.LastActivationTime = 0
end

local batDesyncTpConn = nil
local hittingCooldownDesync = false

local function getBatDesync()
    local char=LP.Character; if not char then return nil end
    local tool=char:FindFirstChild("Bat"); if tool then return tool end
    local bp2=LP:FindFirstChild("Backpack")
    if bp2 then tool=bp2:FindFirstChild("Bat"); if tool then tool.Parent=char; return tool end end
    return nil
end

local function tryHitBatDesync()
    if hittingCooldownDesync then return end; hittingCooldownDesync=true
    pcall(function()
        local bat=getBatDesync(); if bat then
            bat:Activate(); local ev=bat:FindFirstChildWhichIsA("RemoteEvent")
            if ev then ev:FireServer() end
        end
    end)
    task.delay(0.08, function() hittingCooldownDesync=false end)
end

local function getClosestPlayerDesync()
    local char = LP.Character
    if not char then return nil,math.huge end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil,math.huge end
    local cp,cd=nil,math.huge
    for _,p in pairs(Players:GetPlayers()) do
        if p~=LP and p.Character then
            local tr=p.Character:FindFirstChild("HumanoidRootPart")
            if tr then local d=(hrp.Position-tr.Position).Magnitude; if d<cd then cd=d; cp=p end end
        end
    end
    return cp,cd
end

local function batDesyncTpUpdate()
    if not batDesyncTpEnabled then stopBatDesyncTp(); return end
    local char = LP.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local target,dist=getClosestPlayerDesync()
    if target and target.Character then
        local tr=target.Character:FindFirstChild("HumanoidRootPart")
        if tr then
            if sethiddenproperty then
                sethiddenproperty(hrp, "PhysicsRepRootPart", tr)
            end
            local targetPos = tr.Position + Vector3.new(0, 0.9, 0)
            if (hrp.Position - targetPos).Magnitude > 8 then
                hrp.CFrame = CFrame.new(targetPos)
            end
            local cam = workspace.CurrentCamera
            if cam then
                cam.CFrame = CFrame.new(cam.CFrame.Position, tr.Position)
            end
            tryHitBatDesync()
        end
    end
end

function startBatDesyncTp()
    if _GACC.safeBlocked and _GACC.safeBlocked() then batDesyncTpEnabled=false;if batDesyncTpSetVisual then batDesyncTpSetVisual(false) end;return end
    if batDesyncTpConn then return end
    batDesyncTpEnabled = true
    batDesyncTpConn = RunService.Heartbeat:Connect(batDesyncTpUpdate)
end

function stopBatDesyncTp()
    if batDesyncTpConn then batDesyncTpConn:Disconnect(); batDesyncTpConn = nil end
    batDesyncTpEnabled = false
end

function queueAutoBatStart() startBatAimbot() end

function resetAutoBatMotion()
    local char = LP.Character
    if char then
        local root = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")
        if root then root.AssemblyLinearVelocity = root.AssemblyLinearVelocity * 0.3; root.AssemblyAngularVelocity = Vector3.zero end
        if hum then hum.AutoRotate = true end
    end
end

startAutoSwingLoop = function() end
stopAutoSwingLoop = function() end
swingCurrentBat = function() end

LP.CharacterAdded:Connect(function(char)
    if autoBatEnabled then task.wait(0.5); startBatAimbot() end
end)
end)() 

_GACC.safeBlockedTools={bat=true,slap=true,sword=true,gun=true,pistol=true,rifle=true,medusa=true,hammer=true,axe=true,knife=true,katana=true,blade=true,fist=true,coil=true,boombox=true}
_GACC.inDuelCountdown=function()
    local ok,label=pcall(function() return LP.PlayerGui:FindFirstChild("DuelsMachineTopFrame").DuelsMachineTopFrame.Timer.Label end)
    if not ok or not label then return false end
    local text=tostring(label.Text or ""):upper():gsub("^%s+",""):gsub("%s+$","")
    if text=="GO" or text=="START" or text=="READY" then return true end
    local number=tonumber(text)
    return number~=nil and number>=0 and number<=10
end

_GACC.hasHeldBrainrot=function()
    if LP:GetAttribute("Stealing")==true or LP:GetAttribute("AntiKick")==true then return true end
    local char=LP.Character;if not char then return false end
    if char:GetAttribute("Stealing")==true then return true end
    for _,name in ipairs({"Carrying","IsCarrying","Grabbed","Holding","StealHold","HasGrab"}) do
        local value=char:FindFirstChild(name,true)
        if value and ((value:IsA("BoolValue") and value.Value) or (value:IsA("ObjectValue") and value.Value) or (value:IsA("StringValue") and value.Value~="")) then return true end
    end
    for _,obj in ipairs(char:GetChildren()) do
        local name=obj.Name:lower()
        if obj:IsA("Tool") then
            local blocked=false
            for word in pairs(_GACC.safeBlockedTools) do if name:find(word,1,true) then blocked=true;break end end
            if not blocked then return true end
        elseif obj:IsA("Model") and obj:FindFirstChildWhichIsA("BasePart",true) then
            if name:find("brainrot") or name:find("animal") or name:find("carry") or name:find("grab") or name:find("steal") or name:find("hold") then return true end
        end
    end
    return false
end

_GACC.safeBlocked=function()
    if not _GACC.safeModeEnabled then _GACC.safeModeActive=false;return false end
    brainrotDetected=_GACC.hasHeldBrainrot() or _GACC.inDuelCountdown()
    _GACC.safeModeActive=brainrotDetected
    return brainrotDetected
end

_GACC.enforceSafeMode=function()
    if not _GACC.safeBlocked() then return end
    if autoBatEnabled then stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
    if autoLeftEnabled then autoLeftEnabled=false;stopAutoLeft();if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end end
    if autoRightEnabled then autoRightEnabled=false;stopAutoRight();if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end end
    if batDesyncTpEnabled then stopBatDesyncTp();if batDesyncTpSetVisual then batDesyncTpSetVisual(false) end;if mobBtnRefs.batDesyncTp then mobBtnRefs.batDesyncTp(false) end end
end

task.spawn(function()
    while task.wait(.1) do
        brainrotDetected=_GACC.hasHeldBrainrot() or _GACC.inDuelCountdown()
        _GACC.safeModeActive=_GACC.safeModeEnabled and brainrotDetected
        if _GACC.safeModeActive then _GACC.enforceSafeMode() end
    end
end)
;(function()
    local state={applied=false,waiting=false,watchUntil=0,graceUntil=0,savedMode=nil,stealWasActive=false}

    local function modeName()
        if laggerModeEnabled then return carrySpeedActive and "Lagger Carry" or "Lagger" end
        return carrySpeedActive and "Carry" or "Normal"
    end

    local function setModes(lagger,carry)
        laggerModeEnabled=lagger
        carrySpeedActive=carry
        if refreshSpeedModeLabel then refreshSpeedModeLabel() end
        if _GACC.safeLaggerVisual then _GACC.safeLaggerVisual(lagger) end
        if _GACC.safeCarryVisual then _GACC.safeCarryVisual(carry) end
        if mobBtnRefs.lagger then mobBtnRefs.lagger(lagger) end
        if mobBtnRefs.carrySpeed then mobBtnRefs.carrySpeed(carry) end
    end

    local function isIgnoredTool(name)
        local lower=tostring(name or ""):lower()
        return lower:find("bat",1,true) or lower:find("slap",1,true) or lower:find("medusa",1,true) or lower:find("head",1,true) or lower:find("stone",1,true)
    end

    _GACC.autoCarryDetect=function()
        local char=LP.Character;if not char then return false end
        for _,name in ipairs({"Carrying","IsCarrying","Grabbed","Holding","StealHold","HasGrab"}) do
            local value=char:FindFirstChild(name,true)
            if value and ((value:IsA("BoolValue") and value.Value) or (value:IsA("ObjectValue") and value.Value) or (value:IsA("StringValue") and value.Value~="")) then return true end
        end
        for _,child in ipairs(char:GetChildren()) do
            local lower=child.Name:lower()
            if child:IsA("Model") and child:FindFirstChildWhichIsA("BasePart",true) then
                if (child:FindFirstChildOfClass("Humanoid") and child:FindFirstChild("HumanoidRootPart")) or lower:find("brainrot") or lower:find("animal") or lower:find("carry") or lower:find("grab") or lower:find("steal") or lower:find("hold") then return true end
            elseif child:IsA("Tool") and not isIgnoredTool(child.Name) then return true end
        end
        return false
    end

    local function enableCarry()
        state.waiting=false;state.watchUntil=0
        if not state.applied then state.savedMode=modeName() end
        state.applied=true;state.graceUntil=tick()+.75
        local wasLagger=state.savedMode=="Lagger" or state.savedMode=="Lagger Carry" or laggerModeEnabled
        if wasLagger then setModes(true,true) else setModes(false,true) end
    end

    local function disableCarry()
        if not state.applied and not state.waiting then return end
        local wasApplied=state.applied;local saved=state.savedMode
        state.applied=false;state.waiting=false;state.watchUntil=0;state.graceUntil=0;state.savedMode=nil
        if not wasApplied then return end
        if saved=="Lagger" or saved=="Lagger Carry" then setModes(true,false)
        elseif saved=="Carry" then setModes(false,true)
        else setModes(false,false) end
    end

    _GACC.autoCarryWatch=function(seconds)
        if not _GACC.autoCarrySpeedEnabled then return end
        state.waiting=true;state.watchUntil=tick()+(seconds or 1.25)
    end
    _GACC.disableAutoCarry=disableCarry

    RunService.RenderStepped:Connect(function()
        if not _GACC.autoCarrySpeedEnabled then disableCarry();return end
        local char=LP.Character;local hum=char and char:FindFirstChildOfClass("Humanoid");local root=char and char:FindFirstChild("HumanoidRootPart")
        if not char or not hum or not root then disableCarry();state.stealWasActive=false;return end
        local humanoidState=hum:GetState()
        local gotHit=humanoidState==Enum.HumanoidStateType.Physics or humanoidState==Enum.HumanoidStateType.Ragdoll or humanoidState==Enum.HumanoidStateType.FallingDown
        local stealing=LP:GetAttribute("Stealing")==true or char:GetAttribute("Stealing")==true
        local carrying=_GACC.autoCarryDetect()
        if stealing and not state.stealWasActive then state.stealWasActive=true;enableCarry()
        elseif not stealing then state.stealWasActive=false end
        if state.waiting then
            if gotHit or tick()>state.watchUntil then state.waiting=false;state.watchUntil=0
            elseif carrying then enableCarry() end
        end
        if carrying and not state.applied then enableCarry() end
        if state.applied and (gotHit or (tick()>state.graceUntil and not carrying and not stealing)) then disableCarry() end
    end)
end)()

saveConfig=function()
    local function ks(e)
        if e.kb then return {kb=e.kb.Name,gp=e.gp and e.gp.Name}
        elseif e.gp then return {gp=e.gp.Name}
        else return {kb=nil,gp=nil} end
    end    local cfg={normalSpeed=NS,carrySpeed=CS,dropBrainrotKey=ks(KB.DropBrainrot),autoLeftKey=ks(KB.AutoLeft),autoRightKey=ks(KB.AutoRight),autoBatKey=ks(KB.AutoBat),laggerToggleKey=ks(KB.LaggerToggle),tpFloorKey=ks(KB.TPFloor),instaResetKey=ks(KB.InstaReset),guiHideKey=ks(KB.GuiHide),speedToggleKey=ks(KB.SpeedToggle),grabRadius=Steal.StealRadius,stealDuration=Steal.StealDuration,stealMode=stealMode,antiRagdoll=antiRagdollEnabled,autoStealEnabled=Steal.AutoStealEnabled,infiniteJump=infJumpEnabled,infJumpMode=infJumpMode,medusaCounter=medusaCounterEnabled,batCounter=batCounterEnabled,carrySpeedActive=carrySpeedActive,laggerModeEnabled=laggerModeEnabled,laggerSpeed=LAGGER_SPEED,laggerCarrySpeed=LAGGER_CARRY_SPEED,autoBat=autoBatEnabled,autoSwing=autoSwingEnabled,unwalkEnabled=unwalkEnabled,antiLag=antiLagEnabled,stretchRez=stretchRezEnabled,autoTPEnabled=autoTPEnabled,autoTPHeight=autoTPHeight,guiTransparencyEnabled=guiTransparencyEnabled,mobileButtonsEnabled=mobileButtonsEnabled,mobileButtonsLocked=mobileButtonsLocked,mobileButtonsGrouped=_GACC.mobileButtonsGrouped,mobileButtonsSize=mobileButtonsSize,circleButtonsEnabled=circleButtonsEnabled,autoSwitchSpeed=autoSwitchSpeedEnabled,fovValue=fovValue,perButtonDrag=perButtonDragEnabled,skyTheme=currentSkyTheme,medusaReset=medusaResetEnabled,autoMoveSwing=autoMoveSwingEnabled,autoMoveSwingInterval=autoMoveSwingInterval,ragdollGui=ragdollGuiEnabled,introSoundEnabled=introSoundEnabled,animEnabled=false,animationPack=_GACC.extras.getPack(),headlessEnabled=_GACC.extras.getHeadless(),korbloxEnabled=_GACC.extras.getKorblox(),bodyLockEnabled=_GACC.extras.getBodyLock(),bodyLockRadius=_GACC.extras.getBodyLockRadius(),autoResetOnDeath=_GACC.extras.getAutoReset(),backgroundEnabled=backgroundEnabled,backgroundIndex=backgroundIndex,colorThemeName=currentColorTheme,keys=(function() if not _GuiKeys then return {} end;local t={};for k,v in pairs(_GuiKeys) do t[k]=v.Name end;return t end)()}
    cfg.safeModeEnabled=_GACC.safeModeEnabled
    cfg.autoCarrySpeedEnabled=_GACC.autoCarrySpeedEnabled
    cfg.controllerKeys=(function() local t={};for k,v in pairs(_GACC.ControllerKeys or {}) do if v then t[k]=v.Name end end;return t end)()
    cfg.opStealRange=SemiSteal.CONFIG.STEAL_RANGE
    cfg.opPrimeRange=SemiSteal.CONFIG.PRIME_RANGE
    cfg.mobileButtonPositions=_GACC.mobileButtonPositions
    cfg.mobileGroupPosition=_GACC.mobileGroupPosition
    if writefile then pcall(function() writefile("Dice_Mobile.json",HS:JSONEncode(cfg)) end) end
end

task.spawn(function() while task.wait(5) do saveConfig() end end)

local function resetAllSettings()
    NS=59;CS=29;LAGGER_SPEED=30;LAGGER_CARRY_SPEED=15;carrySpeedActive=false;laggerModeEnabled=false
    autoSwitchSpeedEnabled=false;antiRagdollEnabled=false;infJumpEnabled=false;infJumpMode="manual"
    medusaCounterEnabled=false;batCounterEnabled=false;unwalkEnabled=false
    autoLeftEnabled=false;autoRightEnabled=false;autoBatEnabled=false;autoSwingEnabled=true;autoMoveSwingEnabled=false
    autoTPEnabled=false;autoTPHeight=20;antiLagEnabled=false;stretchRezEnabled=false
    Steal.AutoStealEnabled=false;Steal.StealRadius=60;Steal.StealDuration=1.4;SemiSteal.CONFIG.STEAL_RANGE=9;SemiSteal.CONFIG.PRIME_RANGE=80;stealMode="normal"
    guiTransparencyEnabled=false;mobileButtonsEnabled=true;mobileButtonsLocked=true;_GACC.mobileButtonsGrouped=false;mobileButtonsSize=64
    _GACC.mobileButtonPositions={}
    _GACC.mobileGroupPosition={x=.86,y=.5}
    circleButtonsEnabled=false;uiLocked=false;fovValue=80;fovIndex=1
    introSoundEnabled=true
    _GACC.safeModeEnabled=false;_GACC.safeModeActive=false;_GACC.autoCarrySpeedEnabled=false;if _GACC.disableAutoCarry then _GACC.disableAutoCarry() end
    _GACC.extras.reset(LP.Character)
    KB.DropBrainrot={kb=nil,gp=nil};KB.AutoLeft={kb=nil,gp=nil};KB.AutoRight={kb=nil,gp=nil}
    KB.AutoBat={kb=nil,gp=nil};KB.TPFloor={kb=nil,gp=nil};KB.InstaReset={kb=nil,gp=nil}
    KB.GuiHide={kb=nil,gp=nil};KB.SpeedToggle={kb=nil,gp=nil};KB.LaggerToggle={kb=nil,gp=nil}
    if refreshSpeedModeLabel then refreshSpeedModeLabel() end
    if mobBtnRefs.carrySpeed then mobBtnRefs.carrySpeed(carrySpeedActive) end
    if mobBtnRefs.lagger then mobBtnRefs.lagger(laggerModeEnabled) end
    if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end
    if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end
    if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end
    if _GACC.safeModeVisual then _GACC.safeModeVisual(false) end
    if _GACC.autoCarryVisual then _GACC.autoCarryVisual(false) end
    stopBatAimbot();stopAutoSteal();stopAutoLeft();stopAutoRight();stopAntiRagdoll();stopAutoTP();stopHoldInfJump()
    if stretchRezEnabled then disableStretchRez() end;if antiLagEnabled then disableAntiLag() end;saveConfig()
end

local setInfJumpVisual,setAntiRagVisual,setMedusaVisual,setUnwalkVisual

refreshSpeedModeLabel=function()
    if modeValLbl then
        if laggerModeEnabled then 
            modeValLbl.Text = carrySpeedActive and "Lagger Carry" or "Lagger Mode"
        elseif carrySpeedActive then modeValLbl.Text="Carry"
        else modeValLbl.Text="Normal" end
    end
    if laggerModePillRef and laggerModePillRef.pill and laggerModePillRef.dot then
        local pill=laggerModePillRef.pill;local dot=laggerModePillRef.dot;local on=laggerModeEnabled
        local WHITE=Color3.fromRGB(255,255,255);local OFF=Color3.fromRGB(46,24,38);local GRAY=Color3.fromRGB(180,150,165)
        TweenService:Create(pill,TweenInfo.new(0.16,Enum.EasingStyle.Quad),{BackgroundColor3=on and WHITE or OFF}):Play()
        TweenService:Create(dot,TweenInfo.new(0.16,Enum.EasingStyle.Back),{Position=on and UDim2.new(1,-13,0.5,-5) or UDim2.new(0,3,0.5,-5),BackgroundColor3=on and Color3.fromRGB(30,30,30) or GRAY}):Play()
    end
    if carryModePillRef and carryModePillRef.pill and carryModePillRef.dot then
        local pill=carryModePillRef.pill;local dot=carryModePillRef.dot;local on=carrySpeedActive
        local WHITE=Color3.fromRGB(255,255,255);local OFF=Color3.fromRGB(46,24,38);local GRAY=Color3.fromRGB(180,150,165)
        TweenService:Create(pill,TweenInfo.new(0.16,Enum.EasingStyle.Quad),{BackgroundColor3=on and WHITE or OFF}):Play()
        TweenService:Create(dot,TweenInfo.new(0.16,Enum.EasingStyle.Back),{Position=on and UDim2.new(1,-13,0.5,-5) or UDim2.new(0,3,0.5,-5),BackgroundColor3=on and Color3.fromRGB(30,30,30) or GRAY}):Play()
    end
end

toggleCarryMode=function()
    carrySpeedActive = not carrySpeedActive
    refreshSpeedModeLabel()
    if mobBtnRefs.carrySpeed then mobBtnRefs.carrySpeed(carrySpeedActive) end
    if _GACC.safeCarryVisual then _GACC.safeCarryVisual(carrySpeedActive) end
end

toggleLaggerMode=function()
    laggerModeEnabled = not laggerModeEnabled
    refreshSpeedModeLabel()
    if mobBtnRefs.lagger then mobBtnRefs.lagger(laggerModeEnabled) end
    if _GACC.safeLaggerVisual then _GACC.safeLaggerVisual(laggerModeEnabled) end
end

;(function()
    local resetCooldown=0

    local function forceReset()
        local char=LP.Character
        if not char then return end
        local hum=char:FindFirstChildOfClass("Humanoid")
        local root=char:FindFirstChild("HumanoidRootPart")
        if not hum or not root or hum.Health<=0 then return end

        pcall(function()
            hum:ChangeState(Enum.HumanoidStateType.GettingUp)
            root.Velocity=Vector3.zero
            root.RotVelocity=Vector3.zero
            root.AssemblyLinearVelocity=Vector3.zero
            root.AssemblyAngularVelocity=Vector3.zero

            for _,obj in ipairs(char:GetDescendants()) do
                if obj:IsA("Motor6D") then obj.Enabled=true end
                if obj:IsA("Constraint") then obj.Enabled=true end
            end

            if workspace.CurrentCamera then workspace.CurrentCamera.CameraSubject=hum end

            local playerModule=LP:FindFirstChild("PlayerScripts") and LP.PlayerScripts:FindFirstChild("PlayerModule")
            local controlModule=playerModule and playerModule:FindFirstChild("ControlModule")
            if controlModule then
                local controls=require(controlModule)
                if controls then controls:Enable() end
            end

            hum.AutoRotate=true
            hum.PlatformStand=false
            hum.Sit=false
        end)
    end

    startAntiRagdoll=function()
        if Conns.antiRag then return end
        antiRagdollEnabled=true
        Conns.antiRag=RunService.Heartbeat:Connect(function()
            if not antiRagdollEnabled then return end
            local char=LP.Character
            if not char then return end
            local hum=char:FindFirstChildOfClass("Humanoid")
            if not hum or hum.Health<=0 then return end

            local state=hum:GetState()
            local ragdolled=(state==Enum.HumanoidStateType.Physics or state==Enum.HumanoidStateType.Ragdoll or state==Enum.HumanoidStateType.FallingDown)
            if ragdolled then
                local now=tick()
                if now-resetCooldown>.15 then
                    resetCooldown=now
                    forceReset()
                end
            end
        end)
    end

    stopAntiRagdoll=function()
        antiRagdollEnabled=false
        if Conns.antiRag then
            Conns.antiRag:Disconnect()
            Conns.antiRag=nil
        end
    end
end)()

startUnwalk=function()
    local c=LP.Character;if not c then return end;local hum=c:FindFirstChildOfClass("Humanoid")
    if hum then for _,t in ipairs(hum:GetPlayingAnimationTracks()) do t:Stop() end end
    local anim=c:FindFirstChild("Animate");if anim then unwalkSavedAnimate=anim:Clone();anim:Destroy() end
end

stopUnwalk=function() local c=LP.Character;if c and unwalkSavedAnimate then unwalkSavedAnimate:Clone().Parent=c;unwalkSavedAnimate=nil end end

local function createStealBar()
    for _,n in ipairs({"MoveeStealBar"}) do
        local old=game:GetService("CoreGui"):FindFirstChild(n);if old then old:Destroy() end
        local pgui=LP:FindFirstChild("PlayerGui");if pgui then local o=pgui:FindFirstChild(n);if o then o:Destroy() end end
    end
    local SB_W,SB_H=220,46
    local stealGui=Instance.new("ScreenGui");stealGui.Name="MoveeStealBar";stealGui.ResetOnSpawn=false;stealGui.IgnoreGuiInset=true;stealGui.DisplayOrder=8
    pcall(function() if syn and syn.protect_gui then syn.protect_gui(stealGui) end end)
    if not pcall(function() stealGui.Parent=game:GetService("CoreGui") end) then stealGui.Parent=LP:WaitForChild("PlayerGui") end

    
    stealBarFrame=Instance.new("Frame",stealGui)
    stealBarFrame.Size=UDim2.new(0,SB_W,0,SB_H)
    stealBarFrame.AnchorPoint=Vector2.new(.5,.5);stealBarFrame.Position=UDim2.new(0.5,0,0.86,0)
    stealBarFrame.BackgroundColor3=Color3.fromRGB(9,9,15)
    stealBarFrame.BackgroundTransparency=0.04
    stealBarFrame.BorderSizePixel=0; stealBarFrame.ZIndex=20; stealBarFrame.ClipsDescendants=true
    Instance.new("UICorner",stealBarFrame).CornerRadius=UDim.new(0,10)
    local mobileStealScale=Instance.new("UIScale",stealBarFrame);mobileStealScale.Scale=.82
    local sbStroke=Instance.new("UIStroke",stealBarFrame)
    sbStroke.Color=Color3.fromRGB(48,50,64); sbStroke.Thickness=1.2; sbStroke.Transparency=0
    local sbBgGrad=Instance.new("UIGradient",stealBarFrame)
    sbBgGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(17,17,25)),ColorSequenceKeypoint.new(0.55,Color3.fromRGB(9,9,15)),ColorSequenceKeypoint.new(1,Color3.fromRGB(5,5,10))})
    sbBgGrad.Rotation=18
    local sideAccent=Instance.new("Frame",stealBarFrame)
    sideAccent.Size=UDim2.new(0,2,0,24); sideAccent.Position=UDim2.new(0,0,0.5,-12)
    sideAccent.BackgroundColor3=_GACC.accent; sideAccent.BorderSizePixel=0; sideAccent.ZIndex=22
    Instance.new("UICorner",sideAccent).CornerRadius=UDim.new(0,2)

    
    local dot=Instance.new("Frame",stealBarFrame)
    dot.Size=UDim2.new(0,6,0,6); dot.Position=UDim2.new(0,12,0,11)
    dot.BackgroundColor3=Color3.fromRGB(55,58,75); dot.BorderSizePixel=0; dot.ZIndex=22
    Instance.new("UICorner",dot).CornerRadius=UDim.new(0,4)

    
    local stealLbl=Instance.new("TextLabel",stealBarFrame)
    stealLbl.Size=UDim2.new(0,105,0,16); stealLbl.Position=UDim2.new(0,24,0,5)
    stealLbl.BackgroundTransparency=1; stealLbl.Text="AUTO STEAL"
    stealLbl.TextColor3=Color3.fromRGB(226,230,242); stealLbl.Font=Enum.Font.GothamBold; stealLbl.TextSize=10
    stealLbl.TextXAlignment=Enum.TextXAlignment.Left; stealLbl.ZIndex=22

    local stateLbl=Instance.new("TextLabel",stealBarFrame)
    stateLbl.Size=UDim2.new(0,70,0,12); stateLbl.Position=UDim2.new(0,12,0,22)
    stateLbl.BackgroundTransparency=1; stateLbl.Text="OFF"
    stateLbl.TextColor3=Color3.fromRGB(104,108,126); stateLbl.TextSize=8; stateLbl.Font=Enum.Font.GothamBold
    stateLbl.TextXAlignment=Enum.TextXAlignment.Left; stateLbl.ZIndex=22

    local perfLbl=Instance.new("TextLabel",stealBarFrame)
    perfLbl.Size=UDim2.new(0,92,0,12); perfLbl.Position=UDim2.new(0,66,0,22)
    perfLbl.BackgroundTransparency=1; perfLbl.Text="FPS --  /  --ms"
    perfLbl.TextColor3=Color3.fromRGB(128,132,150); perfLbl.TextSize=8; perfLbl.Font=Enum.Font.GothamBold
    perfLbl.TextXAlignment=Enum.TextXAlignment.Center; perfLbl.ZIndex=22

    
    local pctLbl=Instance.new("TextLabel",stealBarFrame)
    pctLbl.Size=UDim2.new(0,42,0,14); pctLbl.Position=UDim2.new(1,-50,0,21)
    pctLbl.BackgroundTransparency=1; pctLbl.Text="0%"
    pctLbl.TextColor3=_GACC.accent; pctLbl.Font=Enum.Font.GothamBlack; pctLbl.TextSize=10
    pctLbl.TextXAlignment=Enum.TextXAlignment.Right; pctLbl.ZIndex=22
    table.insert(_themeExtRefs,{callback=function(thm) pcall(function() pctLbl.TextColor3=thm.accent end) end})

    
    local track=Instance.new("Frame",stealBarFrame)
    track.Size=UDim2.new(1,-24,0,4); track.Position=UDim2.new(0,12,1,-8)
    track.BackgroundColor3=Color3.fromRGB(22,22,34); track.BackgroundTransparency=0; track.BorderSizePixel=0; track.ZIndex=21
    Instance.new("UICorner",track).CornerRadius=UDim.new(0,3)

    
    local fillLine=Instance.new("Frame",track)
    fillLine.Size=UDim2.new(0,0,1,0); fillLine.Position=UDim2.new(0,0,0,0)
    fillLine.BackgroundColor3=_GACC.accent; fillLine.BorderSizePixel=0; fillLine.ZIndex=22
    Instance.new("UICorner",fillLine).CornerRadius=UDim.new(0,3)
    local fillGrad=Instance.new("UIGradient",fillLine)
    fillGrad.Color=_gAccentGrad(0)
    table.insert(_themeExtRefs,{callback=function(thm)
        pcall(function() stealBarFrame.BackgroundColor3=Color3.fromRGB(8,8,14) end)
        pcall(function() fillLine.BackgroundColor3=thm.accent end)
        pcall(function() fillGrad.Color=_gAccentGrad(0) end)
        pcall(function() sideAccent.BackgroundColor3=thm.accent end)
    end})

    
    task.spawn(function()
        local lastPct=0
        while fillLine and fillLine.Parent do
            local now=tick()
            local pct=0
            local ready=false
            if Steal.AutoStealEnabled then
                if stealMode=="op" and SemiSteal.State.active then
                    pct=math.clamp((now-SemiSteal.State.startTime)/math.max(tonumber(Steal.StealDuration) or 1.4,.05),0,1); ready=true
                elseif stealMode=="normal" and isStealing and stealStartTime then
                    pct=math.clamp((now-stealStartTime)/Steal.StealDuration,0,1); ready=true
                end
            end
            lastPct=lastPct+(pct-lastPct)*0.5
            if math.abs(lastPct-pct)<0.005 then lastPct=pct end
            fillLine.Size=UDim2.new(lastPct,0,1,0)
            fillGrad.Color=_gAccentGrad(now)
            pctLbl.Text=math.floor(pct*100).."%"
            if not Steal.AutoStealEnabled then
                stateLbl.Text="OFF"
            elseif ready then
                stateLbl.Text=stealMode=="op" and "OP HOLD" or "STEALING"
            else
                stateLbl.Text="SEARCHING"
            end
            stateLbl.TextColor3=ready and _GACC.accent or Color3.fromRGB(104,108,126)
            perfLbl.Text="FPS "..tostring(_perfFps).."  /  "..tostring(_perfPing).."ms"
            
            if ready then
                dot.BackgroundColor3=_GACC.accent
            else
                dot.BackgroundColor3=Color3.fromRGB(55,58,75)
            end
            
            sbStroke.Color=ready and _GACC.accentDark or Color3.fromRGB(38,40,52)
            task.wait(0.016)
        end
    end)

    
    local dragStart2,dragStartPos2,dragging2=nil,nil,false
    stealBarFrame.InputBegan:Connect(function(input)
        if uiLocked then return end
        if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
            dragging2=true;dragStart2=input.Position;dragStartPos2=stealBarFrame.Position
            input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then dragging2=false end end)
        end
    end)
    UIS.InputChanged:Connect(function(input)
        if uiLocked then dragging2=false;return end
        if dragging2 and (input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch) then
            local delta=input.Position-dragStart2
            stealBarFrame.Position=UDim2.new(dragStartPos2.X.Scale,dragStartPos2.X.Offset+delta.X,dragStartPos2.Y.Scale,dragStartPos2.Y.Offset+delta.Y)
        end
    end)
end
createStealBar()



pcall(function()
    if not(isfile and isfile("Dice_Mobile.json")) then return end
    local ok,d=pcall(function() return HS:JSONDecode(readfile("Dice_Mobile.json")) end)
    if not(ok and type(d)=="table") then return end
    if type(d.normalSpeed)=="number" and d.normalSpeed>0 then NS=d.normalSpeed end
    if type(d.carrySpeed)=="number" and d.carrySpeed>0 then CS=d.carrySpeed end
    if type(d.laggerSpeed)=="number" and d.laggerSpeed>0 then LAGGER_SPEED=d.laggerSpeed end
    if type(d.laggerCarrySpeed)=="number" and d.laggerCarrySpeed>0 then LAGGER_CARRY_SPEED=d.laggerCarrySpeed end
    if type(d.carrySpeedActive)=="boolean" then carrySpeedActive=d.carrySpeedActive end
    if type(d.laggerModeEnabled)=="boolean" then laggerModeEnabled=d.laggerModeEnabled end
    if type(d.antiRagdoll)=="boolean" then antiRagdollEnabled=d.antiRagdoll end
    if type(d.infiniteJump)=="boolean" then infJumpEnabled=d.infiniteJump end
    if type(d.infJumpMode)=="string" then infJumpMode=d.infJumpMode end
    if type(d.medusaCounter)=="boolean" then medusaCounterEnabled=d.medusaCounter end
    if type(d.batCounter)=="boolean" then batCounterEnabled=d.batCounter end
    if type(d.autoStealEnabled)=="boolean" then Steal.AutoStealEnabled=d.autoStealEnabled end
    if d.stealMode=="semi" then stealMode="op"
    elseif type(d.stealMode)=="string" and (d.stealMode=="normal" or d.stealMode=="op") then stealMode=d.stealMode end
    if type(d.grabRadius)=="number" then Steal.StealRadius=d.grabRadius end
    if type(d.stealDuration)=="number" then Steal.StealDuration=d.stealDuration end
    local savedOPRange=d.opStealRange or d.semiStealRange
    local savedOPPrime=d.opPrimeRange or d.semiPrimeRange
    if type(savedOPRange)=="number" then SemiSteal.CONFIG.STEAL_RANGE=math.clamp(savedOPRange,1,100) end
    if type(savedOPPrime)=="number" then SemiSteal.CONFIG.PRIME_RANGE=math.clamp(savedOPPrime,1,500) end
    if type(d.autoSwing)=="boolean" then autoSwingEnabled=d.autoSwing end
    if type(d.unwalkEnabled)=="boolean" then unwalkEnabled=d.unwalkEnabled end
    if type(d.antiLag)=="boolean" then antiLagEnabled=d.antiLag end
    if type(d.stretchRez)=="boolean" then stretchRezEnabled=d.stretchRez end
    if type(d.autoTPEnabled)=="boolean" then autoTPEnabled=d.autoTPEnabled end
    if type(d.autoTPHeight)=="number" then autoTPHeight=d.autoTPHeight end
    if type(d.fovValue)=="number" then fovValue=d.fovValue end
    if type(d.fovIndex)=="number" then fovIndex=d.fovIndex end
    if type(d.skyTheme)=="string" then currentSkyTheme=d.skyTheme end
    if type(d.autoMoveSwing)=="boolean" then autoMoveSwingEnabled=d.autoMoveSwing end
    if type(d.autoMoveSwingInterval)=="number" then autoMoveSwingInterval=d.autoMoveSwingInterval end
    if type(d.ragdollGui)=="boolean" then ragdollGuiEnabled=d.ragdollGui end
    if type(d.mobileButtonsEnabled)=="boolean" then mobileButtonsEnabled=d.mobileButtonsEnabled end
    if type(d.mobileButtonsSize)=="number" then mobileButtonsSize=math.clamp(math.floor(d.mobileButtonsSize+.5),44,110) end
    if type(d.mobileButtonsLocked)=="boolean" then mobileButtonsLocked=d.mobileButtonsLocked end
    if type(d.mobileButtonsGrouped)=="boolean" then _GACC.mobileButtonsGrouped=d.mobileButtonsGrouped end
    if type(d.mobileButtonPositions)=="table" then _GACC.mobileButtonPositions=d.mobileButtonPositions end
    if type(d.mobileGroupPosition)=="table" then _GACC.mobileGroupPosition=d.mobileGroupPosition end
    if type(d.circleButtonsEnabled)=="boolean" then circleButtonsEnabled=d.circleButtonsEnabled end
    if type(d.introSoundEnabled)=="boolean" then introSoundEnabled=d.introSoundEnabled end
    animEnabled=false
    local savedPack=type(d.animationPack)=="string" and d.animationPack or d.animPack
    if type(savedPack)=="string" then _GACC.extras.setPack(savedPack,false) end
    if type(d.headlessEnabled)=="boolean" then _GACC.extras.setHeadless(d.headlessEnabled) end
    if type(d.korbloxEnabled)=="boolean" then _GACC.extras.setKorblox(d.korbloxEnabled) end
    if type(d.bodyLockEnabled)=="boolean" then _GACC.extras.setBodyLockState(d.bodyLockEnabled) end
    if type(d.bodyLockRadius)=="number" then _GACC.extras.setBodyLockRadius(d.bodyLockRadius) end
    if type(d.autoResetOnDeath)=="boolean" then _GACC.extras.setAutoResetState(d.autoResetOnDeath) end
    if type(d.backgroundEnabled)=="boolean" then backgroundEnabled=d.backgroundEnabled end
    if type(d.backgroundIndex)=="number" then backgroundIndex=d.backgroundIndex end
    if type(d.colorThemeName)=="string" and THEME_DEFS[d.colorThemeName] then currentColorTheme=d.colorThemeName end
    if type(d.autoSwitchSpeed)=="boolean" then autoSwitchSpeedEnabled=d.autoSwitchSpeed end
    if type(d.safeModeEnabled)=="boolean" then _GACC.safeModeEnabled=d.safeModeEnabled end
    if type(d.autoCarrySpeedEnabled)=="boolean" then _GACC.autoCarrySpeedEnabled=d.autoCarrySpeedEnabled end
    _GACC.safeModeActive=false
end)


pcall(function()
    task.spawn(function() task.wait(.5); _GACC.extras.applyPack(_GACC.extras.getPack()) end)
    if _GACC.extras.getHeadless() or _GACC.extras.getKorblox() then task.spawn(function() task.wait(.3); local char=LP.Character; if char then _GACC.extras.onCharacter(char) end end) end
    if _GACC.extras.getBodyLock() then task.spawn(function() task.wait(.3); _GACC.extras.startBodyLock() end) end
    if _GACC.extras.getAutoReset() then task.spawn(function() task.wait(.3); _GACC.extras.setupAutoReset() end) end
    if antiLagEnabled then task.spawn(function() task.wait(1); if enableAntiLag then enableAntiLag() end end) end
    if stretchRezEnabled then task.spawn(function() task.wait(0.5); if enableStretchRez then enableStretchRez() end end) end
    if antiRagdollEnabled then task.spawn(function() task.wait(0.5); if startAntiRagdoll then startAntiRagdoll() end end) end
    if infJumpEnabled then task.spawn(function() task.wait(0.5); if setInfJumpInternal then setInfJumpInternal(true) end end) end
    if Steal.AutoStealEnabled then task.spawn(function() task.wait(1); if startAutoSteal then startAutoSteal() end end) end
    if batCounterEnabled then task.spawn(function() task.wait(1); if startBatCounter then startBatCounter() end end) end
    if medusaCounterEnabled then task.spawn(function() task.wait(1); local char=LP.Character; if char and setupMedusa then setupMedusa(char) end end) end
    if autoTPEnabled then task.spawn(function() task.wait(0.5); if startAutoTP then startAutoTP() end end) end
    if currentSkyTheme and currentSkyTheme ~= "" then task.spawn(function() task.wait(1); if CandyApplyCustomSky then CandyApplyCustomSky(currentSkyTheme) end end) end
end)


local GuiToggleSetters = {}


local function _buildGuiScope()

    local GuiRefs = {}
    
    local _thm0 = THEME_DEFS[currentColorTheme] or THEME_DEFS.SILVER
    local _ACC = {accent=_thm0.accent,accentDark=_thm0.accentDark,accentBg=_thm0.accentBg,accentHover=_thm0.accentHover,accentRowHover=_thm0.accentRowHover}
    
    local _themeSeps,_themeScrollbars,_themeSectRefs,_themeTabBtns={},{},{},{}
    local _themeTabInds,_themeActBtns,_themeKbLabels,_themeSwatchStrokes={},{},{},{}
    local _themeToggleRefs={}  
    local applyColorTheme 
    local C={
        bg=Color3.fromRGB(6,6,6), bgDark=Color3.fromRGB(3,3,3), row=Color3.fromRGB(16,16,16),
        input=Color3.fromRGB(16,16,16), blue=_ACC.accent, blueDim=Color3.fromRGB(70,70,70),
        blueDark=Color3.fromRGB(22,22,22), text=Color3.fromRGB(255,255,255), textDim=Color3.fromRGB(160,160,160),
        textMuted=Color3.fromRGB(100,100,100), white=Color3.fromRGB(255,255,255), divider=Color3.fromRGB(32,32,32),
        green=Color3.fromRGB(80,220,120),
        yellow=Color3.fromRGB(255,220,0), yellowDim=Color3.fromRGB(160,130,0),
        accent=_ACC.accent, accentDark=_ACC.accentDark, accentBg=_ACC.accentBg,
        accentHover=_ACC.accentHover, accentRowHover=_ACC.accentRowHover,
    }

    local function guiCorner(p,r) local c=Instance.new("UICorner");c.CornerRadius=UDim.new(0,r or 10);c.Parent=p;return c end
    local function guiStroke(p,col,t) local s=Instance.new("UIStroke");s.Color=col or Color3.fromRGB(60,60,70);s.Thickness=t or 1;s.Parent=p;return s end
    local function tw(obj,props,ti) TweenService:Create(obj,ti or TweenInfo.new(0.22,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),props):Play() end
    
    local function _accentGrad(t)
        local a=_ACC.accent; local d=_ACC.accentDark
        local pulse=math.sin(t*0.7)*0.14
        local aR=math.clamp(math.floor(a.R*255*(1+pulse)),0,255)
        local aG=math.clamp(math.floor(a.G*255*(1+pulse)),0,255)
        local aB=math.clamp(math.floor(a.B*255*(1+pulse)),0,255)
        local dR=math.clamp(math.floor(d.R*255*(0.75+pulse*0.25)),0,255)
        local dG=math.clamp(math.floor(d.G*255*(0.75+pulse*0.25)),0,255)
        local dB=math.clamp(math.floor(d.B*255*(0.75+pulse*0.25)),0,255)
        return ColorSequence.new({
            ColorSequenceKeypoint.new(0,   Color3.fromRGB(dR,dG,dB)),
            ColorSequenceKeypoint.new(0.3, Color3.fromRGB(aR,aG,aB)),
            ColorSequenceKeypoint.new(0.6, Color3.fromRGB(255,255,255)),
            ColorSequenceKeypoint.new(0.82,Color3.fromRGB(aR,aG,aB)),
            ColorSequenceKeypoint.new(1,   Color3.fromRGB(dR,dG,dB)),
        })
    end

    local function makeDraggable_cyber(dragTarget, moveTarget)
        moveTarget = moveTarget or dragTarget
        local dragging, dragInput, dragStart, startPos = false
        dragTarget.InputBegan:Connect(function(input)
            if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
                dragging=true; dragStart=input.Position; startPos=moveTarget.Position
                input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then dragging=false end end)
            end
        end)
        dragTarget.InputChanged:Connect(function(input)
            if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then dragInput=input end
        end)
        UIS.InputChanged:Connect(function(input)
            if input==dragInput and dragging then
                local delta=input.Position-dragStart
                moveTarget.Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+delta.X,startPos.Y.Scale,startPos.Y.Offset+delta.Y)
            end
        end)
    end

    local Keys={
        circle=Enum.KeyCode.E, speed=Enum.KeyCode.Q, carryMode=Enum.KeyCode.C,
        laggerToggle=Enum.KeyCode.K, guiHide=Enum.KeyCode.RightControl,
        dropBrainrot=Enum.KeyCode.H, tpDown=Enum.KeyCode.T,
        instaReset=Enum.KeyCode.B, autoLeft=Enum.KeyCode.J, autoRight=Enum.KeyCode.L,
        batDesyncTp=Enum.KeyCode.X
    }
    _GACC.ControllerKeys={
        circle=Enum.KeyCode.ButtonR2, speed=Enum.KeyCode.ButtonL3, carryMode=Enum.KeyCode.ButtonL1,
        laggerToggle=Enum.KeyCode.ButtonR1, guiHide=Enum.KeyCode.ButtonSelect,
        dropBrainrot=Enum.KeyCode.ButtonX, tpDown=Enum.KeyCode.ButtonB,
        instaReset=Enum.KeyCode.ButtonA, autoLeft=Enum.KeyCode.DPadLeft, autoRight=Enum.KeyCode.DPadRight,
        batDesyncTp=Enum.KeyCode.ButtonY
    }

    pcall(function()
        if not(isfile and isfile("Dice_Mobile.json")) then return end
        local ok,d=pcall(function() return HS:JSONDecode(readfile("Dice_Mobile.json")) end)
        if ok and type(d)=="table" and type(d.keys)=="table" then
            for k,v in pairs(d.keys) do
                local ok2,kc=pcall(function() return Enum.KeyCode[v] end)
                if ok2 and kc and kc~=Enum.KeyCode.Unknown then
                    if string.match(v,"^Button") or string.match(v,"^DPad") then _GACC.ControllerKeys[k]=kc else Keys[k]=kc end
                end
            end
        end
        if ok and type(d)=="table" and type(d.controllerKeys)=="table" then
            for k,v in pairs(d.controllerKeys) do
                local ok2,kc=pcall(function() return Enum.KeyCode[v] end)
                if ok2 and kc and kc~=Enum.KeyCode.Unknown then _GACC.ControllerKeys[k]=kc end
            end
        end
    end)
    _GuiKeys = Keys

    
    local PlayerGui = LP:WaitForChild("PlayerGui")

    local GuiHub=Instance.new("ScreenGui")
    GuiHub.Name="DicePrivate"; GuiHub.ResetOnSpawn=false
    GuiHub.ZIndexBehavior=Enum.ZIndexBehavior.Sibling; GuiHub.Parent=PlayerGui
    GuiRefs.hub=GuiHub

    local Outer=Instance.new("Frame")
    Outer.Name="Outer"; Outer.Size=UDim2.new(0,310,0,410); Outer.Position=UDim2.new(0,-330,0,80)
    Outer.BackgroundTransparency=1; Outer.BorderSizePixel=0; Outer.ClipsDescendants=false; Outer.Parent=GuiHub
    Outer:GetPropertyChangedSignal("Size"):Connect(function() if Outer.Size~=UDim2.fromOffset(310,410) then Outer.Size=UDim2.fromOffset(310,410) end end)
    GuiRefs.outer=Outer

    local Inner=Instance.new("Frame")
    Inner.Name="Inner"; Inner.ClipsDescendants=false; Inner.Size=UDim2.new(1,0,1,0)
    Inner.BackgroundColor3=C.bg; Inner.BackgroundTransparency=0; Inner.BorderSizePixel=0; Inner.Parent=Outer
    guiCorner(Inner,14)
    local _innerStroke=guiStroke(Inner,Color3.fromRGB(90,95,112),1.5); GuiRefs.inner=Inner
    _innerStroke.Color=Color3.fromRGB(42,44,58)
    _innerStroke.Thickness=1.2
    local openScale=Instance.new("UIScale",Inner); openScale.Scale=.8
    TweenService:Create(openScale,TweenInfo.new(0.42,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=.86}):Play()
    task.delay(.45,function()
        if not openScale.Parent then return end
        openScale.Scale=.86
        openScale:GetPropertyChangedSignal("Scale"):Connect(function() if openScale.Scale~=.86 then openScale.Scale=.86 end end)
    end)
    local cornerL=Instance.new("Frame",Inner)
    cornerL.Size=UDim2.new(0,18,0,2); cornerL.Position=UDim2.new(0,8,1,-9)
    cornerL.BackgroundColor3=_GACC.accentDark; cornerL.BackgroundTransparency=0.25; cornerL.BorderSizePixel=0; cornerL.ZIndex=10; cornerL.Visible=false
    local cornerLV=Instance.new("Frame",Inner)
    cornerLV.Size=UDim2.new(0,2,0,8); cornerLV.Position=UDim2.new(0,8,1,-15)
    cornerLV.BackgroundColor3=_GACC.accentDark; cornerLV.BackgroundTransparency=0.25; cornerLV.BorderSizePixel=0; cornerLV.ZIndex=10; cornerLV.Visible=false
    local cornerR=Instance.new("Frame",Inner)
    cornerR.Size=UDim2.new(0,18,0,2); cornerR.Position=UDim2.new(1,-26,1,-9)
    cornerR.BackgroundColor3=_GACC.accentDark; cornerR.BackgroundTransparency=0.25; cornerR.BorderSizePixel=0; cornerR.ZIndex=10; cornerR.Visible=false
    local cornerRV=Instance.new("Frame",Inner)
    cornerRV.Size=UDim2.new(0,2,0,8); cornerRV.Position=UDim2.new(1,-10,1,-15)
    cornerRV.BackgroundColor3=_GACC.accentDark; cornerRV.BackgroundTransparency=0.25; cornerRV.BorderSizePixel=0; cornerRV.ZIndex=10; cornerRV.Visible=false
    table.insert(_themeExtRefs,{callback=function(thm)
        pcall(function()
            cornerL.BackgroundColor3=thm.accentDark; cornerLV.BackgroundColor3=thm.accentDark
            cornerR.BackgroundColor3=thm.accentDark; cornerRV.BackgroundColor3=thm.accentDark
        end)
    end})
    task.spawn(function()
        local bright=false
        while Inner and Inner.Parent do
            bright=not bright
            TweenService:Create(_innerStroke,TweenInfo.new(1.4,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
                Transparency=bright and 0.08 or 0.42,
                Color=bright and _GACC.accentDark or Color3.fromRGB(42,44,58)
            }):Play()
            task.wait(1.4)
        end
    end)
    Outer.Position=UDim2.new(0,20,0,80)

    

    do 
    local BgCont=Instance.new("Frame")
    BgCont.Name="BackgroundContainer"; BgCont.Size=UDim2.new(1,0,1,0)
    BgCont.BackgroundTransparency=1; BgCont.ZIndex=0; BgCont.Parent=Inner

    local BgGrad=Instance.new("Frame")
    BgGrad.Name="BgGrad"; BgGrad.Size=UDim2.new(1,0,1,0); BgGrad.BackgroundColor3=C.bgDark
    BgGrad.BorderSizePixel=0; BgGrad.ZIndex=0; BgGrad.Parent=BgCont; guiCorner(BgGrad,12)
    local grad=Instance.new("UIGradient")
    grad.Color=ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(5,5,9)),
        ColorSequenceKeypoint.new(0.35,Color3.fromRGB(10,10,17)),
        ColorSequenceKeypoint.new(0.65,Color3.fromRGB(10,10,17)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(5,5,9)),
    })
    grad.Rotation=135; grad.Parent=BgGrad; GuiRefs.bgGrad=BgGrad
    task.spawn(function()
        local t=0
        while grad and grad.Parent do
            t=t+0.012
            grad.Offset=Vector2.new(math.sin(t)*0.12,math.cos(t*0.7)*0.08)
            grad.Rotation=135+math.sin(t*0.5)*8
            task.wait(0.04)
        end
    end)

    

    local BgImg=Instance.new("ImageLabel")
    BgImg.Name="BackgroundImage"; BgImg.Size=UDim2.new(1,0,1,0); BgImg.BackgroundTransparency=1
    BgImg.Image=""; BgImg.ScaleType=Enum.ScaleType.Crop; BgImg.ZIndex=0; BgImg.Visible=false
    BgImg.Parent=BgCont; local BgImgCorner=guiCorner(BgImg,12); GuiRefs.backgroundImage=BgImg; bgImageRef=BgImg
    bgImageContainer=BgCont; bgImageCorner=BgImgCorner
    applyBackgroundImage()

    
    local HF=Instance.new("Frame")
    HF.Name="HeaderFrame"; HF.Size=UDim2.new(1,0,0,74); HF.BackgroundTransparency=1
    HF.BorderSizePixel=0; HF.Parent=Inner; HF.ZIndex=2
    makeDraggable_cyber(HF, Outer)

    do
        local headerPlate=Instance.new("Frame",HF)
        headerPlate.Name="PrivateHeaderPlate"; headerPlate.Position=UDim2.new(0,6,0,5); headerPlate.Size=UDim2.new(1,-12,0,61)
        headerPlate.BackgroundColor3=Color3.fromRGB(12,13,17); headerPlate.BackgroundTransparency=.28; headerPlate.BorderSizePixel=0; headerPlate.ZIndex=2
        guiCorner(headerPlate,10)
        local plateStroke=guiStroke(headerPlate,Color3.fromRGB(72,76,88),1); plateStroke.Transparency=.48
        local plateGrad=Instance.new("UIGradient",headerPlate)
        plateGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(23,24,30)),ColorSequenceKeypoint.new(.48,Color3.fromRGB(10,11,15)),ColorSequenceKeypoint.new(1,Color3.fromRGB(5,6,9))})
        plateGrad.Rotation=12
        local topLine=Instance.new("Frame",HF)
        topLine.Position=UDim2.new(0,28,0,6); topLine.Size=UDim2.new(0,116,0,2); topLine.BackgroundColor3=Color3.fromRGB(177,181,192); topLine.BorderSizePixel=0; topLine.ZIndex=3
        guiCorner(topLine,2)
        local lineFade=Instance.new("UIGradient",topLine)
        lineFade.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,.15),NumberSequenceKeypoint.new(.72,.48),NumberSequenceKeypoint.new(1,1)})
    end

    local TL=Instance.new("TextLabel")
    TL.Position=UDim2.new(0,28,0,13); TL.Size=UDim2.new(0,45,0,27); TL.BackgroundTransparency=1
    TL.Text="DICE"; TL.TextColor3=C.text; TL.TextSize=18; TL.Font=Enum.Font.GothamBlack
    TL.TextXAlignment=Enum.TextXAlignment.Left; TL.Parent=HF; TL.ZIndex=3
    local PrivateTL=Instance.new("TextLabel")
    PrivateTL.Position=UDim2.new(0,72,0,13); PrivateTL.Size=UDim2.new(0,78,0,27); PrivateTL.BackgroundTransparency=1
    PrivateTL.Text="PRIVATE"; PrivateTL.TextColor3=Color3.fromRGB(215,218,226); PrivateTL.TextSize=18; PrivateTL.Font=Enum.Font.GothamBlack
    PrivateTL.TextXAlignment=Enum.TextXAlignment.Left; PrivateTL.TextStrokeColor3=Color3.fromRGB(91,95,106); PrivateTL.TextStrokeTransparency=.58; PrivateTL.Parent=HF; PrivateTL.ZIndex=3
    local privateGrad=Instance.new("UIGradient",PrivateTL)
    privateGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(92,96,108)),ColorSequenceKeypoint.new(.42,Color3.fromRGB(174,178,189)),ColorSequenceKeypoint.new(.58,Color3.fromRGB(246,247,250)),ColorSequenceKeypoint.new(1,Color3.fromRGB(113,117,129))})
    privateGrad.Offset=Vector2.new(-1,0)
    task.spawn(function()
        while PrivateTL and PrivateTL.Parent do
            privateGrad.Offset=Vector2.new(-1,0)
            TweenService:Create(privateGrad,TweenInfo.new(1.15,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{Offset=Vector2.new(1,0)}):Play()
            task.wait(2.35)
        end
    end)

    do
        local pipLayouts={
            [1]={{0.5,0.5}},
            [2]={{0.28,0.28},{0.72,0.72}},
            [3]={{0.28,0.28},{0.5,0.5},{0.72,0.72}},
            [4]={{0.28,0.28},{0.72,0.28},{0.28,0.72},{0.72,0.72}},
            [5]={{0.28,0.28},{0.72,0.28},{0.5,0.5},{0.28,0.72},{0.72,0.72}},
            [6]={{0.28,0.24},{0.72,0.24},{0.28,0.5},{0.72,0.5},{0.28,0.76},{0.72,0.76}},
        }
        local function makeDie(size,pos,value,baseRotation,phase)
            local shadow=Instance.new("Frame",HF)
            shadow.Size=UDim2.new(0,size,0,size)
            shadow.Position=UDim2.new(pos.X.Scale,pos.X.Offset+2,pos.Y.Scale,pos.Y.Offset+3)
            shadow.Rotation=baseRotation; shadow.BackgroundColor3=Color3.fromRGB(0,0,0)
            shadow.BackgroundTransparency=0.58; shadow.BorderSizePixel=0; shadow.ZIndex=3
            guiCorner(shadow,math.max(4,math.floor(size*0.25)))
            local depth=Instance.new("Frame",HF)
            depth.Size=UDim2.new(0,size,0,size); depth.Position=UDim2.new(pos.X.Scale,pos.X.Offset+1,pos.Y.Scale,pos.Y.Offset+2)
            depth.Rotation=baseRotation; depth.BackgroundColor3=Color3.fromRGB(84,87,100)
            depth.BackgroundTransparency=.08; depth.BorderSizePixel=0; depth.ZIndex=4
            guiCorner(depth,math.max(4,math.floor(size*.25)))
            local die=Instance.new("Frame",HF)
            die.Size=UDim2.new(0,size,0,size); die.Position=pos; die.Rotation=baseRotation
            die.BackgroundColor3=Color3.fromRGB(222,224,232); die.BackgroundTransparency=0.03
            die.BorderSizePixel=0; die.ZIndex=5; die.Active=true; guiCorner(die,math.max(4,math.floor(size*0.25)))
            local dieStroke=guiStroke(die,_ACC.accentDark,1)
            local dieGrad=Instance.new("UIGradient",die)
            dieGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.55,Color3.fromRGB(205,208,218)),ColorSequenceKeypoint.new(1,Color3.fromRGB(135,138,150))})
            dieGrad.Rotation=35
            local innerRim=Instance.new("Frame",die)
            innerRim.Size=UDim2.new(1,-4,1,-4); innerRim.Position=UDim2.new(0,2,0,2)
            innerRim.BackgroundTransparency=1; innerRim.BorderSizePixel=0; innerRim.ZIndex=6
            guiCorner(innerRim,math.max(3,math.floor(size*.2)))
            local innerRimStroke=Instance.new("UIStroke",innerRim)
            innerRimStroke.Color=Color3.fromRGB(255,255,255); innerRimStroke.Transparency=.68; innerRimStroke.Thickness=.7
            local bevel=Instance.new("Frame",die)
            bevel.Size=UDim2.new(1,-6,0,1); bevel.Position=UDim2.new(0,3,0,2)
            bevel.BackgroundColor3=Color3.fromRGB(255,255,255); bevel.BackgroundTransparency=0.2
            bevel.BorderSizePixel=0; bevel.ZIndex=6; guiCorner(bevel,1)
            local lowerBevel=Instance.new("Frame",die)
            lowerBevel.Size=UDim2.new(1,-6,0,2); lowerBevel.Position=UDim2.new(0,3,1,-4)
            lowerBevel.BackgroundColor3=Color3.fromRGB(80,83,96); lowerBevel.BackgroundTransparency=0.45
            lowerBevel.BorderSizePixel=0; lowerBevel.ZIndex=6; guiCorner(lowerBevel,2)
            local shine=Instance.new("Frame",die)
            shine.Size=UDim2.new(0,math.max(3,math.floor(size*0.22)),0,math.max(3,math.floor(size*0.22)))
            shine.Position=UDim2.new(0,2,0,2); shine.BackgroundColor3=Color3.fromRGB(255,255,255)
            shine.BackgroundTransparency=0.5; shine.BorderSizePixel=0; shine.ZIndex=6; guiCorner(shine,size)
            local pipSize=math.max(2,math.floor(size*0.14))
            for _,point in ipairs(pipLayouts[value] or pipLayouts[1]) do
                local pip=Instance.new("Frame",die)
                pip.AnchorPoint=Vector2.new(0.5,0.5); pip.Position=UDim2.new(point[1],0,point[2],0)
                pip.Size=UDim2.new(0,pipSize,0,pipSize); pip.BackgroundColor3=Color3.fromRGB(18,18,25)
                pip.BorderSizePixel=0; pip.ZIndex=7; guiCorner(pip,pipSize)
                local pipGlow=Instance.new("UIStroke",pip)
                pipGlow.Color=Color3.fromRGB(255,255,255); pipGlow.Transparency=0.78; pipGlow.Thickness=0.6
            end
            local dieScale=Instance.new("UIScale",die)
            die.MouseEnter:Connect(function()
                TweenService:Create(dieScale,TweenInfo.new(0.18,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1.18}):Play()
                TweenService:Create(dieStroke,TweenInfo.new(0.18),{Color=_ACC.accent,Transparency=0}):Play()
                TweenService:Create(shadow,TweenInfo.new(0.18),{BackgroundTransparency=0.42}):Play()
            end)
            die.MouseLeave:Connect(function()
                TweenService:Create(dieScale,TweenInfo.new(0.2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Scale=1}):Play()
                TweenService:Create(dieStroke,TweenInfo.new(0.2),{Color=_ACC.accentDark,Transparency=0}):Play()
                TweenService:Create(shadow,TweenInfo.new(0.2),{BackgroundTransparency=0.58}):Play()
            end)
            task.spawn(function()
                task.wait((phase%3)*.12)
                while die and die.Parent do
                    local rise=TweenInfo.new(.2,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
                    local land=TweenInfo.new(.34,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
                    for i=1,3 do
                        local spark=Instance.new("Frame",HF)
                        spark.AnchorPoint=Vector2.new(.5,.5)
                        spark.Position=UDim2.new(pos.X.Scale,pos.X.Offset+size*.5,pos.Y.Scale,pos.Y.Offset+size*.5)
                        spark.Size=UDim2.fromOffset(i==1 and 3 or 2,i==1 and 3 or 2)
                        spark.BackgroundColor3=i==1 and Color3.fromRGB(255,255,255) or _ACC.accent
                        spark.BackgroundTransparency=.08; spark.BorderSizePixel=0; spark.Rotation=45; spark.ZIndex=7
                        guiCorner(spark,1)
                        local sx=(i-2)*(size*.7); local sy=(i%2==0 and -1 or 1)*(size*.45)
                        TweenService:Create(spark,TweenInfo.new(.42,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
                            Position=UDim2.new(pos.X.Scale,pos.X.Offset+size*.5+sx,pos.Y.Scale,pos.Y.Offset+size*.5+sy),
                            BackgroundTransparency=1,Rotation=180,Size=UDim2.fromOffset(1,1)
                        }):Play()
                        task.delay(.45,function() pcall(function() spark:Destroy() end) end)
                    end
                    TweenService:Create(die,rise,{Rotation=baseRotation+190,Position=UDim2.new(pos.X.Scale,pos.X.Offset,pos.Y.Scale,pos.Y.Offset-4)}):Play()
                    TweenService:Create(depth,rise,{Rotation=baseRotation+190,Position=UDim2.new(pos.X.Scale,pos.X.Offset+1,pos.Y.Scale,pos.Y.Offset-1)}):Play()
                    TweenService:Create(shadow,rise,{Rotation=baseRotation+190,Position=UDim2.new(pos.X.Scale,pos.X.Offset+3,pos.Y.Scale,pos.Y.Offset+4),BackgroundTransparency=.76}):Play()
                    TweenService:Create(dieScale,rise,{Scale=1.14}):Play()
                    TweenService:Create(dieGrad,rise,{Offset=Vector2.new(.38,0),Rotation=120}):Play()
                    TweenService:Create(shine,rise,{Position=UDim2.new(1,-5,0,2),BackgroundTransparency=.18}):Play()
                    task.wait(.2)
                    TweenService:Create(die,land,{Rotation=baseRotation+360,Position=pos}):Play()
                    TweenService:Create(depth,land,{Rotation=baseRotation+360,Position=UDim2.new(pos.X.Scale,pos.X.Offset+1,pos.Y.Scale,pos.Y.Offset+2)}):Play()
                    TweenService:Create(shadow,land,{Rotation=baseRotation+360,Position=UDim2.new(pos.X.Scale,pos.X.Offset+2,pos.Y.Scale,pos.Y.Offset+3),BackgroundTransparency=.58}):Play()
                    TweenService:Create(dieScale,land,{Scale=1}):Play()
                    TweenService:Create(dieGrad,land,{Offset=Vector2.new(-.1,0),Rotation=35}):Play()
                    TweenService:Create(shine,land,{Position=UDim2.new(0,2,0,2),BackgroundTransparency=.5}):Play()
                    task.wait(.34)
                    die.Rotation=baseRotation; depth.Rotation=baseRotation; shadow.Rotation=baseRotation
                    task.wait(1.46)
                end
            end)
            table.insert(_themeExtRefs,{callback=function(thm)
                pcall(function() dieStroke.Color=thm.accentDark end)
            end})
            return die
        end
        makeDie(12,UDim2.new(0,9,0,13),5,-12,0)
        makeDie(10,UDim2.new(0,10,0,35),3,14,1.8)
        makeDie(8,UDim2.new(0,11,0,55),2,-8,3.4)
    end

    
    local ML=Instance.new("TextLabel")
    ML.Position=UDim2.new(0,28,0,42); ML.Size=UDim2.new(0,116,0,14); ML.BackgroundTransparency=1
    ML.Text="discord.gg/dicee"; ML.TextColor3=C.textDim; ML.TextSize=9; ML.Font=Enum.Font.GothamBold
    ML.TextXAlignment=Enum.TextXAlignment.Left; ML.Parent=HF; ML.ZIndex=3

    local lavaGradML = Instance.new("UIGradient", ML)
    lavaGradML.Color=_accentGrad(0)
    lavaGradML.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0.1,0),NumberSequenceKeypoint.new(0.5,0,0),NumberSequenceKeypoint.new(1,0.1,0)})
    lavaGradML.Rotation=0

    task.spawn(function()
        local t=0
        while ML and ML.Parent do
            t=t+0.03
            lavaGradML.Offset=Vector2.new(math.sin(t*0.8)*0.3 + math.cos(t*0.5)*0.2, math.sin(t*0.6)*0.1)
            lavaGradML.Rotation=math.sin(t*0.4)*15
            lavaGradML.Color=_accentGrad(t)
            task.wait(0.03)
        end
    end)


    
    local hFpsLbl=Instance.new("TextLabel")
    hFpsLbl.Size=UDim2.new(0,175,0,13); hFpsLbl.Position=UDim2.new(0,14,0,48)
    hFpsLbl.BackgroundTransparency=1; hFpsLbl.Text=""; hFpsLbl.Visible=false
    hFpsLbl.TextColor3=Color3.fromRGB(160,160,160); hFpsLbl.Font=Enum.Font.GothamBold
    hFpsLbl.TextSize=9; hFpsLbl.TextXAlignment=Enum.TextXAlignment.Left
    hFpsLbl.ZIndex=3; hFpsLbl.Parent=HF
    do
        local RING_SZ=20; local ring={}; for i=1,RING_SZ do ring[i]=1/60 end
        local ridx=1; local rsum=RING_SZ/60; local cpng=0
        task.spawn(function()
            while hFpsLbl and hFpsLbl.Parent do
                pcall(function() cpng=math.floor(Players.LocalPlayer:GetNetworkPing()*1000) end)
                task.wait(0.5)
            end
        end)
        RunService.RenderStepped:Connect(function(dt)
            rsum=rsum-ring[ridx]+dt; ring[ridx]=dt; ridx=ridx%RING_SZ+1
            local fps=math.floor(1/math.max(rsum/RING_SZ,0.001))
            _perfFps=fps; _perfPing=cpng
            local fc; if fps>=55 then fc=Color3.fromRGB(140,200,80) elseif fps>=30 then fc=Color3.fromRGB(220,200,50) else fc=Color3.fromRGB(210,90,60) end
            local pc; if cpng<80 then pc=Color3.fromRGB(140,200,80) elseif cpng<150 then pc=Color3.fromRGB(220,200,50) else pc=Color3.fromRGB(210,90,60) end
            if hFpsLbl and hFpsLbl.Parent then
                hFpsLbl.Text="FPS: "..tostring(fps).." | PING: "..tostring(cpng).."ms"
                
                
                local worstR=math.min(fc.R,pc.R); local worstG=math.min(fc.G,pc.G); local worstB=math.min(fc.B,pc.B)
                hFpsLbl.TextColor3=Color3.fromRGB(math.max(worstR*255,0),math.max(worstG*255,0),math.max(worstB*255,0))
            end
        end)
    end

    
    local CloseBtn=Instance.new("TextButton")
    CloseBtn.Size=UDim2.new(0,32,0,32); CloseBtn.Position=UDim2.new(1,-44,0,6)
    CloseBtn.BackgroundColor3=C.bgDark; CloseBtn.BorderSizePixel=0
    CloseBtn.Text="—"; CloseBtn.TextColor3=C.textMuted; CloseBtn.Font=Enum.Font.GothamBlack; CloseBtn.TextSize=18
    CloseBtn.ZIndex=5; CloseBtn.Parent=HF
    guiCorner(CloseBtn,7); guiStroke(CloseBtn,Color3.fromRGB(45,45,45),1)
    CloseBtn.MouseEnter:Connect(function()
        tw(CloseBtn,{BackgroundColor3=Color3.fromRGB(38,20,20),TextColor3=Color3.fromRGB(255,80,80),BackgroundTransparency=0.1})
    end)
    CloseBtn.MouseLeave:Connect(function()
        tw(CloseBtn,{BackgroundColor3=C.bgDark,TextColor3=C.textMuted,BackgroundTransparency=0})
    end)

    
    local MiniBtn=Instance.new("TextButton")
    MiniBtn.Size=UDim2.new(0,120,0,30); MiniBtn.Position=UDim2.new(0,20,0,100)
    MiniBtn.BackgroundColor3=C.bgDark; MiniBtn.BorderSizePixel=0
    MiniBtn.RichText=true; MiniBtn.Text='DICE <font color="rgb(166,170,182)">DUELS</font>'; MiniBtn.TextColor3=C.text; MiniBtn.Font=Enum.Font.GothamBlack; MiniBtn.TextSize=11
    MiniBtn.ZIndex=20; MiniBtn.Visible=false; MiniBtn.Parent=GuiRefs.hub
    guiCorner(MiniBtn,8); guiStroke(MiniBtn,Color3.fromRGB(45,45,45),1.2)
    makeDraggable_cyber(MiniBtn, MiniBtn)
    MiniBtn.MouseEnter:Connect(function() 
        tw(MiniBtn,{BackgroundColor3=Color3.fromRGB(22,22,22)})
        tw(MiniBtn,{BackgroundTransparency=0.1})
    end)
    MiniBtn.MouseLeave:Connect(function() 
        tw(MiniBtn,{BackgroundColor3=C.bgDark})
        tw(MiniBtn,{BackgroundTransparency=0})
    end)
    local function showGui()
        MiniBtn.Visible=false; Outer.Visible=true
        Outer.Position=UDim2.new(0,-30,0,80)
        TweenService:Create(Outer,TweenInfo.new(0.38,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position=UDim2.new(0,20,0,80)}):Play()
    end
    local function hideGui()
        TweenService:Create(Outer,TweenInfo.new(0.28,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Position=UDim2.new(0,-350,0,80)}):Play()
        task.delay(0.3,function() Outer.Visible=false; MiniBtn.Visible=true end)
    end
    CloseBtn.MouseButton1Click:Connect(hideGui)
    MiniBtn.MouseButton1Click:Connect(showGui)

    end 

    
    do local HSep=Instance.new("Frame")
    HSep.Position=UDim2.new(0,0,0,74); HSep.Size=UDim2.new(1,0,0,1); HSep.BorderSizePixel=0
    HSep.BackgroundColor3=Color3.fromRGB(36,38,50); HSep.BackgroundTransparency=0
    HSep.Parent=Inner; HSep.ZIndex=4
    local hSepGrad=Instance.new("UIGradient",HSep)
    hSepGrad.Transparency=NumberSequence.new({
        NumberSequenceKeypoint.new(0,   1,0),
        NumberSequenceKeypoint.new(0.10,0,0),
        NumberSequenceKeypoint.new(0.90,0,0),
        NumberSequenceKeypoint.new(1,   1,0),
    })
    end 

    
    local CF=Instance.new("ScrollingFrame")
    CF.Name="ContentFrame"; CF.Size=UDim2.new(1,-20,1,-88); CF.Position=UDim2.new(0,10,0,79)
    CF.BackgroundTransparency=1; CF.BorderSizePixel=0; CF.ScrollBarThickness=0; CF.ScrollBarImageColor3=C.blue
    table.insert(_themeScrollbars,CF)
    CF.CanvasSize=UDim2.new(0,0,0,0); CF.AutomaticCanvasSize=Enum.AutomaticSize.None
    CF.ScrollingDirection=Enum.ScrollingDirection.Y; CF.ScrollingEnabled=true; CF.Active=true
    CF.ElasticBehavior=Enum.ElasticBehavior.Never; CF.Parent=Inner; GuiRefs.contentFrame=CF
    local scrollTrack=Instance.new("Frame",Inner)
    scrollTrack.Size=UDim2.new(0,2,1,-96); scrollTrack.Position=UDim2.new(1,-5,0,83)
    scrollTrack.BackgroundColor3=Color3.fromRGB(28,29,38); scrollTrack.BackgroundTransparency=0.2
    scrollTrack.BorderSizePixel=0; scrollTrack.ZIndex=8; guiCorner(scrollTrack,2)
    local scrollFill=Instance.new("Frame",scrollTrack)
    scrollFill.Size=UDim2.new(1,0,0.15,0); scrollFill.BackgroundColor3=_ACC.accent
    scrollFill.BackgroundTransparency=0.1; scrollFill.BorderSizePixel=0; scrollFill.ZIndex=9; guiCorner(scrollFill,2)
    local function updateScrollRail()
        local total=CF.AbsoluteCanvasSize.Y
        local visible=CF.AbsoluteWindowSize.Y
        local ratio=math.clamp(visible/math.max(total,1),0.08,1)
        local progress=math.clamp(CF.CanvasPosition.Y/math.max(total-visible,1),0,1)
        scrollFill.Size=UDim2.new(1,0,ratio,0)
        scrollFill.Position=UDim2.new(0,0,progress*(1-ratio),0)
        scrollTrack.Visible=total>visible+2
    end
    CF:GetPropertyChangedSignal("CanvasPosition"):Connect(updateScrollRail)
    CF:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(updateScrollRail)
    CF:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(updateScrollRail)
    table.insert(_themeExtRefs,{callback=function(thm) pcall(function() scrollFill.BackgroundColor3=thm.accent end) end})
    task.defer(updateScrollRail)
    do
    local CLay=Instance.new("UIListLayout"); CLay.SortOrder=Enum.SortOrder.LayoutOrder; CLay.Padding=UDim.new(0,6); CLay.Parent=CF
    CLay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() CF.CanvasSize = UDim2.new(0, 0, 0, CLay.AbsoluteContentSize.Y + 25) end)
    local CPad=Instance.new("UIPadding"); CPad.PaddingLeft=UDim.new(0,0); CPad.PaddingRight=UDim.new(0,0)
    CPad.PaddingTop=UDim.new(0,10); CPad.PaddingBottom=UDim.new(0,10); CPad.Parent=CF
    end 

    
    
    do
        local vDiv=Instance.new("Frame",Inner)
        vDiv.Name="SidebarDiv"
        vDiv.Size=UDim2.new(0,1,1,-89); vDiv.Position=UDim2.new(0,119,0,89)
        vDiv.BackgroundColor3=Color3.fromRGB(32,34,46); vDiv.BackgroundTransparency=0
        vDiv.BorderSizePixel=0; vDiv.ZIndex=3; vDiv.Visible=false
    end
    local TabRail=Instance.new("Frame",Inner)
    TabRail.Name="TabRail"
    TabRail.Size=UDim2.new(0,119,1,-89); TabRail.Position=UDim2.new(0,0,0,89)
    TabRail.BackgroundColor3=Color3.fromRGB(4,4,8); TabRail.BackgroundTransparency=0.22
    TabRail.BorderSizePixel=0; TabRail.ZIndex=3; TabRail.ClipsDescendants=true; TabRail.Visible=false
    do local railG=Instance.new("UIGradient",TabRail)
    railG.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(12,12,18)),ColorSequenceKeypoint.new(1,Color3.fromRGB(3,3,6))})
    railG.Rotation=90 end
    do
        local rLay=Instance.new("UIListLayout",TabRail)
        rLay.FillDirection=Enum.FillDirection.Vertical
        rLay.SortOrder=Enum.SortOrder.LayoutOrder
        rLay.HorizontalAlignment=Enum.HorizontalAlignment.Center
        rLay.Padding=UDim.new(0,4)
        rLay.VerticalAlignment=Enum.VerticalAlignment.Top
        rLay.Padding=UDim.new(0,4)
    end

    
    local KeyListen={cb=nil,label=nil,active=false,acceptType=nil,oldText=nil}
    local KEY_ALIASES={
        ButtonA="A",ButtonB="B",ButtonX="X",ButtonY="Y",ButtonR1="RB",ButtonR2="RT",ButtonL1="LB",ButtonL2="LT",
        DPadUp="D↑",DPadDown="D↓",DPadLeft="D←",DPadRight="D→",ButtonStart="▶",ButtonSelect="◀",
        LeftShift="LShift",RightShift="RShift",LeftControl="LCtrl",RightControl="RCtrl",LeftAlt="LAlt",RightAlt="RAlt",
        LeftSuper="LSuper",RightSuper="RSuper",Return="Enter",BackSpace="Backspace",Tab="Tab",CapsLock="CapsLock",
        Escape="Esc",Space="Space",PageUp="PgUp",PageDown="PgDn",End="End",Home="Home",Insert="Ins",Delete="Del",
        Up="↑",Down="↓",Left="←",Right="→",F1="F1",F2="F2",F3="F3",F4="F4",F5="F5",F6="F6",F7="F7",F8="F8",
        F9="F9",F10="F10",F11="F11",F12="F12",Print="PrtScn",ScrollLock="ScrLk",Pause="Pause",
        Minus="-",Equals="=",LeftBracket="[",RightBracket="]",BackSlash="\\",Semicolon=";",Quote="'",
        Comma=",",Period=".",Slash="/",Backquote="`"
    }
    local function prettyKey(kc) return KEY_ALIASES[kc.Name] or kc.Name end
    local function cancelKL()
        if KeyListen.label then KeyListen.label.BackgroundColor3=C.blue; KeyListen.label.BackgroundTransparency=0.5 end
        KeyListen.cb=nil; KeyListen.label=nil; KeyListen.active=false;KeyListen.acceptType=nil;KeyListen.oldText=nil;_anyKeyListening=false
    end
    local function startKL(lbl,onSet,acceptType)
        cancelKL(); KeyListen.cb=onSet; KeyListen.label=lbl; KeyListen.active=true;KeyListen.acceptType=acceptType;KeyListen.oldText=lbl.Text;_anyKeyListening=true
        lbl.Text="..."; lbl.BackgroundColor3=Color3.fromRGB(80,220,120); lbl.BackgroundTransparency=0.3
        local cap=lbl; task.delay(8,function() if KeyListen.label==cap and KeyListen.active then local oldText=KeyListen.oldText;cancelKL(); if lbl and lbl.Parent then lbl.Text=oldText or "NONE"; lbl.BackgroundColor3=C.blue; lbl.BackgroundTransparency=0.5 end end end)
    end
    UIS.InputBegan:Connect(function(inp,gp)
        if not KeyListen.active then return end
        local ut=inp.UserInputType
        if KeyListen.acceptType then if ut~=KeyListen.acceptType then return end
        elseif ut~=Enum.UserInputType.Keyboard and ut~=Enum.UserInputType.Gamepad1 then return end
        local k=inp.KeyCode
        if k==Enum.KeyCode.Unknown then return end
        if k==Enum.KeyCode.Escape then cancelKL(); return end
        local cb=KeyListen.cb; local lb=KeyListen.label;_GACC.blockBindInputUntil=tick()+.25;cancelKL()
        if lb and lb.Parent then lb.Text=prettyKey(k); lb.BackgroundColor3=C.blue; lb.BackgroundTransparency=0.5 end
        if cb then task.spawn(cb,k) end
    end)

    
    local function addSectLbl(parent,text,order)
        local w=Instance.new("Frame",parent); w.Size=UDim2.new(1,0,0,26); w.BackgroundTransparency=1; w.LayoutOrder=order
        local L=Instance.new("TextLabel",w); L.Size=UDim2.new(1,0,0,22); L.BackgroundTransparency=1
        L.Text=text; L.TextColor3=C.textDim; L.TextSize=12; L.Font=Enum.Font.GothamBlack; L.TextXAlignment=Enum.TextXAlignment.Left
        return L
    end

    
    local function mkSection(parent,title,order)
        local outer=Instance.new("Frame",parent); outer.LayoutOrder=order; outer.Size=UDim2.new(1,0,0,0); outer.AutomaticSize=Enum.AutomaticSize.Y; outer.BackgroundTransparency=1; outer.BorderSizePixel=0
        local outerLay=Instance.new("UIListLayout",outer); outerLay.SortOrder=Enum.SortOrder.LayoutOrder; outerLay.Padding=UDim.new(0,3)
        
        
        local hdr=Instance.new("Frame",outer); hdr.LayoutOrder=0; hdr.Size=UDim2.new(1,0,0,24); hdr.BackgroundTransparency=1; hdr.BorderSizePixel=0
        local accentBar=Instance.new("Frame",hdr); accentBar.Size=UDim2.new(0,2,0,14); accentBar.Position=UDim2.new(0,2,0.5,-7)
        accentBar.BackgroundColor3=_ACC.accent; accentBar.BorderSizePixel=0; guiCorner(accentBar,1)
        table.insert(_themeTabInds,accentBar)
        local lbl=Instance.new("TextLabel",hdr); lbl.Size=UDim2.new(1,-12,1,0); lbl.Position=UDim2.new(0,8,0,0)
        lbl.BackgroundTransparency=1; lbl.Text=title; lbl.TextColor3=Color3.fromRGB(130,138,160)
        lbl.TextSize=10; lbl.Font=Enum.Font.GothamBold; lbl.TextXAlignment=Enum.TextXAlignment.Left
        local mark=Instance.new("TextLabel",hdr)
        mark.Size=UDim2.new(0,22,1,0); mark.Position=UDim2.new(1,-24,0,0)
        mark.BackgroundTransparency=1; mark.Text=""; mark.TextColor3=_ACC.accentDark; mark.Visible=false
        mark.TextSize=9; mark.Font=Enum.Font.GothamBlack; mark.TextXAlignment=Enum.TextXAlignment.Right
        table.insert(_themeSectRefs,{lbl=lbl,arrow=mark})
        local sectShadow=Instance.new("Frame",hdr)
        sectShadow.Size=UDim2.new(0,13,0,13); sectShadow.Position=UDim2.new(1,-17,0.5,-5)
        sectShadow.BackgroundColor3=Color3.fromRGB(0,0,0); sectShadow.BackgroundTransparency=0.62
        sectShadow.BorderSizePixel=0; sectShadow.Rotation=8; guiCorner(sectShadow,4)
        local sectDie=Instance.new("Frame",hdr)
        sectDie.Size=UDim2.new(0,13,0,13); sectDie.Position=UDim2.new(1,-19,0.5,-7)
        sectDie.BackgroundColor3=Color3.fromRGB(195,198,208); sectDie.BorderSizePixel=0
        sectDie.Rotation=8; guiCorner(sectDie,4)
        local sectStroke=guiStroke(sectDie,_ACC.accentDark,1)
        local sectGrad=Instance.new("UIGradient",sectDie)
        sectGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(245,246,250)),ColorSequenceKeypoint.new(1,Color3.fromRGB(125,128,140))})
        sectGrad.Rotation=35
        local sectScale=Instance.new("UIScale",sectDie)
        local sectBevel=Instance.new("Frame",sectDie)
        sectBevel.Size=UDim2.new(1,-4,0,1); sectBevel.Position=UDim2.new(0,2,0,2)
        sectBevel.BackgroundColor3=Color3.fromRGB(255,255,255); sectBevel.BackgroundTransparency=.18
        sectBevel.BorderSizePixel=0; sectBevel.ZIndex=2; guiCorner(sectBevel,1)
        local sectShine=Instance.new("Frame",sectDie)
        sectShine.Size=UDim2.new(0,4,0,4); sectShine.Position=UDim2.new(0,2,0,2)
        sectShine.BackgroundColor3=Color3.fromRGB(255,255,255); sectShine.BackgroundTransparency=.52
        sectShine.BorderSizePixel=0; sectShine.ZIndex=2; guiCorner(sectShine,4)
        for _,pt in ipairs({{0.3,0.3},{0.7,0.3},{0.3,0.7},{0.7,0.7}}) do
            local pip=Instance.new("Frame",sectDie)
            pip.AnchorPoint=Vector2.new(0.5,0.5); pip.Position=UDim2.new(pt[1],0,pt[2],0)
            pip.Size=UDim2.new(0,2,0,2); pip.BackgroundColor3=Color3.fromRGB(20,20,27)
            pip.BorderSizePixel=0; guiCorner(pip,2)
        end
        task.spawn(function()
            task.wait(((order or 0)%6)*.08)
            while sectDie and sectDie.Parent do
                local lift=TweenInfo.new(.22,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
                local land=TweenInfo.new(.34,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
                TweenService:Create(sectDie,lift,{Rotation=188,Position=UDim2.new(1,-19,.5,-11)}):Play()
                TweenService:Create(sectShadow,lift,{Rotation=188,Position=UDim2.new(1,-17,.5,-7),BackgroundTransparency=.78}):Play()
                TweenService:Create(sectScale,lift,{Scale=1.2}):Play()
                TweenService:Create(sectGrad,lift,{Offset=Vector2.new(.38,0),Rotation=115}):Play()
                task.wait(.22)
                TweenService:Create(sectDie,land,{Rotation=368,Position=UDim2.new(1,-19,.5,-7)}):Play()
                TweenService:Create(sectShadow,land,{Rotation=368,Position=UDim2.new(1,-17,.5,-5),BackgroundTransparency=.62}):Play()
                TweenService:Create(sectScale,land,{Scale=1}):Play()
                TweenService:Create(sectGrad,land,{Offset=Vector2.new(-.12,0),Rotation=35}):Play()
                task.wait(.34)
                sectDie.Rotation=8; sectShadow.Rotation=8
                task.wait(1.44)
            end
        end)
        table.insert(_themeExtRefs,{callback=function(thm) pcall(function() sectStroke.Color=thm.accentDark end) end})
        
        local body=Instance.new("Frame",outer); body.Name="SectBody"; body.LayoutOrder=1
        body.Size=UDim2.new(1,0,0,0); body.AutomaticSize=Enum.AutomaticSize.Y; body.BackgroundTransparency=1; body.BorderSizePixel=0
        local bodyLay=Instance.new("UIListLayout",body); bodyLay.SortOrder=Enum.SortOrder.LayoutOrder; bodyLay.Padding=UDim.new(0,4)
        
        body:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            local contentLay=CF:FindFirstChildOfClass("UIListLayout")
            if contentLay then task.defer(function() CF.CanvasSize=UDim2.new(0,0,0,contentLay.AbsoluteContentSize.Y+30) end) end
        end)
        return body
    end

    local function addInputRow(parent,label,value,order,cb)
        local Row=Instance.new("Frame",parent); Row.Size=UDim2.new(1,0,0,42); Row.BackgroundColor3=Color3.fromRGB(11,11,17)
        Row.BackgroundTransparency=0.25; Row.BorderSizePixel=0; Row.LayoutOrder=order; guiCorner(Row,6)
        local aBar=Instance.new("Frame",Row); aBar.Size=UDim2.new(0,3,0,22); aBar.AnchorPoint=Vector2.new(0,0.5)
        aBar.Position=UDim2.new(0,0,0.5,0); aBar.BackgroundColor3=_ACC.accent; aBar.BackgroundTransparency=1
        aBar.BorderSizePixel=0; guiCorner(aBar,2)
        local Lb=Instance.new("TextLabel",Row); Lb.Size=UDim2.new(0.58,0,0,18); Lb.Position=UDim2.new(0,14,0,12)
        Lb.BackgroundTransparency=1; Lb.Text=label; Lb.TextColor3=Color3.fromRGB(210,210,225); Lb.TextSize=12; Lb.Font=Enum.Font.GothamBold; Lb.TextXAlignment=Enum.TextXAlignment.Left
        local BC=Instance.new("Frame",Row); BC.ZIndex=6; BC.Position=UDim2.new(1,-62,0.5,-12); BC.Size=UDim2.new(0,52,0,24)
        BC.BackgroundColor3=C.input; BC.BackgroundTransparency=0.45; BC.BorderSizePixel=0; guiCorner(BC,8); guiStroke(BC,Color3.fromRGB(55,55,65),1)
        local Box=Instance.new("TextBox",BC); Box.ZIndex=7; Box.Size=UDim2.new(1,0,1,0); Box.BackgroundTransparency=1
        Box.Text=tostring(value); Box.TextColor3=C.text; Box.TextSize=11; Box.Font=Enum.Font.GothamBold; Box.ClearTextOnFocus=false
        Box.FocusLost:Connect(function() local n=tonumber(Box.Text); if n and n>0 then cb(n) else Box.Text=tostring(value) end end)
        Box.Focused:Connect(function() tw(BC,{BackgroundTransparency=0.2}) end)
        Box.FocusLost:Connect(function() tw(BC,{BackgroundTransparency=0.45}) end)
        local hov=Instance.new("TextButton",Row); hov.Size=UDim2.new(1,0,1,0); hov.BackgroundTransparency=1; hov.Text=""; hov.ZIndex=0
        hov.MouseEnter:Connect(function()
            tw(Row,{BackgroundTransparency=0.18,BackgroundColor3=_ACC.accentRowHover})
            tw(aBar,{BackgroundTransparency=0.15})
        end)
        hov.MouseLeave:Connect(function()
            tw(Row,{BackgroundTransparency=0.55,BackgroundColor3=Color3.fromRGB(11,11,17)})
            tw(aBar,{BackgroundTransparency=1})
        end)
        return Row,Box
    end

    local function playFeatureEffect(row)
        if not row or not row.Parent then return end
        local flash=Instance.new("Frame",row)
        flash.AnchorPoint=Vector2.new(0.5,0.5); flash.Position=UDim2.new(0.5,0,0.5,0)
        flash.Size=UDim2.new(0,4,0,4); flash.BackgroundColor3=_ACC.accent
        flash.BackgroundTransparency=0.68; flash.BorderSizePixel=0; flash.ZIndex=4
        guiCorner(flash,8)
        local flashStroke=guiStroke(flash,_ACC.accent,1); flashStroke.Transparency=0.18
        TweenService:Create(flash,TweenInfo.new(0.34,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
            Size=UDim2.new(1,-4,1,-4),BackgroundTransparency=1
        }):Play()
        TweenService:Create(flashStroke,TweenInfo.new(0.34),{Transparency=1}):Play()
        for i=1,4 do
            local particle=Instance.new("Frame",row)
            particle.AnchorPoint=Vector2.new(0.5,0.5); particle.Position=UDim2.new(1,-30,0.5,0)
            particle.Size=UDim2.new(0,3,0,3); particle.BackgroundColor3=_ACC.accent
            particle.BackgroundTransparency=0.05; particle.BorderSizePixel=0; particle.ZIndex=8
            particle.Rotation=45; guiCorner(particle,1)
            local angle=((i-1)/4)*math.pi*2
            local dx=math.cos(angle)*(12+i*2); local dy=math.sin(angle)*(9+i)
            TweenService:Create(particle,TweenInfo.new(0.38,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
                Position=UDim2.new(1,-30+dx,0.5,dy),BackgroundTransparency=1,Rotation=135,Size=UDim2.new(0,1,0,1)
            }):Play()
            task.delay(0.4,function() pcall(function() particle:Destroy() end) end)
        end
        task.delay(0.4,function() pcall(function() flash:Destroy() end) end)
    end

    local function addToggleRow(parent,label,enabled,order,kbKey,onToggle)
        local Row=Instance.new("Frame",parent); Row.Size=UDim2.new(1,0,0,42); Row.BackgroundColor3=Color3.fromRGB(11,11,17)
        Row.BackgroundTransparency=0.25; Row.BorderSizePixel=0; Row.LayoutOrder=order; guiCorner(Row,6)
        
        local aBar=Instance.new("Frame",Row); aBar.Size=UDim2.new(0,3,0,22); aBar.AnchorPoint=Vector2.new(0,0.5)
        aBar.Position=UDim2.new(0,0,0.5,0); aBar.BackgroundColor3=_ACC.accent; aBar.BackgroundTransparency=1
        aBar.BorderSizePixel=0; guiCorner(aBar,2)
        local Lb=Instance.new("TextLabel",Row); Lb.Size=UDim2.new(0.62,0,0,18); Lb.Position=UDim2.new(0,14,0,12)
        Lb.BackgroundTransparency=1; Lb.Text=label; Lb.TextColor3=Color3.fromRGB(210,210,225); Lb.TextSize=12; Lb.Font=Enum.Font.GothamBold; Lb.TextXAlignment=Enum.TextXAlignment.Left
        local OFF_TRACK=Color3.fromRGB(28,28,35); local OFF_TRACK_STROKE=Color3.fromRGB(58,58,70); local OFF_KNOB=Color3.fromRGB(72,72,86)
        local TI_KNOB=TweenInfo.new(0.24,Enum.EasingStyle.Back,Enum.EasingDirection.Out)
        local TI_FADE=TweenInfo.new(0.18,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
        local Track=Instance.new("Frame",Row); Track.Size=UDim2.new(0,42,0,22); Track.Position=UDim2.new(1,-54,0.5,-11)
        Track.BackgroundColor3=enabled and _ACC.accentBg or OFF_TRACK; Track.BackgroundTransparency=0.12; Track.BorderSizePixel=0; guiCorner(Track,12); local TrkStroke=guiStroke(Track,enabled and _ACC.accentDark or OFF_TRACK_STROKE,1)
        local Knob=Instance.new("Frame",Track); Knob.Size=UDim2.new(0,18,0,18)
        Knob.Position=enabled and UDim2.new(1,-20,0.5,-9) or UDim2.new(0,2,0.5,-9)
        Knob.BackgroundColor3=enabled and _ACC.accent or OFF_KNOB; Knob.BackgroundTransparency=enabled and 0 or 0.18; Knob.BorderSizePixel=0; guiCorner(Knob,9)
        local KGlow=guiStroke(Knob,enabled and _ACC.accent or OFF_KNOB,1.5); KGlow.Transparency=enabled and 0.25 or 1
        local st=enabled
        table.insert(_themeToggleRefs,{track=Track,trkStroke=TrkStroke,knob=Knob,offTrack=OFF_TRACK,offKnob=OFF_KNOB,offStroke=OFF_TRACK_STROBE,getSt=function() return st end})
        local function setV(on)
            st=on
            if on then playFeatureEffect(Row) end
            TweenService:Create(Knob,TI_KNOB,{Position=on and UDim2.new(1,-20,0.5,-9) or UDim2.new(0,2,0.5,-9)}):Play()
            TweenService:Create(Knob,TI_FADE,{BackgroundColor3=on and _ACC.accent or OFF_KNOB,BackgroundTransparency=on and 0 or 0.18}):Play()
            TweenService:Create(Track,TI_FADE,{BackgroundColor3=on and _ACC.accentBg or OFF_TRACK,BackgroundTransparency=on and 0.1 or 0.12}):Play()
            TweenService:Create(KGlow,TI_FADE,{Color=on and _ACC.accent or OFF_KNOB,Transparency=on and 0.25 or 1}):Play()
            if TrkStroke then TrkStroke.Color=on and _ACC.accentDark or OFF_TRACK_STROKE end
        end
        local Btn=Instance.new("TextButton",Row); Btn.Size=UDim2.new(0,42,0,22); Btn.Position=UDim2.new(1,-54,0.5,-11); Btn.BackgroundTransparency=1; Btn.Text=""; Btn.ZIndex=5
        Btn.MouseButton1Click:Connect(function() st=not st; setV(st); if onToggle then onToggle(st) end end)
        local hov=Instance.new("TextButton",Row); hov.Size=UDim2.new(1,0,1,0); hov.BackgroundTransparency=1; hov.Text=""; hov.ZIndex=0
        hov.MouseEnter:Connect(function()
            tw(Row,{BackgroundTransparency=0.25,BackgroundColor3=_ACC.accentRowHover})
            tw(aBar,{BackgroundTransparency=0.15})
        end)
        hov.MouseLeave:Connect(function()
            tw(Row,{BackgroundTransparency=0.55,BackgroundColor3=Color3.fromRGB(11,11,17)})
            tw(aBar,{BackgroundTransparency=1})
        end)
        if kbKey then GuiToggleSetters[kbKey]=setV end
        return Row,setV
    end

    local function addActionRow(parent,label,kbKey,onAction,order)
        local Row=Instance.new("Frame",parent); Row.Size=UDim2.new(1,0,0,42); Row.BackgroundColor3=Color3.fromRGB(11,11,17)
        Row.BackgroundTransparency=0.25; Row.BorderSizePixel=0; Row.LayoutOrder=order; guiCorner(Row,6)
        local aBar=Instance.new("Frame",Row); aBar.Size=UDim2.new(0,3,0,22); aBar.AnchorPoint=Vector2.new(0,0.5)
        aBar.Position=UDim2.new(0,0,0.5,0); aBar.BackgroundColor3=_ACC.accent; aBar.BackgroundTransparency=1
        aBar.BorderSizePixel=0; guiCorner(aBar,2)
        local Lb=Instance.new("TextLabel",Row); Lb.Size=UDim2.new(0.7,0,0,18); Lb.Position=UDim2.new(0,14,0,12)
        Lb.BackgroundTransparency=1; Lb.Text=label; Lb.TextColor3=Color3.fromRGB(210,210,225); Lb.TextSize=12; Lb.Font=Enum.Font.GothamBold; Lb.TextXAlignment=Enum.TextXAlignment.Left
        local AB=Instance.new("TextButton",Row); AB.Size=UDim2.new(1,0,1,0); AB.BackgroundTransparency=1; AB.Text=""
        AB.MouseButton1Click:Connect(function() playFeatureEffect(Row); onAction() end)
        local hov=Instance.new("TextButton",Row); hov.Size=UDim2.new(1,0,1,0); hov.BackgroundTransparency=1; hov.Text=""; hov.ZIndex=0
        hov.MouseEnter:Connect(function()
            tw(Row,{BackgroundTransparency=0.25,BackgroundColor3=_ACC.accentRowHover})
            tw(aBar,{BackgroundTransparency=0.15})
        end)
        hov.MouseLeave:Connect(function()
            tw(Row,{BackgroundTransparency=0.55,BackgroundColor3=Color3.fromRGB(11,11,17)})
            tw(aBar,{BackgroundTransparency=1})
        end)
        return Row
    end

    _GACC.extras.addDropdownRow=function(parent,label,options,current,order,onSelect)
        local Row=Instance.new("Frame",parent); Row.Size=UDim2.new(1,0,0,42); Row.LayoutOrder=order
        Row.BackgroundColor3=Color3.fromRGB(11,11,17); Row.BackgroundTransparency=.25; Row.BorderSizePixel=0; Row.ClipsDescendants=true; guiCorner(Row,6)
        local accent=Instance.new("Frame",Row); accent.Size=UDim2.new(0,3,0,22); accent.Position=UDim2.new(0,0,0,10)
        accent.BackgroundColor3=_ACC.accent; accent.BackgroundTransparency=.25; accent.BorderSizePixel=0; guiCorner(accent,2)
        local Lb=Instance.new("TextLabel",Row); Lb.Size=UDim2.new(0,88,0,42); Lb.Position=UDim2.new(0,14,0,0)
        Lb.BackgroundTransparency=1; Lb.Text=label; Lb.TextColor3=Color3.fromRGB(210,210,225); Lb.TextSize=11
        Lb.Font=Enum.Font.GothamBold; Lb.TextXAlignment=Enum.TextXAlignment.Left
        local valueBtn=Instance.new("TextButton",Row); valueBtn.Size=UDim2.new(1,-116,0,26); valueBtn.Position=UDim2.new(0,104,0,8)
        valueBtn.BackgroundColor3=_ACC.accentBg; valueBtn.BackgroundTransparency=.18; valueBtn.BorderSizePixel=0
        valueBtn.Text=tostring(current).."  v"; valueBtn.TextColor3=_ACC.accent; valueBtn.TextSize=9; valueBtn.Font=Enum.Font.GothamBold
        valueBtn.TextTruncate=Enum.TextTruncate.AtEnd; valueBtn.ZIndex=8; guiCorner(valueBtn,7); guiStroke(valueBtn,_ACC.accentDark,1)
        local drop=Instance.new("ScrollingFrame",Row); drop.Position=UDim2.new(0,8,0,44); drop.Size=UDim2.new(1,-16,0,0)
        drop.BackgroundColor3=Color3.fromRGB(7,7,12); drop.BackgroundTransparency=.02; drop.BorderSizePixel=0
        drop.ScrollBarThickness=2; drop.ScrollBarImageColor3=_ACC.accent; drop.CanvasSize=UDim2.new(0,0,0,#options*28+4)
        drop.Visible=false; drop.ZIndex=9; guiCorner(drop,7); guiStroke(drop,Color3.fromRGB(48,50,64),1)
        local list=Instance.new("UIListLayout",drop); list.SortOrder=Enum.SortOrder.LayoutOrder; list.Padding=UDim.new(0,2)
        local pad=Instance.new("UIPadding",drop); pad.PaddingTop=UDim.new(0,3); pad.PaddingLeft=UDim.new(0,4); pad.PaddingRight=UDim.new(0,4)
        local built=false; local open=false
        local function setOpen(on)
            open=on
            if on and not built then
                built=true
                for i,name in ipairs(options) do
                    local choice=Instance.new("TextButton",drop); choice.Size=UDim2.new(1,0,0,26); choice.LayoutOrder=i
                    choice.BackgroundColor3=Color3.fromRGB(17,18,25); choice.BackgroundTransparency=.12; choice.BorderSizePixel=0
                    choice.Text=name; choice.TextColor3=Color3.fromRGB(205,208,224); choice.TextSize=9; choice.Font=Enum.Font.GothamBold
                    choice.ZIndex=10; guiCorner(choice,5)
                    choice.MouseEnter:Connect(function() tw(choice,{BackgroundColor3=_ACC.accentHover}) end)
                    choice.MouseLeave:Connect(function() tw(choice,{BackgroundColor3=Color3.fromRGB(17,18,25)}) end)
                    choice.MouseButton1Click:Connect(function()
                        current=name; valueBtn.Text=name.."  v"; if onSelect then onSelect(name) end; setOpen(false)
                    end)
                end
            end
            if on then drop.Visible=true end
            tw(Row,{Size=UDim2.new(1,0,0,on and 190 or 42)},TweenInfo.new(.24,Enum.EasingStyle.Quint,Enum.EasingDirection.Out))
            tw(drop,{Size=UDim2.new(1,-16,0,on and 140 or 0)},TweenInfo.new(.22,Enum.EasingStyle.Quint,Enum.EasingDirection.Out))
            valueBtn.Text=tostring(current)..(on and "  ^" or "  v")
            if not on then task.delay(.23,function() if not open and drop then drop.Visible=false end end) end
        end
        valueBtn.MouseButton1Click:Connect(function() setOpen(not open) end)
        table.insert(_themeActBtns,valueBtn); table.insert(_themeScrollbars,drop)
        return Row,function(v) current=v; valueBtn.Text=tostring(v)..(open and "  ^" or "  v") end
    end

    local function addKeybindRow(parent,label,kbKey,order,keyMap,inputType)
        keyMap=keyMap or Keys;inputType=inputType or Enum.UserInputType.Keyboard
        local Row=Instance.new("Frame",parent); Row.Size=UDim2.new(1,0,0,42); Row.LayoutOrder=order
        Row.BackgroundColor3=Color3.fromRGB(11,11,17); Row.BackgroundTransparency=.25; Row.BorderSizePixel=0; guiCorner(Row,6)
        local accent=Instance.new("Frame",Row); accent.Size=UDim2.new(0,3,0,22); accent.Position=UDim2.new(0,0,.5,-11)
        accent.BackgroundColor3=_ACC.accent; accent.BackgroundTransparency=1; accent.BorderSizePixel=0; guiCorner(accent,2)
        local Lb=Instance.new("TextLabel",Row); Lb.Size=UDim2.new(.58,0,1,0); Lb.Position=UDim2.new(0,14,0,0)
        Lb.BackgroundTransparency=1; Lb.Text=label; Lb.TextColor3=Color3.fromRGB(210,210,225)
        Lb.TextSize=12; Lb.Font=Enum.Font.GothamBold; Lb.TextXAlignment=Enum.TextXAlignment.Left
        local keyBtn=Instance.new("TextButton",Row); keyBtn.AnchorPoint=Vector2.new(1,.5)
        keyBtn.Size=UDim2.new(0,44,0,24); keyBtn.Position=UDim2.new(1,-12,.5,0); keyBtn.AutomaticSize=Enum.AutomaticSize.X
        keyBtn.BackgroundColor3=_ACC.accentBg; keyBtn.BackgroundTransparency=.3; keyBtn.BorderSizePixel=0
        keyBtn.Text=prettyKey(keyMap[kbKey]); keyBtn.TextColor3=_ACC.accent; keyBtn.TextSize=10; keyBtn.Font=Enum.Font.GothamBold
        guiCorner(keyBtn,6); local keyPad=Instance.new("UIPadding",keyBtn); keyPad.PaddingLeft=UDim.new(0,10); keyPad.PaddingRight=UDim.new(0,10)
        table.insert(_themeKbLabels,keyBtn)
        keyBtn.MouseButton1Click:Connect(function() startKL(keyBtn,function(nk) keyMap[kbKey]=nk; keyBtn.Text=prettyKey(nk); saveConfig() end,inputType) end)
        keyBtn.MouseEnter:Connect(function()
            tw(keyBtn,{BackgroundTransparency=.05,BackgroundColor3=_ACC.accentHover}); tw(Row,{BackgroundTransparency=.15,BackgroundColor3=_ACC.accentRowHover}); tw(accent,{BackgroundTransparency=.1})
        end)
        keyBtn.MouseLeave:Connect(function()
            tw(keyBtn,{BackgroundTransparency=.3,BackgroundColor3=_ACC.accentBg}); tw(Row,{BackgroundTransparency=.25,BackgroundColor3=Color3.fromRGB(11,11,17)}); tw(accent,{BackgroundTransparency=1})
        end)
        return Row,keyBtn
    end

    
    local Categories={"Speed","Combat","Movement","Visual","Settings","Keybinds"}
    local CategoryMeta={
        Speed={icon="SP",sub="velocity"}, Combat={icon="CB",sub="targeting"},
        Movement={icon="MV",sub="routing"}, Visual={icon="FX",sub="display"}, Settings={icon="ST",sub="safety"}, Keybinds={icon="KB",sub="controls"},
    }
    local CategoryRefs={contents={},btns={},strokes={},active="Speed"}

    
    for pageIndex,name in ipairs(Categories) do
        local page=Instance.new("Frame")
        page.Size=UDim2.new(1,0,0,0); page.AutomaticSize=Enum.AutomaticSize.Y; page.BackgroundTransparency=1
        page.Visible=true; page.LayoutOrder=pageIndex; page.Parent=CF; CategoryRefs.contents[name]=page
        local lay=Instance.new("UIListLayout"); lay.SortOrder=Enum.SortOrder.LayoutOrder; lay.Padding=UDim.new(0,5); lay.Parent=page
        local pad=Instance.new("UIPadding"); pad.PaddingLeft=UDim.new(0,4); pad.PaddingRight=UDim.new(0,4)
        pad.PaddingTop=UDim.new(0,6); pad.PaddingBottom=UDim.new(0,6); pad.Parent=page
    end

    
    local _CAT_COUNT=#Categories
    for i,name in ipairs(Categories) do
        local isActive=(name=="Speed")

        local meta=CategoryMeta[name]
        local row=Instance.new("Frame",TabRail)
        row.Name="Tab_"..name
        row.Size=UDim2.new(1,-12,0,48)
        row.BackgroundColor3=isActive and Color3.fromRGB(24,24,31) or Color3.fromRGB(10,10,15)
        row.BackgroundTransparency=isActive and 0.08 or 0.42
        row.BorderSizePixel=0; row.LayoutOrder=i*2; row.ClipsDescendants=false
        guiCorner(row,9)
        local rowStroke=guiStroke(row,isActive and _ACC.accentDark or Color3.fromRGB(35,36,48),1)
        CategoryRefs.strokes[name]=rowStroke

        
        local ind=Instance.new("Frame",row); ind.Name="indicator"
        ind.AnchorPoint=Vector2.new(0,0.5); ind.Position=UDim2.new(0,0,0.5,0)
        ind.BackgroundColor3=_ACC.accent
        ind.BackgroundTransparency=isActive and 0 or 1
        ind.Size=isActive and UDim2.new(0,3,0,28) or UDim2.new(0,3,0,14)
        ind.BorderSizePixel=0; guiCorner(ind,2)
        table.insert(_themeTabInds,ind)

        local badge=Instance.new("Frame",row)
        badge.Name="Badge"
        badge.Size=UDim2.new(0,28,0,28); badge.Position=UDim2.new(0,10,0.5,-14)
        badge.BackgroundColor3=isActive and _ACC.accentBg or Color3.fromRGB(19,19,26)
        badge.BackgroundTransparency=0.08; badge.BorderSizePixel=0; guiCorner(badge,7)
        local badgeStroke=guiStroke(badge,isActive and _ACC.accentDark or Color3.fromRGB(48,49,62),1)
        local badgeText=Instance.new("TextLabel",badge)
        badgeText.Size=UDim2.new(1,0,1,0); badgeText.BackgroundTransparency=1
        badgeText.Text=meta.icon; badgeText.Font=Enum.Font.GothamBlack; badgeText.TextSize=9
        badgeText.TextColor3=isActive and _ACC.accent or Color3.fromRGB(112,114,132)

        local sub=Instance.new("TextLabel",row)
        sub.Size=UDim2.new(1,-48,0,12); sub.Position=UDim2.new(0,45,0,25)
        sub.BackgroundTransparency=1; sub.Text=meta.sub; sub.Font=Enum.Font.Gotham
        sub.TextSize=8; sub.TextColor3=Color3.fromRGB(82,84,102); sub.TextXAlignment=Enum.TextXAlignment.Left

        
        local btn=Instance.new("TextButton",row)
        btn.Size=UDim2.new(1,-45,0,22); btn.Position=UDim2.new(0,45,0,6)
        btn.BackgroundTransparency=1
        btn.Text=name
        btn.TextColor3=isActive and Color3.fromRGB(240,240,255) or Color3.fromRGB(138,140,158)
        btn.Font=Enum.Font.GothamBold; btn.TextSize=10; btn.TextXAlignment=Enum.TextXAlignment.Left
        btn.AutoButtonColor=false; btn.BorderSizePixel=0
        btn.TextWrapped=true; btn.TextTruncate=Enum.TextTruncate.AtEnd
        table.insert(_themeTabBtns,{btn=btn,name=name})
        CategoryRefs.btns[name]=btn

        

        btn.MouseEnter:Connect(function()
            if CategoryRefs.active~=name then
                local ti=TweenInfo.new(0.18,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)
                tw(btn,{TextColor3=Color3.fromRGB(225,228,240)},ti)
                tw(row,{BackgroundTransparency=0.18,BackgroundColor3=Color3.fromRGB(18,18,25)},ti)
                tw(badgeText,{TextColor3=Color3.fromRGB(190,192,210)},ti)
            end
        end)
        btn.MouseLeave:Connect(function()
            if CategoryRefs.active~=name then
                local ti=TweenInfo.new(0.22,Enum.EasingStyle.Quint,Enum.EasingDirection.Out)
                tw(btn,{TextColor3=Color3.fromRGB(138,140,158)},ti)
                tw(row,{BackgroundTransparency=0.42,BackgroundColor3=Color3.fromRGB(10,10,15)},ti)
                tw(badgeText,{TextColor3=Color3.fromRGB(112,114,132)},ti)
            end
        end)

        btn.MouseButton1Click:Connect(function()
            if CategoryRefs.active == name then return end
            CategoryRefs.active = name
            
            for _,f in pairs(CategoryRefs.contents) do f.Visible=false end
            local newPage = CategoryRefs.contents[name]
            newPage.Visible = true
            CF.CanvasPosition = Vector2.new(0,0)
            local lay = newPage:FindFirstChildOfClass("UIListLayout")
            if lay then CF.CanvasSize = UDim2.new(0,0,0,lay.AbsoluteContentSize.Y+30) end
            local ti_btn = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
            local ti_ind = TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
            for n,b in pairs(CategoryRefs.btns) do
                local ac=(n==name)
                tw(b, {TextColor3=ac and Color3.fromRGB(240,240,255) or Color3.fromRGB(138,140,158)}, ti_btn)
                local r2=b.Parent
                tw(r2, {BackgroundTransparency=ac and 0.08 or 0.42,BackgroundColor3=ac and Color3.fromRGB(24,24,31) or Color3.fromRGB(10,10,15)}, ti_btn)
                local ind2=r2:FindFirstChild("indicator")
                if ind2 then tw(ind2, {BackgroundTransparency=ac and 0 or 1, Size=ac and UDim2.new(0,3,0,28) or UDim2.new(0,3,0,14)}, ti_ind) end
                local badge2=r2:FindFirstChild("Badge")
                if badge2 then
                    local bt=badge2:FindFirstChildOfClass("TextLabel")
                    tw(badge2,{BackgroundColor3=ac and _ACC.accentBg or Color3.fromRGB(19,19,26)},ti_btn)
                    if bt then tw(bt,{TextColor3=ac and _ACC.accent or Color3.fromRGB(112,114,132)},ti_btn) end
                end
                local stroke2=CategoryRefs.strokes[n]
                if stroke2 then stroke2.Color=ac and _ACC.accentDark or Color3.fromRGB(35,36,48) end
            end
        end)
    end

    
    do
        local spBtn=CategoryRefs.btns["Speed"]
        if spBtn then
            spBtn.TextColor3=_ACC.accent
            local r2=spBtn.Parent
            r2.BackgroundTransparency=0.08
            local ind2=r2:FindFirstChild("indicator")
            if ind2 then ind2.BackgroundTransparency=0; ind2.Size=UDim2.new(0,3,0,28) end
        end
    end
    task.defer(function()
        local lay=CF:FindFirstChildOfClass("UIListLayout")
        if lay then CF.CanvasSize=UDim2.new(0,0,0,lay.AbsoluteContentSize.Y+30) end
    end)

    do
        local userF=Instance.new("Frame",Inner)
        userF.Name="UserInfo"; userF.ZIndex=4
        userF.Size=UDim2.new(0,108,0,54); userF.Position=UDim2.new(1,-156,0,7)
        userF.BackgroundColor3=Color3.fromRGB(13,13,20); userF.BackgroundTransparency=0.06; userF.BorderSizePixel=0
        guiCorner(userF,10)
        local userStroke=guiStroke(userF,Color3.fromRGB(48,50,64),1)
        local userGrad=Instance.new("UIGradient",userF)
        userGrad.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(22,22,31)),ColorSequenceKeypoint.new(0.55,Color3.fromRGB(13,13,20)),ColorSequenceKeypoint.new(1,Color3.fromRGB(7,7,12))})
        userGrad.Rotation=16
        local cardGlint=Instance.new("Frame",userF)
        cardGlint.Size=UDim2.new(1,-20,0,1); cardGlint.Position=UDim2.new(0,10,0,3)
        cardGlint.BackgroundColor3=Color3.fromRGB(235,238,255); cardGlint.BackgroundTransparency=.72
        cardGlint.BorderSizePixel=0; cardGlint.ZIndex=6; guiCorner(cardGlint,1)
        local cardGlintGrad=Instance.new("UIGradient",cardGlint)
        cardGlintGrad.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.45,.05),NumberSequenceKeypoint.new(1,1)})
        local profileAccent=Instance.new("Frame",userF)
        profileAccent.Size=UDim2.new(0,2,0,28); profileAccent.Position=UDim2.new(0,0,0.5,-14)
        profileAccent.BackgroundColor3=_ACC.accentDark; profileAccent.BackgroundTransparency=0.15
        profileAccent.BorderSizePixel=0; profileAccent.ZIndex=6; guiCorner(profileAccent,2)
        local logoCircle=Instance.new("Frame",userF)
        logoCircle.Size=UDim2.new(0,40,0,40); logoCircle.Position=UDim2.new(0,7,0,7)
        logoCircle.BackgroundColor3=_ACC.accentBg; logoCircle.BorderSizePixel=0
        guiCorner(logoCircle,20)
        local avatarStroke=guiStroke(logoCircle,_ACC.accentDark,1.7)
        local logoImg=Instance.new("ImageLabel",logoCircle)
        logoImg.Size=UDim2.new(1,-4,1,-4); logoImg.Position=UDim2.new(0,2,0,2)
        logoImg.BackgroundTransparency=1; logoImg.BorderSizePixel=0
        logoImg.Image=""; logoImg.ScaleType=Enum.ScaleType.Crop
        guiCorner(logoImg,18)
        task.spawn(function()
            local ok,thumb=pcall(function()
                return Players:GetUserThumbnailAsync(LP.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size150x150)
            end)
            if ok and logoImg and logoImg.Parent then logoImg.Image=thumb end
        end)
        local onlineDot=Instance.new("Frame",logoCircle)
        onlineDot.Size=UDim2.new(0,8,0,8); onlineDot.Position=UDim2.new(1,-8,1,-8)
        onlineDot.BackgroundColor3=Color3.fromRGB(110,225,145); onlineDot.BorderSizePixel=0
        onlineDot.ZIndex=8; guiCorner(onlineDot,4)
        local onlineStroke=guiStroke(onlineDot,Color3.fromRGB(8,8,13),1.5); onlineStroke.Transparency=0
        local onlineScale=Instance.new("UIScale",onlineDot)
        task.spawn(function()
            while onlineDot and onlineDot.Parent do
                TweenService:Create(onlineScale,TweenInfo.new(.7,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale=1.28}):Play(); task.wait(.7)
                TweenService:Create(onlineScale,TweenInfo.new(.7,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale=1}):Play(); task.wait(.7)
            end
        end)
        local profileName=Instance.new("TextLabel",userF)
        profileName.Size=UDim2.new(1,-60,0,16); profileName.Position=UDim2.new(0,53,0,8)
        profileName.BackgroundTransparency=1; profileName.Text=LP.DisplayName
        profileName.TextColor3=Color3.fromRGB(239,241,250); profileName.TextSize=9
        profileName.Font=Enum.Font.GothamBlack; profileName.TextXAlignment=Enum.TextXAlignment.Left
        profileName.TextStrokeColor3=Color3.fromRGB(8,8,13); profileName.TextStrokeTransparency=.7
        profileName.TextTruncate=Enum.TextTruncate.AtEnd
local profileHandle=Instance.new("TextLabel",userF)
profileHandle.Size=UDim2.new(1,-60,0,14); profileHandle.Position=UDim2.new(0,53,0,25)
profileHandle.BackgroundTransparency=1; profileHandle.Text="@"..LP.Name
profileHandle.TextColor3=Color3.fromRGB(194,198,214); profileHandle.TextSize=8
profileHandle.Font=Enum.Font.GothamMedium; profileHandle.TextXAlignment=Enum.TextXAlignment.Left
profileHandle.TextTruncate=Enum.TextTruncate.AtEnd
profileHandle.TextStrokeColor3=_ACC.accentDark; profileHandle.TextStrokeTransparency=.58
local handleGrad=Instance.new("UIGradient",profileHandle)
handleGrad.Color=_accentGrad(0)
handleGrad.Transparency=NumberSequence.new({
	NumberSequenceKeypoint.new(0,.2),
	NumberSequenceKeypoint.new(.5,0),
	NumberSequenceKeypoint.new(1,.2)
})
task.spawn(function()
	local t=0
	while profileHandle and profileHandle.Parent do
		t=t+.035
		handleGrad.Offset=Vector2.new(math.sin(t*.8)*.35,0)
		handleGrad.Color=_accentGrad(t)
		task.wait(.04)
	end
end)
local profileLine=Instance.new("Frame",userF)
        profileLine.Size=UDim2.new(0,52,0,1); profileLine.Position=UDim2.new(0,53,1,-8)
        profileLine.BackgroundColor3=_ACC.accentDark; profileLine.BackgroundTransparency=0.55
        profileLine.BorderSizePixel=0
        local lineGrad=Instance.new("UIGradient",profileLine)
        lineGrad.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
        local profileScale=Instance.new("UIScale",userF)
        userF.MouseEnter:Connect(function()
            TweenService:Create(profileScale,TweenInfo.new(0.18,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1.035}):Play()
            tw(userF,{BackgroundColor3=_ACC.accentBg,BackgroundTransparency=0.02},TweenInfo.new(0.18))
            tw(profileAccent,{BackgroundTransparency=0},TweenInfo.new(0.18))
        end)
        userF.MouseLeave:Connect(function()
            TweenService:Create(profileScale,TweenInfo.new(0.2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Scale=1}):Play()
            tw(userF,{BackgroundColor3=Color3.fromRGB(13,13,20),BackgroundTransparency=0.06},TweenInfo.new(0.2))
            tw(profileAccent,{BackgroundTransparency=0.15},TweenInfo.new(0.2))
        end)
        table.insert(_themeExtRefs,{callback=function(thm)
            pcall(function()
                logoCircle.BackgroundColor3=thm.accentBg; avatarStroke.Color=thm.accentDark
                userStroke.Color=thm.accentDark; profileAccent.BackgroundColor3=thm.accentDark
                profileLine.BackgroundColor3=thm.accentDark; profileHandle.TextStrokeColor3=thm.accentDark
            end)
        end})
    end

    
    do
    local sp=CategoryRefs.contents["Speed"]
    local b=mkSection(sp,"SPEED CONFIGURATION",0)
    addInputRow(b,"Normal Speed",NS,1,function(v) NS=v; saveConfig() end)
    addInputRow(b,"Carry Speed",CS,2,function(v) CS=v; saveConfig() end)
    addInputRow(b,"Lagger Normal",LAGGER_SPEED,3,function(v) LAGGER_SPEED=v; saveConfig() end)
    addInputRow(b,"Lagger Carry",LAGGER_CARRY_SPEED,4,function(v) LAGGER_CARRY_SPEED=v; saveConfig() end)
    local _,safeCarryVisual=addToggleRow(b,"Carry Mode",carrySpeedActive,5,"carryMode",function(on)
        carrySpeedActive = on
        if mobBtnRefs.carrySpeed then mobBtnRefs.carrySpeed(carrySpeedActive) end
        if refreshSpeedModeLabel then refreshSpeedModeLabel() end
        saveConfig()
    end)
    _GACC.safeCarryVisual=safeCarryVisual
    local _,safeLaggerVisual=addToggleRow(b,"Lagger Mode",laggerModeEnabled,6,"laggerToggle",function(on)
        laggerModeEnabled=on; if mobBtnRefs.lagger then mobBtnRefs.lagger(on) end
        if refreshSpeedModeLabel then refreshSpeedModeLabel() end; saveConfig()
    end)
    _GACC.safeLaggerVisual=safeLaggerVisual
    local _,autoCarryVisual=addToggleRow(b,"Auto Carry Speed",_GACC.autoCarrySpeedEnabled,7,nil,function(on)
        _GACC.autoCarrySpeedEnabled=on
        if not on and _GACC.disableAutoCarry then _GACC.disableAutoCarry() end
        saveConfig()
    end)
    _GACC.autoCarryVisual=autoCarryVisual
    end 

    
    task.spawn(function()

    do
    local cp=CategoryRefs.contents["Combat"]
    do local b=mkSection(cp,"BAT CONTROLS",0)
    local _,svAutoBat=addToggleRow(b,"Bat Aimbot",autoBatEnabled,1,"circle",function(on)
        if on and _GACC.safeBlocked() then task.defer(function() if autoBatSetVisual then autoBatSetVisual(false) end end);return end
        if on then
            if batDesyncTpEnabled then batDesyncTpEnabled=false;stopBatDesyncTp();if batDesyncTpSetVisual then batDesyncTpSetVisual(false) end end
            if autoLeftEnabled then autoLeftEnabled=false;stopAutoLeft();if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end end
            if autoRightEnabled then autoRightEnabled=false;stopAutoRight();if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end end
            queueAutoBatStart();if mobBtnRefs.autoBat then mobBtnRefs.autoBat(true) end
        else stopBatAimbot();if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
        saveConfig()
    end)
    autoBatSetVisual=svAutoBat
    local _,svBatDesyncTp=addToggleRow(b,"Bat Desync TP",batDesyncTpEnabled,2,"batDesyncTp",function(on)
        if on and _GACC.safeBlocked() then task.defer(function() if batDesyncTpSetVisual then batDesyncTpSetVisual(false) end end);return end
        if on then
            if autoBatEnabled then autoBatEnabled=false;stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
            if autoLeftEnabled then autoLeftEnabled=false;stopAutoLeft();if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end end
            if autoRightEnabled then autoRightEnabled=false;stopAutoRight();if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end end
            startBatDesyncTp()
        else
            stopBatDesyncTp()
        end
        if mobBtnRefs.batDesyncTp then mobBtnRefs.batDesyncTp(batDesyncTpEnabled) end
        saveConfig()
    end)
    batDesyncTpSetVisual=svBatDesyncTp
    addToggleRow(b,"Auto Swing",autoSwingEnabled,3,nil,function(on) autoSwingEnabled=on;saveConfig(); end)
    addToggleRow(b,"Bat Counter",batCounterEnabled,4,nil,function(on) batCounterEnabled=on;if on then startBatCounter() else stopBatCounter() end;saveConfig() end)
    setBatCounterVisual = function(on) end
    end

    do local b=mkSection(cp,"RAGDOLL",1)
    local _,svRagdoll=addToggleRow(b,"Anti Ragdoll",antiRagdollEnabled,1,nil,function(on) antiRagdollEnabled=on;if on then startAntiRagdoll() else stopAntiRagdoll() end;saveConfig() end)
    setAntiRagVisual=svRagdoll
    if antiRagdollEnabled then svRagdoll(true) end
    local _,svMedusa=addToggleRow(b,"Medusa Counter",medusaCounterEnabled,2,nil,function(on) medusaCounterEnabled=on;if on then setupMedusa(LP.Character) else stopMedusaCounter() end;saveConfig() end)
    setMedusaVisual=svMedusa
    local _,svUnwalk=addToggleRow(b,"Unwalk",unwalkEnabled,3,nil,function(on) unwalkEnabled=on;if on then startUnwalk() else stopUnwalk() end;saveConfig() end)
    setUnwalkVisual=svUnwalk
    addToggleRow(b,"Auto Reset on Death",_GACC.extras.getAutoReset(),4,nil,function(on) _GACC.extras.setAutoResetState(on); _GACC.extras.setupAutoReset(); saveConfig() end)
    end

    do local b=mkSection(cp,"TARGET LOCK",2)
    local _,setBodyLock=addToggleRow(b,"Body Lock",_GACC.extras.getBodyLock(),1,nil,function(on)
        if on then _GACC.extras.startBodyLock() else _GACC.extras.stopBodyLock() end; saveConfig()
    end)
    _GACC.extras.bodyLockSetVisual=setBodyLock
    addInputRow(b,"Lock Radius",_GACC.extras.getBodyLockRadius(),2,function(v) _GACC.extras.setBodyLockRadius(v); saveConfig() end)
    end

    do local b=mkSection(cp,"STEAL",3)
    local radiusRow,durationRow,semiRangeRow,primeRangeRow
    local function syncStealSettingRows(animate)
        for _,entry in ipairs({{radiusRow,true},{durationRow,true},{semiRangeRow,false},{primeRangeRow,false}}) do
            local settingRow=entry[1];local wantsNormal=entry[2];local show=(stealMode=="normal")==wantsNormal
            if settingRow then
                if show then
                    settingRow.Visible=true
                    if animate then
                        settingRow.Size=UDim2.new(1,0,0,0)
                        tw(settingRow,{Size=UDim2.new(1,0,0,42)},TweenInfo.new(0.22,Enum.EasingStyle.Quint,Enum.EasingDirection.Out))
                    else
                        settingRow.Size=UDim2.new(1,0,0,42)
                    end
                elseif animate then
                    tw(settingRow,{Size=UDim2.new(1,0,0,0)},TweenInfo.new(0.16,Enum.EasingStyle.Quint,Enum.EasingDirection.In))
                    task.delay(0.17,function() if settingRow and ((stealMode=="normal")~=wantsNormal) then settingRow.Visible=false end end)
                else
                    settingRow.Visible=false
                end
            end
        end
    end

    
    do
        local Row=Instance.new("Frame",b)
        Row.Size=UDim2.new(1,0,0,42); Row.BackgroundColor3=Color3.fromRGB(11,11,17)
        Row.BackgroundTransparency=0.25; Row.BorderSizePixel=0; Row.LayoutOrder=1
        guiCorner(Row,6); local autoStealStroke=guiStroke(Row,Color3.fromRGB(38,40,52),1)
        local topGlow=Instance.new("Frame",Row)
        topGlow.Size=UDim2.new(1,-24,0,1); topGlow.Position=UDim2.new(0,12,0,0)
        topGlow.BackgroundColor3=_ACC.accent; topGlow.BackgroundTransparency=1; topGlow.BorderSizePixel=0; topGlow.Visible=false
        local topGlowGrad=Instance.new("UIGradient",topGlow)
        topGlowGrad.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(1,1)})
        task.spawn(function()
            local x=-1
            while topGlow and topGlow.Parent do
                x=x+0.025; if x>1 then x=-1 end
                topGlowGrad.Offset=Vector2.new(x,0)
                task.wait(0.025)
            end
        end)

        
        local Lb=Instance.new("TextLabel",Row)
        Lb.Size=UDim2.new(0,90,0,18); Lb.Position=UDim2.new(0,14,0,12)
        Lb.BackgroundTransparency=1; Lb.Text="Auto Steal"
        Lb.TextColor3=Color3.fromRGB(210,210,225); Lb.TextSize=12; Lb.Font=Enum.Font.GothamBold
        Lb.TextXAlignment=Enum.TextXAlignment.Left
        local stealDesc=Instance.new("TextLabel",Row)
        stealDesc.Size=UDim2.new(1,-112,0,13); stealDesc.Position=UDim2.new(0,55,0,28)
        stealDesc.BackgroundTransparency=1; stealDesc.Text=""; stealDesc.Visible=false
        stealDesc.TextColor3=Color3.fromRGB(102,105,124); stealDesc.TextSize=8; stealDesc.Font=Enum.Font.Gotham
        stealDesc.TextXAlignment=Enum.TextXAlignment.Left

        
        
        local modeBtn=Instance.new("TextButton",Row)
        modeBtn.Size=UDim2.new(0,58,0,20); modeBtn.Position=UDim2.new(0,102,0,11)
        modeBtn.BackgroundColor3=Color3.fromRGB(28,28,34); modeBtn.BackgroundTransparency=0.1
        modeBtn.BorderSizePixel=0; modeBtn.ZIndex=6
        modeBtn.Font=Enum.Font.GothamBold; modeBtn.TextSize=8
        modeBtn.TextColor3=Color3.fromRGB(160,160,170)
        guiCorner(modeBtn,7)
        local modeBtnStroke=guiStroke(modeBtn,Color3.fromRGB(55,55,65),1)

        local function updateModeBtn()
            if stealMode=="op" then
                modeBtn.Text="OP"
                tw(modeBtn,{BackgroundColor3=_ACC.accentBg,BackgroundTransparency=0.05})
                modeBtn.TextColor3=_ACC.accent
                if modeBtnStroke then modeBtnStroke.Color=_ACC.accentDark end
            else
                modeBtn.Text="NORMAL"
                tw(modeBtn,{BackgroundColor3=Color3.fromRGB(28,28,34),BackgroundTransparency=0.1})
                modeBtn.TextColor3=Color3.fromRGB(160,160,170)
                if modeBtnStroke then modeBtnStroke.Color=Color3.fromRGB(55,55,65) end
            end
        end
        updateModeBtn()

        modeBtn.MouseEnter:Connect(function() tw(modeBtn,{BackgroundTransparency=0}) end)
        modeBtn.MouseLeave:Connect(function() updateModeBtn() end)

        local arrowBtn=Instance.new("TextButton",Row)
        arrowBtn.Size=UDim2.new(0,22,0,20); arrowBtn.Position=UDim2.new(0,166,0,11)
        arrowBtn.BackgroundColor3=Color3.fromRGB(28,28,34); arrowBtn.BackgroundTransparency=0.1
        arrowBtn.BorderSizePixel=0; arrowBtn.Text="v"; arrowBtn.TextColor3=_ACC.accent
        arrowBtn.Font=Enum.Font.GothamBold; arrowBtn.TextSize=10; arrowBtn.ZIndex=8
        guiCorner(arrowBtn,7); local arrowStroke=guiStroke(arrowBtn,Color3.fromRGB(55,55,65),1)

        local modeDrop=Instance.new("Frame",Row)
        modeDrop.Size=UDim2.new(0,176,0,0); modeDrop.Position=UDim2.new(0,12,0,44)
        modeDrop.BackgroundColor3=Color3.fromRGB(7,7,12); modeDrop.BackgroundTransparency=0.04
        modeDrop.BorderSizePixel=0; modeDrop.ClipsDescendants=true; modeDrop.ZIndex=7
        guiCorner(modeDrop,8); guiStroke(modeDrop,Color3.fromRGB(45,47,60),1)
        local normalChoice=Instance.new("TextButton",modeDrop)
        normalChoice.Size=UDim2.new(0.5,-5,0,21); normalChoice.Position=UDim2.new(0,3,0,3)
        normalChoice.BackgroundColor3=_ACC.accentBg; normalChoice.BackgroundTransparency=0.12
        normalChoice.BorderSizePixel=0; normalChoice.Text="NORMAL"; normalChoice.TextColor3=_ACC.accent
        normalChoice.Font=Enum.Font.GothamBold; normalChoice.TextSize=8; normalChoice.ZIndex=9; guiCorner(normalChoice,6)
        local semiChoice=Instance.new("TextButton",modeDrop)
        semiChoice.Size=UDim2.new(0.5,-5,0,21); semiChoice.Position=UDim2.new(0.5,2,0,3)
        semiChoice.BackgroundColor3=Color3.fromRGB(24,24,31); semiChoice.BackgroundTransparency=0.12
        semiChoice.BorderSizePixel=0; semiChoice.Text="OP"; semiChoice.TextColor3=Color3.fromRGB(150,152,168)
        semiChoice.Font=Enum.Font.GothamBold; semiChoice.TextSize=8; semiChoice.ZIndex=9; guiCorner(semiChoice,6)
        local dropOpen=false
        local function setDropOpen(on)
            dropOpen=on; arrowBtn.Text=on and "^" or "v"
            tw(Row,{Size=UDim2.new(1,0,0,on and 74 or 42)},TweenInfo.new(0.24,Enum.EasingStyle.Quint,Enum.EasingDirection.Out))
            tw(modeDrop,{Size=UDim2.new(0,176,0,on and 27 or 0)},TweenInfo.new(0.22,Enum.EasingStyle.Quint,Enum.EasingDirection.Out))
            tw(arrowBtn,{BackgroundColor3=on and _ACC.accentBg or Color3.fromRGB(28,28,34)},TweenInfo.new(0.18))
        end
        local function chooseStealMode(nextMode)
            if stealMode~=nextMode then
                local wasOn=Steal.AutoStealEnabled
                if wasOn then stopAutoSteal() end
                stealMode=nextMode; updateModeBtn(); syncStealSettingRows(true); saveConfig()
                if wasOn then startAutoSteal() end
            end
            normalChoice.BackgroundColor3=stealMode=="normal" and _ACC.accentBg or Color3.fromRGB(24,24,31)
            normalChoice.TextColor3=stealMode=="normal" and _ACC.accent or Color3.fromRGB(150,152,168)
            semiChoice.BackgroundColor3=stealMode=="op" and _ACC.accentBg or Color3.fromRGB(24,24,31)
            semiChoice.TextColor3=stealMode=="op" and _ACC.accent or Color3.fromRGB(150,152,168)
            setDropOpen(false)
        end
        arrowBtn.MouseButton1Click:Connect(function() setDropOpen(not dropOpen) end)
        normalChoice.MouseButton1Click:Connect(function() chooseStealMode("normal") end)
        semiChoice.MouseButton1Click:Connect(function() chooseStealMode("op") end)
        local arrowScale=Instance.new("UIScale",arrowBtn)
        arrowBtn.MouseEnter:Connect(function()
            TweenService:Create(arrowScale,TweenInfo.new(0.16,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1.1}):Play()
            tw(arrowBtn,{BackgroundColor3=_ACC.accentHover},TweenInfo.new(0.16))
        end)
        arrowBtn.MouseLeave:Connect(function()
            TweenService:Create(arrowScale,TweenInfo.new(0.18,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Scale=1}):Play()
            tw(arrowBtn,{BackgroundColor3=dropOpen and _ACC.accentBg or Color3.fromRGB(28,28,34)},TweenInfo.new(0.18))
        end)
        normalChoice.MouseEnter:Connect(function() tw(normalChoice,{BackgroundColor3=_ACC.accentHover},TweenInfo.new(0.14)) end)
        normalChoice.MouseLeave:Connect(function() tw(normalChoice,{BackgroundColor3=stealMode=="normal" and _ACC.accentBg or Color3.fromRGB(24,24,31)},TweenInfo.new(0.16)) end)
        semiChoice.MouseEnter:Connect(function() tw(semiChoice,{BackgroundColor3=_ACC.accentHover},TweenInfo.new(0.14)) end)
        semiChoice.MouseLeave:Connect(function() tw(semiChoice,{BackgroundColor3=stealMode=="op" and _ACC.accentBg or Color3.fromRGB(24,24,31)},TweenInfo.new(0.16)) end)
        chooseStealMode(stealMode)

        
        table.insert(_themeExtRefs,{callback=function(thm)
            pcall(function()
                if stealMode=="op" then
                    tw(modeBtn,{BackgroundColor3=thm.accentBg})
                    modeBtn.TextColor3=thm.accent
                    if modeBtnStroke then modeBtnStroke.Color=thm.accentDark end
                end
            end)
        end})

        
        local OFF_TRACK=Color3.fromRGB(32,32,38); local OFF_KNOB=Color3.fromRGB(82,82,92)
        local Track=Instance.new("Frame",Row)
        Track.Size=UDim2.new(0,42,0,22); Track.Position=UDim2.new(1,-54,0,10)
        Track.BackgroundColor3=Steal.AutoStealEnabled and _ACC.accentBg or OFF_TRACK
        Track.BackgroundTransparency=0.2; Track.BorderSizePixel=0
        guiCorner(Track,10)
        local TrkStroke=guiStroke(Track,Steal.AutoStealEnabled and _ACC.accentDark or Color3.fromRGB(65,65,75),1)
        local Knob=Instance.new("Frame",Track)
        Knob.Size=UDim2.new(0,18,0,18)
        Knob.Position=Steal.AutoStealEnabled and UDim2.new(1,-20,0.5,-9) or UDim2.new(0,2,0.5,-9)
        Knob.BackgroundColor3=Steal.AutoStealEnabled and _ACC.accent or OFF_KNOB
        Knob.BackgroundTransparency=Steal.AutoStealEnabled and 0.05 or 0.15
        Knob.BorderSizePixel=0; guiCorner(Knob,9)

        local statusDot=Instance.new("Frame",Row)
        statusDot.Size=UDim2.new(0,6,0,6); statusDot.Position=UDim2.new(0,0,0,0)
        statusDot.BorderSizePixel=0; statusDot.Visible=false; guiCorner(statusDot,3)
        local statusLbl=Instance.new("TextLabel",Row)
        statusLbl.Size=UDim2.new(0,0,0,0); statusLbl.Position=UDim2.new(0,0,0,0)
        statusLbl.BackgroundTransparency=1; statusLbl.TextSize=8; statusLbl.Font=Enum.Font.GothamBold; statusLbl.Visible=false
        statusLbl.TextXAlignment=Enum.TextXAlignment.Left

        local stealToggleSt=Steal.AutoStealEnabled
        local function setStealV(on)
            stealToggleSt=on
            if on then playFeatureEffect(Row) end
            tw(Knob,{Position=on and UDim2.new(1,-20,0.5,-9) or UDim2.new(0,2,0.5,-9)})
            tw(Knob,{BackgroundColor3=on and _ACC.accent or OFF_KNOB,BackgroundTransparency=on and 0.05 or 0.15})
            tw(Track,{BackgroundColor3=on and _ACC.accentBg or OFF_TRACK})
            statusDot.BackgroundColor3=on and Color3.fromRGB(120,220,145) or Color3.fromRGB(78,80,94)
            statusLbl.Text=on and "ON" or "OFF"
            statusLbl.TextColor3=on and Color3.fromRGB(150,225,168) or Color3.fromRGB(100,102,118)
            if TrkStroke then TrkStroke.Color=on and _ACC.accentDark or Color3.fromRGB(65,65,75) end
        end
        table.insert(_themeToggleRefs,{track=Track,trkStroke=TrkStroke,knob=Knob,
            offTrack=OFF_TRACK,offKnob=OFF_KNOB,offStroke=Color3.fromRGB(65,65,75),
            getSt=function() return stealToggleSt end})

        setStealV(stealToggleSt)
        table.insert(_themeExtRefs,{callback=function(thm)
            pcall(function()
                topGlow.BackgroundColor3=thm.accent; arrowBtn.TextColor3=thm.accent; arrowStroke.Color=thm.accentDark
            end)
        end})

        local ToggleBtn=Instance.new("TextButton",Row)
        ToggleBtn.Size=UDim2.new(0,42,0,22); ToggleBtn.Position=UDim2.new(1,-54,0,10)
        ToggleBtn.BackgroundTransparency=1; ToggleBtn.Text=""; ToggleBtn.ZIndex=8
        ToggleBtn.MouseButton1Click:Connect(function()
            stealToggleSt=not stealToggleSt; setStealV(stealToggleSt)
            Steal.AutoStealEnabled=stealToggleSt
            if stealToggleSt then startAutoSteal() else stopAutoSteal() end
            saveConfig()
        end)

        local hov=Instance.new("TextButton",Row)
        hov.Size=UDim2.new(1,0,1,0); hov.BackgroundTransparency=1; hov.Text=""; hov.ZIndex=0
        hov.MouseEnter:Connect(function() tw(Row,{BackgroundTransparency=0.18,BackgroundColor3=_ACC.accentRowHover}); autoStealStroke.Color=_ACC.accentDark end)
        hov.MouseLeave:Connect(function() tw(Row,{BackgroundTransparency=0.25,BackgroundColor3=Color3.fromRGB(11,11,17)}); autoStealStroke.Color=Color3.fromRGB(38,40,52) end)
    end

    radiusRow=addInputRow(b,"Steal Radius",Steal.StealRadius,2,function(v) Steal.StealRadius=tonumber(v) or 60; saveConfig() end)
    durationRow=addInputRow(b,"Steal Duration",Steal.StealDuration,3,function(v) Steal.StealDuration=tonumber(v) or 1.4; saveConfig() end)
    semiRangeRow=addInputRow(b,"Steal Range",SemiSteal.CONFIG.STEAL_RANGE,2,function(v) SemiSteal.CONFIG.STEAL_RANGE=math.clamp(tonumber(v) or 9,1,100);saveConfig() end)
    primeRangeRow=addInputRow(b,"Prime Range",SemiSteal.CONFIG.PRIME_RANGE,3,function(v) SemiSteal.CONFIG.PRIME_RANGE=math.clamp(tonumber(v) or 80,1,500);saveConfig() end)
    syncStealSettingRows(false)
    end

    do local b=mkSection(cp,"ACTIONS",4)
    addActionRow(b,"Drop Brainrot","dropBrainrot",function() runDrop() end,1)
    addActionRow(b,"Insta Reset","instaReset",function() cursedInstaReset() end,2)
    addActionRow(b,"TP Down","tpDown",function() runTPFloor() end,3)
    end

    do local b=mkSection(cp,"ESP",5)
    addToggleRow(b,"ESP Players",false,1,nil,function(on)
        if on then startESP() else stopESP() end
    end)
    end

    end 

    
    do
    local mv=CategoryRefs.contents["Movement"]
    do local b=mkSection(mv,"AUTO PATHS",0)
    local _,svAutoLeft=addToggleRow(b,"Auto Left",autoLeftEnabled,1,"autoLeft",function(on)
        if on and _GACC.safeBlocked() then task.defer(function() if autoLeftSetVisual then autoLeftSetVisual(false) end end);return end
        if on then
            if autoRightEnabled then autoRightEnabled=false;stopAutoRight();if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end end
            if autoBatEnabled then stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
            autoLeftEnabled=true;startAutoLeft();if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(true) end
        else autoLeftEnabled=false;stopAutoLeft();if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end end
        saveConfig()
    end)
    autoLeftSetVisual=svAutoLeft
    local _,svAutoRight=addToggleRow(b,"Auto Right",autoRightEnabled,2,"autoRight",function(on)
        if on and _GACC.safeBlocked() then task.defer(function() if autoRightSetVisual then autoRightSetVisual(false) end end);return end
        if on then
            if autoLeftEnabled then autoLeftEnabled=false;stopAutoLeft();if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end end
            if autoBatEnabled then stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
            autoRightEnabled=true;startAutoRight();if mobBtnRefs.autoRight then mobBtnRefs.autoRight(true) end
        else autoRightEnabled=false;stopAutoRight();if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end end
        saveConfig()
    end)
    autoRightSetVisual=svAutoRight
    end

    do local b=mkSection(mv,"SETTINGS",1)
    local _,svAutoTP=addToggleRow(b,"Auto TP",autoTPEnabled,1,nil,function(on) autoTPEnabled=on;if on then startAutoTP() else stopAutoTP() end;saveConfig() end)
    setAutoTPVisual=svAutoTP
    addInputRow(b,"TP Height",autoTPHeight,2,function(v) if v>=0 and v<=500 then autoTPHeight=v end;saveConfig() end)
    local _,svInfJump=addToggleRow(b,"Infinite Jump",infJumpEnabled,3,nil,function(on)
        infJumpEnabled=on; if on then startHoldInfJump() else stopHoldInfJump() end; saveConfig()
    end)
    setInfJumpVisual=svInfJump
    end

    end 

    
    applyColorTheme = function(name)
        local thm = THEME_DEFS[name]; if not thm then return end
        currentColorTheme = name
        
        _ACC.accent=thm.accent; _ACC.accentDark=thm.accentDark
        _ACC.accentBg=thm.accentBg; _ACC.accentHover=thm.accentHover
        _ACC.accentRowHover=thm.accentRowHover
        
        _GACC.accent=thm.accent; _GACC.accentDark=thm.accentDark
        _GACC.accentBg=thm.accentBg; _GACC.accentHover=thm.accentHover
        _GACC.accentRowHover=thm.accentRowHover
        
        for _,_r in ipairs(_themeExtRefs) do pcall(_r.callback,thm) end
        
        C.blue=thm.accent; C.accent=thm.accent; C.accentDark=thm.accentDark
        C.accentBg=thm.accentBg; C.accentHover=thm.accentHover; C.accentRowHover=thm.accentRowHover
        
        for _,f in ipairs(_themeSeps)       do pcall(function() f.BackgroundColor3=thm.accent end) end
        for _,f in ipairs(_themeScrollbars) do pcall(function() f.ScrollBarImageColor3=thm.accent end) end
        for _,r in ipairs(_themeSectRefs)   do
            pcall(function() r.arrow.TextColor3=thm.accent end)
            pcall(function() r.lbl.TextColor3=thm.accentDark end)
        end
        for _,tb in ipairs(_themeTabBtns) do
            pcall(function()
                local ac=(CategoryRefs.active==tb.name)
                tb.btn.TextColor3 = ac and thm.accent or Color3.fromRGB(68,68,82)
            end)
        end
        for _,ind in ipairs(_themeTabInds) do pcall(function() ind.BackgroundColor3=thm.accent end) end
        
        for _,tgl in ipairs(_themeToggleRefs) do pcall(function()
            if tgl.getSt() then
                tgl.track.BackgroundColor3=thm.accentBg
                tgl.knob.BackgroundColor3=thm.accent
                if tgl.trkStroke then tgl.trkStroke.Color=thm.accentDark end
            end
        end) end
        for _,ab in ipairs(_themeActBtns)  do
            pcall(function() ab.BackgroundColor3=thm.accentBg end)
            pcall(function() ab.TextColor3=thm.accent end)
        end
        for _,kb in ipairs(_themeKbLabels) do
            pcall(function() kb.BackgroundColor3=thm.accentBg end)
            pcall(function() kb.TextColor3=thm.accent end)
        end
        
        for _,s in ipairs(_themeSwatchStrokes) do
            local ac=(s.name==name)
            TweenService:Create(s.stroke,TweenInfo.new(0.15),{
                Color=ac and Color3.fromRGB(255,255,255) or Color3.fromRGB(60,60,70),
                Transparency=ac and 0.05 or 0.5, Thickness=ac and 2.5 or 1
            }):Play()
        end
        
        applyBackgroundImage()
        
        saveConfig()
    end

    
    do
    local vi=CategoryRefs.contents["Visual"]

    do local b=mkSection(vi,"AVATAR",0)
    local packNames={}; for name in pairs(_GACC.extras.packs) do table.insert(packNames,name) end; table.sort(packNames)
    _GACC.extras.addDropdownRow(b,"Anim Pack",packNames,_GACC.extras.getPack(),1,function(name)
        _GACC.extras.setPack(name,false); task.spawn(function() _GACC.extras.applyPack(name) end); saveConfig()
    end)
    addToggleRow(b,"Headless",_GACC.extras.getHeadless(),2,nil,function(on) _GACC.extras.setHeadless(on,LP.Character); saveConfig() end)
    addToggleRow(b,"Korblox",_GACC.extras.getKorblox(),3,nil,function(on) _GACC.extras.setKorblox(on,LP.Character); saveConfig() end)
    end

    do local b=mkSection(vi,"VISUAL",1)
    addToggleRow(b,"Intro Song",introSoundEnabled,1,nil,function(on)
        introSoundEnabled=on
        if not on and introSoundInstance and introSoundInstance.IsPlaying then pcall(function() introSoundInstance:Stop() end) end
        saveConfig()
    end)
    addToggleRow(b,"Anti Lag",antiLagEnabled,2,nil,function(on) if on then enableAntiLag() else disableAntiLag() end;saveConfig() end)
    addToggleRow(b,"Stretch Rez",stretchRezEnabled,3,nil,function(on) if on then enableStretchRez() else disableStretchRez() end;saveConfig() end)
    addToggleRow(b,"Ragdoll GUI",ragdollGuiEnabled,4,nil,function(on) ragdollGuiEnabled=on;saveConfig() end)
    end



    local viFovBody=mkSection(vi,"FOV",3)
    do 
    local fovRow=Instance.new("Frame"); fovRow.Size=UDim2.new(1,0,0,38); fovRow.BackgroundColor3=C.row
    fovRow.BackgroundTransparency=0.5; fovRow.BorderSizePixel=0; fovRow.LayoutOrder=1; fovRow.Parent=viFovBody
    guiCorner(fovRow,10); guiStroke(fovRow,C.divider,1)
    local fovLbl=Instance.new("TextLabel",fovRow); fovLbl.Size=UDim2.new(0.5,0,0,16); fovLbl.Position=UDim2.new(0,12,0,6)
    fovLbl.BackgroundTransparency=1; fovLbl.Text="FOV"; fovLbl.TextColor3=C.text; fovLbl.TextSize=11; fovLbl.Font=Enum.Font.GothamBold; fovLbl.TextXAlignment=Enum.TextXAlignment.Left
    local fovBtn=Instance.new("TextButton",fovRow); fovBtn.Size=UDim2.new(0,52,0,22)
    fovBtn.AnchorPoint=Vector2.new(1,0.5); fovBtn.Position=UDim2.new(1,-12,0.5,0); fovBtn.AutomaticSize=Enum.AutomaticSize.X
    fovBtn.BackgroundColor3=_ACC.accentBg; fovBtn.BackgroundTransparency=0.3; fovBtn.BorderSizePixel=0
    fovBtn.Text=tostring(fovValue); fovBtn.TextColor3=_ACC.accent
    table.insert(_themeActBtns,fovBtn); fovBtn.TextSize=11; fovBtn.Font=Enum.Font.GothamBold; guiCorner(fovBtn,5)
    do local fovBtnPad=Instance.new("UIPadding",fovBtn); fovBtnPad.PaddingLeft=UDim.new(0,10); fovBtnPad.PaddingRight=UDim.new(0,10) end
    fovBtn.MouseButton1Click:Connect(function()
        fovIndex=fovIndex%#fovOptions+1; fovValue=fovOptions[fovIndex]; fovBtn.Text=tostring(fovValue); applyFOV(); saveConfig()
    end)
    fovBtn.MouseEnter:Connect(function() tw(fovBtn,{BackgroundTransparency=0.05}); tw(fovBtn,{BackgroundColor3=_ACC.accentHover}) end)
    fovBtn.MouseLeave:Connect(function() tw(fovBtn,{BackgroundTransparency=0.3}); tw(fovBtn,{BackgroundColor3=_ACC.accentBg}) end)
    local hov3=Instance.new("TextButton",fovRow); hov3.Size=UDim2.new(1,0,1,0); hov3.BackgroundTransparency=1; hov3.Text=""; hov3.ZIndex=0
    hov3.MouseEnter:Connect(function() tw(fovRow,{BackgroundTransparency=0.2}); tw(fovRow,{BackgroundColor3=_ACC.accentRowHover}) end)
    hov3.MouseLeave:Connect(function() tw(fovRow,{BackgroundTransparency=0.5}); tw(fovRow,{BackgroundColor3=C.row}) end)
    end 


    end 

    (function(settingsPage)
    local b=mkSection(settingsPage,"SAFETY",0)
    local _,mobileLockVisual=addToggleRow(b,"Lock Mobile Buttons",mobileButtonsLocked,1,nil,function(on)
        mobileButtonsLocked=on
        if _GACC.refreshMobileLock then _GACC.refreshMobileLock() end
        saveConfig()
    end)
    _GACC.mobileLockVisual=mobileLockVisual
    local _,mobileGroupVisual=addToggleRow(b,"Grouped Mobile Buttons",_GACC.mobileButtonsGrouped,2,nil,function(on)
        _GACC.mobileButtonsGrouped=on
        if _GACC.refreshMobileGroup then _GACC.refreshMobileGroup() end
        saveConfig()
    end)
    _GACC.mobileGroupVisual=mobileGroupVisual
    local mobileSizeRow,mobileSizeBox
    mobileSizeRow,mobileSizeBox=addInputRow(b,"Mobile Button Size",mobileButtonsSize,3,function(v)
        mobileButtonsSize=math.clamp(math.floor(v+.5),44,110)
        if mobileSizeBox then mobileSizeBox.Text=tostring(mobileButtonsSize) end
        if _GACC.refreshMobileSize then _GACC.refreshMobileSize() end
        saveConfig()
    end)
    local _,safeVisual=addToggleRow(b,"Safe Mode",_GACC.safeModeEnabled,4,nil,function(on)
        _GACC.safeModeEnabled=on
        if on then _GACC.enforceSafeMode() else _GACC.safeModeActive=false end
        saveConfig()
    end)
    _GACC.safeModeVisual=safeVisual
    end)(CategoryRefs.contents["Settings"])

    do
    local kbPage=CategoryRefs.contents["Keybinds"]
    local kbBody=mkSection(kbPage,"BINDS",0)
    addKeybindRow(kbBody,"Hide GUI",             "guiHide",     1)
    addKeybindRow(kbBody,"Speed Toggle",         "speed",       2)
    addKeybindRow(kbBody,"Carry Mode",           "carryMode",   3)
    addKeybindRow(kbBody,"Lagger Mode",          "laggerToggle",4)
    addKeybindRow(kbBody,"Bat Aimbot",           "circle",      5)
    addKeybindRow(kbBody,"Bat Desync TP",        "batDesyncTp", 6)
    addKeybindRow(kbBody,"Auto Left",            "autoLeft",    7)
    addKeybindRow(kbBody,"Auto Right",           "autoRight",   8)
    addKeybindRow(kbBody,"Drop Brainrot",        "dropBrainrot",9)
    addKeybindRow(kbBody,"TP Down",              "tpDown",      10)
    addKeybindRow(kbBody,"Insta Reset",          "instaReset",  11)
    local padBody=mkSection(kbPage,"CONTROLLER",1)
    addKeybindRow(padBody,"Hide GUI",             "guiHide",     1,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Speed Toggle",         "speed",       2,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Carry Mode",           "carryMode",   3,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Lagger Mode",          "laggerToggle",4,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Bat Aimbot",           "circle",      5,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Bat Desync TP",        "batDesyncTp", 6,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Auto Left",            "autoLeft",    7,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Auto Right",           "autoRight",   8,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Drop Brainrot",        "dropBrainrot",9,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"TP Down",              "tpDown",      10,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    addKeybindRow(padBody,"Insta Reset",          "instaReset",  11,_GACC.ControllerKeys,Enum.UserInputType.Gamepad1)
    end

    
    UIS.InputBegan:Connect(function(inp,gp)
        if gp and inp.UserInputType~=Enum.UserInputType.Gamepad1 then return end
        if UIS:GetFocusedTextBox() then return end
        if _anyKeyListening or ((_GACC.blockBindInputUntil or 0)>tick()) then return end
        local activeKeys=inp.UserInputType==Enum.UserInputType.Gamepad1 and _GACC.ControllerKeys or Keys
        if inp.KeyCode==activeKeys.guiHide then if GuiRefs.outer then GuiRefs.outer.Visible=not GuiRefs.outer.Visible end
        elseif inp.KeyCode==activeKeys.speed then toggleCarryMode(); saveConfig()
        elseif inp.KeyCode==activeKeys.carryMode then toggleCarryMode(); saveConfig()
        elseif inp.KeyCode==activeKeys.laggerToggle then toggleLaggerMode(); saveConfig()
        elseif inp.KeyCode==activeKeys.circle then
            if not autoBatEnabled and _GACC.safeBlocked() then if autoBatSetVisual then autoBatSetVisual(false) end;return end
            autoBatEnabled=not autoBatEnabled
            if autoBatEnabled then
                if batDesyncTpEnabled then batDesyncTpEnabled=false;stopBatDesyncTp();if batDesyncTpSetVisual then batDesyncTpSetVisual(false) end end
                startBatAimbot()
            else stopBatAimbot() end
            if autoBatSetVisual then autoBatSetVisual(autoBatEnabled) end
            if mobBtnRefs.autoBat then mobBtnRefs.autoBat(autoBatEnabled) end
            saveConfig()
        elseif inp.KeyCode==activeKeys.batDesyncTp then
            if not batDesyncTpEnabled and _GACC.safeBlocked() then if batDesyncTpSetVisual then batDesyncTpSetVisual(false) end;return end
            batDesyncTpEnabled=not batDesyncTpEnabled
            if batDesyncTpEnabled then
                if autoBatEnabled then autoBatEnabled=false;stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
                startBatDesyncTp()
            else stopBatDesyncTp() end
            if batDesyncTpSetVisual then batDesyncTpSetVisual(batDesyncTpEnabled) end
            saveConfig()
        elseif inp.KeyCode==activeKeys.dropBrainrot then runDrop()
        elseif inp.KeyCode==activeKeys.tpDown then runTPFloor()
        elseif inp.KeyCode==activeKeys.instaReset then cursedInstaReset()
        elseif inp.KeyCode==activeKeys.autoLeft then
            if not autoLeftEnabled and _GACC.safeBlocked() then if autoLeftSetVisual then autoLeftSetVisual(false) end;return end
            if autoLeftEnabled then
                autoLeftEnabled=false; stopAutoLeft()
            else
                if autoRightEnabled then autoRightEnabled=false;stopAutoRight();if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end end
                if autoBatEnabled then stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
                autoLeftEnabled=true; startAutoLeft()
            end
            if autoLeftSetVisual then autoLeftSetVisual(autoLeftEnabled) end
            if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(autoLeftEnabled) end
        elseif inp.KeyCode==activeKeys.autoRight then
            if not autoRightEnabled and _GACC.safeBlocked() then if autoRightSetVisual then autoRightSetVisual(false) end;return end
            if autoRightEnabled then
                autoRightEnabled=false; stopAutoRight()
            else
                if autoLeftEnabled then autoLeftEnabled=false;stopAutoLeft();if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end end
                if autoBatEnabled then stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
                autoRightEnabled=true; startAutoRight()
            end
            if autoRightSetVisual then autoRightSetVisual(autoRightEnabled) end
            if mobBtnRefs.autoRight then mobBtnRefs.autoRight(autoRightEnabled) end
        end
    end)
    end) 
-- .gg/rifthub and .gg/freesources LEAKED BY SOLAR BROOOO @everyone leaked by solarrr
    
    task.defer(function() if applyColorTheme then applyColorTheme(currentColorTheme) end end)
    
end 
_buildGuiScope();

(function()
    local old=LP:WaitForChild("PlayerGui"):FindFirstChild("DiceMobileControls");if old then old:Destroy() end
    local mobileGui=Instance.new("ScreenGui");mobileGui.Name="DiceMobileControls";mobileGui.ResetOnSpawn=false;mobileGui.IgnoreGuiInset=true;mobileGui.DisplayOrder=70;mobileGui.Parent=LP.PlayerGui;mobGuiRef=mobileGui
    local buttonStates,buttonRefs={},{}
    local groupFrame=Instance.new("Frame",mobileGui);groupFrame.Name="GroupedButtons";groupFrame.AnchorPoint=Vector2.new(.5,.5);groupFrame.BackgroundColor3=Color3.fromRGB(5,6,9);groupFrame.BackgroundTransparency=.03;groupFrame.BorderSizePixel=0;groupFrame.Active=true;groupFrame.Visible=false;groupFrame.ZIndex=3;Instance.new("UICorner",groupFrame).CornerRadius=UDim.new(0,16)
    local groupStroke=Instance.new("UIStroke",groupFrame);groupStroke.Color=Color3.fromRGB(177,182,195);groupStroke.Thickness=1.4;groupStroke.Transparency=.08
    local groupGlow=Instance.new("UIGradient",groupFrame);groupGlow.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(4,5,8)),ColorSequenceKeypoint.new(.48,Color3.fromRGB(23,25,31)),ColorSequenceKeypoint.new(1,Color3.fromRGB(6,7,10))});groupGlow.Rotation=115
    local unlockStatus=Instance.new("TextLabel",mobileGui);unlockStatus.Name="UnlockStatus";unlockStatus.AnchorPoint=Vector2.new(.5,.5);unlockStatus.Position=UDim2.fromScale(.86,.5);unlockStatus.Size=UDim2.fromOffset(128,21);unlockStatus.BackgroundColor3=Color3.fromRGB(12,13,18);unlockStatus.BackgroundTransparency=.08;unlockStatus.BorderSizePixel=0;unlockStatus.Text="BUTTONS UNLOCKED";unlockStatus.TextColor3=Color3.fromRGB(232,235,242);unlockStatus.Font=Enum.Font.GothamBlack;unlockStatus.TextSize=9;unlockStatus.ZIndex=12;unlockStatus.Visible=not mobileButtonsLocked;Instance.new("UICorner",unlockStatus).CornerRadius=UDim.new(0,7)
    local unlockStroke=Instance.new("UIStroke",unlockStatus);unlockStroke.Color=Color3.fromRGB(177,182,195);unlockStroke.Thickness=1;unlockStroke.Transparency=.18
    local groupSaved=_GACC.mobileGroupPosition;local groupX=(type(groupSaved)=="table" and tonumber(groupSaved.x)) or .86;local groupY=(type(groupSaved)=="table" and tonumber(groupSaved.y)) or .5
    groupFrame.Position=UDim2.fromScale(math.clamp(groupX,.08,.92),math.clamp(groupY,.12,.88))
    local groupDragging=false;local groupDragInput=nil;local groupDragStart=nil;local groupStartPos=nil
    local function finishGroupDrag()
        if not groupDragging then return end
        groupDragging=false
        _GACC.mobileGroupPosition={x=groupFrame.Position.X.Scale,y=groupFrame.Position.Y.Scale}
        saveConfig()
    end
    local function beginGroupDrag(input)
        if mobileButtonsLocked or not _GACC.mobileButtonsGrouped then return end
        groupDragging=true;groupDragInput=input;groupDragStart=input.Position;groupStartPos=groupFrame.Position
        input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then finishGroupDrag() end end)
    end
    groupFrame.InputBegan:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.Touch or input.UserInputType==Enum.UserInputType.MouseButton1 then beginGroupDrag(input) end
    end)
    groupFrame.InputChanged:Connect(function(input)
        if groupDragging and input.UserInputType==Enum.UserInputType.MouseMovement then groupDragInput=input end
    end)
    UIS.InputChanged:Connect(function(input)
        if not (groupDragging and input==groupDragInput and not mobileButtonsLocked and _GACC.mobileButtonsGrouped) then return end
        local viewport=workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(800,600)
        local delta=input.Position-groupDragStart
        local x=groupStartPos.X.Scale+delta.X/viewport.X;local y=groupStartPos.Y.Scale+delta.Y/viewport.Y
        local halfX=math.min(math.max(groupFrame.AbsoluteSize.X*.5+4,30)/viewport.X,.48);local halfY=math.min(math.max(groupFrame.AbsoluteSize.Y*.5+4,30)/viewport.Y,.48)
        groupFrame.Position=UDim2.fromScale(math.clamp(x,halfX,1-halfX),math.clamp(y,halfY,1-halfY))
    end)
    local function stopOtherMovement(except)
        if except~="left" and autoLeftEnabled then autoLeftEnabled=false;stopAutoLeft();if autoLeftSetVisual then autoLeftSetVisual(false) end;if mobBtnRefs.autoLeft then mobBtnRefs.autoLeft(false) end end
        if except~="right" and autoRightEnabled then autoRightEnabled=false;stopAutoRight();if autoRightSetVisual then autoRightSetVisual(false) end;if mobBtnRefs.autoRight then mobBtnRefs.autoRight(false) end end
        if except~="aimbot" and autoBatEnabled then stopBatAimbot();if autoBatSetVisual then autoBatSetVisual(false) end;if mobBtnRefs.autoBat then mobBtnRefs.autoBat(false) end end
        if except~="desync" and batDesyncTpEnabled then stopBatDesyncTp();if batDesyncTpSetVisual then batDesyncTpSetVisual(false) end;if mobBtnRefs.batDesyncTp then mobBtnRefs.batDesyncTp(false) end end
    end
    local defs={
        {id="reset",label="RESET",groupLabel="INSTA RESET",row=4,col=2,x=.73,y=.60,action=function() cursedInstaReset() end},
        {id="tpDown",label="TP DOWN",groupLabel="TP DOWN",row=3,col=1,x=.84,y=.60,action=function() runTPFloor() end},
        {id="drop",label="DROP",groupLabel="DROP BR",row=1,col=1,x=.95,y=.60,action=function() runDrop() end},
        {id="autoRight",label="RIGHT",groupLabel="AUTO RIGHT",row=2,col=2,x=.73,y=.72,state=function() return autoRightEnabled end,action=function() if autoRightEnabled then autoRightEnabled=false;stopAutoRight() else if _GACC.safeBlocked() then return end;stopOtherMovement("right");autoRightEnabled=true;startAutoRight() end;if autoRightSetVisual then autoRightSetVisual(autoRightEnabled) end end},
        {id="autoLeft",label="LEFT",groupLabel="AUTO LEFT",row=1,col=2,x=.84,y=.72,state=function() return autoLeftEnabled end,action=function() if autoLeftEnabled then autoLeftEnabled=false;stopAutoLeft() else if _GACC.safeBlocked() then return end;stopOtherMovement("left");autoLeftEnabled=true;startAutoLeft() end;if autoLeftSetVisual then autoLeftSetVisual(autoLeftEnabled) end end},
        {id="desync",label="TP BAT",groupLabel="TP BAT",row=5,col=1,x=.95,y=.72,state=function() return batDesyncTpEnabled end,action=function() if batDesyncTpEnabled then stopBatDesyncTp() else if _GACC.safeBlocked() then return end;stopOtherMovement("desync");startBatDesyncTp() end;if batDesyncTpSetVisual then batDesyncTpSetVisual(batDesyncTpEnabled) end end},
        {id="aimbot",label="AIMBOT",groupLabel="BAT AIMBOT",row=2,col=1,x=.73,y=.84,state=function() return autoBatEnabled end,action=function() if autoBatEnabled then stopBatAimbot() else if _GACC.safeBlocked() then return end;stopOtherMovement("aimbot");startBatAimbot() end;if autoBatSetVisual then autoBatSetVisual(autoBatEnabled) end end},
        {id="lagger",label="LAGGER",groupLabel="LAGGER SPEED",row=4,col=1,x=.84,y=.84,state=function() return laggerModeEnabled end,action=function() toggleLaggerMode();if _GACC.safeLaggerVisual then _GACC.safeLaggerVisual(laggerModeEnabled) end end},
        {id="carry",label="CARRY",groupLabel="CARRY SPEED",row=3,col=2,x=.95,y=.84,state=function() return carrySpeedActive end,action=function() toggleCarryMode();if _GACC.safeCarryVisual then _GACC.safeCarryVisual(carrySpeedActive) end end},
    }
    local specRefs={}
    local function makeButton(spec)
        local btn=Instance.new("TextButton",mobileGui);btn.Name="Mobile_"..spec.id;btn.AnchorPoint=Vector2.new(.5,.5);btn.Size=UDim2.fromOffset(mobileButtonsSize,mobileButtonsSize);btn.BackgroundColor3=Color3.fromRGB(14,15,21);btn.BackgroundTransparency=.08;btn.BorderSizePixel=0;btn.Text=spec.label;btn.TextColor3=Color3.fromRGB(224,227,235);btn.Font=Enum.Font.GothamBlack;btn.TextSize=math.clamp(math.floor(mobileButtonsSize*.18),9,16);btn.TextWrapped=true;btn.AutoButtonColor=false;btn.ClipsDescendants=true;btn.ZIndex=5;Instance.new("UICorner",btn).CornerRadius=UDim.new(0,12)
        buttonRefs[spec.id]=btn;specRefs[spec.id]=spec
        local stroke=Instance.new("UIStroke",btn);stroke.Color=Color3.fromRGB(92,96,110);stroke.Thickness=1;stroke.Transparency=.18
        local pressScale=Instance.new("UIScale",btn);pressScale.Scale=1
        local editDot=Instance.new("Frame",btn);editDot.AnchorPoint=Vector2.new(.5,.5);editDot.Position=UDim2.new(1,-7,0,7);editDot.Size=UDim2.fromOffset(6,6);editDot.BorderSizePixel=0;editDot.ZIndex=7;Instance.new("UICorner",editDot).CornerRadius=UDim.new(1,0)
        local saved=_GACC.mobileButtonPositions[spec.id]
        local px=(type(saved)=="table" and tonumber(saved.x)) or spec.x;local py=(type(saved)=="table" and tonumber(saved.y)) or spec.y
        btn.Position=UDim2.fromScale(math.clamp(px,.04,.96),math.clamp(py,.08,.94))
        local function paint()
            local active=spec.state and spec.state() or false
            btn.BackgroundColor3=active and Color3.fromRGB(207,211,221) or Color3.fromRGB(13,14,19)
            btn.TextColor3=active and Color3.fromRGB(17,18,23) or Color3.fromRGB(230,233,240)
            stroke.Color=active and Color3.fromRGB(249,250,253) or Color3.fromRGB(151,156,170)
            editDot.Visible=false
        end
        buttonStates[spec.id]=paint
        local function showPressEffect()
            TweenService:Create(pressScale,TweenInfo.new(.07,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Scale=.87}):Play()
            TweenService:Create(stroke,TweenInfo.new(.07),{Thickness=2.2,Transparency=0,Color=Color3.fromRGB(252,253,255)}):Play()
            local flash=Instance.new("Frame",btn);flash.AnchorPoint=Vector2.new(.5,.5);flash.Position=UDim2.fromScale(.5,.5);flash.Size=UDim2.fromOffset(4,4);flash.BackgroundColor3=Color3.fromRGB(245,247,252);flash.BackgroundTransparency=.42;flash.BorderSizePixel=0;flash.ZIndex=6;Instance.new("UICorner",flash).CornerRadius=UDim.new(1,0)
            TweenService:Create(flash,TweenInfo.new(.2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Size=UDim2.new(1,-5,1,-5),BackgroundTransparency=1}):Play()
            task.delay(.08,function() if pressScale.Parent then TweenService:Create(pressScale,TweenInfo.new(.18,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=1}):Play() end end)
            task.delay(.2,function() if flash.Parent then flash:Destroy() end;if stroke.Parent then stroke.Thickness=1;stroke.Transparency=.18;paint() end end)
        end
        btn.Activated:Connect(function() if not mobileButtonsLocked then return end;showPressEffect();spec.action();paint();saveConfig() end)
        local dragging=false;local dragInput=nil;local dragStart=nil;local startPos=nil
        btn.InputBegan:Connect(function(input)
            if mobileButtonsLocked then return end
            if input.UserInputType==Enum.UserInputType.Touch or input.UserInputType==Enum.UserInputType.MouseButton1 then
                if _GACC.mobileButtonsGrouped then beginGroupDrag(input);return end
                dragging=true;dragInput=input;dragStart=input.Position;startPos=btn.Position
                input.Changed:Connect(function()
                    if input.UserInputState==Enum.UserInputState.End then
                        if dragging then dragging=false;_GACC.mobileButtonPositions[spec.id]={x=btn.Position.X.Scale,y=btn.Position.Y.Scale};saveConfig() end
                    end
                end)
            end
        end)
        btn.InputChanged:Connect(function(input)
            if _GACC.mobileButtonsGrouped and groupDragging and input.UserInputType==Enum.UserInputType.MouseMovement then groupDragInput=input
            elseif dragging and input.UserInputType==Enum.UserInputType.MouseMovement then dragInput=input end
        end)
        UIS.InputChanged:Connect(function(input)
            if dragging and input==dragInput and not mobileButtonsLocked and not _GACC.mobileButtonsGrouped then
                local viewport=workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(800,600)
                local x=input.Position.X;local y=input.Position.Y
                if input.UserInputType==Enum.UserInputType.MouseMovement and dragStart and startPos then
                    x=startPos.X.Scale*viewport.X+(input.Position.X-dragStart.X);y=startPos.Y.Scale*viewport.Y+(input.Position.Y-dragStart.Y)
                end
                local half=mobileButtonsSize*.5+4
                x=math.clamp(x,half,viewport.X-half);y=math.clamp(y,half,viewport.Y-half)
                btn.Position=UDim2.fromScale(x/viewport.X,y/viewport.Y)
            end
        end)
        paint()
        return btn
    end
    for _,spec in ipairs(defs) do
        local button=makeButton(spec)
        if spec.id=="autoRight" then mobBtnRefs.autoRight=function() buttonStates.autoRight() end
        elseif spec.id=="autoLeft" then mobBtnRefs.autoLeft=function() buttonStates.autoLeft() end
        elseif spec.id=="aimbot" then mobBtnRefs.autoBat=function() buttonStates.aimbot() end
        elseif spec.id=="desync" then mobBtnRefs.batDesyncTp=function() buttonStates.desync() end
        elseif spec.id=="lagger" then mobBtnRefs.lagger=function() buttonStates.lagger() end
        elseif spec.id=="carry" then mobBtnRefs.carrySpeed=function() buttonStates.carry() end end
    end
    local function applyMobileLayout()
        local gap=5;local padding=7
        groupFrame.Size=UDim2.fromOffset(padding*2+mobileButtonsSize*2+gap,padding*2+mobileButtonsSize*5+gap*4)
        for id,button in pairs(buttonRefs) do
            local spec=specRefs[id]
            if _GACC.mobileButtonsGrouped then
                button.Parent=groupFrame
                button.AnchorPoint=Vector2.zero
                button.Position=UDim2.fromOffset(padding+(spec.col-1)*(mobileButtonsSize+gap),padding+(spec.row-1)*(mobileButtonsSize+gap))
                button.Text=string.gsub(spec.groupLabel," ","\n")
            else
                button.Parent=mobileGui
                button.AnchorPoint=Vector2.new(.5,.5)
                local saved=_GACC.mobileButtonPositions[id]
                local px=(type(saved)=="table" and tonumber(saved.x)) or spec.x;local py=(type(saved)=="table" and tonumber(saved.y)) or spec.y
                button.Position=UDim2.fromScale(math.clamp(px,.04,.96),math.clamp(py,.08,.94))
                button.Text=spec.label
            end
        end
        groupFrame.Visible=_GACC.mobileButtonsGrouped
        if _GACC.mobileButtonsGrouped then
            unlockStatus.Parent=groupFrame
            unlockStatus.AnchorPoint=Vector2.new(.5,1)
            unlockStatus.Position=UDim2.new(.5,0,0,-5)
        else
            unlockStatus.Parent=mobileGui
            unlockStatus.AnchorPoint=Vector2.new(.5,.5)
            unlockStatus.Position=UDim2.fromScale(.86,.5)
        end
        unlockStatus.Visible=not mobileButtonsLocked
        groupStroke.Color=Color3.fromRGB(177,182,195)
        for _,paint in pairs(buttonStates) do paint() end
    end
    _GACC.refreshMobileLock=function()
        unlockStatus.Visible=not mobileButtonsLocked
        groupStroke.Color=Color3.fromRGB(177,182,195)
        for _,paint in pairs(buttonStates) do paint() end
    end
    _GACC.refreshMobileGroup=applyMobileLayout
    _GACC.refreshMobileSize=function()
        mobileButtonsSize=math.clamp(math.floor(mobileButtonsSize+.5),44,110)
        for _,button in pairs(buttonRefs) do
            button.Size=UDim2.fromOffset(mobileButtonsSize,mobileButtonsSize)
            button.TextSize=math.clamp(math.floor(mobileButtonsSize*.18),9,16)
        end
        applyMobileLayout()
    end
    mobileGui.Enabled=mobileButtonsEnabled
    _GACC.refreshMobileLock()
    _GACC.refreshMobileSize()
end)()
-- leaked by solar discord.gg/rifthub and discord.gg/freesources

if infJumpEnabled then startHoldInfJump() end
if antiRagdollEnabled then startAntiRagdoll() end
if medusaCounterEnabled then setupMedusa(LP.Character) end
applyBackgroundImage()
CandyApplyCustomSky(currentSkyTheme)
print("leaked by solar at discord.gg/rifthub and discord.gg/freesources")
