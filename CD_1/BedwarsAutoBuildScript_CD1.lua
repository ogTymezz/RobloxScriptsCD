-- BedWars Auto Build Script Example
local bedPos = workspace.Bed -- Define your bed's position
local buildBlock = game.ReplicatedStorage.Blocks:FindFirstChild("WallBlock") -- Block to use for building

function buildDefense()
    for i = -5, 5, 1 do
        for j = -5, 5, 1 do
            local newBlock = buildBlock:Clone()
            newBlock.Position = bedPos.Position + Vector3.new(i * 5, 0, j * 5)
            newBlock.Parent = workspace
        end
    end
end

while true do
    buildDefense()
    wait(10) -- Run the build defense function every 10 seconds
end
