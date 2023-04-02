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

function TpP(plr)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character.HumanoidRootPart

    local targetPlayer = game.Players:FindFirstChild(plr)

    if targetPlayer then
        local targetPos = targetPlayer.Character.HumanoidRootPart.Position
        humanoidRootPart.CFrame = CFrame.new(targetPos)
    else
        warn("Player not found or not specified.")
    end
end

function RNumber(min, max)
    min = min or 1
    max = max or 100
    local randomNum = math.random(min, max)
    return randomNum
end

function pSpeed(speed)
    if speed then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end

function pJPower(jumpPower)
    if jumpPower then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpPower
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end

function sRejoin()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)
end

function sHop()
    local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

Teleport()
end
