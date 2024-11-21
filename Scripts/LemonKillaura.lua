     _G.KillAura = true
        while KillAura do wait()
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Model" and v.Humanoid.Health > 0 then
                        v.Humanoid.Health = Die
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  200)
                    end
                end
            end)
        end
