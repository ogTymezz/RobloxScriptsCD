-- BedWars Aimbot Script Example
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

function aimAtTarget(target)
    local bodyVelocity = player.Character:FindFirstChild("HumanoidRootPart")
    if bodyVelocity then
        bodyVelocity.CFrame = CFrame.new(bodyVelocity.Position, target.Position)
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    local closestPlayer = nil
    local minDist = math.huge
    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (otherPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < minDist then
                minDist = distance
                closestPlayer = otherPlayer
            end
        end
    end
    if closestPlayer then
        aimAtTarget(closestPlayer.Character.HumanoidRootPart)
    end
end)
