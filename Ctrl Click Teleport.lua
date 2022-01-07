--roblox luau

local player = game:GetService("Players").LocalPlayer
local character = player.Character
local mouse = player:GetMouse()
local userInputService = game:GetService("UserInputService")

local function main()
	if userInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
		if mouse.Target then
			character:MoveTo(mouse.Hit.p)
		end
	end
end

mouse.Button1Down:Connect(main)