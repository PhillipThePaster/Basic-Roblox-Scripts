local lp = game.Players.LocalPlayer
function tp(cframe)
   for i,v in ipairs(game.workspace:GetDescendants()) do
       if v.ClassName == "Seat" then
           local vpos = v.CFrame.p
           local distance_p = lp:DistanceFromCharacter(vpos)
           if distance_p < 70 then
               v:Sit(lp.Character.Humanoid)
               break
           end
       end
   end
   while not lp.Character.Humanoid.SeatPart do game:GetService("RunService").RenderStepped:Wait() end
   lp.Character.Humanoid.Jump = true
   wait()
   lp.Character.Humanoid.RootPart.CFrame = cframe
end

tp(CFrame.new())
