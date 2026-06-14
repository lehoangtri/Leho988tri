-- Khởi tạo thư viện UI Orion
local OrionLib = loadstring(game:HttpGet(('https://githubusercontent.com')))()
local Window = OrionLib:MakeWindow({Name = "Menu Hack VIP Pro", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Biến trạng thái (Toggles)
local _G.AutoWeapon = false
local _G.AutoSpamEvent = false
local _G.KillAura = false
local _G.AutoCollect = false
local _G.AutoHeal = false

-- THƯ MỤC CHỨC NĂNG
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- TAB 1: WEAPON & SPAM EVENT
local Tab1 = Window:MakeTab({
	Name = "Chức năng chính",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Nút 1: Vô hạn WeaponShi
Tab1:AddToggle({
	Name = "Vô hạn WeaponShi (Max Speed)",
	Default = false,
	Callback = function(Value)
		_G.AutoWeapon = Value
		task.spawn(function()
			while _G.AutoWeapon do
				pcall(function()
					ReplicatedStorage:WaitForChild("Events"):WaitForChild("WeaponShi"):InvokeServer()
				end)
				task.wait() 
			end
		end)
	end    
})

-- Nút 2: Spam Sự Kiện (0.01 Giây)
Tab1:AddToggle({
	Name = "Spam Sự Kiện (0.01 Giây)",
	Default = false,
	Callback = function(Value)
		_G.AutoSpamEvent = Value
		task.spawn(function()
			while _G.AutoSpamEvent do
				pcall(function()
					ReplicatedStorage:WaitForChild("Events"):WaitForChild("WeaponShi"):InvokeServer()
				end)
				task.wait(0.01) 
			end
		end)
	end    
})

-- TAB 2: KILL AURA
local Tab2 = Window:MakeTab({
	Name = "Kill Aura",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Hàm tìm mục tiêu gần nhất
local function getClosestTarget()
    local maxDistance = 20
    local closestTarget = nil
    local shortestDistance = maxDistance

    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("Model") and obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") then
            if obj.Name ~= LocalPlayer.Name and obj.Humanoid.Health > 0 then
                local distance = (LocalPlayer.Character.HumanoidRootPart.Position - obj.HumanoidRootPart.Position).Magnitude
                if distance < shortestDistance then
                    closestTarget = obj
                    shortestDistance = distance
                end
            end
        end
    end
    return closestTarget
end

-- Nút bật/tắt Kill Aura
Tab2:AddToggle({
	Name = "Bật Kill Aura",
	Default = false,
	Callback = function(Value)
		_G.KillAura = Value
		task.spawn(function()
			while _G.KillAura do
				pcall(function()
					local target = getClosestTarget()
					if target then
						ReplicatedStorage:WaitForChild("Events"):WaitForChild("WeaponShi"):InvokeServer(target)
					end
				end)
				task.wait(0.1)
			end
		end)
	end    
})

-- TAB 3: TIỆN ÍCH BỔ SUNG (MỚI)
local Tab3 = Window:MakeTab({
	Name = "Tiện ích bổ sung",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Tự động nhặt tiền/vật phẩm rớt dưới đất tới nhân vật
Tab3:AddToggle({
	Name = "Auto Nhặt Vật Phẩm (Drops)",
	Default = false,
	Callback = function(Value)
		_G.AutoCollect = Value
		task.spawn(function()
			while _G.AutoCollect do
				pcall(function()
					for _, item in pairs(workspace:GetChildren()) do
						-- Kiểm tra nếu là vật phẩm có thể nhặt (thường là BasePart hoặc MeshPart)
						if item:IsA("BasePart") and (item.Name == "Coin" or item.Name == "Diamond" or item.Name == "Heart" or item:FindFirstChild("TouchTransmitter")) then
							if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
								item.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
							end
						end
					end
				end)
				task.wait(0.5)
			end
		end)
	end    
})

-- Tự động dùng vật phẩm hồi máu khi máu thấp dưới 50%
Tab3:AddToggle({
	Name = "Auto Hồi Máu (Dưới 50% Máu)",
	Default = false,
	Callback = function(Value)
		_G.AutoHeal = Value
		task.spawn(function()
			while _G.AutoHeal do
				pcall(function()
					local char = LocalPlayer.Character
					if char and char:FindFirstChild("Humanoid") then
						if char.Humanoid.Health < (char.Humanoid.MaxHealth * 0.5) then
							-- Tìm công cụ hồi máu trong Túi đồ (Backpack) và kích hoạt
							local medkit = LocalPlayer.Backpack:FindFirstChild("Medkit") or LocalPlayer.Backpack:FindFirstChild("Potion")
							if medkit then
								char.Humanoid:EquipTool(medkit)
								medkit:Activate()
							end
						end
					end
				end)
				task.wait(1)
			end
		end)
	end    
})

OrionLib:Init()
