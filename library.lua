function TpC(x, y, z)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character.HumanoidRootPart

    if x and y and z then
        humanoidRootPart.CFrame = CFrame.new(x, y, z)
    else
        warn("Coordinates not specified.")
    end
end

function TpP(player)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character.HumanoidRootPart

    local targetPlayer = game.Players:FindFirstChild(player)

    if targetPlayer then
        local targetPos = targetPlayer.Character.HumanoidRootPart.Position
        humanoidRootPart.CFrame = CFrame.new(targetPos)
    else
        warn("Player not found or not specified.")
    end
end
