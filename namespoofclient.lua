        local spoofid = 77208661
        local spoofname = "dau113"
        local plr = game.Players.LocalPlayer
        local statusimg = plr.PlayerGui.LAYOUT.Main.Profile.Image.PlayerImage
        local statususer = plr.PlayerGui.LAYOUT.Main.Bar.Username
        local statusnick = plr.PlayerGui.LAYOUT.Main.Bar.DisplayName
        local char = plr.Character

        if char:FindFirstChild("Rank") then
            char.Rank.Frame.TextLabel.Text = "dau113 Fan Club <3"
            char.Rank.Frame.TextLabel.TextColor3 = Color3.fromRGB(255, 60, 60)
            char.Rank.Frame.Name1.Text = "dau113 (dau113)"
            char.Rank.Frame.DevIcon.Visible = true
        end
        statusimg.Image = game.Players:GetUserThumbnailAsync(spoofid, Enum.ThumbnailType.AvatarBust,Enum.ThumbnailSize.Size420x420)
        statususer.Text = '@'..spoofname
        statusnick.Text = spoofname
