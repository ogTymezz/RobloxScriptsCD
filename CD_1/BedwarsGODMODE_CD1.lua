-- BedWars God Mode Script Example
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

function enableGodMode()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Health = math.huge -- Set health to infinite
        humanoid.MaxHealth = math.huge -- Set max health to infinite
        humanoid.Died:Connect(function()
            print(player.Name .. " can't die in God Mode.")
        end)
    end
end

enableGodMode()
