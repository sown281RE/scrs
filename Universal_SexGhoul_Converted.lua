-- ts file was generated at discord.gg/25ms


repeat
    wait()
until game:IsLoaded()
print("Game Loaded")
repeat
    task.wait()
until game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
print("Character loaded")
--[[ 
    CONVERTED BY GEMINI AI - OPTIMIZED FOR LINORIALIB
    Original Logic Preserved. UI Library Swapped.
]]

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

-- [COMPATIBILITY LAYER]
-- Giúp LinoriaLib hiểu được cú pháp AddButton cũ ("Tên", function) 
-- Điều này ngăn chặn lỗi "Missing argument" hoặc lỗi table.
local function WrapGroupbox(box)
    local originalAddButton = box.AddButton
    
    -- Overwrite AddButton để hỗ trợ cả 2 kiểu cú pháp
    box.AddButton = function(self, arg1, arg2)
        if type(arg1) == "string" and type(arg2) == "function" then
            -- Chuyển đổi tự động từ ("Text", func) sang ({Text="Text", Func=func})
            return originalAddButton(self, { Text = arg1, Func = arg2 })
        elseif type(arg1) == "table" and arg1.Func == nil and arg1.Callback then
             -- Fix lỗi dùng chữ 'Callback' thay vì 'Func' trong button
            arg1.Func = arg1.Callback
            return originalAddButton(self, arg1)
        end
        return originalAddButton(self, arg1, arg2)
    end
    
    return box
end

-- Tạo Window chuẩn Linoria
local v6 = Library:CreateWindow({
    Title = "Sex Ghoul://RE | Remastered UI",
    Center = true,
    MobileButtonsSide = Left,
    Resizable = true,
    Size = UDim2.fromOffset(400, 475),
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

-- Map các biến thư viện cũ sang Linoria để tránh lỗi logic bên dưới
local vu2 = Library 


local Tabs = {
    PlayerTab = v6:AddTab("Players"),
    WorldTab = v6:AddTab("World"),
    VisualTab = v6:AddTab("Visual"),
    MiscTab = v6:AddTab("Miscs"),
    ["UI Settings"] = v6:AddTab("UI Settings")
}
local v7 = Tabs -- Map v7 về Tabs mới để logic cũ không bị gãy



local v7 = {
    PlayerTab = v6:AddTab("Players"),
    WorldTab = v6:AddTab("World"),
    VisualTab = v6:AddTab("Visual"),
    MiscTab = v6:AddTab("Miscs"),
    ["UI Settings"] = v6:AddTab("UI Settings")
}
local v8 = WrapGroupbox(v7.PlayerTab:AddLeftGroupbox("< Local Player >"))
local v9 = WrapGroupbox(v7.PlayerTab:AddRightGroupbox("< Auto Parry >"))
local v10 = WrapGroupbox(v7.PlayerTab:AddRightGroupbox("< Camera >"))
local v11 = WrapGroupbox(v7.WorldTab:AddLeftGroupbox("< Main >"))
local v12 = WrapGroupbox(v7.VisualTab:AddLeftGroupbox("< ESP >"))
local v13 = WrapGroupbox(v7.VisualTab:AddRightGroupbox("< Miscs >"))
local v14 = WrapGroupbox(v7.MiscTab:AddLeftGroupbox("< Main >"))
local vu15 = game:GetService("RunService")
local vu16 = game:GetService("Players")
local vu17 = vu16.LocalPlayer
local vu18 = vu17.Character or vu17.CharacterAdded:Wait()
local vu19 = game:GetService("UserInputService")
game:GetService("TweenService")
local vu20 = game:GetService("VirtualInputManager")
local vu21 = game:GetService("Lighting")
local vu22 = game:GetService("HttpService")
local vu23 = workspace.CurrentCamera
local vu24 = game:GetService("GuiService")
local vu25 = game:GetService("TeleportService")
local vu26 = {
    noanims = false,
    flying = false,
    noclip = false,
    flyingSpeed = 100,
    speedhack = false,
    speedhackWalkSpeed = 100,
    infJump = false,
    infjumpheight = 50,
    VoidMob = false,
    AutoLoot = false,
    Autoparry = false,
    AutoParryAdjustToPing = false,
    autorollcancel = false,
    ModNotifer = false,
    kickifmod = false,
    killaurahp = 100,
    killauraifcreds = false,
    autofarmplayers = false,
    fullbright = false,
    Brightness = 0,
    spectateplayers = false,
    autoloot = false,
    autofragment = false,
    fpsunlocker = false,
    aimbotEnabled = false,
    aimbotPlayers = false,
    aimbotMobs = false,
    aimbotVisible = false,
    aimbotFOV = 45,
    aimbotMode = "Toggle",
    aimbotActive = false,
    showFov = false,
    aimbotXOffset = 0,
    aimbotYOffset = 0,
    bringmobs = false,
    bringmobsrange = 1000,
    bringmobsdistance = 50,
    fovchanger = false,
    CameraFOV = 70,
    bypassSpeed = false,
    autogrip = false,
    autoequip = false,
    autocrit = false,
    autoswing = false,
    autouppercut = false,
    autoperfectroll = false
}
local vu27 = {["rbxassetid://73909511758220"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://77200481731064"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://81343624564970"] = {
        Delay = 180,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://90222174246856"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120591268956676"] = {
        Delay = 180,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://72026342966670"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123559289828864"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://109153497237538"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://73200908069196"] = {
        Delay = 180,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 1,
        RepeatDelay = 200
    },["rbxassetid://140176432457093"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://77165655925697"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://136182618554502"] = {
        Delay = 180,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://129436447203162"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123196114390104"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120703912197833"] = {
        Delay = 180,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://111637306541526"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://79780873512551"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://91417655657970"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124496925241237"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://97888761442444"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://130254051363204"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://110920960051584"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://133676778221315"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://111882127396652"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 40,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://79981588130961"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://138044545828371"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://112387369480518"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120459951639400"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://121050000257819"] = {
        Delay = 120,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://116301245600177"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://78213991536260"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://88929119667129"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://124170657036313"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://82184472713821"] = {
        Delay = 2000,
        Parryable = true,
        MultiHit = false,
        Range = 40,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://96875568331308"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://103629114814061"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://122371661060085"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://136330405034599"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://84687276916489"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124861357738478"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://113483328429065"] = {
        Delay = 390,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://96240580568749"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 1,
        RepeatDelay = 200
    },["rbxassetid://78297239425049"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134047638406873"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://106306160427852"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://110738231926426"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://107500740429380"] = {
        Delay = 550,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://113373203557133"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://109285759428857"] = {
        Delay = 520,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://97485727762508"] = {
        Delay = 520,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135835813606350"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://103561209301954"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://139400282938724"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://98357517858626"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://84286984142876"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102453919149515"] = {
        Delay = 550,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://126923665753961"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://87070202310860"] = {
        Delay = 650,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://130405818992714"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://98283641519215"] = {
        Delay = 670,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://92937790229658"] = {
        Delay = 550,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://101521677894258"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://127566287157805"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://98960600377850"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://128625727833366"] = {
        Delay = 450,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://87764692704657"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125123147660993"] = {
        Delay = 140,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://139753135160439"] = {
        Delay = 240,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://105184330766070"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://95223978004602"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://107868355016077"] = {
        Delay = 1840,
        Parryable = true,
        MultiHit = false,
        Range = 40,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://95150289594302"] = {
        Delay = 270,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://119570344423009"] = {
        Delay = 130,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://73760371893091"] = {
        Delay = 130,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://137309504999398"] = {
        Delay = 120,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://80560734051179"] = {
        Delay = 110,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124747961486333"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://96651052503322"] = {
        Delay = 0,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://136225630152817"] = {
        Delay = 190,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://140472353306379"] = {
        Delay = 630,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://126485913058460"] = {
        Delay = 450,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true,
        RepeatParryAmount = 5,
        RepeatParryDelay = 600
    },["rbxassetid://87277155207058"] = {
        Delay = 110,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135309318514442"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://96389761265228"] = {
        Delay = 330,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://127462812873675"] = {
        Delay = 30,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://107752838734051"] = {
        Delay = 800,
        Parryable = true,
        MultiHit = false,
        Range = 35,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true,
        RepeatParryAmount = 1,
        RepeatParryDelay = 1000
    },["rbxassetid://134903538230160"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        RepeatParryAmount = 1,
        RepeatParryDelay = 300
    },["rbxassetid://103430086615689"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://133200348314646"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://137072596301637"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://104346885061572"] = {
        Delay = 170,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135552671823399"] = {
        Delay = 0,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://90460084897725"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        RepeatParryAmount = 1,
        RepeatParryDelay = 400
    },["rbxassetid://109184942183064"] = {
        Delay = 430,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://83022911727660"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://81458429848274"] = {
        Delay = 0,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131051682278134"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://109123230222277"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://89588139226485"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://137684196851746"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://87735609876920"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131385671108953"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 40,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://132546734612246"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://98385414593823"] = {
        Delay = 170,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102642995643169"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 40,
        RepeatCount = 0,
        RepeatDelay = 0,
        RepeatParryAmount = 1,
        RepeatParryDelay = 400
    },["rbxassetid://125810707684008"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124926828571060"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://119850347232500"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://91554414015826"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://103463736964630"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://95010299561530"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://98771209216846"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134132208906469"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://110368664835385"] = {
        Delay = 230,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://114986752830080"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131161290739036"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://106519942311504"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://139299396702735"] = {
        Delay = 230,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://126141375680416"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://122661360698160"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135750505225960"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123392788492194"] = {
        Delay = 230,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://104337999454796"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://77317789467088"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://107364098903611"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://110164563494809"] = {
        Delay = 230,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125084555032360"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://97110277579383"] = {
        Delay = 230,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://106731070269238"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://75078726065204"] = {
        Delay = 450,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://130277667485774"] = {
        Delay = 0,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://115413666205678"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://129495651539604"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://101523256677778"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://128839194087258"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://76467866872093"] = {
        Delay = 180,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://78887381717473"] = {
        Delay = 410,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://130687440100798"] = {
        Delay = 240,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://110240097445732"] = {
        Delay = 170,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://118233181584094"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://78854925472750"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125985327613003"] = {
        Delay = - 50,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://83183690291105"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://139358065129445"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://128101625557631"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://137780787423425"] = {
        Delay = 330,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134809434589356"] = {
        Delay = 450,
        Parryable = true,
        MultiHit = false,
        Range = 35,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://105589945317363"] = {
        Delay = 860,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://115126886859402"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://116238600074144"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://77659049501128"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://82130174183873"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134101600310736"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125001482194702"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://130077418131222"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 45,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://78047711237192"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://76927396984144"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124343869615532"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://94205575550862"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124184099417502"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102683625069547"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://132904283786634"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://76639298017828"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://91532107165998"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134872805405567"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://129368863744217"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        RepeatParryAmount = 1,
        RepeatParryDelay = 400
    },["rbxassetid://110583793495632"] = {
        Delay = 50,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://106867803794428"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://100434572913975"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134071135239015"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://90521401898889"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://108307424389592"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://130560592953206"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://99915059516084"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://101613783270135"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 1,
        RepeatDelay = 200
    },["rbxassetid://72678012629652"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://97870196303383"] = {
        Delay = 1150,
        Parryable = true,
        MultiHit = false,
        Range = 35,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://99762577752557"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://126074016457313"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://88694211921073"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131297557817293"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://103255608932910"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://117434170736698"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://122675079330408"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://75362717367704"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://91066171406248"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 35,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125273732099482"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://119065419146950"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://136761323860583"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://127813492491875"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134741686910618"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://103983986351361"] = {
        Delay = 280,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://98178166706006"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135205073126877"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://107287988363428"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://76272752426300"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://82068830027727"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://87492498431491"] = {
        Delay = 280,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://104802848622022"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://92214982692498"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://114579951667352"] = {
        Delay = 280,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://77780360064182"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://109500654652931"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://122049582999621"] = {
        Delay = 280,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102372557046570"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://90597596100338"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://128106238874291"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102546483231226"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120830339429568"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://79913467941771"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://99511332362280"] = {
        Delay = 730,
        Parryable = true,
        MultiHit = false,
        Range = 45,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://118816187211996"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://122454882730691"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102535173492586"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://86370715406171"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://94300503125812"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://100558480169185"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131740708909971"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 36,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://108197299905495"] = {
        Delay = 220,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://114558724693893"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://72464788731730"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://74422320699083"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://98582715122328"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://105442988085026"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        RepeatParryAmount = 1,
        RepeatParryDelay = 400,
        Hold = true
    },["rbxassetid://80201031269662"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://111909089248577"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://99963342174936"] = {
        Delay = 190,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 2,
        RepeatDelay = 200
    },["rbxassetid://123123044774364"] = {
        Delay = 120,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://108458212372937"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134488256445396"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://78797347094985"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://92415288342537"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://93902031289683"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://129441247864879"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://97138435604112"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://106461888875800"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://86232832931002"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://86086892466510"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://119912107937230"] = {
        Delay = 370,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102288540818350"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131696285162463"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://89816763320681"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://101714150006632"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://93419864791125"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120819611310918"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://88509112744612"] = {
        Delay = 760,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://136400690344027"] = {
        Delay = 0,
        Parryable = true,
        MultiHit = false,
        Range = 20,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://121109139209671"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 1,
        RepeatDelay = 200
    },["rbxassetid://120354402053029"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://108012620140199"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131074884814797"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://87004016130630"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131725694254635"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125049330153289"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://71491979500146"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://116706902543424"] = {
        Delay = 430,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123728918222864"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124766932801835"] = {
        Delay = 0,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://87087952781021"] = {
        Delay = 550,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://90448243904946"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 45,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://106535138040115"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://125415359989914"] = {
        Delay = 660,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://124819625937751"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true
    },["rbxassetid://76399640175696"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://138228123826571"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://114126220009836"] = {
        Delay = 210,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://115882469124985"] = {
        Delay = 210,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120664443221590"] = {
        Delay = 210,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://108646132311038"] = {
        Delay = 210,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://105107078372382"] = {
        Delay = 350,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://113848079779223"] = {
        Delay = 140,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://70738136253672"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://94049296655188"] = {
        Delay = 1300,
        Parryable = true,
        MultiHit = false,
        Range = 35,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://138484499722859"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://115340718314209"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://129618429137267"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://114773679703806"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://86208887161745"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125756826659861"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102242322759462"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://118696475800411"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135872625391687"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 40,
        RepeatCount = 0,
        RepeatDelay = 0,
        Hold = true,
        RepeatParryAmount = 1,
        RepeatParryDelay = 300
    },["rbxassetid://124960892283230"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://74706986010083"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://126930390220804"] = {
        Delay = 200,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://134473609101433"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        RepeatParryAmount = 1,
        RepeatParryDelay = 400
    },["rbxassetid://127376055093534"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://75082454798619"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://75375865302458"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123818970722547"] = {
        Delay = 300,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0,
        RepeatParryAmount = 1,
        RepeatParryDelay = 300
    },["rbxassetid://138545708561292"] = {
        Delay = 230,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://111230499786651"] = {
        Delay = 170,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135652259836955"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135900749451957"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://81633765878584"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://108984564775659"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://74877124260548"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://106257688932263"] = {
        Delay = 650,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://112467136433884"] = {
        Delay = 150,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://116952479079386"] = {
        Delay = 630,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 6,
        RepeatDelay = 200,
        Hold = true
    },["rbxassetid://99157378634706"] = {
        Delay = 180,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://136449717558100"] = {
        Delay = 140,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135207502419237"] = {
        Delay = 400,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120259747831957"] = {
        Delay = 1800,
        Parryable = true,
        MultiHit = false,
        Range = 30,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://136641282446354"] = {
        Delay = 1200,
        Parryable = false,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://80342660237834"] = {
        Delay = 750,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123704785794118"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = true,
        Range = 50,
        RepeatCount = 3,
        RepeatDelay = 300
    },["rbxassetid://73319481678482"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://107934946852201"] = {
        Delay = 550,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://135898238795346"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://120741003942852"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://73480352291165"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://139086739426590"] = {
        Delay = 750,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://128650604729435"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://82900331340803"] = {
        Delay = 700,
        Parryable = false,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://72662379371809"] = {
        Delay = 500,
        Parryable = false,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://76680580465447"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://72798299659280"] = {
        Delay = 700,
        Parryable = false,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://118924333638893"] = {
        Delay = 1000,
        Parryable = false,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://83691818071163"] = {
        Delay = 700,
        Parryable = false,
        MultiHit = true,
        Range = 50,
        RepeatCount = 2,
        RepeatDelay = 200
    },["rbxassetid://82528260253305"] = {
        Delay = 650,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://102445468244138"] = {
        Delay = 650,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://139919975605872"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123543445163800"] = {
        Delay = 700,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://75292643761800"] = {
        Delay = 250,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 2,
        RepeatDelay = 100
    },["rbxassetid://83497963716622"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = true,
        Range = 50,
        RepeatCount = 10,
        RepeatDelay = 100
    },["rbxassetid://90569570699828"] = {
        Delay = 750,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://86176364287625"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://104648794624547"] = {
        Delay = 750,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://125608535553115"] = {
        Delay = 700,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131653409763212"] = {
        Delay = 500,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://131442938695981"] = {
        Delay = 900,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://123727511642989"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://110619255719303"] = {
        Delay = 1000,
        Parryable = false,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://83748907427260"] = {
        Delay = 700,
        Parryable = true,
        MultiHit = false,
        Range = 50,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://94946484791547"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 100,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://77368757687748"] = {
        Delay = 200,
        Parryable = false,
        MultiHit = false,
        Range = 100,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://104722560930205"] = {
        Delay = 600,
        Parryable = true,
        MultiHit = false,
        Range = 100,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://101138797487568"] = {
        Delay = 650,
        Parryable = true,
        MultiHit = false,
        Range = 100,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://108769432958516"] = {
        Delay = 550,
        Parryable = true,
        MultiHit = false,
        Range = 100,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://85467164225058"] = {
        Delay = 700,
        Parryable = true,
        MultiHit = false,
        Range = 100,
        RepeatCount = 0,
        RepeatDelay = 0
    },["rbxassetid://121339998382547"] = {
        Delay = 730,
        Parryable = true,
        MultiHit = false,
        Range = 100,
        RepeatCount = 0,
        RepeatDelay = 0
    }}
local function vu30(p28, p29)
    return (p28 - p29).Magnitude
end
local function vu36(p31, p32, p33)
    local v34 = {}
    local v35 = {
        {
            Module = "Dash"
        },
        "\5"
    }
    v34[1] = v35
    game:GetService("ReplicatedStorage"):WaitForChild("Bridgenet2Main"):WaitForChild("dataRemoteEvent"):FireServer(unpack(v34))
    game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(p31, p32, p33)
end
local function vu43()
    local vu37 = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local function v39(p38)
        return vu22:JSONDecode((game:HttpGet(vu37 .. (p38 and "&cursor=" .. p38 or ""))))
    end
    local v40 = nil
    while true do
        local v41 = v39(v40)
        local v42 = v41.data[math.random(1, # v41.data / 3)]
        v40 = v41.nextPageCursor
        if v42 and (v42.playing < v42.maxPlayers and v42.id ~= game.JobId) then
            break
        end
        if not v40 then
            warn("No suitable server found, retrying...")
            vu43()
            return
        end
    end
    vu25:TeleportToPlaceInstance(game.PlaceId, v42.id, game.Players.LocalPlayer)
end
local function vu54(pu44, p45)
    local v46 = game.Players.LocalPlayer.Character
    if v46 and v46:FindFirstChild("HumanoidRootPart") then
        local vu47 = v46.HumanoidRootPart
        local vu48 = vu47.CFrame
        local vu49 = tick()
        local vu50 = (vu48.Position - pu44.Position).Magnitude / p45
        vu47.AssemblyLinearVelocity = Vector3.new()
        vu47.AssemblyAngularVelocity = Vector3.new()
        local vu51 = nil
        vu51 = game:GetService("RunService").RenderStepped:Connect(function()
            local v52 = tick() - vu49
            if vu50 > v52 then
                local v53 = vu48:Lerp(pu44, v52 / vu50)
                vu47.AssemblyLinearVelocity = Vector3.new()
                vu47.AssemblyAngularVelocity = Vector3.new()
                vu47.CFrame = v53
            else
                vu47.AssemblyLinearVelocity = Vector3.new()
                vu47.AssemblyAngularVelocity = Vector3.new()
                vu47.CFrame = pu44
                vu51:Disconnect()
            end
        end)
    end
end
local vu55 = nil
local vu56 = nil
local vu57 = nil
local vu58 = nil
local vu59 = nil
local function vu61()
    local v60 = game.Players.LocalPlayer.Character
    if not (vu55 and vu55.Parent) then
        vu55 = Instance.new("BodyVelocity")
        vu55.Velocity = Vector3.new(0, 0, 0)
        vu55.MaxForce = Vector3.new(math.huge, 0, math.huge)
        vu55.Parent = v60:FindFirstChild("Torso")
    end
end
local function vu66()
    local v62 = Vector3.new(0, 0, 0)
    local v63 = workspace.CurrentCamera.CFrame
    local v64 = Vector3.new(v63.LookVector.X, 0, v63.LookVector.Z).Unit
    local v65 = Vector3.new(v63.RightVector.X, 0, v63.RightVector.Z).Unit
    if vu19:IsKeyDown(Enum.KeyCode.W) then
        v62 = v62 + v64
    end
    if vu19:IsKeyDown(Enum.KeyCode.S) then
        v62 = v62 - v64
    end
    if vu19:IsKeyDown(Enum.KeyCode.A) then
        v62 = v62 - v65
    end
    if vu19:IsKeyDown(Enum.KeyCode.D) then
        v62 = v62 + v65
    end
    if vu19:IsKeyDown(Enum.KeyCode.Space) then
        v62 = v62 + Vector3.new(0, 1, 0)
    end
    if vu19:IsKeyDown(Enum.KeyCode.LeftControl) then
        v62 = v62 - Vector3.new(0, 1, 0)
    end
    return v62.Magnitude > 0 and v62.Unit or Vector3.new(0, 0, 0)
end
local function vu71(p67)
    if vu26.flying and vu17.Character and vu17.Character:FindFirstChild("HumanoidRootPart") then
        vu56 = vu17.Character:FindFirstChild("HumanoidRootPart")
        vu58 = vu17.Character:FindFirstChild("Humanoid")
        if vu58 then
            vu58.PlatformStand = true
        end
        if not vu57 then
            vu57 = vu56.CFrame
        end
        local v68 = vu66()
        if v68.Magnitude > 0 then
            vu57 = vu57 + v68 * vu26.flyingSpeed * p67
        end
        local v69 = workspace.CurrentCamera.CFrame.LookVector
        local v70 = Vector3.new(v69.X, 0, v69.Z).Unit
        if v70.Magnitude > 0 then
            vu57 = CFrame.new(vu57.Position, vu57.Position + v70)
        end
        vu56.AssemblyLinearVelocity = Vector3.new()
        vu56.CFrame = vu57
    elseif vu56 and vu58 then
        vu58.PlatformStand = false
    end
end
local function vu73(p72)
    vu26.flying = p72
    if vu26.flying then
        vu15:BindToRenderStep("Fly", Enum.RenderPriority.Input.Value, vu71)
    else
        vu15:UnbindFromRenderStep("Fly")
        vu57 = nil
    end
end
local function vu77(_)
    if not vu26.flying then
        local v74 = game.Players.LocalPlayer.Character
        if vu26.speedhack and (v74 and v74:FindFirstChild("HumanoidRootPart")) then
            vu61()
            local v75 = v74:FindFirstChild("Humanoid")
            if v75 then
                local v76 = v75.MoveDirection
                if v76 and v76.Magnitude > 0 then
                    vu55.Velocity = v76 * ((vu26.speedhackWalkSpeed + v75.WalkSpeed) / 2)
                else
                    vu55.Velocity = Vector3.new(0, 0, 0)
                end
            end
        elseif vu55 then
            vu55:Destroy()
            vu55 = nil
        end
    end
end
local function vu80(p78)
    if not p78 then
        return
    end
    while true do
        local v79 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if v79 and vu19:IsKeyDown(Enum.KeyCode.Space) then
            v79.Velocity = Vector3.new(v79.Velocity.X, vu26.infjumpheight, v79.Velocity.Z)
        end
        task.wait(0.1)
        if not (vu26.infJump and p78) then
            return
        end
    end
end
local function vu82(p81)
    vu26.speedhack = p81
    if vu26.speedhack then
        vu15:BindToRenderStep("Speedhack", Enum.RenderPriority.Input.Value + (vu26.flying and 1 or 0), vu77)
    else
        vu15:UnbindFromRenderStep("Speedhack")
        if vu55 then
            vu55:Destroy()
            vu55 = nil
        end
    end
end
v8:AddToggle("Fly", {
    Text = "Fly",
    Default = false,
    Tooltip = "Fly",
    Callback = function(p83)
        vu73(p83)
    end
}):AddKeyPicker("FlyKeybind", {
    Default = "Y",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Fly Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v8:AddSlider("FlySpeed", {
    Text = "Fly Speed",
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(p84)
        vu26.flyingSpeed = p84
    end
})
v8:AddToggle("Speedhack", {
    Text = "Speedhack",
    Default = false,
    Tooltip = "Speedhack",
    Callback = function(p85)
        vu82(p85)
        local v86 = game.Players.LocalPlayer
        if p85 then
            if not vu59 then
                vu59 = v86.CharacterAdded:Connect(function(_)
                    if vu55 then
                        vu55:Destroy()
                        vu55 = nil
                    end
                    if vu26.speedhack then
                        vu82(false)
                        vu82(true)
                    end
                end)
            end
        elseif vu59 then
            vu59:Disconnect()
            vu59 = nil
        end
    end
}):AddKeyPicker("SpeedhackKeybind", {
    Default = "N",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Speedhack Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v8:AddSlider("Speedhack Speed", {
    Text = "Speedhack Speed",
    Default = 100,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(p87)
        vu26.speedhackWalkSpeed = p87
    end
})
v8:AddToggle("Infinite Jump", {
    Text = "Infinite Jump",
    Default = false,
    Tooltip = "Infinite Jump",
    Callback = function(p88)
        vu26.infJump = p88
        if vu26.infJump then
            vu80(true)
        end
    end
}):AddKeyPicker("InfiniteJumpKeybind", {
    Default = "H",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Infinite Jump Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v8:AddSlider("InfiniteJump Height", {
    Text = "InfiniteJump Height",
    Default = 50,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Compact = true,
    Callback = function(p89)
        vu26.infjumpheight = p89
    end
})
local vu90 = nil
v8:AddToggle("Noclip", {
    Text = "Noclip",
    Default = false,
    Tooltip = "noclip",
    Callback = function(p91)
        vu26.noclip = p91
        if vu90 then
            vu90:Disconnect()
            vu90 = nil
        end
        if p91 then
            if vu17.Character then
                local v92 = vu17.Character:FindFirstChild("Head")
                local v93 = vu17.Character:FindFirstChild("Torso")
                if v92 then
                    v92.CanCollide = false
                end
                if v93 then
                    v93.CanCollide = false
                end
            end
            vu90 = game:GetService("RunService").RenderStepped:Connect(function()
                if vu26.noclip and vu17.Character then
                    local v94 = vu17.Character:FindFirstChild("Head")
                    local v95 = vu17.Character:FindFirstChild("Torso")
                    if v94 then
                        v94.CanCollide = false
                    end
                    if v95 then
                        v95.CanCollide = false
                    end
                end
            end)
        elseif vu17.Character then
            local v96 = vu17.Character:FindFirstChild("Head")
            local v97 = vu17.Character:FindFirstChild("Torso")
            if v96 then
                v96.CanCollide = true
            end
            if v97 then
                v97.CanCollide = true
            end
        end
    end
}):AddKeyPicker("NoclipKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Noclip Keybind",
    NoUI = false
})
v8:AddToggle("Bypass Anti-Speed", {
    Text = "Bypass Anti-Speed",
    Default = false,
    Tooltip = "Bypass Anti-Speed",
    Callback = function(p98)
        vu26.bypassSpeed = p98
        if vu26.bypassSpeed then
            while vu26.bypassSpeed and task.wait() do
                local v99 = {
                    {
                        {
                            Module = "Dash"
                        },
                        "\5"
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Bridgenet2Main"):WaitForChild("dataRemoteEvent"):FireServer(unpack(v99))
            end
        end
    end
})
v8:AddToggle("AutoM1", {
    Text = "Auto M1",
    Default = false,
    Tooltip = "Auto M1",
    Callback = function(p100)
        vu26.autoswing = p100
        if vu26.autoswing then
            repeat
                local v101 = {
                    {
                        {
                            Module = "M1"
                        },
                        "\5"
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Bridgenet2Main", 9000000000):WaitForChild("dataRemoteEvent", 9000000000):FireServer(unpack(v101))
                task.wait(0.1)
            until not vu26.autoswing
        end
    end
}):AddKeyPicker("AutoM1Keybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto M1 Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v8:AddToggle("AutoCrit", {
    Text = "Auto Critical",
    Default = false,
    Tooltip = "Auto Critical",
    Callback = function(p102)
        vu26.autocrit = p102
        if vu26.autocrit then
            repeat
                local v103 = {
                    {
                        {
                            Module = "M2"
                        },
                        "\5"
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Bridgenet2Main", 9000000000):WaitForChild("dataRemoteEvent", 9000000000):FireServer(unpack(v103))
                task.wait()
            until not vu26.autocrit
        end
    end
}):AddKeyPicker("autocritKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto Crit Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v8:AddToggle("AutoUppercut", {
    Text = "Auto Uppercut",
    Default = false,
    Tooltip = "Auto Uppercut",
    Callback = function(p104)
        vu26.autouppercut = p104
        if vu26.autouppercut then
            repeat
                local v105 = {
                    {
                        {
                            Module = "Uppercut"
                        },
                        "\5"
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Bridgenet2Main", 9000000000):WaitForChild("dataRemoteEvent", 9000000000):FireServer(unpack(v105))
                task.wait(0.1)
            until not vu26.autouppercut
        end
    end
}):AddKeyPicker("AutoUppercutKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto Uppercut Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
local vu106 = nil
v8:AddToggle("autoPerfectRoll", {
    Text = "Auto Perfect Roll",
    Default = false,
    Tooltip = "Auto Uppercut",
    Callback = function(p107)
        vu26.autoperfectroll = p107
        if vu106 then
            vu106:Disconnect()
            vu106 = nil
        end
        if vu26.autoperfectroll then
            vu106 = vu19.InputBegan:Connect(function(p108)
                if p108.KeyCode == Enum.KeyCode.Q then
                    task.wait(Options.AutoPerfectRollDelay.Value)
                    mouse2click()
                end
            end)
        end
    end
}):AddKeyPicker("AutoPerfectRollKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto Perfect Roll Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v8:AddSlider("AutoPerfectRollDelay", {
    Text = "Auto Perfect Roll Delay",
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = true,
    Callback = function(_)
    end
})
v8:AddToggle("Auto Fragment", {
    Text = "Auto Fragment",
    Default = false,
    Tooltip = "Auto Fragment",
    Callback = function(p109)
        vu26.autofragment = p109
        if vu26.autofragment then
            task.spawn(function()
                local v110, v111, v112 = ipairs(vu17.Backpack:GetChildren())
                if string.find(v113.Name, "Fragment") then
                    v113.Parent = vu17.Character
                    vu20:SendMouseButtonEvent(0, 0, 0, true, game, 0)
                    vu20:SendMouseButtonEvent(0, 0, 0, false, game, 0)
                    task.wait()
                    v113.Parent = vu17.Backpack
                end
                local v113
                v112, v113 = v110(v111, v112)
                if v112 ~= nil then
                end
                task.wait()
                if not vu26.autofragment then
                    return
                end
            end)
        end
    end
}):AddKeyPicker("AutoFragmentKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto Fragment Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function(p114)
    if p114.Name == "BagGui" and vu26.AutoLoot then
        local v115 = p114.Frame.ItemsFrame
        local v116, v117, v118 = pairs(v115:GetChildren())
        while true do
            local v119
            v118, v119 = v116(v117, v118)
            if v118 == nil then
                break
            end
            if v119:IsA("TextButton") then
                vu24.SelectedObject = v119
                task.wait(0.1)
                vu20:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                task.wait(0)
                vu20:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                v119.Active = false
                v119.AutoButtonColor = false
                v119.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
                vu24.SelectedObject = nil
            end
        end
    end
end)
v8:AddToggle("AutoLoot", {
    Text = "Auto Loot",
    Default = false,
    Tooltip = "Auto Loot items ",
    Callback = function(p120)
        vu26.AutoLoot = p120
        if p120 then
            local v121, v122, v123 = pairs(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BagGui").Frame.ItemsFrame:GetChildren())
            while true do
                local v124
                v123, v124 = v121(v122, v123)
                if v123 == nil then
                    break
                end
                if v124:IsA("TextButton") then
                    vu24.SelectedObject = v124
                    task.wait(0.1)
                    vu20:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                    task.wait(0.1)
                    vu20:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                    v124.Active = false
                    v124.AutoButtonColor = false
                    v124.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
                    vu24.SelectedObject = nil
                end
            end
        end
    end
}):AddKeyPicker("AutoLootKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto Loot Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
local vu125 = nil
local vu126 = nil
local vu127 = {}
local vu128 = {}
v8:AddToggle("No Anims", {
    Text = "No Anims",
    Default = false,
    Tooltip = "Freezes character animations",
    Callback = function(p129)
        vu26.noanims = p129
        if vu125 then
            task.cancel(vu125)
            vu125 = nil
        end
        if vu126 then
            vu126:Disconnect()
            vu126 = nil
        end
        if vu26.noanims then
            local function v141(p130)
                local vu131 = p130:FindFirstChildOfClass("Humanoid") or p130:WaitForChild("Humanoid", 2)
                if vu131 then
                    local vu132 = vu131:FindFirstChildOfClass("Animator") or vu131:WaitForChild("Animator", 2)
                    if vu132 then
                        local vu133 = Instance.new("Animation")
                        vu133.AnimationId = "http://www.roblox.com/asset/?id=109212722752"
                        vu125 = task.spawn(function()
                            while vu26.noanims and (vu131 and vu131.Parent) do
                                local v134 = vu132
                                local v135, v136, v137 = pairs(v134:GetPlayingAnimationTracks())
                                local v138 = nil
                                while true do
                                    local vu139
                                    v137, vu139 = v135(v136, v137)
                                    if v137 == nil then
                                        break
                                    end
                                    if vu139.Animation.AnimationId == vu133.AnimationId then
                                        v138 = vu139
                                    else
                                        if not table.find(vu128, vu139) then
                                            table.insert(vu128, vu139)
                                        end
                                        pcall(function()
                                            vu139:Stop()
                                            task.defer(vu139.Destroy, vu139)
                                        end)
                                    end
                                end
                                if not v138 then
                                    local v140 = vu132:LoadAnimation(vu133)
                                    table.insert(vu127, v140)
                                    v140.Priority = Enum.AnimationPriority.Core
                                    v140:AdjustSpeed(0)
                                    v140:Play()
                                end
                                task.wait(0.1)
                            end
                        end)
                    end
                else
                    return
                end
            end
            if vu17.Character then
                v141(vu17.Character)
            end
            vu126 = vu17.CharacterAdded:Connect(v141)
        else
            local v142, v143, v144 = pairs(vu127)
            while true do
                local vu145
                v144, vu145 = v142(v143, v144)
                if v144 == nil then
                    break
                end
                pcall(function()
                    vu145:Stop()
                    vu145:Destroy()
                end)
            end
            vu127 = {}
            local v146, v147, v148 = pairs(vu128)
            while true do
                local vu149
                v148, vu149 = v146(v147, v148)
                if v148 == nil then
                    break
                end
                pcall(function()
                    vu149:Play()
                end)
            end
            vu128 = {}
        end
    end
}):AddKeyPicker("NoAnimsKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "No Anims Keybind",
    NoUI = false
})
v8:AddToggle("Auto Grip", {
    Text = "Auto Grip",
    Default = false,
    Tooltip = "Auto Grip",
    Callback = function(p150)
        vu26.autogrip = p150
        if vu26.autogrip then
            task.spawn(function()
                while vu26.autogrip and task.wait() do
                    local v151 = math.huge
                    local v152, v153, v154 = ipairs(workspace.Entities:GetChildren())
                    local v155 = nil
                    while true do
                        local v156
                        v154, v156 = v152(v153, v154)
                        if v154 == nil then
                            break
                        end
                        if v156 ~= vu18 and (v156:FindFirstChild("Humanoid") and v156:FindFirstChild("HumanoidRootPart")) then
                            local v157 = v156.Humanoid
                            local v158 = (v156.HumanoidRootPart.Position - vu18.PrimaryPart.Position).Magnitude
                            if v158 <= 5 and v157.Health <= 2.5 then
                                if v158 < v151 then
                                    v155 = v156
                                    v151 = v158
                                end
                            end
                        end
                    end
                    if v155 then
                        local v159 = {
                            {
                                {
                                    Module = "Grip"
                                },
                                "\5"
                            }
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Bridgenet2Main"):WaitForChild("dataRemoteEvent"):FireServer(unpack(v159))
                        repeat
                            task.wait(0)
                            local v160 = v155:FindFirstChild("HumanoidRootPart")
                        until not v160 or ((v160.Position - vu18.PrimaryPart.Position).Magnitude > 6 or (not v155.Parent or v155:FindFirstChild("Humanoid").Health <= 0))
                    end
                end
            end)
        end
    end
})
v8:AddToggle("Auto Equip", {
    Text = "Auto Equip",
    Default = false,
    Tooltip = "Auto Equip",
    Callback = function(p161)
        vu26.autoequip = p161
        if vu26.autoequip then
            while vu26.autoequip and task.wait(0.1) do
                if not vu18:GetAttribute("CombatMode") then
                    local v162 = {
                        {
                            {
                                Module = "Toggle",
                                IsHolding = true
                            },
                            "\5"
                        }
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Bridgenet2Main", 9000000000):WaitForChild("dataRemoteEvent", 9000000000):FireServer(unpack(v162))
                end
            end
        end
    end
})
v8:AddButton({
    Text = "Kill Yourself",
    Func = function()
        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):TakeDamage(math.huge)
    end,
    Tooltip = "Commit Suicide"
})
local vu163 = {}
local function vu166()
    local v164, v165 = pcall(function()
        return math.floor(vu16.LocalPlayer:GetNetworkPing() * 1000)
    end)
    return v164 and v165 and v165 or 0
end
local function vu169()
    local v167, v168 = pcall(function()
        return math.floor(1 / vu15.RenderStepped:Wait() * 1000)
    end)
    return v167 and v168 and v168 or 0
end
local function vu175(p170, p171)
    if not p171 then
        return p170
    end
    local v172 = vu166()
    local v173 = vu169()
    local v174 = p170 - (v172 / 2 + v173 / 2)
    return math.max(50, v174)
end
local function vu181(p176, p177, p178)
    if p178 then
        local v179 = p176:FindFirstChild("HumanoidRootPart")
        local v180 = p177:FindFirstChild("HumanoidRootPart")
        if v179 and v180 then
            return (v179.Position - v180.Position).Magnitude <= p178
        else
            return false
        end
    else
        return true
    end
end
local function vu186(pu182)
    local function v183()
        vu20:SendKeyEvent(true, Enum.KeyCode.F, false, game)
        if pu182.Hold then
            task.wait(0.1)
        end
        vu20:SendKeyEvent(false, Enum.KeyCode.F, false, game)
    end
    if pu182.RepeatCount and pu182.RepeatCount > 0 then
        for v184 = 1, pu182.RepeatCount do
            pcall(v183)
            if v184 < pu182.RepeatCount then
                if pu182.RepeatDelay then
                    task.wait(pu182.RepeatDelay / 1000)
                end
            end
        end
    else
        pcall(v183)
    end
    if pu182.RepeatParryAmount and pu182.RepeatParryAmount > 0 then
        task.wait(pu182.RepeatParryDelay / 1000)
        for v185 = 1, pu182.RepeatParryAmount do
            pcall(v183)
            if v185 < pu182.RepeatParryAmount then
                task.wait(pu182.RepeatDelay or 0.1)
            end
        end
    end
end
local function vu195(pu187)
    if vu26.Autoparry then
        if pu187 ~= game.Players.LocalPlayer.Character then
            local v188 = pu187:FindFirstChildOfClass("Humanoid")
            if v188 then
                local v194 = v188.AnimationPlayed:Connect(function(p189)
                    if vu26.Autoparry then
                        local v190 = p189.Animation
                        if v190 then
                            local v191 = vu27[v190.AnimationId]
                            if v191 then
                                local v192 = vu16.LocalPlayer.Character
                                if v192 and not vu181(v192, pu187, v191.Range) then
                                    return
                                else
                                    local v193 = vu175(v191.Delay or 0, vu26.AutoParryAdjustToPing)
                                    if v193 > 0 then
                                        task.wait(v193 / 1000)
                                    end
                                    vu186(v191)
                                    if not v191.Parryable then
                                        vu20:SendKeyEvent(true, Enum.KeyCode.Q, false, game)
                                        vu20:SendKeyEvent(false, Enum.KeyCode.Q, false, game)
                                        if vu26.autorollcancel then
                                            task.wait(0.1)
                                            mouse2click()
                                        end
                                    end
                                end
                            else
                                return
                            end
                        else
                            return
                        end
                    else
                        return
                    end
                end)
                table.insert(vu163, v194)
            end
        else
            return
        end
    else
        return
    end
end
local function vu206()
    local v196, v197, v198 = ipairs(vu163)
    while true do
        local v199
        v198, v199 = v196(v197, v198)
        if v198 == nil then
            break
        end
        pcall(v199.Disconnect, v199)
    end
    vu163 = {}
    if vu26.Autoparry then
        local v200 = workspace:FindFirstChild("Entities")
        if v200 then
            local v201, v202, v203 = pairs(v200:GetChildren())
            while true do
                local v204
                v203, v204 = v201(v202, v203)
                if v203 == nil then
                    break
                end
                task.spawn(vu195, v204)
            end
            v200.ChildAdded:Connect(function(p205)
                task.spawn(vu195, p205)
            end)
        end
    else
        return
    end
end
v9:AddToggle("Auto Parry", {
    Text = "Auto Parry",
    Default = false,
    Tooltip = "Automatically parry enemy attacks",
    Callback = function(p207)
        vu26.Autoparry = p207
        if vu26.Autoparry then
            vu206()
        else
            local v208, v209, v210 = ipairs(vu163)
            while true do
                local vu211
                v210, vu211 = v208(v209, v210)
                if v210 == nil then
                    break
                end
                pcall(function()
                    vu211:Disconnect()
                end)
            end
            vu163 = {}
        end
    end
}):AddKeyPicker("AutoParryKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto Parry Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v9:AddToggle("AdjustToPing", {
    Text = "Adjust to Ping",
    Default = false,
    Tooltip = "Adjust parry timing based on your ping",
    Callback = function(p212)
        vu26.AutoParryAdjustToPing = p212
    end
})
v9:AddToggle("Auto Roll Cancel", {
    Text = "Auto Roll Cancel",
    Default = false,
    Tooltip = "Auto Roll Cancel",
    Callback = function(p213)
        vu26.autorollcancel = p213
    end
})
local function vu220()
    local v214, v215, v216 = ipairs(workspace.Entities:GetChildren())
    local v217 = {}
    while true do
        local v218
        v216, v218 = v214(v215, v216)
        if v216 == nil then
            break
        end
        if v218 ~= vu18 then
            local v219 = vu16:FindFirstChild(v218.Name) ~= nil
            if vu26.aimbotPlayers and v219 or vu26.aimbotMobs and not v219 then
                table.insert(v217, v218)
            end
        end
    end
    return v217
end
local function vu224(p221)
    local v222 = Ray.new(vu23.CFrame.Position, (p221.Position - vu23.CFrame.Position).Unit * 1000)
    local v223 = workspace:FindPartOnRayWithIgnoreList(v222, {
        vu18,
        vu23
    })
    if v223 then
        v223 = v223:IsDescendantOf(p221.Parent)
    end
    return v223
end
local function vu236()
    local v225 = math.huge
    local v226, v227, v228 = ipairs(vu220())
    local v229 = nil
    while true do
        local v230
        v228, v230 = v226(v227, v228)
        if v228 == nil then
            break
        end
        local v231 = v230:FindFirstChild("HumanoidRootPart") or v230:FindFirstChild("Head")
        if v231 then
            local v232 = vu23:WorldToViewportPoint(v231.Position)
            if math.deg(math.acos(vu23.CFrame.LookVector:Dot((v231.Position - vu23.CFrame.Position).Unit))) <= vu26.aimbotFOV / 2 and (not vu26.aimbotVisible or vu224(v231)) then
                local v233 = vu19
                local v234 = vu19
                local v235 = (Vector2.new(v233:GetMouseLocation().X, v234:GetMouseLocation().Y) - Vector2.new(v232.X, v232.Y)).Magnitude
                if v235 < v225 then
                    v229 = v231
                    v225 = v235
                end
            end
        end
    end
    return v229
end
local vu237 = nil
v10:AddToggle("Aimbot", {
    Text = "Aimbot",
    Default = false,
    Tooltip = "Aimbot",
    Callback = function(p238)
        vu26.aimbotEnabled = p238
        if not vu26.aimbotEnabled then
            vu26.aimbotActive = false
        end
        if vu237 then
            vu237:Disconnect()
            vu237 = nil
        end
        if vu26.aimbotEnabled then
            vu237 = game:GetService("RunService").RenderStepped:Connect(function()
                local v239 = vu26.aimbotActive and vu236()
                if v239 then
                    local v240 = v239.Position
                    if vu26.aimbotXOffset ~= 0 or vu26.aimbotYOffset ~= 0 then
                        local v241 = vu23:WorldToViewportPoint(v240)
                        local v242 = Vector2.new(v241.X + vu26.aimbotXOffset, v241.Y + vu26.aimbotYOffset)
                        local v243 = vu23:ViewportPointToRay(v242.X, v242.Y)
                        v240 = v243.Origin + v243.Direction * 100
                    end
                    vu23.CFrame = CFrame.new(vu23.CFrame.Position, v240)
                end
            end)
        end
    end
})
v10:AddLabel("Aimbot Keybind"):AddKeyPicker("AimbotKeybind", {
    Default = "MB2",
    SyncToggleState = false,
    Mode = "Hold",
    Text = "Aimbot Keybind",
    NoUI = true,
    Callback = function(p244)
        vu26.aimbotActive = p244
    end
})
v10:AddToggle("Aimbot Players", {
    Text = "Target Players",
    Default = false,
    Tooltip = "Target other players",
    Callback = function(p245)
        vu26.aimbotPlayers = p245
    end
})
v10:AddToggle("Aimbot Mobs", {
    Text = "Target Mobs",
    Default = false,
    Tooltip = "Target Mobs",
    Callback = function(p246)
        vu26.aimbotMobs = p246
    end
})
v10:AddToggle("Visible Only", {
    Text = "Visible Only",
    Default = false,
    Tooltip = "Only target visible enemies",
    Callback = function(p247)
        vu26.aimbotVisible = p247
    end
})
v10:AddSlider("Aimbot X Offset", {
    Text = "Aimbot X Offset",
    Default = 0,
    Min = - 300,
    Max = 300,
    Rounding = 0,
    Compact = true,
    Callback = function(p248)
        vu26.aimbotXOffset = p248
    end
})
v10:AddSlider("Aimbot Y Offset", {
    Text = "Aimbot Y Offset",
    Default = 0,
    Min = - 300,
    Max = 300,
    Rounding = 0,
    Compact = true,
    Callback = function(p249)
        vu26.aimbotYOffset = p249
    end
})
local vu250 = nil
local function vu251()
    return math.tan(math.rad(1)) * (vu23.ViewportSize.Y / 2)
end
v10:AddToggle("Show FOV", {
    Text = "Show FOV",
    Default = false,
    Tooltip = "Show FOV",
    Callback = function(p252)
        vu26.showFov = p252
        if p252 then
            if not vu250 then
                vu250 = Drawing.new("Circle")
                vu250.Thickness = 1
                vu250.NumSides = 100
                vu250.Filled = false
                vu250.Color = Color3.fromRGB(255, 255, 255)
                vu250.Position = Vector2.new(vu23.ViewportSize.X / 2, vu23.ViewportSize.Y / 2)
            end
            vu250.Visible = true
        elseif vu250 then
            vu250.Visible = false
        end
    end
})
v10:AddSlider("Aimbot FOV", {
    Text = "Aimbot FOV",
    Default = 45,
    Min = 1,
    Max = 120,
    Rounding = 0,
    Compact = true,
    Callback = function(p253)
        vu26.aimbotFOV = p253
        if vu26.showFov and vu250 then
            vu250.Radius = p253 * vu251()
        end
    end
})
local function v254()
    if vu250 then
        vu250.Position = Vector2.new(vu23.ViewportSize.X / 2, vu23.ViewportSize.Y / 2)
        vu250.Radius = vu26.aimbotFOV * vu251()
    end
end
local v255 = vu23
vu23.GetPropertyChangedSignal(v255, "ViewportSize"):Connect(v254)
local v256 = vu23
vu23.GetPropertyChangedSignal(v256, "FieldOfView"):Connect(v254)
v10:AddToggle("FOV Changer", {
    Text = "FOV Changer",
    Default = false,
    Tooltip = "Fov Changer",
    Callback = function(p257)
        vu26.fovchanger = p257
        if vu26.fovchanger then
            vu23.FieldOfView = vu26.CameraFOV
        else
            vu23.FieldOfView = 70
        end
    end
})
v10:AddSlider("FOV", {
    Text = "Field of View",
    Default = 70,
    Min = 0,
    Max = 120,
    Rounding = 0,
    Compact = true,
    Callback = function(p258)
        if vu26.fovchanger then
            vu23.FieldOfView = p258
        end
    end
})
local vu259 = {
    PlayerESP = false,
    mobESP = false,
    npcESP = false,
    ESPObjects = {},
    NPCESPOBjects = {},
    PlayerEspObjects = {},
    ActiveMobs = {},
    ActiveNPCs = {},
    ActivePlayers = {},
    fontSize = 14,
    espDistance = 1000,
    MobESPColor = Color3.new(1, 1, 1),
    NpcESPColor = Color3.new(0, 1, 0),
    PlayerESPColor = Color3.new(1, 1, 1)
}
local function vu262(p260)
    local v261 = Drawing.new("Text")
    v261.Visible = false
    v261.Center = true
    v261.Outline = true
    v261.Color = p260
    v261.Size = vu259.fontSize
    return v261
end
local function vu266(p263, _, p264)
    if p264[p263] then
        local v265 = p264[p263]
        if v265.espText then
            v265.espText:Remove()
        end
        p264[p263] = nil
    end
end
local function vu269(p267)
    if vu259.ActiveMobs[p267] then
        local v268 = vu259.ActiveMobs[p267]
        if v268.espText then
            v268.espText:Remove()
        end
        if v268.highlight then
            v268.highlight:Destroy()
        end
        vu259.ActiveMobs[p267] = nil
    end
end
local function vu282(pu270)
    if pu270 and (pu270:IsA("Model") and not vu259.ActiveNPCs[pu270]) then
        local vu271 = pu270:FindFirstChild("HumanoidRootPart")
        if vu271 then
            local vu272 = vu262(vu259.NpcESPColor)
            vu272.Visible = false
            table.insert(vu259.NPCESPOBjects, vu272)
            local v273 = {
                espText = vu272
            }
            vu259.ActiveNPCs[pu270] = v273
            local vu274 = "UpdateNpcESP_" .. pu270:GetDebugId()
            local function v280()
                if pu270 and (pu270.Parent and vu259.npcESP) then
                    local v275 = vu16.LocalPlayer.Character
                    if v275 then
                        local v276 = v275:FindFirstChild("HumanoidRootPart")
                        if v276 then
                            local v277 = (vu271.Position - v276.Position).Magnitude
                            local v278, v279 = vu23:WorldToViewportPoint(vu271.Position)
                            if v277 > vu259.espDistance or not v279 then
                                vu272.Visible = false
                            else
                                vu272.Text = string.format("[%s][Dist: %.1f]", pu270.Name, v277)
                                vu272.Size = vu259.fontSize
                                vu272.Position = Vector2.new(v278.X, v278.Y - 50)
                                vu272.Visible = true
                            end
                        end
                    else
                        return
                    end
                else
                    vu15:UnbindFromRenderStep(vu274)
                    vu266(pu270, vu259.NPCESPOBjects, vu259.ActiveNPCs)
                    return
                end
            end
            vu15:BindToRenderStep(vu274, Enum.RenderPriority.Camera.Value + 1, v280)
            pu270.AncestryChanged:Connect(function(_, p281)
                if not p281 then
                    vu15:UnbindFromRenderStep(vu274)
                    vu266(pu270, vu259.NPCESPOBjects, vu259.ActiveNPCs)
                end
            end)
        end
    else
        return
    end
end
local function vu300(pu283)
    if pu283 and (pu283:IsA("Model") and not vu259.ActiveMobs[pu283]) then
        local vu284 = pu283:FindFirstChildOfClass("Humanoid")
        local vu285 = pu283:FindFirstChild("HumanoidRootPart")
        if vu284 and vu285 then
            local vu286 = vu262(vu259.MobESPColor)
            vu286.Visible = false
            table.insert(vu259.ESPObjects, vu286)
            local vu287 = Instance.new("Highlight")
            vu287.Parent = pu283
            vu287.FillColor = vu259.MobESPColor
            vu287.Enabled = false
            local v288 = {
                espText = vu286,
                highlight = vu287
            }
            vu259.ActiveMobs[pu283] = v288
            local vu289 = "UpdateESP_" .. pu283:GetDebugId()
            local function v298()
                if pu283 and (pu283.Parent and (vu284 and (vu285 and vu259.mobESP))) then
                    local v290 = vu16.LocalPlayer.Character
                    if v290 then
                        local v291 = v290:FindFirstChild("HumanoidRootPart")
                        if v291 then
                            local v292 = (vu285.Position - v291.Position).Magnitude
                            local v293, v294 = vu23:WorldToViewportPoint(vu285.Position)
                            if v292 > vu259.espDistance or not v294 then
                                vu286.Visible = false
                                vu287.Enabled = false
                            else
                                local v295 = vu284.MaxHealth > 0 and vu284.Health / vu284.MaxHealth * 100 or 0
                                local v296 = math.clamp(math.floor(v295), 0, 100)
                                local v297 = pu283.Name:match("^(.-)_") or pu283.Name
                                vu286.Text = string.format("[%s] [Dist: %.1f] [HP: %d%%]", v297, v292, v296)
                                vu286.Position = Vector2.new(v293.X, v293.Y - 50)
                                vu286.Size = vu259.fontSize
                                vu286.Visible = true
                                vu287.Enabled = true
                            end
                        end
                    else
                        return
                    end
                else
                    vu15:UnbindFromRenderStep(vu289)
                    vu269(pu283)
                    return
                end
            end
            vu15:BindToRenderStep(vu289, Enum.RenderPriority.Camera.Value + 1, v298)
            pu283.AncestryChanged:Connect(function(_, p299)
                if not p299 then
                    vu15:UnbindFromRenderStep(vu289)
                    vu269(pu283)
                end
            end)
        end
    else
        return
    end
end
local function vu305()
    local v301, v302, v303 = ipairs(workspace.Entities:GetChildren())
    while true do
        local v304
        v303, v304 = v301(v302, v303)
        if v303 == nil then
            break
        end
        if v304:IsA("Model") and not (vu16:FindFirstChild(v304.Name) or vu259.ActiveMobs[v304]) then
            vu300(v304)
        end
    end
end
local function vu310()
    local v306, v307, v308 = ipairs(workspace.Dialogues:GetChildren())
    while true do
        local v309
        v308, v309 = v306(v307, v308)
        if v308 == nil then
            break
        end
        if v309:IsA("Model") and not vu259.ActiveNPCs[v309] then
            vu282(v309)
        end
    end
end
workspace.Entities.ChildAdded:Connect(function(p311)
    if p311:IsA("Model") and not vu16:FindFirstChild(p311.Name) then
        vu300(p311)
    end
end)
v12:AddToggle("PlayerESP", {
    Text = "Player ESP",
    Default = false,
    Tooltip = "ESP players with name, distance, and health",
    Callback = function(p312)
        vu259.PlayerESP = p312
        if vu259.PlayerESP then
            vu5:load()
        else
            vu5:unload()
        end
    end
}):AddColorPicker("PlayerColorPicker", {
    Default = vu259.MobESPColor,
    Title = "Player ESP Color",
    Transparency = 0,
    Callback = function(_)
    end
})
v12:AddToggle("MobESP", {
    Text = "MobESP",
    Default = false,
    Tooltip = "ESP mobs with name, distance, and health",
    Callback = function(p313)
        vu259.mobESP = p313
        if vu259.mobESP then
            vu305()
        else
            local v314, v315, v316 = pairs(vu259.ActiveMobs)
            while true do
                v316 = v314(v315, v316)
                if v316 == nil then
                    break
                end
                vu269(v316)
            end
            vu259.ESPObjects = {}
        end
    end
}):AddColorPicker("MobColorPicker", {
    Default = vu259.MobESPColor,
    Title = "Mob ESP Color",
    Transparency = 0,
    Callback = function(p317)
        vu259.MobESPColor = p317
        local v318, v319, v320 = pairs(vu259.ActiveMobs)
        while true do
            local v321
            v320, v321 = v318(v319, v320)
            if v320 == nil then
                break
            end
            if v321.highlight then
                v321.highlight.FillColor = p317
            end
        end
    end
})
v12:AddToggle("NPCEsp", {
    Text = "NpcESP",
    Default = false,
    Tooltip = "NPC ESP",
    Callback = function(p322)
        vu259.npcESP = p322
        if vu259.npcESP then
            vu310()
        else
            local v323, v324, v325 = pairs(vu259.ActiveNPCs)
            while true do
                v325 = v323(v324, v325)
                if v325 == nil then
                    break
                end
                vu266(v325, vu259.NPCESPOBjects, vu259.ActiveNPCs)
            end
            vu259.NPCESPOBjects = {}
        end
    end
}):AddColorPicker("NPCEspPicker", {
    Default = vu259.NpcESPColor,
    Title = "NPC ESP COLOR",
    Transparency = 0,
    Callback = function(p326)
        vu259.NpcESPColor = p326
        local v327, v328, v329 = pairs(vu259.ActiveNPCs)
        while true do
            local v330
            v329, v330 = v327(v328, v329)
            if v329 == nil then
                break
            end
            v330.espText.Color = p326
        end
    end
})
v12:AddSlider("Distance", {
    Text = "ESP Distance",
    Default = 1000,
    Min = 0,
    Max = 10000,
    Rounding = 0,
    Compact = true,
    Callback = function(p331)
        vu259.espDistance = p331
    end
})
v12:AddSlider("TextSizeSlider", {
    Text = "Text Font Size",
    Default = 14,
    Min = 10,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(p332)
        vu259.fontSize = p332
    end
})
local vu333 = {
    AutoFarmMobsDistance = 10,
    AutoFarmMobsHeight = 0,
    AutoFarmMobs = false,
    AutoFarmSelectedMobs = false
}
v11:AddToggle("Attach to nearby mobs", {
    Text = "Auto Farm Nearby Mobs",
    Default = false,
    Tooltip = "Auto Farm Nearest mob",
    Callback = function(p334)
        vu333.AutoFarmMobs = p334
        if vu333.AutoFarmMobs then
            task.spawn(function()
                while vu333.AutoFarmMobs and task.wait() do
                    local v335 = vu17.Character
                    if not (v335 and (v335:FindFirstChild("HumanoidRootPart") and vu18.PrimaryPart)) then
                        return
                    end
                    local v336 = v335.HumanoidRootPart
                    local v337 = math.huge
                    local v338, v339, v340 = pairs(workspace.Entities:GetChildren())
                    local v341 = nil
                    while true do
                        local v342
                        v340, v342 = v338(v339, v340)
                        if v340 == nil then
                            break
                        end
                        if v342:IsA("Model") and not vu16:FindFirstChild(v342.Name) then
                            local v343 = v342:FindFirstChild("HumanoidRootPart") or v342.PrimaryPart
                            if v343 then
                                local v344 = (v336.Position - v343.Position).Magnitude
                                if v344 < v337 then
                                    v341 = v343
                                    v337 = v344
                                end
                            end
                        end
                    end
                    if v341 then
                        repeat
                            vu54(v341.CFrame * CFrame.new(0, vu333.AutoFarmMobsHeight, vu333.AutoFarmMobsDistance), 170)
                            task.wait()
                        until not (vu333.AutoFarmMobs and (v341.Parent and v341:IsDescendantOf(workspace))) or v341.Parent:FindFirstChild("Humanoid").Health <= 0
                    end
                end
            end)
        end
    end
}):AddKeyPicker("AutoFarmNearbyKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "AutoFarmNearby Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v11:AddToggle("Attach to nearby Players", {
    Text = "Auto Farm Nearby Players",
    Default = false,
    Tooltip = "Auto Farm Nearest Players",
    Callback = function(p345)
        vu333.autofarmplayers = p345
        if vu333.autofarmplayers then
            task.spawn(function()
                while vu333.autofarmplayers and task.wait() do
                    local v346 = vu17.Character
                    if not (v346 and v346:FindFirstChild("HumanoidRootPart")) then
                        return
                    end
                    local v347 = v346.HumanoidRootPart
                    local v348 = math.huge
                    local v349 = vu16
                    local v350, v351, v352 = pairs(v349:GetPlayers())
                    local v353 = nil
                    while true do
                        local v354
                        v352, v354 = v350(v351, v352)
                        if v352 == nil then
                            break
                        end
                        if v354 ~= vu17 and v354.Character then
                            local v355 = v354.Character
                            local v356 = v355:FindFirstChild("HumanoidRootPart") or v355.PrimaryPart
                            if v356 then
                                local v357 = (v347.Position - v356.Position).Magnitude
                                if v357 < v348 then
                                    v353 = v356
                                    v348 = v357
                                end
                            end
                        end
                    end
                    if v353 then
                        vu54(v353.CFrame * CFrame.new(0, vu333.AutoFarmMobsHeight, vu333.AutoFarmMobsDistance), 170)
                        task.wait()
                        if vu26.autofarmplayers and (v353 and (v353.Parent and v353:IsDescendantOf(workspace))) and v353.Parent:FindFirstChild("Humanoid").Health > 0 then
                            break
                        end
                    end
                end
            end)
        end
    end
}):AddKeyPicker("AutoFarmNearbyPlayersKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "AutoFarmNearby Players Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v11:AddSlider("Distance", {
    Text = "Distance",
    Default = 10,
    Min = 0,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(p358)
        vu333.AutoFarmMobsDistance = p358
    end
})
v11:AddSlider("Height", {
    Text = "Height",
    Default = 0,
    Min = - 30,
    Max = 30,
    Rounding = 0,
    Compact = true,
    Callback = function(p359)
        vu333.AutoFarmMobsHeight = p359
    end
})
local vu360 = nil
v11:AddToggle("Bring Mob", {
    Text = "Bring Mob",
    Default = false,
    Tooltip = "Bring Mob",
    Callback = function(p361)
        vu26.bringmobs = p361
        if vu26.bringmobs then
            vu360 = game:GetService("RunService").RenderStepped:Connect(function()
                if vu26.bringmobs then
                    local v362, v363, v364 = ipairs(workspace.Entities:GetChildren())
                    while true do
                        local v365
                        v364, v365 = v362(v363, v364)
                        if v364 == nil then
                            break
                        end
                        if v365:IsA("Model") and v365:FindFirstChild("HumanoidRootPart") and (not game.Players:FindFirstChild(v365.Name) and (vu30(game.Players.LocalPlayer.Character.PrimaryPart.Position, v365.PrimaryPart.Position) < vu26.bringmobsrange and isnetworkowner(v365.PrimaryPart))) then
                            v365:FindFirstChild("HumanoidRootPart").CFrame = vu17.Character.PrimaryPart.CFrame * CFrame.new(0, 0, - vu26.bringmobsdistance)
                        end
                    end
                end
            end)
        elseif vu360 then
            vu360:Disconnect()
            vu360 = nil
        end
    end
}):AddKeyPicker("BringMobKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Bring Mob Keybind",
    NoUI = false
})
v11:AddSlider("Bring Mobs Range", {
    Text = "Bring Mob Range",
    Default = 1000,
    Min = 0,
    Max = 10000,
    Rounding = 0,
    Compact = true,
    Callback = function(p366)
        vu26.bringmobsrange = p366
    end
})
v11:AddSlider("BringMobsDistance", {
    Text = "Bring Mob Distance",
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(p367)
        vu26.bringmobsdistance = p367
    end
})
local vu368 = nil
v11:AddToggle("Kill Aura", {
    Text = "Kill Aura",
    Default = false,
    Tooltip = "Instant Kill",
    Callback = function(p369)
        vu26.VoidMob = p369
        if vu26.VoidMob then
            while vu26.VoidMob and task.wait() do
                local v370, v371, v372 = ipairs(workspace.Entities:GetChildren())
                while true do
                    local v373
                    v372, v373 = v370(v371, v372)
                    if v372 == nil then
                        break
                    end
                    if v373:IsA("Model") and not game.Players:FindFirstChild(v373.Name) then
                        local v374 = v373:FindFirstChild("Humanoid") and v373:FindFirstChild("Humanoid")
                        if v374 then
                            v374.Health = 0
                            v374.MaxHealth = 0
                        end
                        local v375, v376, v377 = ipairs(v373:GetDescendants())
                        while true do
                            local v378
                            v377, v378 = v375(v376, v377)
                            if v377 == nil then
                                break
                            end
                            if v378:IsA("BasePart") then
                                v378:BreakJoints()
                            end
                        end
                    end
                end
            end
        end
    end
}):AddKeyPicker("KillAuraKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Kill Aura Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v11:AddToggle("Kill Aura If Creds", {
    Text = "Kill Aura if Creds",
    Default = false,
    Tooltip = "Instant Kill",
    Callback = function(p379)
        vu26.killauraifcreds = p379
        if p379 then
            vu368 = vu15.RenderStepped:Connect(function()
                if vu26.killauraifcreds then
                    local v380, v381, v382 = ipairs(workspace.Entities:GetChildren())
                    while true do
                        local v383
                        v382, v383 = v380(v381, v382)
                        if v382 == nil then
                            break
                        end
                        if v383:IsA("Model") and (not game.Players:FindFirstChild(v383.Name) and v383:FindFirstChild("Humanoid")) then
                            local v384 = v383:FindFirstChild("Humanoid")
                            if v384 and v384.Health / v384.MaxHealth * 100 < vu26.killaurahp then
                                v384.Health = 0
                                v384.MaxHealth = 0
                            end
                        end
                    end
                end
            end)
        elseif vu368 then
            vu368:Disconnect()
        end
    end
}):AddKeyPicker("KillAuraIfCredsKeybind", {
    Default = "",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Kill Aura if Creds Keybind",
    NoUI = false,
    Callback = function(_)
    end
})
v11:AddSlider("Kill Aura Creds HP Threshold", {
    Text = "Kill Aura HP Threshold %",
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Compact = true,
    Callback = function(p385)
        vu26.killaurahp = p385
    end
})
v11:AddButton("Go to quest marker", function()
    if vu18:FindFirstChild("MissionIcon") then
        vu36(vu18.MissionIcon.Position.X, vu18.MissionIcon.Position.Y, vu18.MissionIcon.Position.Z)
    else
        warn("No Mission")
    end
    if vu18:FindFirstChild("BoxDeliveryIcon") then
        vu36(vu18.BoxDeliveryIcon.Position.X, vu18.BoxDeliveryIcon.Position.Y, vu18.BoxDeliveryIcon.Position.Z)
    else
        warn("No Box Icon")
    end
end)
v11:AddButton("Go to Event marker", function()
    if vu18:FindFirstChild("EventMarker") then
        vu36(vu18.EventMarker.Position.X, vu18.EventMarker.Position.Y, vu18.EventMarker.Position.Z)
    else
        warn("no event ")
    end
end)
v11:AddButton("Go to Nearest Loot Crate", function()
    local v386 = math.huge
    local v387, v388, v389 = pairs(workspace:GetChildren())
    local v390 = nil
    while true do
        local v391
        v389, v391 = v387(v388, v389)
        if v389 == nil then
            break
        end
        if v391.Name == "giftbox_blend" then
            local v392 = (v391.WorldPivot.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if v392 < v386 then
                v390 = v391
                v386 = v392
            end
        end
    end
    if v390 then
        vu36(v390.WorldPivot.Position.X, v390.WorldPivot.Position.Y, v390.WorldPivot.Position.Z)
    else
        warn("No giftbox_blend found in the workspace.")
    end
end)
v11:AddButton("Go to Nearest Artifact", function()
    local v393 = math.huge
    local v394, v395, v396 = pairs(workspace:GetChildren())
    local v397 = nil
    while true do
        local v398
        v396, v398 = v394(v395, v396)
        if v396 == nil then
            break
        end
        if string.find(v398.Name, "Artifact") then
            local v399 = (v398.WorldPivot.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if v399 < v393 then
                v397 = v398
                v393 = v399
            end
        end
    end
    if v397 then
        vu36(v397.WorldPivot.Position.X, v397.WorldPivot.Position.Y, v397.WorldPivot.Position.Z)
    else
        warn("No Artifact found in the workspace.")
    end
end)
local vu400 = nil
v11:AddDropdown("AreaDropdown", {
    Values = {
        "Anteiku",
        "Art Studio",
        "Clothing Store",
        "CCG Base",
        "Boss Arenas",
        "Ghoul Mission Board 1",
        "CCG Mission Board 1"
    },
    Default = {},
    Multi = false,
    Text = "Areas",
    Tooltip = "Select Area to tp to",
    Callback = function(p401)
        vu400 = p401
    end
})
v11:AddButton("Goto Selected Area", function()
    if vu400 == "Anteiku" then
        vu36(8461.96582, 20.8455334, 1682.95093)
    end
    if vu400 == "Art Studio" then
        vu36(8112.271, 8.47572327, - 1640.54663)
    end
    if vu400 == "Clothing Store" then
        vu36(8026.98535, 6.97037315, 1923.37378)
    end
    if vu400 == "CCG Base" then
        vu36(7758.47509765625, - 6.504365921020508, - 654.6971435546875)
    end
    if vu400 == "Boss Arenas" then
        vu36(7714.3271484375, - 5.3807783126831055, - 984.1307373046875)
    end
    if vu400 == "Ghoul Mission Board 1" then
        vu36(8447.2578125, - 4.508382320404053, 1730.5115966796875)
    end
    if vu400 == "CCG Mission Board 1" then
        vu36(7696.603515625, 23.998931884765625, - 689.2974853515625)
    end
end)
local function vu420(p402)
    local v403, v404, v405 = pairs({
        "Shirt",
        "Pants"
    })
    while true do
        local v406
        v405, v406 = v403(v404, v405)
        if v405 == nil then
            break
        end
        local v407 = p402:FindFirstChild(v406)
        if v407 then
            v407:Destroy()
        end
    end
    local v408, v409, v410 = ipairs(p402:GetChildren())
    while true do
        local v411
        v410, v411 = v408(v409, v410)
        if v410 == nil then
            break
        end
        if v411:IsA("Accessory") or v411:IsA("MeshPart") then
            v411:Destroy()
        end
    end
    if p402:FindFirstChild("Head") then
        p402.Head.Transparency = 1
        local v412, v413, v414 = ipairs(p402.Head:GetDescendants())
        while true do
            local v415
            v414, v415 = v412(v413, v414)
            if v414 == nil then
                break
            end
            if v415:IsA("Decal") or (v415:IsA("SpecialMesh") or v415:IsA("Part")) then
                v415:Destroy()
            end
        end
    end
    local v416, v417, v418 = ipairs(workspace.FakeHeads:GetChildren())
    while true do
        local v419
        v418, v419 = v416(v417, v418)
        if v418 == nil then
            break
        end
        if string.match(v419.Name, vu17.Name) then
            v419:Destroy()
        end
    end
    p402:FindFirstChild("Left Arm").Transparency = 0
    p402:FindFirstChild("Right Arm").Transparency = 0
end
local function vu432(p421, p422, p423, p424, p425, p426)
    local v427 = game:GetObjects("rbxassetid://" .. tostring(p421))[1]
    if v427 then
        local v428 = p422:FindFirstChild(p425 and "Left Arm" or "Right Arm")
        if v428 then
            if p426 then
                v428.Transparency = 1
            end
            v427.Parent = p422
            if v427:FindFirstChild("Handle") then
                local v429 = Instance.new("Weld")
                v429.Name = p425 and "LeftArmWeld" or "RightArmWeld"
                v429.Part0 = v428
                v429.Part1 = v427.Handle
                Vector3.new(0, - v427.Handle.Size.Y / 2, 0)
                Vector3.new(0, 0, 0)
                local v430, v431
                if p425 then
                    v430 = Vector3.new(- v427.Handle.Size.X / 2, - v427.Handle.Size.Y / 2, 0)
                    v431 = Vector3.new(0, 90, 0)
                else
                    v430 = Vector3.new(v427.Handle.Size.X / 2, - v427.Handle.Size.Y / 2, 0)
                    v431 = Vector3.new(0, - 90, 0)
                end
                v429.C0 = CFrame.new(p423 or v430) * CFrame.Angles(math.rad(p424 and p424.X or v431.X), math.rad(p424 and p424.Y or v431.Y), math.rad(p424 and p424.Z or v431.Z))
                v429.Parent = v427.Handle
            end
        end
    else
        return
    end
end
local function vu440(p433, p434, p435, p436)
    local v437 = game:GetObjects("rbxassetid://" .. tostring(p433))[1]
    if v437 then
        local v438 = p434:FindFirstChild("UpperTorso") or p434:FindFirstChild("Torso")
        if v438 then
            v437.Parent = p434
            if v437:FindFirstChild("Handle") then
                local v439 = Instance.new("Weld")
                v439.Name = "HeadWeld"
                v439.Part0 = v438
                v439.Part1 = v437.Handle
                v439.C0 = CFrame.new(p435 or Vector3.new(0, v438.Size.Y / 1.15 + v437.Handle.Size.Y / 2, 0)) * CFrame.Angles(math.rad(p436.X), math.rad(p436.Y), math.rad(p436.Z))
                v439.Parent = v437.Handle
            end
        end
    else
        return
    end
end
local function vu448(p441, p442, pu443)
    local function v447(p444, p445)
        local v446 = game:GetObjects("rbxassetid://" .. tostring(p444))[1]
        if v446 then
            v446.Parent = pu443
            v446.Name = p445
        end
    end
    v447(p441, "Shirt")
    v447(p442, "Pants")
end
local function vu457(p449, p450)
    local v451 = BrickColor.new(p450 or "Light orange")
    local v452, v453, v454 = pairs({
        "Torso",
        "UpperTorso",
        "Left Arm",
        "Right Arm",
        "Left Leg",
        "Right Leg"
    })
    while true do
        local v455
        v454, v455 = v452(v453, v454)
        if v454 == nil then
            break
        end
        local v456 = p449:FindFirstChild(v455)
        if v456 then
            v456.BrickColor = v451
        end
    end
end
v13:AddDropdown("Morphs", {
    Values = {
        "Goku",
        "Naruto",
        "Miku",
        "Aizen",
        "Gawr Gura",
        "Guts",
        "Gojo",
        "Toji",
        "Mahoraga",
        "Kurumi",
        "Changli",
        "Rias Gremory",
        "Akeno Himejima",
        "Akame",
        "Acheron",
        "Esdeath",
        "Sakuya",
        "Sparkle",
        "Jane Doe",
        "Alya",
        "Sung Jin Woo",
        "Ryuko",
        "Hutao",
        "MommyRaga",
        "Castorice",
        "Shadow",
        "Lebron James",
        "Steve",
        "Gilgamesh",
        "Ishtar",
        "Albedo",
        "Astolfo",
        "Zani",
        "Cantarella",
        "Yinlin",
        "Vasto Lorde",
        "Igris",
        "Beru",
        "Cha Hae In",
        "Luffy",
        "Frieren",
        "Raiden Shogun",
        "Rimuru",
        "Zero Two",
        "Columbina",
        "Bocchi",
        "Mavuika",
        "Carlotta",
        "Kafka",
        "Jingliu",
        "Feixiao",
        "Shorekeeper",
        "Kiana HoF",
        "Senti",
        "Mei HoT",
        "Aglaea",
        "Mari Setogaya"
    },
    Default = {},
    Multi = false,
    Text = "Morphs",
    Tooltip = "Morphs",
    Callback = function(p458)
        if p458 == "Goku" then
            vu457(vu18)
            vu420(vu18)
            vu440(96778240725860, vu18, Vector3.new(0, 2.3, 0), Vector3.new(0, 0, 0))
            vu448(18642081551, 13980707182, vu18)
        elseif p458 == "Naruto" then
            vu457(vu18, "Pastel yellow")
            vu420(vu18)
            vu440(129818847988995, vu18, Vector3.new(0, 1.8, 0), Vector3.new(0, - 90, 0))
            vu448(6469644436, 2733834231, vu18)
        elseif p458 == "Miku" then
            vu457(vu18)
            vu420(vu18)
            vu440(107263500564078, vu18, Vector3.new(0, 0.8, 0), Vector3.new(0, 0, 0))
            vu448(11562331516, 11562350632, vu18)
        elseif p458 == "Aizen" then
            vu457(vu18)
            vu420(vu18)
            vu440(117644781784979, vu18, Vector3.new(0, 1.7, 0), Vector3.new(0, 0, 0))
            vu448(87853669951881, 118029167731205, vu18)
        elseif p458 == "Gawr Gura" then
            vu457(vu18)
            vu420(vu18)
            vu440(93023559996037, vu18, Vector3.new(0, 1.2, 0), Vector3.new(0, 0, 0))
            vu448(6392201226, 5896597102, vu18)
        elseif p458 == "Guts" then
            vu457(vu18)
            vu420(vu18)
            vu440(117337600216775, vu18, Vector3.new(0, 1.6, 0), Vector3.new(0, 0, 0))
            vu440(83748529688503, vu18, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0))
            vu448(13381096342, 13381103162, vu18)
        elseif p458 == "Gojo" then
            vu457(vu18)
            vu420(vu18)
            vu440(132501783778842, vu18, Vector3.new(0, 1.9, 0), Vector3.new(0, 0, 0))
            vu448(73084050138865, 15312673306, vu18)
        elseif p458 == "Toji" then
            vu457(vu18)
            vu420(vu18)
            vu440(135664715112347, vu18, Vector3.new(0, 1.7, 0), Vector3.new(0, 0, 0))
            vu448(121088463088431, 16149857407, vu18)
        elseif p458 == "Mahoraga" then
            vu457(vu18, "White")
            vu420(vu18)
            vu440(107798985962651, vu18, Vector3.new(0, 1.7, 0), Vector3.new(0, 0, 0))
            vu448(15549196125, 15886594659, vu18)
        elseif p458 == "Kurumi" then
            vu457(vu18)
            vu420(vu18)
            vu440(103832443149308, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(97284203988261, vu18, Vector3.new(0, 1.3, 0.3), Vector3.new(0, 180, 0))
            vu448(8483860912, 6274345723, vu18)
        elseif p458 == "Changli" then
            vu457(vu18)
            vu420(vu18)
            vu440(18237124713, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(18776258812, vu18, Vector3.new(0, 1, 0.4), Vector3.new(0, 180, 0))
            vu448(18248384660, 18248339309, vu18)
        elseif p458 == "Rias Gremory" then
            vu457(vu18)
            vu420(vu18)
            vu440(93210597936941, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
            vu440(117401070298880, vu18, Vector3.new(0, 0.8, 0.2), Vector3.new(0, 0, 0))
            vu448(6684203479, 17237310293, vu18)
        elseif p458 == "Akame" then
            vu457(vu18)
            vu420(vu18)
            vu440(126922773003151, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(17737783504, vu18, Vector3.new(0, 0.7, 0.2), Vector3.new(0, 0, 0))
            vu448(6369044571, 6368994316, vu18)
        elseif p458 == "Akeno Himejima" then
            vu457(vu18)
            vu420(vu18)
            vu440(126359064831342, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(77228070098121, vu18, Vector3.new(0.02, 1, 0.3), Vector3.new(0, 0, 0))
            vu448(16622515487, 16622517173, vu18)
        elseif p458 == "Acheron" then
            vu457(vu18)
            vu420(vu18)
            vu440(18813009640, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(18239465044, vu18, Vector3.new(0, 0.8, 0.3), Vector3.new(0, 180, 0))
            vu448(16816449958, 16816449614, vu18)
        elseif p458 == "Esdeath" then
            vu457(vu18)
            vu440(98167182209809, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(137436093988045, vu18, Vector3.new(0, 0.8, 0), Vector3.new(0, - 90, 0))
            vu440(15862735278, vu18, Vector3.new(0, 2, - 0.2), Vector3.new(0, 90, 0))
            vu448(13052699332, 10897251729, vu18)
        elseif p458 == "Sakuya" then
            vu457(vu18)
            vu420(vu18)
            vu440(93904932109451, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
            vu448(7136184157, 7136202011, vu18)
        elseif p458 == "Sparkle" then
            vu457(vu18)
            vu420(vu18)
            vu440(104060985865516, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(74627256516640, vu18, Vector3.new(0, 0.9, 0.5), Vector3.new(0, 180, 0))
            vu448(16124774730, 16124783134, vu18)
        elseif p458 == "Jane Doe" then
            vu457(vu18)
            vu420(vu18)
            vu440(78741773770897, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(135658490795864, vu18, Vector3.new(0, 0.9, 0.3), Vector3.new(0, 180, 0))
            vu440(71390527808664, vu18, Vector3.new(- 0.5, - 1.7, 1.6), Vector3.new(0, 180, 0))
            vu448(11428156317, 18526177706, vu18)
        elseif p458 == "Alya" then
            vu457(vu18, "Light red")
            vu420(vu18)
            vu440(92501934174622, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(119554753750641, vu18, Vector3.new(0, 1, 0.5), Vector3.new(0, 0, 0))
            vu448(18473143856, 18473161125, vu18)
        elseif p458 == "Sung Jin Woo" then
            vu457(vu18)
            vu420(vu18)
            vu440(92171733938281, vu18, Vector3.new(0, 1.8, 0), Vector3.new(0, 0, 0))
            vu448(14160558115, 14160562408, vu18)
        elseif p458 == "Ryuko" then
            vu457(vu18)
            vu420(vu18)
            vu440(15960510977, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(18564277439, vu18, Vector3.new(- 0.1, 1.7, 0.2), Vector3.new(0, 180, 0))
            vu448(11768963211, 16299464312, vu18)
        elseif p458 == "Hutao" then
            vu457(vu18)
            vu420(vu18)
            vu440(89528590195822, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
            vu440(16560974401, vu18, Vector3.new(0, 0.8, 0.3), Vector3.new(0, 180, 0))
            vu448(8242153821, 18183543100, vu18)
        elseif p458 == "MommyRaga" then
            vu457(vu18, "White")
            vu420(vu18)
            vu440(15499533232, vu18, Vector3.new(0, 1.5, - 0.8), Vector3.new(0, 0, 0))
            vu440(114269140957508, vu18, Vector3.new(0, 1.5, - 0.3), Vector3.new(0, 180, 0))
            vu440(76160238269805, vu18, Vector3.new(0, 0.8, 0.3), Vector3.new(0, 0, 0))
            vu440(3984208381, vu18, Vector3.new(0, 1.3, 0.05), Vector3.new(0, 0, 0))
            vu440(15375503386, vu18, Vector3.new(0, 2.5, 0.05), Vector3.new(0, 0, 0))
            vu448(18837359756, 16754818347, vu18)
        elseif p458 == "Castorice" then
            vu457(vu18)
            vu420(vu18)
            vu440(80815430026853, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 90, 0))
            vu440(131730218083544, vu18, Vector3.new(0, 0.8, 0.5), Vector3.new(0, 0, 0))
            vu440(105037563912931, vu18, Vector3.new(0, - 1.7, 0.1), Vector3.new(0, 0, 0))
            vu448(130958701361408, 128171165420795, vu18)
        elseif p458 == "Shadow" then
            vu457(vu18)
            vu420(vu18)
            vu440(126730965425176, vu18, Vector3.new(0, 1.7, 0), Vector3.new(0, 180, 0))
            vu440(127718553592663, vu18, Vector3.new(0, - 0.6, 0.5), Vector3.new(0, 0, 0))
            vu448(15618792366, 15616067613, vu18)
        elseif p458 == "Lebron James" then
            vu457(vu18, "Brown")
            vu420(vu18)
            vu440(135528148574372, vu18, Vector3.new(0, 1.6, - 0.1), Vector3.new(0, 90, 0))
            vu448(132033269414854, 10650849519, vu18)
        elseif p458 == "Steve" then
            vu457(vu18)
            vu420(vu18)
            vu440(118830888902962, vu18, Vector3.new(0, 1.7, 0), Vector3.new(0, - 90, 0))
            vu448(10872887511, 14032414623, vu18)
        elseif p458 == "Gilgamesh" then
            vu457(vu18)
            vu420(vu18)
            vu440(16811269033, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(17744441803, vu18, Vector3.new(0.017, 1.9, 0.25), Vector3.new(0, 0, 0))
            vu448(11296284708, 12410511854, vu18)
        elseif p458 == "Ishtar" then
            vu457(vu18)
            vu420(vu18)
            vu440(15189465318, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(14421272696, vu18, Vector3.new(0.1, 0.8, 0.1), Vector3.new(0, 0, 0))
            vu448(17076499177, 8841735074, vu18)
        elseif p458 == "Albedo" then
            vu457(vu18)
            vu420(vu18)
            vu440(16928430955, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(17801756150, vu18, Vector3.new(0, 0.8, 0.1), Vector3.new(0, 0, 0))
            vu448(14354812428, 4843984198, vu18)
        elseif p458 == "Astolfo" then
            vu457(vu18)
            vu420(vu18)
            vu440(116209602375859, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
            vu440(127876222605899, vu18, Vector3.new(0, 0.8, 0.2), Vector3.new(0, 180, 0))
            vu448(16080173838, 16080176781, vu18)
        elseif p458 == "Zani" then
            vu457(vu18)
            vu420(vu18)
            vu440(100752947077542, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
            vu440(137097160002996, vu18, Vector3.new(0.01, 1.5, 0.3), Vector3.new(0, 180, 0))
            vu448(133227975938709, 81320299831803, vu18)
        elseif p458 == "Cantarella" then
            vu457(vu18)
            vu420(vu18)
            vu440(126886929043892, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
            vu440(113118733783201, vu18, Vector3.new(0, 1, 0.1), Vector3.new(0, 0, 0))
            vu448(78999603630056, 75202173730252, vu18)
        elseif p458 == "Yinlin" then
            vu457(vu18)
            vu420(vu18)
            vu440(17870830321, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
            vu440(98431603239714, vu18, Vector3.new(0, 0.9, 0.2), Vector3.new(0, 0, 0))
            vu448(17749723866, 17749862800, vu18)
        elseif p458 == "Vasto Lorde" then
            vu457(vu18, "White")
            vu420(vu18)
            vu440(93115339379404, vu18, Vector3.new(0, 0.6, 0.3), Vector3.new(15, 0, 0))
            vu448(12389968084, 9153779931, vu18)
        elseif p458 == "Igris" then
            vu457(vu18)
            vu420(vu18)
            vu440(95863570452709, vu18, Vector3.new(0, 1.7, 0.3), Vector3.new(0, 0, 0))
            vu440(109244088690965, vu18, Vector3.new(0, - 0.7, 1), Vector3.new(0, 0, 0))
            vu440(101764628214933, vu18, Vector3.new(0, - 0.2, 0), Vector3.new(0, 0, 0))
            vu440(15918209151, vu18, Vector3.new(0, - 1.5, 0.3), Vector3.new(0, 0, 0))
            vu432(116491025917228, vu18, Vector3.new(0, 0.66, 0), Vector3.new(0, 0, 0), true, false)
            vu432(76919787720229, vu18, Vector3.new(0, 0.66, 0), Vector3.new(0, 0, 0), false, false)
            vu448(130860982870441, 127852847129078, vu18)
        elseif p458 == "Beru" then
            vu457(vu18)
            vu420(vu18)
            vu440(101563619574844, vu18, Vector3.new(0, 1.9, - 0.2), Vector3.new(0, 180, 0))
            vu440(92335412248140, vu18, Vector3.new(0, 0, 0.2), Vector3.new(0, 0, 0))
            vu440(130071708950394, vu18, Vector3.new(0, 0.9, 1.7), Vector3.new(0, 0, 0))
            vu440(109660279391974, vu18, Vector3.new(0, - 1.1, 0.2), Vector3.new(0, 0, 0))
            vu432(76299748154778, vu18, Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0), true, true)
            vu432(138112552732432, vu18, Vector3.new(0, 0.3, 0), Vector3.new(0, 0, 0), false, true)
            vu448(133863284896119, 82175261849570, vu18)
        elseif p458 == "Cha Hae In" then
            vu457(vu18)
            vu420(vu18)
            vu440(16123775088, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(72437172160861, vu18, Vector3.new(0, 1.6, 0), Vector3.new(0, 0, 0))
            vu448(85084288840822, 17870204589, vu18)
        elseif p458 == "Luffy" then
            vu457(vu18)
            vu420(vu18)
            vu440(18543513455, vu18, Vector3.new(0, 2, 0.3), Vector3.new(0, 0, 0))
            vu440(72038275744700, vu18, Vector3.new(0, 1, 0), Vector3.new(0, 0, 0))
            vu448(12581156224, 12566365740, vu18)
        elseif p458 == "Frieren" then
            vu457(vu18)
            vu420(vu18)
            vu440(16018569620, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(16732705622, vu18, Vector3.new(0, 0.7, 0.3), Vector3.new(0, 0, 0))
            vu440(117192283652792, vu18, Vector3.new(0, 0.5, 0), Vector3.new(0, 0, 0))
            vu440(16732594752, vu18, Vector3.new(0, - 0.8, 0), Vector3.new(0, 0, 0))
            vu432(91359068074598, vu18, Vector3.new(0, 0.5, 0), Vector3.new(0, 0, 0), true, false)
            vu432(112435443180759, vu18, Vector3.new(0, 0.5, 0), Vector3.new(0, 0, 0), false, false)
            vu448(16775363591, 16775370003, vu18)
        elseif p458 ~= "Raiden Shogun" then
            if p458 ~= "Rimuru" then
                if p458 ~= "Zero Two" then
                    if p458 ~= "Columbina" then
                        if p458 ~= "Bocchi" then
                            if p458 ~= "Mavuika" then
                                if p458 ~= "Carlotta" then
                                    if p458 ~= "Kafka" then
                                        if p458 ~= "Jingliu" then
                                            if p458 ~= "Feixiao" then
                                                if p458 ~= "Shorekeeper" then
                                                    if p458 ~= "Kiana HoF" then
                                                        if p458 ~= "Senti" then
                                                            if p458 ~= "Mei HoT" then
                                                                if p458 ~= "Aglaea" then
                                                                    if p458 == "Mari Setogaya" then
                                                                        vu457(vu18)
                                                                        vu420(vu18)
                                                                        vu440(99020883428971, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                                                                        vu440(122671975876357, vu18, Vector3.new(0, 1.7, 0.2), Vector3.new(0, 0, 0))
                                                                        vu448(9350582122, 9365799269, vu18)
                                                                    end
                                                                else
                                                                    vu457(vu18)
                                                                    vu420(vu18)
                                                                    vu440(73951456892786, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
                                                                    vu440(72478051422522, vu18, Vector3.new(0, 1.4, 0), Vector3.new(0, 0, 0))
                                                                    vu448(92961438681401, 88461230208684, vu18)
                                                                end
                                                            else
                                                                vu457(vu18)
                                                                vu420(vu18)
                                                                vu440(104590944127512, vu18, Vector3.new(0, 1.4, 0.2), Vector3.new(0, 180, 0))
                                                                vu440(122400148532477, vu18, Vector3.new(0, - 1, 1.1), Vector3.new(0, 180, 0))
                                                                vu440(89308826234091, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
                                                                vu440(85316018717660, vu18, Vector3.new(0, - 1.4, 0.2), Vector3.new(0, 180, 0))
                                                                vu440(81278214623934, vu18, Vector3.new(0, 2, 2), Vector3.new(0, 180, 0))
                                                                vu432(135423956847061, vu18, Vector3.new(0.8, 0.6, 0), Vector3.new(0, 0, 0), false, false)
                                                                vu448(6734201984, 18212079377, vu18)
                                                            end
                                                        else
                                                            vu457(vu18)
                                                            vu420(vu18)
                                                            vu440(109709649449982, vu18, Vector3.new(0, 0.8, 0.4), Vector3.new(0, 0, 0))
                                                            vu440(14699650567, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                                                            vu440(109272959830887, vu18, Vector3.new(0, 0, 1.5), Vector3.new(0, 0, 0))
                                                            vu448(12025064851, 12025034793, vu18)
                                                        end
                                                    else
                                                        vu457(vu18)
                                                        vu420(vu18)
                                                        vu440(78095263339710, vu18, Vector3.new(0.01, 1, 0.5), Vector3.new(0, 0, 0))
                                                        vu440(122539578016772, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                                                        vu440(79379397199011, vu18, Vector3.new(0, - 1.6, 0.3), Vector3.new(0, 0, 0))
                                                        vu440(75557489121624, vu18, Vector3.new(0, - 1.6, 1.8), Vector3.new(0, 0, 0))
                                                        vu448(15380082951, 14468431989, vu18)
                                                    end
                                                else
                                                    vu457(vu18)
                                                    vu420(vu18)
                                                    vu440(75990289148007, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                                                    vu440(75204472174011, vu18, Vector3.new(0, 1, 0.4), Vector3.new(0, 180, 0))
                                                    vu448(89261572309020, 94021230830355, vu18)
                                                end
                                            else
                                                vu457(vu18)
                                                vu420(vu18)
                                                vu440(122778677622659, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                                                vu440(109691996875078, vu18, Vector3.new(0, 1.3, 0.5), Vector3.new(0, 180, 0))
                                                vu448(18740200611, 18750942054, vu18)
                                            end
                                        else
                                            vu457(vu18)
                                            vu420(vu18)
                                            vu440(77994723868639, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                                            vu440(135708732755807, vu18, Vector3.new(0, 0.9, 0.1), Vector3.new(0, 180, 0))
                                            vu448(15077903868, 13570651830, vu18)
                                        end
                                    else
                                        vu457(vu18)
                                        vu420(vu18)
                                        vu440(18478967502, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                                        vu440(17788212416, vu18, Vector3.new(0, 1, 0.3), Vector3.new(0, 0, 0))
                                        vu448(18249584394, 14562649452, vu18)
                                    end
                                else
                                    vu457(vu18)
                                    vu420(vu18)
                                    vu440(102058069766854, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
                                    vu440(96237059455196, vu18, Vector3.new(0, 1, 0.4), Vector3.new(0, 180, 0))
                                    vu448(132449747768331, 129671157331059, vu18)
                                end
                            else
                                vu457(vu18)
                                vu420(vu18)
                                vu440(125529887642405, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
                                vu440(18695554348, vu18, Vector3.new(0.1, 1, 0.2), Vector3.new(0, 0, 0))
                                vu448(139461445077341, 115617915090550, vu18)
                            end
                        else
                            vu457(vu18)
                            vu420(vu18)
                            vu440(95059679093830, vu18, Vector3.new(0, 1, 0.1), Vector3.new(0, 0, 0))
                            vu440(73702660507578, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
                            vu448(13748820887, 13748829895, vu18)
                        end
                    else
                        vu457(vu18)
                        vu420(vu18)
                        vu440(132679220950392, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 180, 0))
                        vu440(93846197455372, vu18, Vector3.new(0, 1.2, 0.3), Vector3.new(0, 0, 0))
                        vu448(13953999748, 13954210928, vu18)
                    end
                else
                    vu457(vu18)
                    vu420(vu18)
                    vu440(15123869167, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
                    vu440(118097633335749, vu18, Vector3.new(0, 0.73, 0.2), Vector3.new(0, 0, 0))
                    vu448(9114999117, 9115000719, vu18)
                end
            else
                vu457(vu18)
                vu420(vu18)
                vu440(118948540012480, vu18, Vector3.new(0, 0.7, 0), Vector3.new(0, 0, 0))
                vu448(12795104537, 12795105839, vu18)
            end
        else
            vu457(vu18)
            vu420(vu18)
            vu440(18589200366, vu18, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0))
            vu440(89742200248607, vu18, Vector3.new(- 0.05, 0.8, 0.2), Vector3.new(0, 180, 0))
            vu440(125828006762870, vu18, Vector3.new(0, - 1.1, 0.1), Vector3.new(0, 0, 0))
            vu432(94603590977259, vu18, Vector3.new(- 0.1, 0.3, 0), Vector3.new(0, 0, 0), true, false)
            vu448(7510268954, 15049045301, vu18)
        end
    end
})
v13:AddToggle("StreamerMode", {
    Text = "Streamer Mode",
    Default = false,
    Tooltip = "Hides your UID",
    Callback = function(p459)
        game:GetService("Players").LocalPlayer.PlayerGui.ClientInfo.Section1.Visible = not p459
    end
})
local vu460 = 0.44999998807907104
v13:AddToggle("NoFog", {
    Text = "No Fog",
    Default = false,
    Tooltip = "Removes Fog",
    Callback = function(p461)
        if p461 then
            if vu21:FindFirstChild("Atmosphere") then
                vu21.Atmosphere.Density = 0
            end
        elseif vu21:FindFirstChild("Atmosphere") then
            vu21.Atmosphere.Density = vu460
        end
    end
})
local vu462 = nil
v13:AddToggle("No Weather", {
    Text = "No Weather",
    Default = false,
    Tooltip = "Removes Weather",
    Callback = function(p463)
        if not vu462 then
            vu462 = nil
        end
        if p463 then
            local v464, v465, v466 = ipairs(workspace.DebrisFolder:GetChildren())
            while true do
                local v467
                v466, v467 = v464(v465, v466)
                if v466 == nil then
                    break
                end
                if string.find(v467.Name, "Weather") then
                    v467:Destroy()
                end
            end
            vu462 = workspace.DebrisFolder.DescendantAdded:Connect(function(p468)
                if string.find(p468.Name, "Weather") then
                    p468:Destroy()
                end
            end)
        elseif vu462 then
            vu462:Disconnect()
            vu462 = nil
        end
    end
})
local vu469 = nil
v13:AddToggle("FullBright", {
    Text = "FullBright",
    Default = false,
    Tooltip = "Turns off darkness and shadows",
    Callback = function(p470)
        vu26.fullbright = p470
        if vu469 then
            vu469:Disconnect()
            vu469 = nil
        end
        if p470 then
            vu469 = game:GetService("RunService").RenderStepped:Connect(function()
                game.Lighting.Brightness = vu26.Brightness or 2
                game.Lighting.ClockTime = 14
                game.Lighting.FogEnd = 100000
                game.Lighting.GlobalShadows = false
                game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
            end)
        else
            game.Lighting.Brightness = 1
            game.Lighting.ClockTime = 14
            game.Lighting.FogEnd = 1000000
            game.Lighting.GlobalShadows = true
            game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        end
    end
})
v13:AddSlider("Brightness", {
    Text = "Brightness",
    Default = 2,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Callback = function(p471)
        vu26.Brightness = p471
    end
})
v14:AddButton("Serverhop", function()
    vu43()
end)
v14:AddInput("JobID", {
    Default = "",
    Numeric = false,
    Finished = false,
    Text = "JobID",
    Tooltip = "Job ID",
    Placeholder = "",
    Callback = function(_)
    end
})
v14:AddButton({
    Text = "Join Server",
    Func = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Options.JobID.Value, vu16.LocalPlayer)
    end,
    Tooltip = "Join Server, Add the JobId on the textbox or uses the latest clipboard if empty"
})
v14:AddButton("Teleport to Permadeath Server", function()
    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ServerListUI").Enabled = true
    task.wait(0.1)
    local v472, v473, v474 = ipairs(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ServerListUI").Container.CosmeticInterface.ScrollingFrame:GetChildren())
    local v475 = false
    while true do
        local v476
        v474, v476 = v472(v473, v474)
        if v474 == nil then
            break
        end
        if v476:IsA("TextButton") and string.find(v476.ServerName.Text, "PERMADEATH") then
            local v477, v478 = string.match(v476.ServerSize.Text, "(%d+)%s*/%s*(%d+)")
            if v477 and (v478 and tonumber(v477) < tonumber(v478)) then
                vu24.SelectedObject = v476
                task.wait(0.1)
                vu20:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                task.wait(0)
                vu20:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                task.wait(0.1)
                v476.Active = false
                vu24.SelectedObject = nil
                v475 = true
                break
            end
        end
    end
    if not v475 then
        Library:Notify("No permadeath server found", 10)
    end
    task.wait(0.1)
    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ServerListUI").Enabled = false
end)
v14:AddToggle("ModNotifier", {
    Text = "Mod Notifier",
    Default = false,
    Tooltip = "Notifies if a Moderator joined",
    Callback = function(p479)
        vu26.ModNotifer = p479
    end
})
v14:AddToggle("KickIfMod", {
    Text = "Kick if Mod joined",
    Default = false,
    Tooltip = "Kick yourself when a moderator joined the server",
    Callback = function(p480)
        vu26.kickifmod = p480
    end
})
game.Players.PlayerAdded:Connect(function(p481)
    if vu26.ModNotifer and p481:GetRankInGroup(34160477) > 1 then
        Library:Notify("A Moderator has joined: " .. p481.Name, 20)
    end
    if vu26.kickifmod and p481:GetRankInGroup(34160477) > 1 then
        vu17:Kick("A Moderator has joined: " .. p481.Name)
    end
end)
local function vu484(p482)
    local v483 = p482.Character
    if v483 and v483:FindFirstChild("Humanoid") then
        workspace.CurrentCamera.CameraSubject = v483.Humanoid
    end
end
local function vu486()
    local v485 = vu17.Character
    if v485 and v485:FindFirstChild("Humanoid") then
        workspace.CurrentCamera.CameraSubject = v485.Humanoid
    end
end
local function vu489(p487)
    local vu488 = vu16:FindFirstChild(p487.Name)
    p487.MouseButton1Down:Connect(function()
        if vu26.spectateplayers and vu488 then
            vu484(vu488)
        end
    end)
    p487.MouseButton1Up:Connect(function()
        if vu26.spectateplayers then
            vu486()
        end
    end)
    p487.MouseLeave:Connect(function()
        if vu26.spectateplayers then
            vu486()
        end
    end)
end
local function vu494()
    local v490, v491, v492 = ipairs(game:GetService("Players").LocalPlayer.PlayerGui.Leaderboard.Leaderboard:GetChildren())
    while true do
        local v493
        v492, v493 = v490(v491, v492)
        if v492 == nil then
            break
        end
        if v493:IsA("ImageButton") then
            vu489(v493)
        end
    end
end
local function vu499()
    local v495, v496, v497 = ipairs(game:GetService("Players").LocalPlayer.PlayerGui.Leaderboard.Leaderboard:GetChildren())
    while true do
        local v498
        v497, v498 = v495(v496, v497)
        if v497 == nil then
            break
        end
        if v498:IsA("TextBuImageButtontton") then
            v498.MouseButton1Down:Disconnect()
            v498.MouseButton1Up:Disconnect()
            v498.MouseLeave:Disconnect()
        end
    end
end
game:GetService("Players").LocalPlayer.PlayerGui.Leaderboard.Leaderboard.ChildAdded:Connect(function(p500)
    if p500:IsA("ImageButton") then
        vu489(p500)
    end
end)
v14:AddToggle("SpectatePlayer", {
    Text = "Spectate Players",
    Default = false,
    Tooltip = "Hold down the username from the leaderboard",
    Callback = function(p501)
        vu26.spectateplayers = p501
        if vu26.spectateplayers then
            vu494()
        else
            vu499()
            vu486()
        end
    end
})
v14:AddToggle("FPS Unlockers", {
    Text = "FPS Unlocker",
    Default = false,
    Tooltip = "FPS Unlocker",
    Callback = function(p502)
        vu26.fpsunlocker = p502
        if not vu26.fpsunlocker then
            setfpscap(120)
        end
    end
})
v14:AddInput("FPS", {
    Default = 120,
    Numeric = true,
    Finished = true,
    Text = "FPS",
    Tooltip = "FPS",
    Placeholder = "",
    Callback = function(p503)
        if vu26.fpsunlocker then
            setfpscap(tonumber(p503))
        end
    end
})
vu2:OnUnload(function()
    print("Unloaded!")
    vu2.Unloaded = true
end)
local vu504 = tick()
local vu505 = 0
local vu506 = 60
local vu508 = game:GetService("RunService").RenderStepped:Connect(function()
    vu505 = vu505 + 1
    if tick() - vu504 >= 1 then
        vu506 = vu505
        local v507 = tick()
        vu505 = 0
        vu504 = v507
    end
    Library:SetWatermark(("XES Hub | %s fps | %s ms"):format(math.floor(vu506), math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())))
end)
vu2:OnUnload(function()
    vu508:Disconnect()
    print("Unloaded!")
    vu2.Unloaded = true
end)
local v509 = WrapGroupbox(Tabs["UI Settings"]:AddLeftGroupbox("Menu"))
v509:AddButton("Unload", function()
    Library:Unload()
end)
v509:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
    Default = "End",
    NoUI = true,
    Text = "Menu keybind"
})
vu2.ToggleKeybind = Options.MenuKeybind
v509:AddToggle("KeybindPanel", {
    Text = "Keybinds Menu",
    Default = true,
    Callback = function(p510)
        vu2.KeybindFrame.Visible = p510
    end
})
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
v4:IgnoreThemeSettings()
ThemeManager:SetFolder("SexHub")
SaveManager:SetFolder("SexHub/specific-game")
SaveManager:BuildConfigSection(v7["UI Settings"])
ThemeManager:ApplyToTab(v7["UI Settings"])
v4:LoadAutoloadConfig()