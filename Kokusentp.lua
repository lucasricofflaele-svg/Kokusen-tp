local p=game:GetService("Players").LocalPlayer
local g=Instance.new("ScreenGui",p:WaitForChild("PlayerGui"))
g.ResetOnSpawn=false
g.DisplayOrder=9999
local b=Instance.new("TextButton",g)
b.Size=UDim2.new(0,150,0,60)
b.Position=UDim2.new(0.5,-75,0.8,0)
b.Text="⚡KOKUSEN"
b.BackgroundColor3=Color3.new(0,0.5,1)
b.TextColor3=Color3.new(1,1,1)
b.Font=Enum.Font.GothamBold
b.TextScaled=true
b.Draggable=true
b.MouseButton1Click:Connect(function()
    local e=nil
    local d=30
    for _,v in pairs(game:GetService("Players"):GetPlayers())do
        if v~=p and v.Character and v.Character:FindFirstChild("HumanoidRootPart")then
            local m=(p.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).Magnitude
            if m<d then d=m e=v end
        end
    end
    if e and p.Character then
        p.Character.HumanoidRootPart.CFrame=CFrame.new(e.Character.HumanoidRootPart.Position+e.Character.HumanoidRootPart.CFrame.LookVector*-4,e.Character.HumanoidRootPart.Position)
        wait(0.1)
        game:GetService("VirtualInputManager"):SendKeyEvent(1,Enum.KeyCode.Three,0,g)
        wait(0.05)
        game:GetService("VirtualInputManager"):SendKeyEvent(0,Enum.KeyCode.Three,0,g)
        wait(0.3)
        game:GetService("VirtualInputManager"):SendKeyEvent(1,Enum.KeyCode.Three,0,g)
        wait(0.05)
        game:GetService("VirtualInputManager"):SendKeyEvent(0,Enum.KeyCode.Three,0,g)
    end
end)
