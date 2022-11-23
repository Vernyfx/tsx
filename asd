local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "[🎃HALLOWEEN!] ⚡ Tapping Legends X",
	LoadingTitle = "[🎃HALLOWEEN!] ⚡ Tapping Legends X",
	LoadingSubtitle = "by VernyFX",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Verny Hub Scripts",
		FileName = "Verny Hub TLX"
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		SaveKey = true,
		Key = "ABCDEF"
	}
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart

local Toggle = Tab:CreateToggle({
	Name = "Auto Tap",
	CurrentValue = false,
	Flag = "AutoTap", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATV)
        _G.autotap = ATV;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autotap then
            game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
            wait()
        end
    end
end)

local rebirths = {}

for i=1,55 do
    table.insert(rebirths,i)
end


local Dropdown = Tab:CreateDropdown({
	Name = "Select Rebirth Option",
	Options = rebirths,
	CurrentOption = " ",
	Flag = "RebirthDrop", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(RBV)
        _G.rebdrop = RBV;
	end,
})


local Toggle = Tab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "AutoRebirth", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARB)
        _G.autorebirth = ARB;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autorebirth then
            if _G.rebdrop ~= nil then
                game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(_G.rebdrop)
            end
        end
    end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Claim Played Time Rewards",
	CurrentValue = false,
	Flag = "AutoClaim1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(acpt1)
        _G.acpt1 = acpt1
	end,
})

task.spawn(function()
    while wait() do
        if _G.acpt1 then
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(1)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(2)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(3)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(4)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(5)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(6)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(7)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(8)
            game:GetService("ReplicatedStorage").Remotes.PlaytimeReward:FireServer(9)
            wait(1)
        end
    end
end)

local Tab = Window:CreateTab("Chest", 4483362458) -- Title, Image

local Label = Tab:CreateLabel("Must Have Unlocked The Islands or else You WILL Get Kicked")

local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Crown Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Crown Chest"]["Crown Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Crown Chest"]["Crown Chest"].Part.DailyChest)
	end,
})


local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Lava Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Lava Chest"]["Lava Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Lava Chest"]["Lava Chest"].Part.LavaChest)
	end,
})


local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Hell Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Hell Chest"]["Hell Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Hell Chest"]["Hell Chest"].Part.HellChest)
	end,
})

local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Swamp Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Swamp Chest"]["Swamp Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Swamp Chest"]["Swamp Chest"].Part.SwampChest)
	end,
})

local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Retro Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Retro Chest"]["Retro Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Retro Chest"]["Retro Chest"].Part.RetroChest)
	end,
})



local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Lab Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Lab Chest"]["Lab Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Lab Chest"]["Lab Chest"].Part.LabChest)
	end,
})



local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Carnival Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Carnival Chest"]["Carnival Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Carnival Chest"]["Carnival Chest"].Part.CarnivalChest)
	end,
})



local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Spy Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Spy Chest"]["Spy Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Spy Chest"]["Spy Chest"].Part.SpyChest)
	end,
})


local Button = Tab:CreateButton({
	Name = "Auto Teleport And Collect Halloween Chest",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Chest["Halloween Chest"]["Halloween Chest"].Part.CFrame
		wait(1)
		fireproximityprompt(game:GetService("Workspace").Chest["Halloween Chest"]["Halloween Chest"].Part.HalloweenChest)
	end,
})

local Tab = Window:CreateTab("Teleports", 4483362458) -- Title, Image

local Label = Tab:CreateLabel("Must Have Unlocked The Islands or else You WILL Get Kicked")


local teleports = game:GetService("Workspace").Teleporters:GetChildren() 

local teleportsTable = {}

for _,v in ipairs(teleports) do
	if v:IsA("Part") then
		table.insert(teleportsTable, v.Name)
	end
end

local Dropdown = Tab:CreateDropdown({
	Name = "Select Island",
	Options = teleportsTable,
	CurrentOption = " ",
	Callback = function(SAR)
		_G.selectedarea = SAR;
	end,
})

local Button = Tab:CreateButton({
	Name = "Teleport To Selected Area",
	Callback = function()
		hrp.CFrame = game:GetService("Workspace").Teleporters[_G.selectedarea].CFrame
	end,
})



local Tab = Window:CreateTab("Auto Eggs/Pets", 4483362458) -- Title, Image



local eggs = game:GetService("Workspace").Eggs:GetChildren()

local eggsTable = {}

for i,v in ipairs(eggs) do
    if v:IsA("Folder") then
        table.insert(eggsTable, v.Name)
    end
end

local Dropdown = Tab:CreateDropdown({
	Name = "Select Egg",
	Options = eggsTable,
	CurrentOption = " ",
	Flag = "EggDrop", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(EGD)
        _G.eggdrop = EGD;
	end,
})


local Dropdown = Tab:CreateDropdown({
	Name = "Select Egg Amount",
	Options = {1,3,4},
	CurrentOption = " ",
	Flag = "EggAmount", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(EGA)
        _G.eggamount = EGA;
	end,
})


local Toggle = Tab:CreateToggle({
	Name = "Auto Open Selected Egg",
	CurrentValue = false,
	Flag = "AutoOpenEgg", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(AOE)
        _G.autoegg = AOE;
	end,
})


task.spawn(function()
    while wait() do
        if _G.autoegg then
            if _G.eggamount ~= nil then
                if _G.eggdrop ~= nil then
                    game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(_G.eggdrop,_G.eggamount)
                end
            end
        end
    end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Teleport To Egg",
	CurrentValue = false,
	Callback = function(ATE)
        _G.autotpegg = ATE;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autotpegg then
            wait(1)
            hrp.CFrame = game:GetService("Workspace").Eggs[_G.eggdrop].E.CFrame
        end
    end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Equip Best Pet Every 30 Sec",
	CurrentValue = false,
	Flag = "AutoBestPet", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ABP)
        _G.autobest = ABP;
	end,
})

task.spawn(function()
    while wait() do
        if _G.autobest then
            game:GetService("ReplicatedStorage").Remotes.UnequipAll:InvokeServer()
                game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
            wait(30)
        end
    end
end)

local Input = Tab:CreateInput({
	Name = "Type in Pet Name you want to auto delete",
	PlaceholderText = "Pet Name",
	RemoveTextAfterFocusLost = false,
	Callback = function(Pt1)
		_G.petdelete1 = Pt1
	end,
})



local Input = Tab:CreateInput({
	Name = "Type in Pet Name you want to auto delete",
	PlaceholderText = "Pet Name",
	RemoveTextAfterFocusLost = false,
	Callback = function(Pt2)
		_G.petdelete2 = Pt2
	end,
})



local Input = Tab:CreateInput({
	Name = "Type in Pet Name you want to auto delete",
	PlaceholderText = "Pet Name",
	RemoveTextAfterFocusLost = false,
	Callback = function(Pt3)
		_G.petdelete3 = Pt3
	end,
})


local Input = Tab:CreateInput({
	Name = "Type in Pet Name you want to auto delete",
	PlaceholderText = "Pet Name",
	RemoveTextAfterFocusLost = false,
	Callback = function(Pt4)
		_G.petdelete4 = Pt4
	end,
})


local Button = Tab:CreateButton({
	Name = "Turn On Auto Delete Pet",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.AutoDelete:FireServer(_G.petdelete1)
		wait(0.5)
		game:GetService("ReplicatedStorage").Remotes.AutoDelete:FireServer(_G.petdelete2)
		wait(0.5)
		game:GetService("ReplicatedStorage").Remotes.AutoDelete:FireServer(_G.petdelete3)
		wait(0.5)
		game:GetService("ReplicatedStorage").Remotes.AutoDelete:FireServer(_G.petdelete4)
	end,
})


local Tab = Window:CreateTab("Ruby Upgrades", 4483362458) -- Title, Image

local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Tap Mutliplier",
	CurrentValue = false,
	Flag = "AutoRuby1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU1)
		_G.autoruby1 = ARU1;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby1 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","TapMultiplier")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Free Auto Clicker",
	CurrentValue = false,
	Flag = "AutoRuby2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU2)
		_G.autoruby2 = ARU2;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby2 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","FreeAutoClicker")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy More Rebirths",
	CurrentValue = false,
	Flag = "AutoRuby3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU3)
		_G.autoruby3 = ARU3;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby3 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","RebirthsUpgrade")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Pet Storage",
	CurrentValue = false,
	Flag = "AutoRuby4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU4)
		_G.autoruby4 = ARU4;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby4 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","PetStorage")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Walk Speed",
	CurrentValue = false,
	Flag = "AutoRuby5", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU5)
		_G.autoruby5 = ARU5;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby5 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","WalkSpeed")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Critical Chance",
	CurrentValue = false,
	Flag = "AutoRuby6", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU6)
		_G.autoruby6 = ARU6;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby6 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","CriticalChances")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Auto Clicker Multiplier",
	CurrentValue = false,
	Flag = "AutoRuby7", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU7)
		_G.autoruby7 = ARU7;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby7 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","AutoClickerMultiplier")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Max Tap Combo",
	CurrentValue = false,
	Flag = "AutoRuby8", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU8)
		_G.autoruby8 = ARU8;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby8 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","MaxCombo")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Achivement Luck",
	CurrentValue = false,
	Flag = "AutoRuby9", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU9)
		_G.autoruby9 = ARU9;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby9 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","AchivementLuck")
		end
	end
end)




local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Re-Enchant",
	CurrentValue = false,
	Flag = "AutoRuby10", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU10)
		_G.autoruby10 = ARU10;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby10 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","ReEnchant")
		end
	end
end)

local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Better Pet Stats",
	CurrentValue = false,
	Flag = "AutoRuby11", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU11)
		_G.autoruby11 = ARU11;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby11 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","BetterPetStats")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Double Vial Time",
	CurrentValue = false,
	Flag = "AutoRuby12", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU12)
		_G.autoruby12 = ARU12;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby12 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","DoubleVial")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Faster Leveling",
	CurrentValue = false,
	Flag = "AutoRuby13", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ARU13)
		_G.autoruby13 = ARU13;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autoruby13 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Ruby","XPUpgrade")
		end
	end
end)

local Tab = Window:CreateTab("Pet Token Upgrades", 4483362458) -- Title, Image

local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Tap Damage",
	CurrentValue = false,
	Flag = "AutoToken1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU1)
		_G.autotoken1 = ATU1;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken1 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","TapDamage")
		end
	end
end)

local Toggle = Tab:CreateToggle({
	Name = "Auto Buy More Pets Equipped",
	CurrentValue = false,
	Flag = "AutoToken2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU2)
		_G.autotoken2 = ATU2;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken2 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","PetsEquipped")
		end
	end
end)

local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Golden Chances",
	CurrentValue = false,
	Flag = "AutoToken3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU3)
		_G.autotoken3 = ATU3;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken3 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","GoldenChance")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Faster Eggs",
	CurrentValue = false,
	Flag = "AutoToken4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU4)
		_G.autotoken4 = ATU4;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken4 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","FasterEggs")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy More Luck",
	CurrentValue = false,
	Flag = "AutoToken5", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU5)
		_G.autotoken5 = ATU5;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken5 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","MoreLuck")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Rainbow Chances",
	CurrentValue = false,
	Flag = "AutoToken6", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU6)
		_G.autotoken6 = ATU6;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken6 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","RainbowChance")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy More Rubies",
	CurrentValue = false,
	Flag = "AutoToken7", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU7)
		_G.autotoken7 = ATU7;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken7 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","RubyMultiplier")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy More Chest Vials",
	CurrentValue = false,
	Flag = "AutoToken8", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU8)
		_G.autotoken8 = ATU8;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken8 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","ChestChances")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy More Pet Levels",
	CurrentValue = false,
	Flag = "AutoToken9", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU9)
		_G.autotoken9 = ATU9;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken9 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","MaxPetLevel")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Max Enchant Bonus",
	CurrentValue = false,
	Flag = "AutoToken10", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU10)
		_G.autotoken10 = ATU10;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken10 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","MaxEnchant")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy World Boost Multiplier",
	CurrentValue = false,
	Flag = "AutoToken11", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU11)
		_G.autotoken11 = ATU11;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken11 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","WorldBoost")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Buy Lucky Tokens",
	CurrentValue = false,
	Flag = "AutoToken12", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(ATU12)
		_G.autotoken12 = ATU12;
	end,
})

task.spawn(function()
	while wait() do
		if _G.autotoken1 then
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer("Tokens","VialGodlies")
		end
	end
end)






local Tab = Window:CreateTab("Vials", 4483362458) -- Title, Image

local Toggle = Tab:CreateToggle({
	Name = "Auto Use Tap Vial",
	CurrentValue = false,
	Flag = "AutoVial1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(AV1)
		_G.autovial1 = AV1
	end,
})


task.spawn(function()
	while wait() do
		if _G.autovial1 then	
			game:GetService("ReplicatedStorage").Remotes.UseVial:FireServer("VialTaps")
			wait(1020)
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Use Luck Vial",
	CurrentValue = false,
	Flag = "AutoVial2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(AV2)
		_G.autovial2 = AV2
	end,
})


task.spawn(function()
	while wait() do
		if _G.autovial2 then	
			game:GetService("ReplicatedStorage").Remotes.UseVial:FireServer("VialLuck")
			wait(1020)
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Auto Use Damage Vial",
	CurrentValue = false,
	Flag = "AutoVial3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(AV3)
		_G.autovial3 = AV3
	end,
})


task.spawn(function()
	while wait() do
		if _G.autovial3 then	
			game:GetService("ReplicatedStorage").Remotes.UseVial:FireServer("VialDamage")
			wait(1020)
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Auto Use Rebirth Vial",
	CurrentValue = false,
	Flag = "AutoVial4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(AV4)
		_G.autovial4 = AV4
	end,
})


task.spawn(function()
	while wait() do
		if _G.autovial4 then	
			game:GetService("ReplicatedStorage").Remotes.UseVial:FireServer("VialRebirths")
			wait(1020)
		end
	end
end)

local Toggle = Tab:CreateToggle({
	Name = "Exchange Vial Token For Tap Vial",
	CurrentValue = false,
	Flag = "VialExchange1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(VE1)
		_G.vialex1 = VE1
	end,
})


task.spawn(function()
	while wait() do
		if _G.vialex2 then
			game:GetService("ReplicatedStorage").Remotes.ExchangeVial:FireServer("VialTaps")
		end
	end
end)


local Toggle = Tab:CreateToggle({
	Name = "Exchange Vial Token For Luck Vial",
	CurrentValue = false,
	Flag = "VialExchange2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(VE2)
		_G.vialex2 = VE2
	end,
})


task.spawn(function()
	while wait() do
		if _G.vialex2 then
			game:GetService("ReplicatedStorage").Remotes.ExchangeVial:FireServer("VialLuck")
		end
	end
end)



local Toggle = Tab:CreateToggle({
	Name = "Exchange Vial Token For Damage Vial",
	CurrentValue = false,
	Flag = "VialExchange3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(VE3)
		_G.vialex3 = VE3
	end,
})


task.spawn(function()
	while wait() do
		if _G.vialex3 then
			game:GetService("ReplicatedStorage").Remotes.ExchangeVial:FireServer("VialDamage")
		end
	end
end)




local Toggle = Tab:CreateToggle({
	Name = "Exchange Vial Token For Rebirths Vial",
	CurrentValue = false,
	Flag = "VialExchange4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(VE4)
		_G.vialex4 = VE4
	end,
})


task.spawn(function()
	while wait() do
		if _G.vialex4 then
			game:GetService("ReplicatedStorage").Remotes.ExchangeVial:FireServer("VialRebirths")
		end
	end
end)


local Tab = Window:CreateTab("GUIS", 4483362458) -- Title, Image

local guis = game:GetService("Players").LocalPlayer.PlayerGui.Menus:GetChildren()

local guiTable = {}

for i,v in ipairs(guis) do
	if v:IsA("ScreenGui") then
		table.insert(guiTable, v.Name)
	end
end

local Dropdown = Tab:CreateDropdown({
	Name = "Select Gui",
	Options = guiTable,
	CurrentOption = " ",
	Callback = function(SG)
		_G.gui = SG;
	end,
})


local Button = Tab:CreateButton({
	Name = "Open Selected Gui",
	Callback = function()
		game:GetService("Players").LocalPlayer.PlayerGui.Menus[_G.gui].Enabled = true;
	end,
})

local Button = Tab:CreateButton({
	Name = "Close Selected Gui",
	Callback = function()
		game:GetService("Players").LocalPlayer.PlayerGui.Menus[_G.gui].Enabled = false;
	end,
})


local Tab = Window:CreateTab("Credits", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "Creators", Content = "!KatagiriYuuchi#7765 And Roge#4087"})

local Paragraph = Tab:CreateParagraph({Title = "Join My Discord", Content = "https://discord.gg/vEQDXpeX"})

local Button = Tab:CreateButton({
	Name = "Copy Discord Link",
	Callback = function()
		setclipboard("https://discord.gg/vEQDXpeX")
		Rayfield:Notify("Success", "Successfully Copied Discord Link", 4483362458) -- Title, Content, Image
end,
})


pcall(function()
        
	syn.request(
			   {
				   Url = "http://127.0.0.1:6463/rpc?v=1",
				   Method = "POST",
				   Headers = {
					   ["Content-Type"] = "application/json",
					   ["origin"] = "https://discord.com",
				   },
				   Body = game:GetService("HttpService"):JSONEncode(
					   {
						   ["args"] = {
							   ["code"] = "cH7p8Px96B",
						   },
						   ["cmd"] = "INVITE_BROWSER",
						   ["nonce"] = "."
					   })
			   })
	end)
