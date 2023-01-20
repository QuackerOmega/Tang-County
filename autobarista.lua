local p = workspace.BaristaJob.Scripted.Line1.SpawnedNPCs
local mac = game:GetService("Workspace").BaristaJob.Scripted.FillCoffee

for g = 1,10 do
    workspace.BaristaJob.Scripted.Prompts.Prompt.PromptRemote:FireServer()

    getgenv().serve = false
    wait(.2)
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") then
            if v.Name ~= "Tristar T10" then
                v.Parent = game.Players.LocalPlayer.Character
                workspace.BaristaJob.Scripted.Line1.SpawnedNPCs:FindFirstChild("").HumanoidRootPart.PromptRemote:FireServer()
            end
        end
    end
end

for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
    if v.Name == "Coffee" then tool = v
        v.Parent = v.Parent.Parent.Character

    end
end 
for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
    if v.Name == "EmptyCoffee" then
    firetouchinterest(mac,v.Handle,0)
    wait()
    firetouchinterest(mac,v.Handle,1)
    end
end


for i,v in next, p:GetChildren() do
    if v.HumanoidRootPart:FindFirstChild("PromptRemote") then
    v.HumanoidRootPart.PromptRemote:FireServer()
    end
end
