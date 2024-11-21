getgenv().KillAURA = true

spawn(function()
  while getgenv().KillAURA do
    task.wait()
       sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 200)
          sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", 200)
              for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == 'Humanoid' and v.Parent.Name ~= game.Players.LocalPlayer.Name then
             v.Health = 0
          end
       end
    end
end)
