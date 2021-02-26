if isfile("onlyvip.ini") then delfile("onlyvip.ini") end
if game.PlaceId ~= 2414851778 then
    writefile("allAccs.txt", "")
end

local func = [[
    local accTable = {"acc", "acc1"}
    local function GetAccs()
        for i,v in next, accTable do
            if not string.find(readfile("allAccs.txt"), v) then
                return false
            end
        end
        return true
    end

    if game.PlaceId == 2414851778 then
        repeat wait() until game.Players.LocalPlayer
        appendfile("allAccs.txt", game.Players.LocalPlayer.Name)
        if GetAccs() == true then
            writefile("onlyvip.ini", "1")
        end
        game.Players.LocalPlayer:Kick("Oof")
    end
]]



repeat wait() until game.Players.LocalPlayer
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport(func)
    end
end)
