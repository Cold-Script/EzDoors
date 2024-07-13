local function billboard(child, name, name2, name3)
	local billboard_gui = Instance.new("BillboardGui")
	billboard_gui.Active = false
	billboard_gui.AlwaysOnTop = true
	billboard_gui.ClipsDescendants = false
	billboard_gui.LightInfluence = 10
	billboard_gui.Size = UDim2.new(2, 0, 2, 0)
	billboard_gui.ResetOnSpawn = false
	billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	billboard_gui.Parent = child
	billboard_gui.Name = "KiwiHighlight"
	if name2 then
		billboard_gui.Name = "KiwiHighlight_2"
	end
	if name3 then
		billboard_gui.Name = "KiwiHighlight_3"
	end

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.Oswald
	text_label.Text = name
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = false
	text_label.TextSize = 35
	text_label.TextWrapped = false
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Size = UDim2.new(1, 0, 1, 0)
	text_label.Visible = true
	text_label.Parent = billboard_gui

	local uistroke = Instance.new("UIStroke")
	uistroke.Thickness = 0.5
	uistroke.Parent = text_label

	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = _G.ColorESP
			text_label.TextColor3 = color
		end
	end)
end

local function ESP(child, name, name2, name3)
	billboard(child, name, name2, name3)
	local hi = Instance.new("Highlight")
	hi.Parent = child
	hi.Adornee = child
	hi.OutlineColor = Color3.fromRGB(255, 255, 255)
	hi.FillColor = Color3.fromRGB(255, 255, 255)
	hi.FillTransparency = 0.5
     hi.OutlineTransparency = 0.5
     hi.DepthMode = "AlwaysOnTop"
	hi.Name = "KiwiHighlight"
	if name2 then
		hi.Name = "KiwiHighlight_2"
	end
	if name3 then
		hi.Name = "KiwiHighlight_3"
	end
	if child:IsA("Part") then
		child.Color = Color3.fromRGB(255,255,255)
		child.Transparency = 0.2
	end
	spawn(function()
		while task.wait() do
			if hi then
				local hue = tick() % 5 / 5
				local color = _G.ColorESP
				hi.OutlineColor = color
				hi.FillColor = color
			end
		end
	end)
end
while wait() do
_G.ColorESP = Color3.fromHSV(tick() % 5/5, 1, 1)
end
w = workspace
for _,v in pairs(w:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
ESP(v,"Door")
elseif v.Name == "KeyObtain" then
ESP(v,"KeyObtain")
elseif v.Name == "LeverForGate" then
ESP(v,"LeverForGate")
elseif v.Name == "LiveHintBook" then
ESP(v,"LiveHintBook")
elseif v.Name == "LiveBreakerPolePickup" then
ESP(v,"Fuse")
elseif v.Name == "RushMoving" then
ESP(v,"Rush")
elseif v.Name == "AmbushMoving" then
ESP(v,"Ambush")
elseif v.Name == "FigureRagdoll" then
ESP(v,"Figure")
elseif v.Name == "Screech" then
ESP(v,"Screech")
elseif v.Name == "Eyes" then
ESP(v,"Eyes")
elseif v.Name == "JeffTheKiller" then
ESP(v,"Jeff (Knife)")
elseif v.Name == "PickupItem" then
ESP(v,"Paper")
elseif v.Name == "Timer Lever" then
ESP(v,"Timer Lever")
elseif v.Name == "BackdoorLookman" then
ESP(v,"Lookman")
elseif v.Name == "BackdoorRush" then
ESP(v,"Blitz")
elseif v.Name == "ScaryWall" then
ESP(v,"")
elseif v.Name == "RetroScreech" then
ESP(v,"Screech")
      end
end
workspace.ChildAdded:Connect(function(child)
for _, v in pairs(child:GetDescendants()) do
if v.Name == "Door" and v.Parent.Name == "Door" then
ESP(v,"Door")
elseif v.Name == "KeyObtain" then
ESP(v,"KeyObtain")
elseif v.Name == "LeverForGate" then
ESP(v,"LeverForGate")
elseif v.Name == "LiveHintBook" then
ESP(v,"LiveHintBook")
elseif v.Name == "LiveBreakerPolePickup" then
ESP(v,"Fuse")
elseif v.Name == "RushMoving" then
ESP(v,"Rush")
elseif v.Name == "AmbushMoving" then
ESP(v,"Ambush")
elseif v.Name == "FigureRagdoll" then
ESP(v,"Figure")
elseif v.Name == "Screech" then
ESP(v,"Screech")
elseif v.Name == "Eyes" then
ESP(v,"Eyes")
elseif v.Name == "JeffTheKiller" then
ESP(v,"Jeff (Knife)")
elseif v.Name == "PickupItem" then
ESP(v,"Paper")
elseif v.Name == "Timer Lever" then
ESP(v,"Timer Lever")
elseif v.Name == "BackdoorLookman" then
ESP(v,"Lookman")
elseif v.Name == "BackdoorRush" then
ESP(v,"Blitz")
elseif v.Name == "ScaryWall" then
ESP(v,"")
elseif v.Name == "RetroScreech" then
ESP(v,"Screech")
	  end
     end
end)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
