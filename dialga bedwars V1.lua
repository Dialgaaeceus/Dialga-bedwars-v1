local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "💎Dialga Bedwars V1👑",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest",
  IntroEnabled = true,
  IntroText = "💎DIALGA BEDWARS V1👑",
  IntroIcon = "rbxassetid://4483345998"
})

OrionLib:MakeNotification({
	Name = "Dialga Bedwars v1 Loading",
	Content = "finishing loading",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "Dialga Bedwars v1 Loaded",
	Content = "finished loading",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Player = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Bedwars = Window:MakeTab({
	Name = "Bedwars",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Otherscripts = Window:MakeTab({
	Name = "Other scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = Player:AddSection({
	Name = "plr hacks"
})

local BedwarsSection = Bedwars:AddSection({
	Name = "Bedwars hacks"
})

local OtherscriptsSection = Otherscripts:AddSection({
	Name = "other scripts"
})

local CreditsSection = Credits:AddSection({
	Name = "Vape v4 by 7granddad"
})

Player:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 120,
	Default = 24,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Player:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 120,
	Default = 24,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

Player:AddButton({
	Name = "inf jump",
	Callback = function()
      	if callback then
            local InfiniteJumpEnabled = true
            game:GetService("UserInputService").JumpRequest:connect(function()
	            if InfiniteJumpEnabled then
	            	game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            	end
            end
        end
  	end    
})

Otherscripts:AddButton({
    Name = "Vape v4",
	Callback = function()
	    if callback then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
        end
    end
})