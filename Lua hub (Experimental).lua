local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔲 Lua Hub (Experimental)",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Lua hub Script Very Op",
   LoadingSubtitle = "Loading..",
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "IgnoreThis"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Lua Keysystem",
      Subtitle = "Join Discord (Later)",
      Note = "No key as of now, password is key", -- Use this to tell the user how to get a key
      FileName = "PaploKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"key"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 9481286207) -- Title, Image

local Section = Tab:CreateSection("Visibility")

local Button = Tab:CreateButton({
   Name = "FullBright (its over, i just got wallhacks)",
   Callback = function()
Rayfield:Notify({
   Title = "FullBright Activated.",
   Content = "FullBright is Now highlighted, Watch out for [REDACTED]🤨",
   Duration = 2,
   Image = 0,
})

game:GetService("Lighting").Brightness = 100
game:GetService("Lighting").Ambient = Color3.fromRGB(255, 255, 255)
game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(255, 255, 255)
game:GetService("Lighting").GlobalShadows = true
game:GetService("Lighting").ColorShift_Bottom = Color3.fromRGB(128, 128, 128) 
game:GetService("Lighting").ColorShift_Bottom = Color3.fromRGB(255, 255, 255)

local Lighting = game:GetService("Lighting")
local Atmosphere = Instance.new("Atmosphere")
Atmosphere.Parent = Lighting

-- Set the atmosphere properties
Atmosphere.Color = Color3.fromRGB(255, 255, 255) -- Grey tint for a polluted alien planet
Atmosphere.Density = 0.4 -- Controls the amount of particles in the air
Atmosphere.Decay = Color3.fromRGB(255, 255, 255)

   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Chat Toggle (me spy hahaha)",
   CurrentValue = skibiditoiletchat
   Callback = function(state)
Rayfield:Notify({
   Title = " Chat Toggle Activated.",
   Content = "Chat Toggle is now activated, go spy people lol",
   Duration = 2,
   Image = 0,
})

skibididtoiletchat = state
 				while skibididtoiletchat do
 					game:GetService("TextChatService"):WaitForChild("ChatWindowConfiguration").Enabled = state
 					task.wait(1)
         end

   end,
})
