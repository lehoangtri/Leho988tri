local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=107764845481543"

UICorner.CornerRadius = UDim.new(1, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()
local Window = Fluent:CreateWindow({
    Title = "dark Roblox Tổng Hợp",
    SubTitle = "tổng hợp",
    TabWidth = 157,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
        Main0=Window:AddTab({ Title="Thông Tin" }),
        Main1=Window:AddTab({ Title="Script Farm" }),
        Main2=Window:AddTab({ Title="Farm Fruit" }),
        Main3=Window:AddTab({ Title="Farm Chest" }),
        Main4=Window:AddTab({ Title="Script Hop" }),
       Main5=Window:AddTab({ Title="lin tinh" }),
}
    Tabs.Main0:AddButton({
    Title = "Discord",
    Description = "darkRoblox Community",
    Callback = function()
        setclipboard("https://discord.gg/-community-1253927333920899153")
    end
})

    Tabs.Main0:AddButton({
    Title = "tik tok",
    Description = "Dark Roblox",
    Callback = function()
        setclipboard("https://www.tiktok.com/tiktoklite")
    end
})

    Tabs.Main0:AddButton({
    Title = "Youtuber",
    Description = "Dark roblox",
    Callback = function()
        setclipboard
    end
})
    
    Tabs.Main1:AddButton({
    Title="không sài đc",
    Description="",
    Callback=function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
  end
})

Tabs.Main2:AddButton({
    Title="hông biết tên",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://pastefy.app/jNQW4QVl/raw"))()
  end
})
Tabs.Main3:AddButton({
    Title="Bear Hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Huyscript/refs/heads/main/newscript.txt"))()
  end
}) 
Tabs.Main4:AddButton({
    Title="NaNa Hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NaNaTV36/NaNaTVHubPremium/refs/heads/main/mainpremium.lua"))()
  end
})
Tabs.Main5:AddButton({
    Title="andepzai Hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()
  end
})
Tabs.Main6:AddButton({
    Title="PMT Hub",
    Description="",
    Callback=function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/GreenZ-Hub/refs/heads/main/KaitunDoughKing.lua"))()
  end
})
Tabs.Main7:AddButton({
    Title="Vector Hub",
    Description="",
    Callback=function()
      loadstring(game:HttpGet("https://vectorhub.space"))()
  end
})
Tabs.Main8:AddButton({
    Title="Tày Hub",
    Description="",
    Callback=function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub.lua"))()
  end
})
Tabs.Main9:AddButton({
    Title="HTCL Hub",
    Description="",
    Callback=function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/q8ta0e/source/main/HNTL_Hub_BF.lua"))()
  end
})
Tabs.Main10:AddButton({
    Title="Cam Hub",
    Description="",
    Callback=function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/HieuDepTrai-Z/Dev_Orange/refs/heads/main/OrangeHub.lua"))()
  end
})
Tabs.Main10:AddButton({
    Title="Quantum Hub",
    Description="",
    Callback=function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua
