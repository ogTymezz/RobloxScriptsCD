-- BedWars Speed Hack Script Example
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local originalWalkSpeed = humanoid.WalkSpeed
local speedMultiplier = 2 -- Increase speed by a factor of 2

function enableSpeedHack()
    humanoid.WalkSpeed = originalWalkSpeed * speedMultiplier
end

enableSpeedHack()
