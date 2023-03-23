local rooms = 50
local specialroomnumber = math.random(13, 18)
local roomsfolder = game.ReplicatedStorage:WaitForChild("SetRooms")
local roomsamount = roomsfolder:GetChildren()
local alreadyrooms = workspace:WaitForChild("Closets")
local specialrooms = game.ReplicatedStorage:WaitForChild("Specialrooms")

for i = 1, rooms do
	
	local ingameroom = alreadyrooms:GetChildren()
	
	if #ingameroom == specialroomnumber then
		local specialroom1 = specialrooms:WaitForChild("Room15")
		specialroom1.Name = tostring(#ingameroom + 1)
		specialroom1.Parent = alreadyrooms
		
		specialroom1:WaitForChild("Door"):WaitForChild("ExtraDoorPart"):WaitForChild("SurfaceGui").TextLabel.Text = #ingameroom
		specialroom1:SetPrimaryPartCFrame(alreadyrooms:WaitForChild(#ingameroom).EndPoint.CFrame)
	else
		local selectedroom = math.random(1, #roomsamount)
				
		local chosenroom = roomsfolder:WaitForChild("Room"..tostring(selectedroom))
		local newroom = chosenroom:Clone()
		newroom.Name = tostring(#ingameroom + 1)
		newroom.Parent = alreadyrooms

		newroom:WaitForChild("Door"):WaitForChild("ExtraDoorPart"):WaitForChild("SurfaceGui").TextLabel.Text = #ingameroom
		newroom:SetPrimaryPartCFrame(alreadyrooms:WaitForChild(#ingameroom).EndPoint.CFrame)
			
	end
	
	i += 1
	
end