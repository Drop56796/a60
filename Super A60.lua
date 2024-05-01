require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("I don't feel good",true)
wait(5)

require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Hide!!",true)

local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V1/Source.lua"))()

---====== Create entity ======---

local entity = Spawner.createEntity({
    CustomName = "Super A-60",
    Model = "https://github.com/catminetry/Super-A60-V2/blob/main/Super%20A-60%20V2.rbxm?raw=true", -- Your entity's model url here ("rbxassetid://1234567890" or GitHub raw url)
    Speed = 350,
    MoveDelay = 2,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    SpawnInFront = false,
    ShatterLights = true,
    FlickerLights = {
        Enabled = true,
        Duration = 1
    },
    Cycles = {
        Min = 1,
        Max = 8,
        Delay = 2
    },
    CamShake = {
        Enabled = true,
        Values = {1.5, 20, 1.5, 20},
        Range = 100
    },
    ResistCrucifix = false,
    BreakCrucifix = true,
    DeathMessage = {"You die to Super A-60..", "it's fast to neer you...", "use what you learn from Ambush..", "Wait,you won't see it..", "Good luck!"},
    IsCuriousLight = true
})

---====== Debug ======---

entity.Debug.OnEntitySpawned = function()
    print("Entity has spawned")
end

entity.Debug.OnEntityDespawned = function()
    print("Entity has despawned")
end

entity.Debug.OnEntityStartMoving = function()
    print("Entity started moving")
end

entity.Debug.OnEntityFinishedRebound = function()
    print("Entity finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(room)
    print("Entity entered room:", room)
end

entity.Debug.OnLookAtEntity = function()
    print("Player looking at entity")
end

entity.Debug.OnDeath = function()
    print("Player has died")
end

--[[
    NOTE: By overwriting 'OnUseCrucifix', the default crucifixion will be ignored and this function will be called instead

    entity.Debug.OnUseCrucifix = function()
        print("Custom crucifixion script here")
    end
]]--

---====== Run entity ======---

Spawner.runEntity(entity)

---====== Load achievement giver ======---
local achievementGiver = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

---====== Display achievement ======---
achievementGiver({
    Title = "Give me you Figure",
    Desc = " soo hot.",
    Reason = "Survival super A60",
    Image = "rbxassetid://12309073114"
})
