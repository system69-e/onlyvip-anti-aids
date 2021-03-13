if isfile("onlyvip.ini") then delfile("onlyvip.ini") end

repeat wait() until game.Players.LocalPlayer

game.Players.LocalPlayer.OnTeleport:Connect(function()
    if game.PlaceId ~= 2414851778 then
        syn.queue_on_teleport([[repeat wait() until game.Players.LocalPlayer game.Players.LocalPlayer:Kick("FuCK U LOBBY")]])
        writefile("onlyvip.ini", 1)
        vip = true
    end
end)
