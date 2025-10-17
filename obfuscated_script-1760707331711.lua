local allowed = { 
[2788229376] = true, -- dh
[9825515356] = true, -- hc
[93838124426523] = true, -- boomhood
[130316950604691] = true, } -- dastrike
if not allowed[game.PlaceId] then
    local Players = game:GetService("Players")
    local plr = Players.LocalPlayer
    if plr then
        pcall(function() plr:Kick("Supported: DaHood, HoodCustoms, DaStrike") end)
    else
        pcall(function() game:Shutdown() end)
    end
end
local blockedGames = {
    [130316950604691] = true, -- dastrike
}
local widgeticon = { [130316950604691] = true, [9825515356] = true, }
if not widgeticon[game.PlaceId] then
    setfpscap(1000)
    local p = game.Players.LocalPlayer
    local b = p.PlayerGui.TopbarStandard.Holders.Left.Widget.IconButton.Menu.IconSpot
    local l = b.Contents.IconLabelContainer.IconLabel
    l.Text = "Sylith - V2 💚"
    for _, c in pairs(getconnections(b.MouseEnter)) do c:Disable() end
    for _, c in pairs(getconnections(b.MouseLeave)) do c:Disable() end
    l:GetPropertyChangedSignal("Text"):Connect(function()
        if l.Text ~= "Sylith - V2 💚" then 
            l.Text = "Sylith - V2 💚"
        end
    end)
end
    if getgenv().fpsboost then
        local Lighting = game:GetService("Lighting")
        local Terrain = workspace:FindFirstChildOfClass("Terrain")

        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Decal") or v:IsA("Texture") then
                v:Destroy()
            end
        end

        for _, effect in pairs(Lighting:GetChildren()) do
            if effect:IsA("PostEffect") then
                effect.Enabled = false
            end
        end

        Lighting.GlobalShadows = false
        Lighting.FogEnd = 1e10
        Lighting.Brightness = 0
        Lighting.ClockTime = 14
        Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        local sky = Lighting:FindFirstChildOfClass("Sky")
        if sky then sky:Destroy() end
        local graySky = Instance.new("Sky")
        graySky.SkyboxBk = ""
        graySky.SkyboxDn = ""
        graySky.SkyboxFt = ""
        graySky.SkyboxLf = ""
        graySky.SkyboxRt = ""
        graySky.SkyboxUp = ""
        graySky.Parent = Lighting
        if Terrain then
            Terrain.WaterWaveSize = 0
            Terrain.WaterWaveSpeed = 0
            Terrain.WaterReflectance = 0
            Terrain.WaterTransparency = 1
        end

        sethiddenproperty(Terrain, "Decoration", false)
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Material = Enum.Material.Plastic
                v.Reflectance = 0
            end
        end
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    end

local SylithV2 = {

    TargetAim = {
        Enabled = false,
        Target = "None",
        AutoFire = false,
        Strafe = false,
        CSync = false,
        VisualizeStrafe = false,
        VisualizeStrafeColor = Color3.new(155, 125, 175),
        StrafeMethod = "Randomize",
        Highlight = false,
        HighlightFillColor = Color3.new(155, 125, 175),
        HighlightOutlineColor = Color3.new(129, 105, 145),
        Tracer = false,
        TracerPosition = "Mouse",
        TracerFillColor = Color3.new(155, 125, 175),
        TracerOutlineColor = Color3.new(0, 0, 0),
        LookAt = false,
        VoidResolver = false,
        AutoStomp = false,
    },

    KillAura = {
        Enabled = false,
        Keybind = false,
        Distance = 200,
        StompAura = false,
    },

    ExtraESP = {
        MaterialEnabled = false,
        Material = "Neon",
        MaterialColor = Color3.new(255, 255, 255),
        HighlightEnabled = false,
        HighlightFillColor = Color3.new(0, 0, 0),
        HighlightOutlineColor = Color3.new(0, 0, 0),
    },

    CheaterProtection = {
        Enabled = false,
    },

    HitboxExpander = {
        Enabled = false,
        Visualize = false,
        Color = Color3.new(155, 125, 175),
        OutlineColor = Color3.new(155, 125, 175),
        FillTransparency = 0.5,
        OutlineTransparency = 0.3,
        Size = 37,
    },

    Target = {
        AutoKill = false,
        AutoKillDesync = false,
        Target = nil,
    },

    Network = {
        Desync = false,
        UseSenderRate = false,
        SenderRate = 60,
        FakePos = false,
        RefreshRate = 20,
    },

    Speed = {
        Enabled = false,
        Keybind = false,
        Speed = 20,
    },

    Fly = {
        Enabled = false,
        Keybind = false, 
        Speed = 20,
    },

    BulletTracers = {
        Enabled = false,
        TextureID = "rbxassetid://12781852245",
        Color = Color3.new(155, 125, 175),
        Size = 0.4,
        Transparency = 0,
        TimeAlive = 3,
    },

    HitEffects = {
        HitSounds = false,
        HitSoundID = "rbxassetid://97643101798871",
        HitSoundVolume = 5,
        HitNotifications = false,
        HitNotificationsTime = 3,
    },

    AutoReload = {
        Enabled = false,
    },

    AntiStomp = {
        Enabled = false,
    },

    RapidFire = {
        Enabled = false,
    },

    AutoLoadout = {
        Enabled = false,
        Gun = "[Rifle]"
    },

    AutoArmor = {
        Enabled = false,
    },

    SelfVisuals = {
        Character = false,
        CharacterMaterial = "ForceField",
        CharacterColor = Color3.new(155, 125, 175),
        Tool = false,
        ToolMaterial = "ForceField",
        ToolColor = Color3.new(155, 125, 175),
        Aura = false,
        AuraColor = Color3.new(155, 125, 175),
        AuraTexture = "Pink Shyt",
        WalkSteps = false,
        WalkStepsRate = 0.5,
        WalkStepsSize = NumberSequence.new(0, 0.25, 0, 0.5, 1.5, 0, 1, 2, 0),
        WalkStepsColor = Color3.new(255, 255, 255),
    },

}

loadstring([[
    function LPH_NO_VIRTUALIZE(f) return f end;
]])();

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
if not getcustomasset then
    getgenv().getcustomasset = function(z) return z end
end

-- // UI Library //
local uis = cloneref(game:GetService("UserInputService"))
local ws = cloneref(game:GetService("Workspace"))
local http_service = cloneref(game:GetService("HttpService"))
local gui_service = cloneref(game:GetService("GuiService"))
local lighting = cloneref(game:GetService("Lighting"))
local run = cloneref(game:GetService("RunService"))
local stats = cloneref(game:GetService("Stats"))
local coregui = cloneref(game:GetService("CoreGui"))
local debris = cloneref(game:GetService("Debris"))
local tween_service = cloneref(game:GetService("TweenService"))
local sound_service = cloneref(game:GetService("SoundService"))
local starter_gui = cloneref(game:GetService("StarterGui"))
local rs = cloneref(game:GetService("ReplicatedStorage"))

local vec2 = Vector2.new
local vec3 = Vector3.new
local dim2 = UDim2.new
local dim = UDim.new 
local rect = Rect.new
local cfr = CFrame.new
local empty_cfr = cfr()
local point_object_space = empty_cfr.PointToObjectSpace
local angle = CFrame.Angles
local dim_offset = UDim2.fromOffset

local color = Color3.new
local rgb = Color3.fromRGB
local hex = Color3.fromHex
local rgbseq = ColorSequence.new
local rgbkey = ColorSequenceKeypoint.new
local numseq = NumberSequence.new
local numkey = NumberSequenceKeypoint.new

local camera = ws.CurrentCamera
local lp = players.LocalPlayer 
local mouse = lp:GetMouse() 
local gui_offset = gui_service:GetGuiInset().Y

local max = math.max 
local floor = math.floor 
local min = math.min 
local abs = math.abs 
local noise = math.noise
local rad = math.rad 
local random = math.random 
local pow = math.pow 
local sin = math.sin 
local pi = math.pi 
local tan = math.tan 
local atan2 = math.atan2 
local cos = math.cos 
local round = math.round;
local clamp = math.clamp; 
local ceil = math.ceil; 
local sqrt = math.sqrt;
local acos = math.acos; 

local insert = table.insert 
local find = table.find 
local remove = table.remove
local concat = table.concat
-- 

-- library init
local library = {
directory = "SylithV2",
folders = {
    "/fonts",
    "/configs",
    "/assets",
    "/images"
},
flags = {},
config_flags = {},
visible_flags = {}, 
guis = {}, 
connections = {},   
notifications = {},
playerlist_data = {
},

current_tab, 
current_element_open, 
dock_button_holder,  
font, 
keybind_list,
binds = {}, 
}

local flags = library.flags
local config_flags = library.config_flags

local themes = {
preset = {
    ["outline"] = rgb(32, 38, 33), -- 
    ["inline"] = rgb(55, 75, 58), --
    ["accent"] = rgb(0, 255, 47), --
    ["high_contrast"] = rgb(41, 55, 48),
    ["low_contrast"] = rgb(35, 47, 39),
    ["text"] = rgb(202, 250, 211),
    ["text_outline"] = rgb(0, 0, 0),
    ["glow"] = rgb(65, 250, 99), 
},

utility = {
    ["outline"] = {
        ["BackgroundColor3"] = {}, 	
        ["Color"] = {}, 
    },
    ["inline"] = {
        ["BackgroundColor3"] = {}, 	
    },
    ["accent"] = {
        ["BackgroundColor3"] = {}, 	
        ["TextColor3"] = {}, 
        ["ImageColor3"] = {}, 
        ["ScrollBarImageColor3"] = {} 
    },
    ["contrast"] = {
        ["Color"] = {}, 	
    },
    ["text"] = {
        ["TextColor3"] = {}, 	
    },
    ["text_outline"] = {
        ["Color"] = {}, 	
    },
    ["glow"] = {
        ["ImageColor3"] = {}, 	
    }, 
}, 

find = {
    ["Frame"] = "BackgroundColor3", 
    ["TextLabel"] = "TextColor3", 
    ["UIGradient"] = "Color",
    ["UIStroke"] = "Color",
    ["ImageLabel"] = "ImageColor3",
    ["TextButton"] = "BackgroundColor3", 
    ["ScrollingFrame"] = "ScrollBarImageColor3"
}
}

local keys = {
[Enum.KeyCode.LeftShift] = "LS",
[Enum.KeyCode.RightShift] = "RS",
[Enum.KeyCode.LeftControl] = "LC",
[Enum.KeyCode.RightControl] = "RC",
[Enum.KeyCode.Insert] = "INS",
[Enum.KeyCode.Backspace] = "BS",
[Enum.KeyCode.Return] = "Ent",
[Enum.KeyCode.LeftAlt] = "LA",
[Enum.KeyCode.RightAlt] = "RA",
[Enum.KeyCode.CapsLock] = "CAPS",
[Enum.KeyCode.One] = "1",
[Enum.KeyCode.Two] = "2",
[Enum.KeyCode.Three] = "3",
[Enum.KeyCode.Four] = "4",
[Enum.KeyCode.Five] = "5",
[Enum.KeyCode.Six] = "6",
[Enum.KeyCode.Seven] = "7",
[Enum.KeyCode.Eight] = "8",
[Enum.KeyCode.Nine] = "9",
[Enum.KeyCode.Zero] = "0",
[Enum.KeyCode.KeypadOne] = "Num1",
[Enum.KeyCode.KeypadTwo] = "Num2",
[Enum.KeyCode.KeypadThree] = "Num3",
[Enum.KeyCode.KeypadFour] = "Num4",
[Enum.KeyCode.KeypadFive] = "Num5",
[Enum.KeyCode.KeypadSix] = "Num6",
[Enum.KeyCode.KeypadSeven] = "Num7",
[Enum.KeyCode.KeypadEight] = "Num8",
[Enum.KeyCode.KeypadNine] = "Num9",
[Enum.KeyCode.KeypadZero] = "Num0",
[Enum.KeyCode.Minus] = "-",
[Enum.KeyCode.Equals] = "=",
[Enum.KeyCode.Tilde] = "~",
[Enum.KeyCode.LeftBracket] = "[",
[Enum.KeyCode.RightBracket] = "]",
[Enum.KeyCode.RightParenthesis] = ")",
[Enum.KeyCode.LeftParenthesis] = "(",
[Enum.KeyCode.Semicolon] = ",",
[Enum.KeyCode.Quote] = "'",
[Enum.KeyCode.BackSlash] = "\\",
[Enum.KeyCode.Comma] = ",",
[Enum.KeyCode.Period] = ".",
[Enum.KeyCode.Slash] = "/",
[Enum.KeyCode.Asterisk] = "*",
[Enum.KeyCode.Plus] = "+",
[Enum.KeyCode.Period] = ".",
[Enum.KeyCode.Backquote] = "`",
[Enum.UserInputType.MouseButton1] = "MB1",
[Enum.UserInputType.MouseButton2] = "MB2",
[Enum.UserInputType.MouseButton3] = "MB3",
[Enum.KeyCode.Escape] = "ESC",
[Enum.KeyCode.Space] = "SPC",
}

library.__index = library

for _, path in next, library.folders do 
    if not isfolder(library.directory .. path) then
        makefolder(library.directory .. path)
    end
end

if not isfile(library.directory .. "/fonts/main.ttf") then
    writefile(library.directory .. "/fonts/main.ttf", game:HttpGet("https://raw.githubusercontent.com/sametexe001/luas/refs/heads/main/fonts/windows-xp-tahoma.ttf"))
end

pcall(function()
    if not isfile(library.directory .. "/fonts/main_encoded.ttf") then
        local tahoma = {
            name = "SmallestPixel7",
            faces = {
                {
                    name = "Regular",
                    weight = 400,
                    style = "normal",
                    assetId = getcustomasset(library.directory .. "/fonts/main.ttf")
                }
            }
        }

        writefile(library.directory .. "/fonts/main_encoded.ttf", http_service:JSONEncode(tahoma))
    end

    library.font = Font.new(getcustomasset(library.directory .. "/fonts/main_encoded.ttf"), Enum.FontWeight.Regular)
end)

local config_holder 
function library:make_resizable(frame) 
    local Frame = Instance.new("TextButton")
    Frame.Position = dim2(1, -10, 1, -10)
    Frame.BorderColor3 = rgb(0, 0, 0)
    Frame.Size = dim2(0, 10, 0, 10)
    Frame.BorderSizePixel = 0
    Frame.BackgroundColor3 = rgb(255, 255, 255)
    Frame.Parent = frame
    Frame.BackgroundTransparency = 1 
    Frame.Text = ""

    local resizing = false 
    local start_size 
    local start 
    local og_size = frame.Size  

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            resizing = true
            start = input.Position
            start_size = frame.Size
        end
    end)

    Frame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            resizing = false
        end
    end)

    library:connection(uis.InputChanged, function(input, game_event) 
        if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
            local viewport_x = camera.ViewportSize.X
            local viewport_y = camera.ViewportSize.Y

            local current_size = dim2(
                start_size.X.Scale,
                math.clamp(
                    start_size.X.Offset + (input.Position.X - start.X),
                    og_size.X.Offset,
                    viewport_x
                ),
                start_size.Y.Scale,
                math.clamp(
                    start_size.Y.Offset + (input.Position.Y - start.Y),
                    og_size.Y.Offset,
                    viewport_y
                )
            )
            frame.Size = current_size
        end
    end)
end

function library:draggify(frame)
    local dragging = false 
    local start_size = frame.Position
    local start 

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            start = input.Position
            start_size = frame.Position

            if library.current_element_open then 
                library.current_element_open.set_visible(false)
                library.current_element_open.open = false 
                library.current_element_open = nil 
            end
        end
    end)

    frame.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    library:connection(uis.InputChanged, function(input, game_event) 
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local viewport_x = camera.ViewportSize.X
            local viewport_y = camera.ViewportSize.Y

            local current_position = dim2(
                0,
                clamp(
                    start_size.X.Offset + (input.Position.X - start.X),
                    0,
                    viewport_x - frame.Size.X.Offset
                ),
                0,
                clamp(
                    start_size.Y.Offset + (input.Position.Y - start.Y),
                    0,
                    viewport_y - frame.Size.Y.Offset
                )
            )

            frame.Position = current_position
        end
    end)
end

function library:new_drawing(class, properties)
    local ins = Drawing.new(class)

    for _, v in next, properties do 
        ins[_] = v
    end 

    insert(nebula.drawings, ins)

    return ins 
end 

function library:new_item(class, properties) 
    local ins = Instance.new(class)

    for _, v in next, properties do 
        ins[_] = v
    end 

    insert(nebula.instances, ins)

    return ins 
end 

function library:convert_enum(enum)
    local enum_parts = {}

    for part in string.gmatch(enum, "[%w_]+") do
        insert(enum_parts, part)
    end

    local enum_table = Enum
    for i = 2, #enum_parts do
        local enum_item = enum_table[enum_parts[i]]

        enum_table = enum_item
    end

    return enum_table
end

function library:tween(obj, properties) 
    local tween = tween_service:Create(obj, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), properties):Play()
        
    return tween
end 

function library:config_list_update() 
    if not config_holder then return end 

    local list = {}

    for idx, file in next, listfiles(library.directory .. "/configs") do
        local name = file:gsub(library.directory .. "/configs\\", ""):gsub(".cfg", ""):gsub(library.directory .. "\\configs\\", "")
        list[#list + 1] = name
    end
    
    config_holder.refresh_options(list)
end 

function library:get_config()
    local Config = {}

    for _, v in flags do
        if type(v) == "table" and v.key then
            Config[_] = {active = v.active, mode = v.mode, key = tostring(v.key)}
        elseif type(v) == "table" and v["Transparency"] and v["Color"] then
            Config[_] = {Transparency = v["Transparency"], Color = v["Color"]:ToHex()}
        else
            Config[_] = v
        end
    end 
    
    return http_service:JSONEncode(Config)
end

function library:load_config(config_json) 
    local config = http_service:JSONDecode(config_json)

    for _, v in next, config do 
        local function_set = library.config_flags[_]
        
        if function_set then 
            if type(v) == "table" and v["Transparency"] and v["Color"] then
                function_set(hex(v["Color"]), v["Transparency"])
            elseif type(v) == "table" and v["active"] then 
                function_set(v)
            else 
                function_set(v)
            end
        end 
    end 
end 

function library:round(number, float) 
    local multiplier = 1 / (float or 1)

    return floor(number * multiplier + 0.5) / multiplier
end 

function library:apply_theme(instance, theme, property) 
    insert(themes.utility[theme][property], instance)
end

function library:update_theme(theme, color)
    for _, property in next, themes.utility[theme] do 

        for m, object in next, property do 
            if object[_] == themes.preset[theme] or object.ClassName == "UIGradient" then
                object[_] = color 
            end
        end 
    end 

    themes.preset[theme] = color 
end 

function library:connection(signal, callback)
    local connection = signal:Connect(callback)
    
    insert(library.connections, connection)

    return connection 
end

function library:apply_stroke(parent) 
    local stroke = library:create("UIStroke", {
        Parent = parent,
        Color = themes.preset.text_outline, 
        LineJoinMode = Enum.LineJoinMode.Miter
    }) 
    
    library:apply_theme(stroke, "text_outline", "Color")
end

function library:create(instance, options)
    local ins = Instance.new(instance) 
    
    for prop, value in next, options do 
        ins[prop] = value
    end
    
    if instance == "TextLabel" or instance == "TextButton" or instance == "TextBox" then 	
        library:apply_theme(ins, "text", "TextColor3")
        library:apply_stroke(ins)
    elseif instance == "ScreenGui" then 
        insert(library.guis, ins)
    end
    
    return ins 
end

-- 

local function parentUI(gui)
    local success, failure = pcall(function()
        if get_hidden_gui or gethui then
            local hiddenUI = get_hidden_gui or gethui
            gui.Parent = hiddenUI()
        elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
            syn.protect_gui(gui)
            gui.Parent = game:GetService("CoreGui")
        elseif game:GetService("CoreGui") then
            gui.Parent = game:GetService("CoreGui")
        end
    end)

    if not success and failure then
        gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    end
end

-- elements 
local tooltip_sgui = library:create("ScreenGui", {
    Enabled = true,
    Parent = nil,
    Name = "",
    DisplayOrder = 500, 
})
parentUI(tooltip_sgui)

function library:tool_tip(options) 
    local cfg = {
        name = options.name or "hi", 
        path = options.path or nil, 
    }
    
    if cfg.path then 
        local watermark_outline = library:create("Frame", {
            Parent = tooltip_sgui,
            Name = "",
            Size = dim2(0, 0, 0, 22),
            Position = dim2(0, 500, 0, 300),
            BorderColor3 = rgb(0, 0, 0),
            BorderSizePixel = 0,
            Visible = false,
            AutomaticSize = Enum.AutomaticSize.X,
            BackgroundColor3 = themes.preset.outline
        })
        
        local watermark_inline = library:create("Frame", {
            Parent = watermark_outline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })
        
        local watermark_background = library:create("Frame", {
            Parent = watermark_inline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = watermark_background,
            Name = "",
            Color = rgbseq{rgbkey(0, rgb(41, 41, 55)), rgbkey(1, rgb(35, 35, 47))}
        }); library:apply_theme(UIGradient, "contrast", "Color")
        
        local text = library:create("TextLabel", {
            Parent = watermark_background,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = " " .. cfg.name .. " ",
            Size = dim2(0, 0, 1, 0),
            BackgroundTransparency = 1,
            Position = dim2(0, 0, 0, -1),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.X,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIStroke = library:create("UIStroke", {
            Parent = text,
            Name = "",
            LineJoinMode = Enum.LineJoinMode.Miter
        })

        cfg.path.MouseEnter:Connect(function()
            watermark_outline.Visible = true 
        end)   

        cfg.path.MouseLeave:Connect(function()
            watermark_outline.Visible = false 
        end)

        library:connection(uis.InputChanged, function(input)
            if watermark_outline.Visible and input.UserInputType == Enum.UserInputType.MouseMovement then
                watermark_outline.Position = dim_offset(input.Position.X + 10, input.Position.Y + 10)
            end
        end)
    end 
    
    return cfg
end 

function library:panel(options) 
    local cfg = {
        name = options.text or options.name or "Window", 
        size = options.size or dim2(0, 530, 0, 590),
        position = options.position or dim2(0, 500, 0, 500),
        anchor_point = options.anchor_point or vec2(0, 0)
    }

    local sgui = library:create("ScreenGui", {
        Enabled = true,
        Parent = nil,
        Name = "" 
    })
    parentUI(sgui)

    local main_holder = library:create("Frame", {
        Parent = sgui,
        Name = "",
        AnchorPoint = vec2(cfg.anchor_point.X, cfg.anchor_point.Y),
        Position = cfg.position,
        Active = true, 
        BorderColor3 = rgb(0, 0, 0),
        Size = cfg.size,
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.outline
    })

    library:draggify(main_holder)
    
    --library:apply_theme(main_holder, "outline", "BackgroundColor3") 
    
    local window_inline = library:create("Frame", {
        Parent = main_holder,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.accent
    })
    
    library:apply_theme(window_inline, "accent", "BackgroundColor3") 
    
    local window_holder = library:create("Frame", {
        Parent = window_inline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = themes.preset.outline,
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })
                
    local UIGradient = library:create("UIGradient", {
        Parent = window_holder,
        Name = "",
        Rotation = 90,
        Color = rgbseq{
        rgbkey(0, rgb(41, 41, 55)),
        rgbkey(1, rgb(35, 35, 47))
    }
    })

    library:apply_theme(UIGradient, "contrast", "Color") 
    
    local text = library:create("TextLabel", {
        Parent = window_holder,
        Name = "",
        FontFace = library.font,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = cfg.name,
        BackgroundTransparency = 1,
        Position = dim2(0, 2, 0, 4),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.XY,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local UIStroke = library:create("UIStroke", {
        Parent = text,
        Name = "",
        LineJoinMode = Enum.LineJoinMode.Miter
    })
    
    local UIPadding = library:create("UIPadding", {
        Parent = window_holder,
        Name = "",
        PaddingBottom = dim(0, 4),
        PaddingRight = dim(0, 4),
        PaddingLeft = dim(0, 4)
    })
    
    local outline = library:create("Frame", {
        Parent = window_holder,
        Name = "",
        Position = dim2(0, 0, 0, 18),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 0, 1, -18),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.inline
    })
    
    library:apply_theme(outline, "inline", "BackgroundColor3") 
    
    local inline = library:create("Frame", {
        Parent = outline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.outline
    })
    
    library:apply_theme(inline, "outline", "BackgroundColor3") 
    
    local holder = library:create("Frame", {
        Parent = inline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local UIGradient = library:create("UIGradient", {
        Parent = holder,
        Name = "",
        Rotation = 90,
        Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
    })
    
    library:apply_theme(UIGradient, "contrast", "Color") 
    
    local UIPadding = library:create("UIPadding", {
        Parent = holder,
        Name = "",
        PaddingTop = dim(0, 5),
        PaddingBottom = dim(0, 5),
        PaddingRight = dim(0, 5),
        PaddingLeft = dim(0, 5)
    })
    
    local glow = library:create("ImageLabel", {
        Parent = main_holder,
        Name = "",
        ImageColor3 = themes.preset.glow,
        ScaleType = Enum.ScaleType.Slice,
        BorderColor3 = rgb(0, 0, 0),
        BackgroundColor3 = rgb(255, 255, 255),
        Visible = true,
        Image = "http://www.roblox.com/asset/?id=18245826428",
        BackgroundTransparency = 1,
        ImageTransparency = 0.8, 
        Position = dim2(0, -20, 0, -20),
        Size = dim2(1, 40, 1, 40),
        ZIndex = 2,
        BorderSizePixel = 0,
        SliceCenter = rect(vec2(21, 21), vec2(79, 79))
    })library:apply_theme(glow, "glow", "ImageColor3") 
    
    return holder, sgui      
end 

local sgui = library:create("ScreenGui", {
    Enabled = true,
    Parent = nil,
    Name = "",
    DisplayOrder = 2, 
})
parentUI(sgui)

function library:fold_elements(origin, elements)
    for _, x in next, elements do 
        local flag = library.visible_flags[x]

        if flag then    
            flag(flags[origin])
        end     
    end 
end 

function library:window(properties)
    local window = {}
    -- local button_holder  
    
    --[[local function create_dock_button(options) 
        local cfg = {
            image = options.image or "rbxassetid://79856374238119",
            open = options.open or true 
            callback = options.callback or function() end
        }

        local button = library:create("TextButton", {
            Parent = button_holder,
            Name = "",
            FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            TextColor3 = rgb(0, 0, 0),
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            Size = dim2(0, 25, 0, 25),
            BorderSizePixel = 0,
            TextSize = 14,
            BackgroundColor3 = themes.preset.inline
        })
        
        local button_inline = library:create("Frame", {
            Parent = button,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(button_inline, "outline", "BackgroundColor3") 
        
        local button_inline = library:create("Frame", {
            Parent = button_inline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })library:apply_theme(button_inline, "inline", "BackgroundColor3")
        
        local UIGradient = library:create("UIGradient", {
            Parent = button_inline,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
            rgbkey(0, rgb(35, 35, 47)),
            rgbkey(1, rgb(41, 41, 55))
        }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        local ImageLabel = library:create("ImageLabel", {
            Parent = button_inline,
            Name = "",
            ImageColor3 = themes.preset.accent,
            Image = "rbxassetid://79856374238119",
            BackgroundTransparency = 1,
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })library:apply_theme(ImageLabel, "accent", "ImageColor3") 
        
        local UIPadding = library:create("UIPadding", {
            Parent = button_inline,
            Name = "",
            PaddingTop = dim(0, 4),
            PaddingBottom = dim(0, 4),
            PaddingRight = dim(0, 4),
            PaddingLeft = dim(0, 4)
        })

        button.MouseButton1Click:Connect(function()
            cfg.open = not cfg.open 

            cfg.callback(cfg.open) 
        end)
    end ]]

    -- main window
        local holder, path = library:panel({
            name = properties and properties.name or "nebula.tech", 
            size = dim2(0, 604, 0, 628),
            position = dim2(0, (camera.ViewportSize.X / 2) - 604/2, 0, (camera.ViewportSize.Y / 2) - 628/2),
        }) 

        -- create_dock_button({
        --     image = "rbxassetid://100959383267514",
        --     callback = function(open)
        --         path.Enabled = open 
        --     end 
        -- })

        window["tab_holder"] = library:create("Frame", {
            Parent = holder,
            Name = " ",
            BackgroundTransparency = 1,
            Size = dim2(1, 0, 0, 22),
            BorderColor3 = rgb(0, 0, 0),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        library:create("UIListLayout", {
            Parent = window["tab_holder"],
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            Padding = dim(0, 2),
            SortOrder = Enum.SortOrder.LayoutOrder
        })

        local section_holder = library:create("Frame", {
            Parent = holder,
            Name = " ",
            BackgroundTransparency = 1,
            Position = dim2(0, -1, 0, 19),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, -22),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        window["section_holder"] = section_holder

        local outline = library:create("Frame", {
            Parent = section_holder,
            Name = "\0",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })
        
        library:apply_theme(outline, "outline", "BackgroundColor3") 

        local inline = library:create("Frame", {
            Parent = outline,
            Name = "\0",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })
        
        library:apply_theme(inline, "inline", "BackgroundColor3") 

        local background = library:create("Frame", {
            Parent = inline,
            Name = "\0",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        library.section_holder = background

        library:create("UIPadding", {
            Parent = background,
            PaddingTop = dim(0, 4),
            PaddingBottom = dim(0, 4),
            PaddingRight = dim(0, 4),
            PaddingLeft = dim(0, 4)
        })

        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
        })
        
        library:apply_theme(UIGradient, "contrast", "Color") 

        library:make_resizable(path:FindFirstChildOfClass("Frame")) 
    -- 

    -- keybind list       
        local outline = library:create("Frame", {
            Parent = sgui,
            Name = "",
            Visible = false, 
            Active = true,
            Draggable = true, 
            Position = dim2(0, 50, 0, 200),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 182, 0, 25),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })
        library:apply_theme(outline, "outline", "BackgroundColor3") 
        library:draggify(outline)
        library.keybind_list_frame = outline 
        
        local inline = library:create("Frame", {
            Parent = outline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })
        library:apply_theme(inline, "inline", "BackgroundColor3")

        local background = library:create("Frame", {
            Parent = inline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, themes.preset.high_contrast),
                rgbkey(1, themes.preset.low_contrast)
            }
        })
        library:apply_theme(UIGradient, "contrast", "Color") 
        
        local bg = library:create("Frame", {
            Parent = background,
            Name = "a",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 0, 2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        }); library:apply_theme(bg, "accent", "BackgroundColor3")
        
        
        library:create("UIGradient", {
            Parent = bg,
            Name = "",
            Enabled = true, 
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })
        
        local text = library:create("TextLabel", {
            Parent = background,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "Keybinds",
            BackgroundTransparency = 1,
            TextTruncate = Enum.TextTruncate.AtEnd,
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            TextSize = 12,
            BackgroundColor3 = themes.preset.text
        }, "text")
        
        local UIStroke = library:create("UIStroke", {
            Parent = text,
            Name = "",
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        local text_holder = library:create("Frame", {
            Parent = background,
            Name = "",
            Size = dim2(0, 182, 0, 22),
            Position = dim2(0, -2, 1, 1),
            BorderColor3 = rgb(0, 0, 0),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = themes.preset.outline
        })
        library:apply_theme(text_holder, "outline", "BackgroundColor3")

        local inline = library:create("Frame", {
            Parent = text_holder,
            Name = "",
            Size = dim2(1, -2, 1, -2),
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            BorderSizePixel = 0,
            --AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = themes.preset.inline
        })
        library:apply_theme(inline, "inline", "BackgroundColor3")
        
        local background = library:create("Frame", {
            Parent = inline,
            Name = "",
            Size = dim2(1, -2, 1, -2),
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            BorderSizePixel = 0,
            --AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        library.keybind_list = background
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, themes.preset.high_contrast),
                rgbkey(1, themes.preset.low_contrast)
            }
        })
        library:apply_theme(UIGradient, "contrast", "Color") 
        
        library:create("UIListLayout", {
            Parent = background,
            Name = "",
            Padding = dim(0, -1),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
        
        library:create("UIPadding", {
            Parent = background,
            Name = "",
            PaddingBottom = dim(0, 4),
            PaddingLeft = dim(0, 5)
        })
        
    
    -- 

    -- -- dock innit
    --     local dock_outline = library:create("Frame", {
    --         Parent = sgui,
    --         Name = "",
    --         Visible = true,
    --         BorderColor3 = rgb(0, 0, 0),
    --         AnchorPoint = vec2(0.5, 0),
    --         Position = dim2(0.5, 0, 0, 20),
    --         Size = dim2(0, 127, 0, 39),
    --         BorderSizePixel = 0,
    --         BackgroundColor3 = themes.preset.outline
    --     })library:apply_theme(dock_outline, "outline", "BackgroundColor3") 
        
    --     local dock_inline = library:create("Frame", {
    --         Parent = dock_outline,
    --         Name = "",
    --         Position = dim2(0, 1, 0, 1),
    --         BorderColor3 = rgb(0, 0, 0),
    --         Size = dim2(1, -2, 1, -2),
    --         BorderSizePixel = 0,
    --         BackgroundColor3 = themes.preset.inline
    --     })library:apply_theme(dock_inline, "inline", "BackgroundColor3") 
        
    --     local dock_holder = library:create("Frame", {
    --         Parent = dock_inline,
    --         Name = "",
    --         Size = dim2(1, -2, 1, -2),
    --         Position = dim2(0, 1, 0, 1),
    --         BorderColor3 = themes.preset.outline,
    --         BorderSizePixel = 0,
    --         BackgroundColor3 = rgb(255, 255, 255)
    --     })library:apply_theme(dock_holder, "outline", "BackgroundColor3") 
        
    --     local accent = library:create("Frame", {
    --         Parent = dock_holder,
    --         Name = "",
    --         Size = dim2(1, 0, 0, 2),
    --         BorderColor3 = rgb(0, 0, 0),
    --         BorderSizePixel = 0,
    --         BackgroundColor3 = themes.preset.accent
    --     })library:apply_theme(accent, "accent", "BackgroundColor3") 
        
    --     local UIGradient = library:create("UIGradient", {
    --         Parent = accent,
    --         Name = "",
    --         Rotation = 90,
    --         Color = rgbseq{
    --         rgbkey(0, rgb(255, 255, 255)),
    --         rgbkey(1, rgb(167, 167, 167))
    --     }
    --     })
        
    --     button_holder = library:create("Frame", {
    --         Parent = dock_holder,
    --         Name = "",
    --         BackgroundTransparency = 1,
    --         Size = dim2(1, 0, 1, 0),
    --         BorderColor3 = rgb(0, 0, 0),
    --         BorderSizePixel = 0,
    --         BackgroundColor3 = rgb(255, 255, 255)
    --     })
        
    --     local UIListLayout = library:create("UIListLayout", {
    --         Parent = button_holder,
    --         Name = "",
    --         Padding = dim(0, 5),
    --         FillDirection = Enum.FillDirection.Horizontal,
    --         SortOrder = Enum.SortOrder.LayoutOrder
    --     })
        
    --     local UIPadding = library:create("UIPadding", {
    --         Parent = button_holder,
    --         Name = "",
    --         PaddingTop = dim(0, 6),
    --         PaddingBottom = dim(0, 4),
    --         PaddingRight = dim(0, 4),
    --         PaddingLeft = dim(0, 4)
    --     })
                
    --     local UIGradient = library:create("UIGradient", {
    --         Parent = dock_holder,
    --         Name = "",
    --         Rotation = 90,
    --         Color = rgbseq{
    --         rgbkey(0, rgb(41, 41, 55)),
    --         rgbkey(1, rgb(35, 35, 47))
    --     }
    --     })library:apply_theme(UIGradient, "contrast", "Color") 
    -- -- 

    -- -- cfg holder
        
    --     window["configs"], config_path = library:panel({
    --         name = "Configurations", 
    --         anchor_point = vec2(-1, 0),
    --         size = dim2(0, 322, 0, 391),
    --         position = dim2(0, holder.AbsolutePosition.X + holder.AbsoluteSize.X + 10, 0, holder.AbsolutePosition.Y - 22)
    --     }) 

    --     create_dock_button({
    --         image = "rbxassetid://79856374238119",
    --         callback = function(open)
    --             config_path.Enabled = open 
    --         end 
    --     })

    --     local UIGradient = library:create("UIGradient", {
    --         Parent = holder,
    --         Name = "",
    --         Rotation = 90,
    --         Color = rgbseq{
    --             rgbkey(0, rgb(41, 41, 55)),
    --             rgbkey(1, rgb(35, 35, 47))
    --         }
    --     })library:apply_theme(UIGradient, "contrast", "Color") 
        
    --     local UIPadding = library:create("UIPadding", {
    --         Parent = holder,
    --         Name = "",
    --         PaddingTop = dim(0, 5),
    --         PaddingBottom = dim(0, 5),
    --         PaddingRight = dim(0, 5),
    --         PaddingLeft = dim(0, 5)
    --     })
        
    --     local glow = library:create("ImageLabel", {
    --         Parent = config_outline,
    --         Name = "",
    --         ImageColor3 = themes.preset.accent,
    --         ScaleType = Enum.ScaleType.Slice,
    --         BorderColor3 = rgb(0, 0, 0),
    --         BackgroundColor3 = rgb(255, 255, 255),
    --         Visible = true,
    --         Image = "http://www.roblox.com/asset/?id=18245826428",
    --         BackgroundTransparency = 1,
    --         ImageTransparency = 0.8, 
    --         Position = dim2(0, -20, 0, -20),
    --         Size = dim2(1, 40, 1, 40),
    --         ZIndex = 2,
    --         BorderSizePixel = 0,
    --         SliceCenter = rect(vec2(21, 21), vec2(79, 79))
    --     })library:apply_theme(glow, "glow", "ImageColor3") 
        
    -- -- 

    -- -- playerlist 
    --     window["playerlist"], playerlist_gui = library:panel({
    --         name = "Playerlist", 
    --         anchor_point = vec2(-1, 0),
    --         size = dim2(0, 385, 0, 399),
    --         position = dim2(0, holder.AbsolutePosition.X - 395, 0, holder.AbsolutePosition.Y - 22)
    --     })    
        
    --     create_dock_button({
    --         image = "rbxassetid://115194686863276",
    --         callback = function(open)
    --             playerlist_gui.Enabled = open 
    --         end 
    --     })
    -- -- 
    
    -- -- theming 
    --     window["themes"], themes_gui = library:panel({
    --         name = "Style", 
    --         anchor_point = vec2(-1, 0),
    --         size = dim2(0, 322, 0, 391),
    --         position = dim2(0, window["configs"].AbsolutePosition.X + window["configs"].AbsoluteSize.X + 10, 0, window["configs"].AbsolutePosition.Y - 22)
    --     })   

    --     create_dock_button({
    --         image = "rbxassetid://115194686863276",
    --         callback = function(open)
    --             themes_gui.Enabled = open 
    --         end 
    --     })
    -- -- 
    
    function window.set_menu_visibility(bool) 
        path.Enabled = bool 
        tooltip_sgui.Enabled = bool

        if library.current_element_open then 
            library.current_element_open.set_visible(false)
            library.current_element_open.open = false 
            library.current_element_open = nil 
        end

        for _, v in tooltip_sgui:GetChildren() do 
            v.Visible = false
        end 
    end 

    return setmetatable(window, library)
end

function library:watermark(options) 
    local cfg = {
        default = options.text or options.default or os.date('drain.lol | %b %d %Y | %H:%M')
    }

    local watermark_outline = library:create("Frame", {
        Parent = sgui,
        Name = "",
        BorderColor3 = rgb(0, 0, 0),
        AnchorPoint = vec2(1, 1),
        Position = dim2(1, -20, 0, 20),
        Size = dim2(0, 0, 0, 24),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.X,
        BackgroundColor3 = themes.preset.outline
    })library:apply_theme(watermark_outline, "outline", "BackgroundColor3") 
    watermark_outline.Position = dim_offset(watermark_outline.AbsolutePosition.X, watermark_outline.AbsolutePosition.Y)
    library:draggify(watermark_outline)

    local watermark_inline = library:create("Frame", {
        Parent = watermark_outline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.inline
    })library:apply_theme(watermark_inline, "inline", "BackgroundColor3") 
    
    local watermark_background = library:create("Frame", {
        Parent = watermark_inline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local UIGradient = library:create("UIGradient", {
        Parent = watermark_background,
        Name = "",
        Rotation = 90,
        Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
    })library:apply_theme(UIGradient, "contrast", "Color") 
    
    local text = library:create("TextLabel", {
        Parent = watermark_background,
        Name = "",
        FontFace = library.font,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = "  drain.lol | Beta | Aug 29 2024 | 07:29:00  ",
        Size = dim2(0, 0, 1, 0),
        BackgroundTransparency = 1,
        Position = dim2(0, -1, 0, 1),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.X,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    library:create("UIStroke", {
        Parent = text,
        Name = "",
        LineJoinMode = Enum.LineJoinMode.Miter
    })
    
    local accent = library:create("Frame", {
        Parent = watermark_outline,
        Name = "",
        Position = dim2(0, 2, 0, 2),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -4, 0, 2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.accent
    })library:apply_theme(accent, "accent", "BackgroundColor3") 
    
    local UIGradient = library:create("UIGradient", {
        Parent = accent,
        Name = "",
        Rotation = 90,
        Color = rgbseq{
            rgbkey(0, rgb(255, 255, 255)),
            rgbkey(1, rgb(167, 167, 167))
        }
    })
    
    function cfg.change_text(input)
        text.Text = "  ".. input .."  "
    end 

    function cfg.set_visible(bool) 
        watermark_outline.Visible = bool
    end 


    cfg.change_text(cfg.default)

    return cfg 

end 

local notif_holder = library:create("ScreenGui", {
    Parent = nil,
    Name = "",
    IgnoreGuiInset = true, 
    DisplayOrder = -1, 
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling
})
parentUI(notif_holder)

function library:refresh_notifications()  	
    for _, notif in next, library.notifications do 
        tween_service:Create(notif, TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {Position = dim2(0, 20, 0, 72 + (_ * 28))}):Play()
    end     
end

function library:notification(properties)
    local cfg = {
        time = properties.time or 5,
        text = properties.text or properties.name or "Notification",
        flashing = false, 
    }

    -- Instances
        local watermark_outline = library:create("Frame", {
            Parent = notif_holder,
            Name = "",
            Size = UDim2.new(0, 0, 0, 24),
            BorderColor3 = rgb(0, 0, 0),
            BorderSizePixel = 0,
            Position = UDim2.new(0, 20, 0, 72 + (#library.notifications * 28)),
            AutomaticSize = Enum.AutomaticSize.X,
            BackgroundColor3 = themes.preset.outline,
            AnchorPoint = Vector2.new(1, 0)
        })
    
        local watermark_inline = library:create("Frame", {
            Parent = watermark_outline,
            Name = "",
            Position = UDim2.new(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = UDim2.new(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })

        local watermark_background = library:create("Frame", {
            Parent = watermark_inline,
            Name = "",
            Position = UDim2.new(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = UDim2.new(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        local UIGradient = library:create("UIGradient", {
            Parent = watermark_background,
            Name = "",
            Color = ColorSequence.new{
                rgbkey(0, themes.preset.high_contrast),
                rgbkey(1, themes.preset.low_contrast)
            }
        })

        local text = library:create("TextLabel", {
            Parent = watermark_background,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "  " .. cfg.text .. "  ",
            Size = UDim2.new(0, 0, 1, 0),
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 0, 0, -1),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.X,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        local accent = library:create("Frame", {
            Parent = watermark_outline,
            Name = "",
            Position = UDim2.new(0, 2, 0, 2),
            BorderColor3 = rgb(0, 0, 0),
            Size = UDim2.new(0, 1, 1, -4),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })

        library:apply_theme(accent, "accent", "BackgroundColor3")

        local UIGradient = library:create("UIGradient", {
            Parent = accent,
            Name = "",
            Rotation = 90,
            Color = ColorSequence.new{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })
        
        local accent_bottom = library:create("Frame", {
            Parent = watermark_outline,
            Name = "",
            Position = UDim2.new(0, 2, 1, -3),
            BorderColor3 = rgb(0, 0, 0),
            Size = UDim2.new(0, -4, 0, 1),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = accent,
            Name = "",
            Rotation = 90,
            Color = ColorSequence.new{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })

        local index = #library.notifications + 1
        library.notifications[index] =watermark_outline

        library:refresh_notifications()

        tween_service:Create(watermark_outline, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0, 0)}):Play()
        
        tween_service:Create(accent_bottom, TweenInfo.new(cfg.time, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Size = UDim2.new(1, -4, 0, 1)}):Play()
    --
    
    task.spawn(function()
        task.wait(cfg.time)

        library.notifications[index] = nil

        tween_service:Create(watermark_outline, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(1, 0), BackgroundTransparency = 1}):Play()
        
        for _, v in next, watermark_outline:GetDescendants() do 
            if v:IsA("TextLabel") then 
                tween_service:Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {TextTransparency = 1}):Play()
            elseif v:IsA("Frame") then 
                tween_service:Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()
            elseif v:IsA("ImageLabel") then
                tween_service:Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
            elseif v:IsA("UIStroke") then 
                tween_service:Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Transparency = 1}):Play()
            end 
        end 

        task.wait(1)

        watermark_outline:Destroy()
    end)    
end 

function library:tab(options)	
    local cfg = {
        name = options.name or "tab", 
        enabled = false, 
    }
    
    -- button instances
        local tab_holder = library:create("TextButton", {
            Parent = self.tab_holder,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            Name = "\0",
            BorderSizePixel = 0,
            Size = dim2(0, 0, 1, -2),
            ZIndex = 5,
            TextSize = 12,
            BackgroundColor3 = themes.preset.outline,
            AutoButtonColor = false
        })library:apply_theme(tab_holder, "outline", "BackgroundColor3") 

        local inline = library:create("Frame", {
            Parent = tab_holder,
            Size = dim2(1, -2, 1, 0),
            Name = "\0",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 

        local background = library:create("Frame", {
            Parent = inline,
            Size = dim2(1, -2, 1, -1),
            Name = "\0",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            ZIndex = 5,
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Rotation = 90,
            Color = rgbseq{rgbkey(0, rgb(41, 41, 55)), rgbkey(1, rgb(35, 35, 47))}
        })library:apply_theme(UIGradient, "contrast", "Color") 

        local text = library:create("TextLabel", {
            Parent = background,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = cfg.name,
            Name = "\0",
            BackgroundTransparency = 1,
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.X,
            TextSize = 12,
            ZIndex = 5,
            BackgroundColor3 = rgb(255, 255, 255)
        }, "text")
        library:apply_theme(text, "accent", "TextColor3")
    -- 

    -- section instances 
        local section_holder = library:create("Frame", {
            Parent = library.section_holder,
            BackgroundTransparency = 1,
            Name = "\0",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            Visible = false,
            BackgroundColor3 = rgb(255, 255, 255)
        })
    
        cfg["holder"] = section_holder

        library:create("UIListLayout", {
            Parent = section_holder,
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            Padding = dim(0, 4),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
    -- 

    function cfg.open_tab()
        if library.current_tab and library.current_tab[1] ~= background then 
            local button = library.current_tab[1]
            button.Size = dim2(1, -2, 1, -1)
            button:FindFirstChildOfClass("UIGradient").Rotation = 90
            button:FindFirstChildOfClass("TextLabel").TextColor3 = themes.preset.text
                
            library.current_tab[2].Visible = false
            
            library.current_tab = nil
        end
        
        library.current_tab = {
            background, section_holder
        }
        
        local button = library.current_tab[1] 
        button.Size = dim2(1, -2, 1, 0) -- ENABLED
        button:FindFirstChildOfClass("UIGradient").Rotation = -90
        button:FindFirstChildOfClass("TextLabel").TextColor3 = themes.preset.accent 

        library.current_tab[2].Visible = true 

        if library.current_element_open and library.current_element_open ~= cfg then 
            library.current_element_open.set_visible(false)
            library.current_element_open.open = false 
            library.current_element_open = nil 
        end
    end
    
    tab_holder.MouseButton1Click:Connect(cfg.open_tab)
    
    return setmetatable(cfg, library) 
end

function library:column(path) 
    local cfg = {}
    
    local holder = path and self[path] or self.holder
    
    local column = library:create("Frame", {
        Parent = holder,
        BackgroundTransparency = 1,
        Name = "\0",
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.inline
    })library:apply_theme(column, "inline", "BackgroundColor3") 
    
    library:create("UIListLayout", {
        Parent = column,
        Padding = dim(0, 4),
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalFlex = Enum.UIFlexAlignment.Fill
    })
    
    cfg["holder"] = column

    return setmetatable(cfg, library) 
end

function library:multi_section(options)
    local cfg = {
        names = options.names or {"First", "Second", "Third"}, 
        sections = {},
    }

    local section = library:create("Frame", {
        Parent = self.holder,
        Name = "",
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.inline
    }) library:apply_theme(section, "inline", "BackgroundColor3")
    
    local inline = library:create("Frame", {
        Parent = section,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.outline
    }) library:apply_theme(inline, "outline", "BackgroundColor3") 
    
    local __background = library:create("Frame", {
        Parent = inline,
        Name = "",
        ClipsDescendants = true,
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        ZIndex = 1,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local accent = library:create("Frame", {
        Parent = __background,
        Name = "",
        Size = dim2(1, 0, 0, 2),
        BorderColor3 = rgb(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.accent
    }) library:apply_theme(accent, "accent", "BackgroundColor3")
    
    local UIGradient = library:create("UIGradient", {
        Parent = accent,
        Name = "",
        Rotation = 90,
        Color = rgbseq{rgbkey(0, rgb(255, 255, 255)), rgbkey(1, rgb(167, 167, 167))}
    }) 
    
    local UIGradient = library:create("UIGradient", {
        Parent = __background,
        Name = "",
        Rotation = 90,
        Color = rgbseq{rgbkey(0, rgb(41, 41, 55)), rgbkey(1, rgb(35, 35, 47))}
    }) library:apply_theme(UIGradient, "contrast", "Color") 
    
    local tab_holder = library:create("Frame", {
        Parent = __background,
        Name = "",
        ClipsDescendants = true,
        BackgroundTransparency = 1,
        Position = dim2(0, -1, 0, 0),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 2, 0, 21),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    }) 
    
    library:create("UIListLayout", {
        Parent = tab_holder,
        Name = "",
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalFlex = Enum.UIFlexAlignment.Fill,
        Padding = dim(0, -3),
        SortOrder = Enum.SortOrder.LayoutOrder
    })
    
    for _, tab in next, cfg.names do 
        local multi = {
            open = false, 
        } 

        -- Tab
            local tabb = library:create("TextButton", {
                Parent = tab_holder,
                Name = "",
                AutoButtonColor = false,
                FontFace = library.font,
                TextColor3 = themes.preset.text,
                BorderColor3 = rgb(0, 0, 0),
                Text = "",
                BorderSizePixel = 0,
                Size = dim2(0, 0, 1, 0),
                ZIndex = 1,
                TextSize = 12,
                BackgroundColor3 = themes.preset.outline
            }) library:apply_theme(tabb, "outline", "BackgroundColor3") 
            
            local background = library:create("Frame", {
                Parent = tabb,
                Name = "",
                Size = dim2(1, 0, 1, -2),
                Position = dim2(0, 1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                ZIndex = 1,
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            local UIGradient = library:create("UIGradient", {
                Parent = background,
                Name = "",
                Rotation = 90,
                Color = rgbseq{rgbkey(0, rgb(41, 41, 55)), rgbkey(1, rgb(35, 35, 47))}
            }) library:apply_theme(UIGradient, "contrast", "Color")
            
            local text = library:create("TextLabel", {
                Parent = background,
                Name = "",
                FontFace = library.font,
                TextColor3 = themes.preset.text,
                BorderColor3 = rgb(0, 0, 0),
                Text = tab,
                BackgroundTransparency = 1,
                Size = dim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            }) 
            
            local UIStroke = library:create("UIStroke", {
                Parent = text,
                Name = "",
                LineJoinMode = Enum.LineJoinMode.Miter
            })
        -- 

        -- Element Handler
            local ScrollingFrame = library:create("ScrollingFrame", {
                Parent = __background,
                Name = "",
                ScrollBarImageColor3 = themes.preset.accent,
                Active = true,
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollBarThickness = 2,
                Size = dim2(1, 0, 1, -20),
                Visible = false, 
                BackgroundTransparency = 1,
                Position = dim2(0, 0, 0, 24),
                BackgroundColor3 = rgb(255, 255, 255),
                BorderColor3 = rgb(0, 0, 0),
                BorderSizePixel = 0,
                ScrollBarThickness = 2,
                CanvasSize = dim2(0, 0, 0, 0)
            }) library:apply_theme(ScrollingFrame, "accent", "ScrollBarImageColor3") 
            
            local elements = library:create("Frame", {
                Parent = ScrollingFrame,
                Name = "",
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 0, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            }) multi.holder = elements
            
            local UIListLayout = library:create("UIListLayout", {
                Parent = elements,
                Name = "",
                SortOrder = Enum.SortOrder.LayoutOrder,
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                Padding = dim(0, 4)
            })
            
            local UIPadding = library:create("UIPadding", {
                Parent = ScrollingFrame,
                Name = "",
                PaddingBottom = dim(0, 60)
            })
        --
        
        function multi:open_tab(bool) 
            ScrollingFrame.Visible = bool 
            UIGradient.Rotation = bool and -90 or 90
            tabb.Size = dim2(0, 0, 1, bool and 1 or 0)
        end

        library:connection(tabb.MouseButton1Click, function()
            for _, multi_s in next, cfg.sections do 
                multi_s:open_tab(false)
            end

            if library.current_element_open then 
                library.current_element_open.set_visible(false)
                library.current_element_open.open = false 
                library.current_element_open = nil 
            end

            multi:open_tab(true) 
        end)

        cfg.sections[#cfg.sections + 1] = setmetatable(multi, library)
    end 

    cfg.sections[1]:open_tab(true)

    return unpack(cfg.sections)
end 

function library:section(options)
    local cfg = {
        name = options.name or "Section", 
    }
    
    local section = library:create("Frame", {
        Parent = self.holder,
        Name = "\0",
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.inline
    })library:apply_theme(section, "inline", "BackgroundColor3") 

    local inline = library:create("Frame", {
        Parent = section,
        Name = "\0",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.outline
    })library:apply_theme(inline, "outline", "BackgroundColor3") 

    local background = library:create("Frame", {
        Parent = inline,
        Name = "\0",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })

    local text = library:create("TextLabel", {
        Parent = background,
        FontFace = library.font,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = cfg.name,
        Name = "\0",
        BackgroundTransparency = 1,
        Position = dim2(0, 6, 0, 4),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.XY,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255)
    })

    library:create("UIStroke", {
        Parent = text,
        LineJoinMode = Enum.LineJoinMode.Miter
    })

    local accent = library:create("Frame", {
        Parent = background,
        Name = "\0",
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 0, 0, 2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.accent
    })library:apply_theme(accent, "accent", "BackgroundColor3") 

    local UIGradient = library:create("UIGradient", {
        Parent = accent,
        Rotation = 90,
        Color = rgbseq{
            rgbkey(0, rgb(255, 255, 255)),
            rgbkey(1, rgb(167, 167, 167))
        }
    })

    local UIGradient = library:create("UIGradient", {
        Parent = background,
        Rotation = 90,
        Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
    })library:apply_theme(UIGradient, "contrast", "Color") 

    local ScrollingFrame = library:create("ScrollingFrame", {
        Parent = background,
        ScrollBarImageColor3 = themes.preset.accent,
        Active = true,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 2,
        Size = dim2(1, 0, 1, -20),
        BackgroundTransparency = 1,
        Position = dim2(0, 0, 0, 20),
        BackgroundColor3 = rgb(255, 255, 255),
        BorderColor3 = rgb(0, 0, 0),
        BorderSizePixel = 0,
        CanvasSize = dim2(0, 0, 0, 0)
    })library:apply_theme(ScrollingFrame, "accent", "ScrollBarImageColor3") 

    ScrollingFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
        if library.current_element_open then 
            library.current_element_open.set_visible(false)
            library.current_element_open.open = false 
            library.current_element_open = nil
        end
    end) 

    local elements = library:create("Frame", {
        Parent = ScrollingFrame,
        Name = "\0",
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 0, 0, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    cfg.holder = elements 

    library:create("UIListLayout", {
        Parent = elements,
        Padding = dim(0, 4),
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder
    })

    library:create("UIPadding", {
        Parent = ScrollingFrame,
        PaddingBottom = dim(0, 10)
    })

    return setmetatable(cfg, library)
end

function library:slider(options)
    local cfg = {
        name = options.name or nil,
        suffix = options.suffix or "",
        flag = options.flag or tostring(2^789),
        callback = options.callback or function() end, 
        visible = options.visible or true, 

        min = options.min or options.minimum or 0,
        max = options.max or options.maximum or 100,
        intervals = options.interval or options.decimal or 1,
        default = options.default or 10,

        dragging = false,
        value = options.default or 10, 
    } 

    -- instances 
        local slider_REAL = library:create("TextLabel", {
            Parent = self.holder, 
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            Name = "slider",
            ZIndex = 2,
            Size = dim2(1, -8, 0, 12),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local TEXT_LABEL; 
        if cfg.name then 
            local left_components = library:create("Frame", {
                Parent = slider_REAL,
                Name = "left_components",
                BackgroundTransparency = 1,
                Position = dim2(0, 2, 0, -1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(0, 0, 0, 14),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            TEXT_LABEL = library:create("TextLabel", {
                Parent = left_components,
                FontFace = library.font,
                TextColor3 = themes.preset.text,
                BorderColor3 = rgb(0, 0, 0),
                Text = cfg.name,
                Name = "text",
                BackgroundTransparency = 1,
                Size = dim2(0, 0, 1, -1),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            }, "text")

            library:create("UIListLayout", {
                Parent = left_components,
                Padding = dim(0, 5),
                Name = "_",
                FillDirection = Enum.FillDirection.Horizontal
            })
        end 
        
        local bottom_components = library:create("Frame", {
            Parent = slider_REAL,
            Name = "bottom_components",
            Position = dim2(0, 0, 0, cfg.name and 15 or 0),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 26, 0, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local slider = library:create("TextButton", {
            Parent = bottom_components,
            Name = "slider",
            Position = dim2(0, 0, 0, 2),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -27, 1, 12),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline,
            Text = "",
            AutoButtonColor = false,
        })library:apply_theme(slider, "outline", "BackgroundColor3") 
        
        local inline = library:create("Frame", {
            Parent = slider,
            Name = "inline",
            Position = dim2(0, 0, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -1, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 
        
        local background = library:create("Frame", {
            Parent = inline,
            Name = "background",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })library:apply_theme(background, "accent", "BackgroundColor3") 
        
        local contrast = library:create("Frame", {
            Parent = background,
            Name = "contrast",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local slidertext = library:create("TextLabel", {
            Parent = contrast,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "12.50/100.00",
            Name = "text",
            BackgroundTransparency = 1,
            Position = dim2(0, 0, 0, -1),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            TextSize = 12,
            ZIndex = 2,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local fill = library:create("Frame", {
            Parent = contrast,
            Name = "fill",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0.75, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })library:apply_theme(fill, "accent", "BackgroundColor3") 
        
        local UIGradient = library:create("UIGradient", {
            Parent = fill,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = contrast,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
        }); library:apply_theme(UIGradient, "contrast", "Color")
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })
        
        library:create("UIListLayout", {
            Parent = bottom_components,
            Padding = dim(0, 10),
            Name = "_",
            SortOrder = Enum.SortOrder.LayoutOrder
        })
        
        library:create("UIPadding", {
            Parent = slider,
            PaddingLeft = dim(0, 1)
        })
    --  

    function cfg.set(value)
        cfg.value = math.clamp(library:round(value, cfg.intervals), cfg.min, cfg.max)

        fill.Size = dim2((cfg.value - cfg.min) / (cfg.max - cfg.min), 0, 1, 0)
        slidertext.Text = tostring(cfg.value) .. cfg.suffix .. "/" .. tostring(cfg.max) .. cfg.suffix
        flags[cfg.flag] = cfg.value

        cfg.callback(flags[cfg.flag])
    end

    function cfg.set_element_visible(bool)
        slider_REAL.Visible = bool 

        if TEXT_LABEL then 
            TEXT_LABEL.Visible = bool 
        end 
    end

    library:connection(uis.InputChanged, function(input)
        if cfg.dragging and input.UserInputType == Enum.UserInputType.MouseMovement then 
            local size_x = (input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X
            local value = ((cfg.max - cfg.min) * size_x) + cfg.min
            cfg.set(value)
        end
    end)

    library:connection(uis.InputEnded, function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            cfg.dragging = false 
        end 
    end)

    slider.MouseButton1Down:Connect(function()
        cfg.dragging = true
    end)

    if cfg.tooltip then 
        library:tool_tip({name = cfg.tooltip, path = slider_REAL})
    end

    cfg.set(cfg.default)
    cfg.set_element_visible(cfg.visible)
            
    config_flags[cfg.flag] = cfg.set

    library.config_flags[cfg.flag] = cfg.set
    library.visible_flags[cfg.flag] = cfg.set_element_visible

    return setmetatable(cfg, library) 
end 

function library:toggle(options)
    local cfg = {
        enabled = options.enabled or nil,
        name = options.name or "Toggle",
        flag = options.flag or tostring(random(1,9999999)),
        callback = options.callback or function() end,
        default = options.default or false,
        colorpicker = options.color or nil,
        visible = options.visible or true,
        tooltip = options.tooltip or nil,
    }
    
    -- instances
        local toggle_holder = library:create("TextButton", {
            Parent = self.holder,
            FontFace = library.font,
            TextColor3 = rgb(151, 151, 151),
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            Name = "toggle",
            ZIndex = 1,
            Size = dim2(1, -8, 0, 12),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
    
        local right_components = library:create("Frame", {
            Parent = toggle_holder,
            Name = "right_components",
            Position = dim2(1, -1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 0, 0, 12),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        cfg["right_holder"] = right_components
    
        local list = library:create("UIListLayout", {
            Parent = right_components,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Right,
            Padding = dim(0, 4),
            Name = "list",
            SortOrder = Enum.SortOrder.LayoutOrder
        })
    
        library:create("UIPadding", {
            Parent = toggle_holder
        })
    
        local left_components = library:create("Frame", {
            Parent = toggle_holder,
            Name = "left_components",
            BackgroundTransparency = 1,
            Position = dim2(0, 0, 0, 0),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 0, 0, 14),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local text = library:create("TextLabel", {
            Parent = left_components,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = cfg.name,
            Name = "text",
            BackgroundTransparency = 1,
            Size = dim2(0, 0, 1, -1),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.X,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
    
        library:create("UIStroke", {
            Parent = text,
            LineJoinMode = Enum.LineJoinMode.Miter
        })
    
        library:create("UIListLayout", {
            Parent = left_components,
            Padding = dim(0, 5),
            Name = "_",
            FillDirection = Enum.FillDirection.Horizontal
        })
    
        local toggle = library:create("TextButton", {
            Parent = left_components,
            Name = "!toggle",
            Text = "",
            AutoButtonColor = false,
            Position = dim2(0, 0, 0, 2),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 14, 0, 14),
            BorderSizePixel = 0,
            ZIndex = 1, 
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(toggle, "outline", "BackgroundColor3") 
    
        local inline = library:create("Frame", {
            Parent = toggle,
            Name = "inline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 
    
        local background = library:create("Frame", {
            Parent = inline,
            Name = "background",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })
        library:apply_theme(background, "accent", "BackgroundColor3") 
        library:apply_theme(background, "accent", "BackgroundColor3") 
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })
    -- 
        
    function cfg.set(bool)
        background.BackgroundColor3 = bool and themes.preset.accent or themes.preset.inline

        flags[cfg.flag] = bool
        
        cfg.callback(bool)
    end

    function cfg.set_element_visible(bool)
        toggle_holder.Visible = bool 
    end 

    library:connection(toggle_holder.MouseButton1Click, function()
        cfg.enabled = not cfg.enabled

        cfg.set(cfg.enabled)
    end)

    library:connection(toggle.MouseButton1Click, function()
        cfg.enabled = not cfg.enabled

        cfg.set(cfg.enabled)
    end)

    if cfg.tooltip then 
        library:tool_tip({name = cfg.tooltip, path = toggle_holder})
    end

    cfg.set(cfg.default)
    
    cfg.set_element_visible(cfg.visible)
    
    library.config_flags[cfg.flag] = cfg.set
    library.visible_flags[cfg.flag] = cfg.set_element_visible

    return setmetatable(cfg, library)
end

function library:colorpicker(options)
    local parent = self.right_holder
    
    local cfg = {
        name = options.name or "Color", 
        flag = options.flag or tostring(2^789),
        color = options.color or color(1, 1, 1), -- Default to white color if not provided
        alpha = options.alpha or 1,
        callback = options.callback or function() end,
        right_holder = self.right_holder,
    }

    local dragging_sat = false 
    local dragging_hue = false 
    local dragging_alpha = false 

    local h, s, v = cfg.color:ToHSV() 
    local a = cfg.alpha 
    
    -- colorpicker button 
        local colorpicker_button = library:create("TextButton", {
            Parent = parent,
            Name = "outline",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 24, 0, 14),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline,
            Text = "",
            AutoButtonColor = false,
        })library:apply_theme(colorpicker_button, "outline", "BackgroundColor3") 
    
        local inline = library:create("Frame", {
            Parent = colorpicker_button,
            Name = "inline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 
    
        local handler = library:create("Frame", {
            Parent = inline,
            Name = "handler",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(250, 165, 27)
        })
    
        local UIGradient = library:create("UIGradient", {
            Parent = handler,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })
    -- 

    -- colorpicker instances
        local colorpicker_holder = library:create("Frame", {
            Parent = sgui,
            Name = "colorpicker",
            Position = dim2(0, colorpicker_button.AbsolutePosition.X + 1, 0, colorpicker_button.AbsolutePosition.Y + 17),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 190, 0, 190),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline,
            Visible = false,
            ZIndex = 1
        })library:apply_theme(colorpicker_holder, "outline", "BackgroundColor3") 

        library:make_resizable(colorpicker_holder)
        
        local window_inline = library:create("Frame", {
            Parent = colorpicker_holder,
            Name = "window_inline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })library:apply_theme(window_inline, "accent", "BackgroundColor3") 
        
        local window_holder = library:create("Frame", {
            Parent = window_inline,
            Name = "window_holder",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = themes.preset.outline,
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = window_holder,
            Rotation = 90,
            Name = "_",
            Color = rgbseq{
            rgbkey(0, rgb(41, 55, 43)),
            rgbkey(1, rgb(35, 47, 36))
        }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        local text = library:create("TextLabel", {
            Parent = window_holder,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = cfg.name,
            Name = "text",
            BackgroundTransparency = 1,
            Position = dim2(0, 2, 0, 4),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.XY,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIStroke", {
            Parent = text,
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        library:create("UIPadding", {
            Parent = window_holder,
            Name = "_",
            PaddingBottom = dim(0, 4),
            PaddingRight = dim(0, 4),
            PaddingLeft = dim(0, 4)
        })
        
        local main_holder = library:create("Frame", {
            Parent = window_holder,
            Name = "main_holder",
            Position = dim2(0, 0, 0, 20),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, -20),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(main_holder, "inline", "BackgroundColor3") 
        
        local main_holder_inline = library:create("Frame", {
            Parent = main_holder,
            Name = "main_holder_inline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(main_holder_inline, "outline", "BackgroundColor3") 
        
        local main_holder_background = library:create("Frame", {
            Parent = main_holder_inline,
            Name = "main_holder_background",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = main_holder_background,
            Rotation = 90,
            Name = "_",
            Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        library:create("UIPadding", {
            Parent = main_holder_background,
            PaddingTop = dim(0, 4),
            Name = "_",
            PaddingBottom = dim(0, 4),
            PaddingRight = dim(0, 4),
            PaddingLeft = dim(0, 4)
        })
        
        local alpha = library:create("TextButton", {
            Parent = main_holder_background,
            AnchorPoint = vec2(0, 0.5),
            Name = "alpha",
            Position = dim2(0, 0, 1, -8),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -20, 0, 14),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline,
            Text = "",
            AutoButtonColor = false,
        })library:apply_theme(alpha, "inline", "BackgroundColor3") 
        
        local outline = library:create("Frame", {
            Parent = alpha,
            Name = "outline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(outline, "outline", "BackgroundColor3") 
        
        local alpha_drag = library:create("Frame", {
            Parent = outline,
            Name = "alpha_drag",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(0, 221, 255)
        })
        
        local alphaind = library:create("ImageLabel", {
            Parent = alpha_drag,
            ScaleType = Enum.ScaleType.Tile,
            BorderColor3 = rgb(0, 0, 0),
            Image = "rbxassetid://18274452449",
            BackgroundTransparency = 1,
            Name = "alphaind",
            Size = dim2(1, 0, 1, 0),
            TileSize = dim2(0, 6, 0, 6),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = alphaind,
            Transparency = numseq{
                numkey(0, 0),
                numkey(1, 1)
            }
        })
        
        local alpha_picker = library:create("Frame", {
            Parent = alpha_drag,
            Name = "alpha_picker",
            BorderMode = Enum.BorderMode.Inset,
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 4, 1, 0),
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local hue = library:create("TextButton", {
            Parent = main_holder_background,
            AnchorPoint = vec2(1, 0),
            Name = "hue",
            Position = dim2(1, -1, 0, 0),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 14, 1, -20),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline,
            Text = "",
            AutoButtonColor = false
        })
        
        local outline = library:create("Frame", {
            Parent = hue,
            Name = "outline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })
        
        local Frame = library:create("Frame", {
            Parent = outline,
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = Frame,
            Rotation = 270,
            Color = rgbseq{
            rgbkey(0, rgb(255, 0, 0)),
            rgbkey(0.17000000178813934, rgb(255, 255, 0)),
            rgbkey(0.33000001311302185, rgb(0, 255, 0)),
            rgbkey(0.5, rgb(0, 255, 255)),
            rgbkey(0.6700000166893005, rgb(0, 0, 255)),
            rgbkey(0.8299999833106995, rgb(255, 0, 255)),
            rgbkey(1, rgb(255, 0, 0))
        }
        }) 
        
        local hue_picker = library:create("Frame", {
            Parent = Frame,
            Name = "hue_picker",
            BorderMode = Enum.BorderMode.Inset,
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 0, 4),
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local visualize = library:create("Frame", {
            Parent = main_holder_background,
            AnchorPoint = vec2(1, 1),
            Name = "visualize",
            Position = dim2(1, -1, 1, -1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 14, 0, 14),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(visualize, "inline", "BackgroundColor3") 
        
        local outline = library:create("Frame", {
            Parent = visualize,
            Size = dim2(1, -2, 1, -2),
            Name = "outline",
            Active = true,
            BorderColor3 = rgb(0, 0, 0),
            Position = dim2(0, 1, 0, 1),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(outline, "outline", "BackgroundColor3") 
        
        local visualize = library:create("Frame", {
            Parent = outline,
            Size = dim2(1, -2, 1, -2),
            Name = "visualize",
            Active = true,
            BorderColor3 = rgb(0, 0, 0),
            Position = dim2(0, 1, 0, 1),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(0, 221, 255)
        })
        
        local satval_picker = library:create("Frame", {
            Parent = main_holder_background,
            Name = "satval_picker",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -20, 1, -20),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(satval_picker, "inline", "BackgroundColor3") 
        
        local outline = library:create("Frame", {
            Parent = satval_picker,
            Name = "outline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(outline, "outline", "BackgroundColor3") 
        
        local colorpicker = library:create("Frame", {
            Parent = outline,
            Name = "colorpicker",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(0, 221, 255)
        })
        
        local sat = library:create("TextButton", {
            Parent = colorpicker,
            Name = "sat",
            Size = dim2(1, 0, 1, 0),
            BorderColor3 = rgb(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255),
            Text = "",
            AutoButtonColor = false,
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = sat,
            Rotation = 270,
            Transparency = numseq{
                numkey(0, 0),
                numkey(1, 1)
            },
            Color = rgbseq{
                rgbkey(0, rgb(0, 0, 0)),
                rgbkey(1, rgb(0, 0, 0))
            }
        })
        
        local val = library:create("TextButton", {
            Parent = colorpicker,
            Name = "val",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255),
            Text = "",
            AutoButtonColor = false,
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = val,
            Transparency = numseq{
                numkey(0, 0),
                numkey(1, 1)
            }
        })
        
        local satval_picker_REAL = library:create("Frame", {
            Parent = colorpicker,
            Name = "satval_picker_REAL",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 2, 0, 2),
            BorderSizePixel = 1,
            BackgroundColor3 = rgb(255, 255, 255),
            ZIndex = 3, 
        })
    -- 
        
    function cfg.set_visible(bool)
        colorpicker_holder.Visible = bool

        if bool then 
            if library.current_element_open and library.current_element_open ~= cfg then 
                library.current_element_open.set_visible(false)
                library.current_element_open.open = false 
            end

            library.current_element_open = cfg
            colorpicker_holder.Position = dim2(0, colorpicker_button.AbsolutePosition.X + 1, 0, colorpicker_button.AbsolutePosition.Y + 17)
        end
    end 

    colorpicker_button.MouseButton1Click:Connect(function()		
        cfg.open = not cfg.open

        cfg.set_visible(cfg.open) 
    end)

    function cfg.set(color, alpha)
        if color then 
            h, s, v = color:ToHSV()
        end 
    
        if alpha then 
            a = alpha
        end 
    
        local hsv_position = Color3.fromHSV(h, s, v)
        local Color = Color3.fromHSV(h, s, v)
        
        local value = 1 - h
        local offset = (value < 1) and 0 or -4
        hue_picker.Position = dim2(0, 0, value, offset)

        local offset = (a < 1) and 0 or -4
        alpha_picker.Position = dim2(a, offset, 0, 0)

        alpha_drag.BackgroundColor3 = Color3.fromHSV(h, s, v)
        
        visualize.BackgroundColor3 = Color
        handler.BackgroundColor3 = Color 

        colorpicker.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
        
        cfg.color = Color
        cfg.alpha = a
        
        local s_offset = (s < 1) and 0 or -3
        local v_offset = (1 - v < 1) and 0 or -3
        satval_picker_REAL.Position = dim2(s, s_offset, 1 - v, v_offset)

        flags[cfg.flag] = {} 
        flags[cfg.flag]["Color"] = Color
        flags[cfg.flag]["Transparency"] = a
    
        cfg.callback(Color, a)
    end

    function cfg.update_color() 
        local mouse = uis:GetMouseLocation() 

        if dragging_sat then	
            s = math.clamp((vec2(mouse.X, mouse.Y - gui_offset) - val.AbsolutePosition).X / val.AbsoluteSize.X, 0, 1)
            v = 1 - math.clamp((vec2(mouse.X, mouse.Y - gui_offset) - sat.AbsolutePosition).Y / sat.AbsoluteSize.Y, 0, 1)
        elseif dragging_hue then 
            h = math.clamp(1 - (vec2(mouse.X, mouse.Y - gui_offset) - hue.AbsolutePosition).Y / hue.AbsoluteSize.Y, 0, 1)
        elseif dragging_alpha then 
            a = math.clamp((vec2(mouse.X, mouse.Y - gui_offset) - alpha.AbsolutePosition).X / alpha.AbsoluteSize.X, 0, 1)
        end

        cfg.set(nil, nil)
    end
    
    alpha.MouseButton1Down:Connect(function()
        dragging_alpha = true 
    end)

    hue.MouseButton1Down:Connect(function()
        dragging_hue = true 
    end)

    sat.MouseButton1Down:Connect(function()
        dragging_sat = true  
    end)

    uis.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging_sat = false
            dragging_hue = false
            dragging_alpha = false 
        end
    end)

    uis.InputChanged:Connect(function(input)
        if (dragging_sat or dragging_hue or dragging_alpha) and input.UserInputType == Enum.UserInputType.MouseMovement then
            cfg.update_color() 
        end
    end)	

    cfg.set(cfg.color, cfg.alpha)

    library.config_flags[cfg.flag] = cfg.set

    return setmetatable(cfg, library) 
end

function library:keybind(options)
    local parent = self.right_holder

    local cfg = {
        flag = options.flag or "SET ME A FLAG NOWWW!!!!",
        callback = options.callback or function() end,
        open = false,
        binding = nil, 
        name = options.name or nil, 
        ignore_key = options.ignore or false, 

        key = options.key or nil, 
        mode = options.mode or "toggle",
        active = options.default or false, 

        hold_instances = {},
    }

    flags[cfg.flag] = {} 
    
    local KEYBIND_ELEMENT;
    if cfg.name then 
        KEYBIND_ELEMENT = library:create("TextLabel", {
            Parent = library.keybind_list,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "[ Hold ]  Fly - X",
            Size = dim2(1, -5, 0, 18),
            Visible = false, 
            Position = dim2(0, 5, 0, -1),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextSize = 12,
            BackgroundColor3 = themes.preset.text
        }, "text")
    end 

    local element_outline = library:create("TextButton", {
        Parent = parent,
        Name = "",
        BorderColor3 = rgb(0, 0, 0),
        Text = "", 
        Size = dim2(0, 24, 0, 14),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.outline
    })library:apply_theme(element_outline, "outline", "BackgroundColor3") 
    
    local inline = library:create("Frame", {
        Parent = element_outline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.inline
    })library:apply_theme(inline, "inline", "BackgroundColor3") 
    
    local handler = library:create("Frame", {
        Parent = inline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local UIGradient = library:create("UIGradient", {
        Parent = handler,
        Name = "",
        Rotation = 90,
        Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
    }); library:apply_theme(UIGradient, "contrast", "Color") 
    
    local key_text = library:create("TextLabel", {
        Parent = handler,
        Name = "",
        FontFace = library.font,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = "b",
        Size = dim2(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Position = dim2(0, 0, 0, -2),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.XY,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255)
    })
        
    -- mode selector
        local keybind_selector = library:create("Frame", {
            Parent = sgui,
            Name = "",
            Position = dim2(0, element_outline.AbsolutePosition.X + 1, 0, element_outline.AbsolutePosition.Y + 17),
            BorderColor3 = rgb(255, 255, 255),
            BorderSizePixel = 2,
            Visible = false, 
            AutomaticSize = Enum.AutomaticSize.XY,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIListLayout", {
            Parent = keybind_selector,
            Name = "",
            SortOrder = Enum.SortOrder.LayoutOrder,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            Padding = dim(0, 2)
        })
        
        local hold_button = library:create("TextButton", {
            Parent = keybind_selector,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "hold",
            BackgroundTransparency = 1,
            AutomaticSize = Enum.AutomaticSize.XY,
            BorderSizePixel = 0,
            ZIndex = 2,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIStroke", {
            Parent = hold_button,
            Name = "",
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        library:create("UIPadding", {
            Parent = keybind_selector,
            Name = "",
            PaddingTop = dim(0, 3),
            PaddingBottom = dim(0, 5),
            PaddingRight = dim(0, 5),
            PaddingLeft = dim(0, 5)
        })
        
        local toggle_button = library:create("TextButton", {
            Parent = keybind_selector,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "toggle",
            BackgroundTransparency = 1,
            AutomaticSize = Enum.AutomaticSize.XY,
            BorderSizePixel = 0,
            ZIndex = 2,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIStroke", {
            Parent = toggle_button,
            Name = "",
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        local always_button = library:create("TextButton", {
            Parent = keybind_selector,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "always",
            BackgroundTransparency = 1,
            AutomaticSize = Enum.AutomaticSize.XY,
            BorderSizePixel = 0,
            ZIndex = 2,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIStroke", {
            Parent = always_button,
            Name = "",
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = keybind_selector,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(41, 55, 43)),
                rgbkey(1, rgb(35, 47, 38))
            }
        }); library:apply_theme(UIGradient, "contrast", "Color")
        
        local UIStroke = library:create("UIStroke", {
            Parent = keybind_selector,
            Name = "",
            Color = themes.preset.inline,
            LineJoinMode = Enum.LineJoinMode.Miter,
            ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        })
    -- 

    -- init 
        function cfg.set_visible(bool)
            keybind_selector.Visible = bool
            keybind_selector.Position = dim2(0, element_outline.AbsolutePosition.X + 1, 0, element_outline.AbsolutePosition.Y + 17)

            if bool then 
                if library.current_element_open and library.current_element_open ~= cfg then 
                    library.current_element_open.set_visible(false)
                    library.current_element_open.open = false 
                end

                library.current_element_open = cfg 
            end
        end 

        function cfg.set_mode(mode) 
            cfg.mode = mode 

            if mode == "always" then
                cfg.set(true)
            elseif mode == "hold" then
                cfg.set(false)
            end

            flags[cfg.flag]["mode"] = mode
        end 

        function cfg.set(input)
            if type(input) == "boolean" then 
                local __cached = input 

                if cfg.mode == "always" then 
                    __cached = true 
                end 

                cfg.active = __cached 
                flags[cfg.flag]["active"] = __cached 
                cfg.callback(__cached)
            elseif tostring(input):find("Enum") then 
                input = input.Name == "Escape" and "..." or input

                cfg.key = input or "..."	

                local _text = keys[cfg.key] or tostring(cfg.key):gsub("Enum.", "")
                local _text2 = (tostring(_text):gsub("KeyCode.", ""):gsub("UserInputType.", "")) or "..."
                cfg.key_name = _text2

                flags[cfg.flag]["mode"] = cfg.mode 
                flags[cfg.flag]["key"] = cfg.key 

                key_text.Text = string.lower(_text2)

                cfg.callback(cfg.active or false)
            elseif find({"toggle", "hold", "always"}, input) then 
                cfg.set_mode(input)

                if input == "always" then 
                    cfg.active = true 
                end 

                cfg.callback(cfg.active or false)
            elseif type(input) == "table" then 
                input.key = type(input.key) == "string" and input.key ~= "..." and library:convert_enum(input.key) or input.key

                input.key = input.key == Enum.KeyCode.Escape and "..." or input.key
                cfg.key = input.key or "..."
                
                cfg.mode = input.mode or "toggle"

                if input.active then
                    cfg.active = input.active
                end

                local text = tostring(cfg.key) ~= "Enums" and (keys[cfg.key] or tostring(cfg.key):gsub("Enum.", "")) or nil
                local __text = text and (tostring(text):gsub("KeyCode.", ""):gsub("UserInputType.", ""))
                
                key_text.Text = string.lower(__text) or "..."
                cfg.key_name = __text
            end 

            flags[cfg.flag] = {
                mode = cfg.mode,
                key = cfg.key, 
                active = cfg.active
            }
            
            if cfg.name then 
                KEYBIND_ELEMENT.Visible = cfg.active

                library:tween(KEYBIND_ELEMENT, {
                    TextTransparency = cfg.active and 0 or 1, 
                }) 

                library:tween(KEYBIND_ELEMENT:FindFirstChildOfClass("UIStroke"), {
                    Transparency = cfg.active and 0 or 1, 
                }) 
                
                local text = tostring(cfg.key) ~= "Enums" and (keys[cfg.key] or tostring(cfg.key):gsub("Enum.", "")) or nil
                local __text = text and (tostring(text):gsub("KeyCode.", ""):gsub("UserInputType.", ""))

                if cfg.name then 
                    KEYBIND_ELEMENT.Text = "[ " .. string.upper(string.sub(cfg.mode, 1, 1)) .. string.sub(cfg.mode, 2) .. " ] " .. cfg.name .. " - " .. __text
                end
            end
        end

        hold_button.MouseButton1Click:Connect(function()
            cfg.set_mode("hold") 
            cfg.set_visible(false)
            cfg.open = false 
        end) 

        toggle_button.MouseButton1Click:Connect(function()
            cfg.set_mode("toggle") 
            cfg.set_visible(false)
            cfg.open = false 
        end) 

        always_button.MouseButton1Click:Connect(function()
            cfg.set_mode("always") 
            cfg.set_visible(false)
            cfg.open = false 
        end) 
        
        element_outline.MouseButton2Click:Connect(function()
            cfg.open = not cfg.open 

            cfg.set_visible(cfg.open)
        end)

        element_outline.MouseButton1Down:Connect(function()
            task.wait()
            key_text.Text = "..."	

            if cfg.binding then return end 

            cfg.binding = library:connection(uis.InputBegan, function(keycode, game_event)  
                cfg.set(keycode.KeyCode)

                cfg.binding:Disconnect() 
                cfg.binding = nil
            end)
        end)

        library:connection(uis.InputBegan, function(input, game_event) 
            if not game_event then 
                if input.KeyCode == cfg.key then 
                    if cfg.mode == "toggle" then 
                        cfg.active = not cfg.active
                        cfg.set(cfg.active)
                    elseif cfg.mode == "hold" then 
                        cfg.set(true)
                    end
                end
            end
        end)

        library:connection(uis.InputEnded, function(input, game_event) 
            if game_event then 
                return 
            end 

            local selected_key = input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode or input.UserInputType

            if selected_key == cfg.key then
                if cfg.mode == "hold" then 
                    cfg.set(false)
                end
            end
        end)

        cfg.set({mode = cfg.mode, active = cfg.active, key = cfg.key})

        library.config_flags[cfg.flag] = cfg.set
    -- 
    
    library.config_flags[cfg.flag] = cfg.set

    return setmetatable(cfg, library) 
end 

function library:dropdown(options) 
    local parent = self.holder 

    local cfg = {
        name = options.name or nil,
        flag = options.flag or tostring(random(1,9999999)),

        items = options.items or {"1", "2", "3"},
        callback = options.callback or function() end,
        multi = options.multi or false, 
        visible = options.visible or true,

        open = false, 
        option_instances = {}, 
        multi_items = {}, 
        scrolling = options.scrolling or false, 

    }

    cfg.default = options.default or (cfg.multi and {cfg.items[1]}) or cfg.items[1] or nil

    -- dropdown elements
        local dropdown_REAL = library:create("TextLabel", {
            Parent = parent,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            Name = "dropdown",
            ZIndex = 2,
            Size = dim2(1, -8, 0, 12),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        local main_text      
        if cfg.name then 
            local left_components = library:create("Frame", {
                Parent = dropdown_REAL,
                Name = "left_components",
                BackgroundTransparency = 1,
                Position = dim2(0, 2, 0, -1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(0, 0, 0, 14),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })

            main_text = library:create("TextLabel", {
                Parent = left_components,
                FontFace = library.font,
                TextColor3 = themes.preset.text,
                BorderColor3 = rgb(0, 0, 0),
                Text = cfg.name,
                Name = "text",
                BackgroundTransparency = 1,
                Size = dim2(0, 0, 1, -1),
                BorderSizePixel = 0,
                AutomaticSize = Enum.AutomaticSize.X,
                TextSize = 12,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            
            library:create("UIStroke", {
                Parent = main_text,
                LineJoinMode = Enum.LineJoinMode.Miter
            })
            
            library:create("UIListLayout", {
                Parent = left_components,
                Padding = dim(0, 5),
                Name = "_",
                FillDirection = Enum.FillDirection.Horizontal
            })

            local right_components = library:create("Frame", {
                Parent = dropdown_REAL,
                Name = "right_components",
                Position = dim2(1, -1, 0, 1),
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(0, 0, 0, 12),
                BorderSizePixel = 0,
                BackgroundColor3 = rgb(255, 255, 255)
            })
            cfg["right_holder"] = right_components

            local list = library:create("UIListLayout", {
                Parent = right_components,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                FillDirection = Enum.FillDirection.Horizontal,
                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                Padding = dim(0, 4),
                Name = "list",
                SortOrder = Enum.SortOrder.LayoutOrder
            })
        end 

        local bottom_components = library:create("Frame", {
            Parent = dropdown_REAL,
            Name = "bottom_components",
            Position = dim2(0, 0, 0, cfg.name and 15 or 0),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 26, 0, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local dropdown = library:create("TextButton", {
            Parent = bottom_components,
            Name = "dropdown",
            Position = dim2(0, 0, 0, 2),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -27, 1, 18),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline,
            Text = "",
            AutoButtonColor = false, 
        })library:apply_theme(dropdown, "outline", "BackgroundColor3") 
        
        local inline = library:create("Frame", {
            Parent = dropdown,
            Name = "inline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 
        
        local background = library:create("Frame", {
            Parent = inline,
            Name = "background",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })library:apply_theme(background, "accent", "BackgroundColor3") 
        
        local contrast = library:create("Frame", {
            Parent = background,
            Name = "contrast",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        local plus = library:create("TextLabel", {
            Parent = contrast,
            TextWrapped = true,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "+",
            Name = "plus",
            Size = dim2(1, -4, 1, 0),
            Position = dim2(0, 0, 0, -1),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Right,
            FontFace = library.font,
            TextTruncate = Enum.TextTruncate.AtEnd,
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIStroke", {
            Parent = plus,
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        local text = library:create("TextLabel", {
            Parent = contrast,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "aa",
            Name = "text",
            Size = dim2(1, -4, 1, 0),
            Position = dim2(0, 4, 0, -1),
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            TextTruncate = Enum.TextTruncate.AtEnd,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIStroke", {
            Parent = text,
            LineJoinMode = Enum.LineJoinMode.Miter
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = contrast,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        library:create("UIListLayout", {
            Parent = bottom_components,
            Padding = dim(0, 10),
            Name = "_",
            SortOrder = Enum.SortOrder.LayoutOrder
        })     
    --

    -- dropdown holder
        local dropdown_holder = library:create("Frame", {
            Parent = sgui,
            BorderColor3 = rgb(0, 0, 0),
            Name = "dropdown_holder",
            BackgroundTransparency = 1,
            Position = dim2(0, dropdown.AbsolutePosition.X + 1, 0, dropdown.AbsolutePosition.Y + 22),
            Size = dim2(0, dropdown.AbsoluteSize.X, 0, cfg.scrolling and 180 or 0),
            BorderSizePixel = 0,
            AutomaticSize = cfg.scrolling and Enum.AutomaticSize.None or Enum.AutomaticSize.Y,
            BackgroundColor3 = themes.preset.outline,
            Visible = false
        })
        
        local inline = library:create("Frame", {
            Parent = dropdown_holder,
            Size = dim2(1, -2, 1, 2),
            Name = "inline",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 
        
        local background; 
        if not cfg.scrolling then 
            background = library:create("Frame", {
                Parent = inline,
                BorderColor3 = rgb(0, 0, 0),
                Name = "background",
                BackgroundTransparency = 1,
                Position = dim2(0, 1, 0, 1),
                Size = dim2(1, -2, 1, 1),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent
            })
            library:apply_theme(background, "accent", "BackgroundColor3") 
        else 
            background = library:create("ScrollingFrame", {
                Parent = inline,
                BorderColor3 = rgb(0, 0, 0),
                Name = "background",
                BackgroundTransparency = 1,
                Position = dim2(0, 1, 0, 1),
                Size = dim2(1, -2, 1, 1),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = themes.preset.accent,
                CanvasSize = dim2(0, 0, 0, 0),
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                ScrollBarThickness = 2,
                ScrollBarImageColor3 = themes.preset.accent
            })
            library:apply_theme(background, "accent", "BackgroundColor3") 
            library:apply_theme(background, "accent", "ScrollBarImageColor3") 
        end 
        
        local contrast = library:create("Frame", {
            Parent = background,
            Name = "contrast",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, -3),
            BorderSizePixel = 0,
            ZIndex = 2, 
            BackgroundColor3 = rgb(255, 255, 255),
            AutomaticSize = cfg.scrolling and Enum.AutomaticSize.Y or Enum.AutomaticSize.None,
        }); 

        library:create("UIPadding", {
            Parent = contrast,
            PaddingTop = dim(0, 2),
            PaddingBottom = dim(0, 2),
            PaddingRight = dim(0, 0),
            PaddingLeft = dim(0, 4)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = contrast,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(41, 41, 55)),
                rgbkey(1, rgb(35, 35, 47))
            }
        })library:apply_theme(UIGradient, "contrast", "Color") 
    
        library:create("UIListLayout", {
            Parent = contrast,
            Padding = dim(0, 5),
            SortOrder = Enum.SortOrder.LayoutOrder
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        local stroke = library:create("UIStroke", {
            Parent = inline,
            Color = themes.preset.outline,
            LineJoinMode = Enum.LineJoinMode.Miter
        })library:apply_theme(stroke, "outline", "Color") 
    -- 

    function cfg.set_element_visible(bool)
        dropdown_REAL.Visible = bool 

        if main_text then 
            main_text.Visible = bool
        end 
    end 

    function cfg.set_visible(bool) 
        dropdown_holder.Visible = bool

        plus.Text = bool and "-" or "+"
        plus.TextSize = bool and 12 or 8

        if bool then 
            if library.current_element_open and library.current_element_open ~= cfg then 
                library.current_element_open.set_visible(false)
                library.current_element_open.open = false 
            end

            dropdown_holder.Size = dim2(0, dropdown.AbsoluteSize.X, 0, dropdown_holder.Size.Y.Offset)
            dropdown_holder.Position = dim2(0, dropdown.AbsolutePosition.X + 1, 0, dropdown.AbsolutePosition.Y + 22)
            library.current_element_open = cfg
        end
    end

    function cfg.set(value) 
        local selected = {}

        local is_table = type(value) == "table"

        for _,v in next, cfg.option_instances do 
            if v.Text == value or (is_table and find(value, v.Text)) then 
                insert(selected, v.Text)
                cfg.multi_items = selected
                v.TextColor3 = themes.preset.accent
            else 
                v.TextColor3 = themes.preset.text
            end
        end

        text.Text = is_table and concat(selected, ", ") or selected[1] or "nun"
        flags[cfg.flag] = is_table and selected or selected[1]
        cfg.callback(flags[cfg.flag]) 
    end
    
    function cfg:refresh_options(refreshed_list) 
        for _, v in next, cfg.option_instances do 
            v:Destroy() 
        end

        cfg.option_instances = {} 

        for i,v in next, refreshed_list do 
            local TextButton = library:create("TextButton", {
                Parent = contrast,
                FontFace = library.font,
                TextColor3 = themes.preset.text,
                BorderColor3 = rgb(0, 0, 0),
                Size = dim2(1, 0, 0, 0),
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                TextWrapped = true,
                AutomaticSize = Enum.AutomaticSize.Y,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                ZIndex = 2, 
                Text = v,
                BackgroundColor3 = rgb(255, 255, 255)
            })library:apply_theme(TextButton, "accent", "TextColor3") 
            
            library:create("UIStroke", {
                Parent = TextButton,
                LineJoinMode = Enum.LineJoinMode.Miter
            })

            insert(cfg.option_instances, TextButton)

            TextButton.MouseButton1Down:Connect(function()
                if cfg.multi then 
                    local selected_index = find(cfg.multi_items, TextButton.Text)

                    if selected_index then 
                        remove(cfg.multi_items, selected_index)
                    else
                        insert(cfg.multi_items, TextButton.Text)
                    end

                    cfg.set(cfg.multi_items) 				
                else 
                    cfg.set_visible(false)
                    cfg.open = false 

                    cfg.set(TextButton.Text)
                end
            end)
        end
    end

    dropdown.MouseButton1Click:Connect(function()
        cfg.open = not cfg.open 

        cfg.set_visible(cfg.open)
    end)

    cfg:refresh_options(cfg.items) 

    cfg.set(cfg.default)
    
    library.config_flags[cfg.flag] = cfg.set
    library.visible_flags[cfg.flag] = cfg.set_element_visible

    cfg.set_element_visible(cfg.visible)

    return setmetatable(cfg, library)
end 

function library:list(options)
    local cfg = {
        callback = options and options.callback or function() end, 

        scale = options.size or 232, 
        items = options.items or {"1", "2", "3"}, 
        -- order = options.order or 1, 
        placeholdertext = options.placeholder or options.placeholdertext or "search here...",
        visible = options.visible or true,

        option_instances = {}, 
        current_instance = nil, 
        flag = options.flag or "SET A FLAG U NIGGER", 

    } 

    -- instances 
        local list_holder = library:create("TextLabel", {
            Parent = self.holder,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            ZIndex = 2,
            Size = dim2(1, -8, 0, 12),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIPadding = library:create("UIPadding", {
            Parent = list_holder,
            Name = "",
            PaddingLeft = dim(0, 1)
        })
        
        local UIStroke = library:create("UIStroke", {
            Parent = list_holder,
            Name = ""
        })
        
        local bottom_components = library:create("Frame", {
            Parent = list_holder,
            Name = "",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 26, 0, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIListLayout", {
            Parent = bottom_components,
            Name = "",
            Padding = dim(0, 10),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
        
        local list = library:create("Frame", {
            Parent = bottom_components,
            Name = "",
            Position = dim2(0, 0, 0, 2),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -27, 1, cfg.scale),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(main_holder, "outline", "BackgroundColor3") 
        
        local inline = library:create("Frame", {
            Parent = list,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 
        
        local background = library:create("Frame", {
            Parent = inline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })library:apply_theme(background, "accent", "BackgroundColor3") 
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
            rgbkey(0, rgb(255, 255, 255)),
            rgbkey(1, rgb(167, 167, 167))
        }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        local contrast = library:create("Frame", {
            Parent = background,
            Name = "",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = contrast,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
        })library:apply_theme(UIGradient, "contrast", "Color") 
        
        local ScrollingFrame = library:create("ScrollingFrame", {
            Parent = contrast,
            Name = "",
            ScrollBarImageColor3 = themes.preset.accent,
            Active = true,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ScrollBarThickness = 2,
            BackgroundTransparency = 1,
            Size = dim2(1, 0, 1, 0),
            BackgroundColor3 = rgb(255, 255, 255),
            BorderColor3 = rgb(0, 0, 0),
            BorderSizePixel = 0,
            CanvasSize = dim2(0, 0, 0, 0)
        })library:apply_theme(ScrollingFrame, "accent", "ScrollBarImageColor3") 
        
        local UIPadding = library:create("UIPadding", {
            Parent = ScrollingFrame,
            Name = "",
            PaddingBottom = dim(0, 4),
            PaddingTop = dim(0, 4)
        })
        
        local UIListLayout = library:create("UIListLayout", {
            Parent = ScrollingFrame,
            Name = "",
            Padding = dim(0, 4),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
    --  

    function cfg.render_option(text) 
        local TextButton = library:create("TextButton", {
            Parent = ScrollingFrame,
            Name = "",
            Text = tostring(text),
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            BackgroundTransparency = 1,
            Size = dim2(1, 0, 0, 0),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        library:apply_theme(TextButton, "accent", "TextColor3") 

        local UIStroke = library:create("UIStroke", {
            Parent = TextButton,
            Name = ""
        })

        return TextButton 
    end 

    function cfg.set_element_visible(bool)
        list_holder.Visible = bool 
    end

    function cfg.refresh_options(options) 
        if type(options) == "function" then 
            return 
        end 

        for _, v in next, cfg.option_instances do 
            v:Destroy() 
        end 

        for _, option in next, options do 
            local button = cfg.render_option(option) 

            insert(cfg.option_instances, button)

            button.MouseButton1Click:Connect(function()
                if cfg.current_instance and cfg.current_instance ~= button then 
                    cfg.current_instance.TextColor3 = themes.preset.text 
                end 

                cfg.current_instance = button 
                button.TextColor3 = themes.preset.accent 

                flags[cfg.flag] = button.text
                
                cfg.callback(button.text)
            end)
        end 
    end     

    function cfg.filter_options(text)
        for _, v in next, cfg.option_instances do 
            if string.find(v.Text, text) then 
                v.Visible = true 
            else 
                v.Visible = false
            end
        end
    end 

    function cfg.set(value)
        for _, buttons in next, cfg.option_instances do 
            if buttons.Text == value then 
                buttons.TextColor3 = themes.preset.accent 
            else 
                buttons.TextColor3 = themes.preset.text 
            end 
        end 

        flags[cfg.flag] = value
        cfg.callback(value)
    end 

    cfg.refresh_options(cfg.items) 
    cfg.set_element_visible(cfg.visible)

    library.visible_flags[cfg.flag] = cfg.set_element_visible
    library.config_flags[cfg.flag] = cfg.set

    return setmetatable(cfg, library)
end 

function library:textbox(options)
    local cfg = {
        placeholder = options.placeholder or options.placeholdertext or options.holder or options.holdertext or "type here...",
        default = options.default,
        flag = options.flag or "SET ME NIGGA",
        callback = options.callback or function() end,
        visible = options.visible or true,
    }
    
    -- instances 
        local textbox_holder = library:create("TextLabel", {
            Parent = self.holder,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            ZIndex = 2,
            Size = dim2(1, -8, 0, 12),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIPadding", {
            Parent = textbox_holder,
            Name = "",
            PaddingLeft = dim(0, 1)
        })
        
        library:create("UIStroke", {
            Parent = textbox_holder,
            Name = ""
        })
        
        local button = library:create("Frame", {
            Parent = textbox_holder,
            Name = "",
            Position = dim2(0, 0, 0, 2),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -27, 0, 18),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })
        
        library:apply_theme(button, "outline", "BackgroundColor3") 
        
        local inline = library:create("Frame", {
            Parent = button,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })
        
        library:apply_theme(inline, "inline", "BackgroundColor3") 
        
        local background = library:create("Frame", {
            Parent = inline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })
        
        library:apply_theme(background, "accent", "BackgroundColor3") 
        
        local TextBox = library:create("TextBox", {
            Parent = background,
            Name = "",
            CursorPosition = -1,
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            ZIndex = 2,
            Text = "", 
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            TextWrapped = true,
            BackgroundTransparency = 1,
            TextTruncate = Enum.TextTruncate.SplitWord,
            PlaceholderText = "Type here...",
            ClearTextOnFocus = false,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIStroke", {
            Parent = TextBox,
            Name = ""
        })
        
        local TextButton = library:create("TextButton", {
            Parent = background,
            Name = "",
            FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            TextColor3 = rgb(0, 0, 0),
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            AutoButtonColor = false,
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            TextSize = 14,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = TextButton,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
        })
        
        library:apply_theme(UIGradient, "contrast", "Color") 
        
        library:create("UIListLayout", {
            Parent = textbox_holder,
            Name = "",
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            Padding = dim(0, 4),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
        
        TextBox:GetPropertyChangedSignal("Text"):Connect(function()
            flags[cfg.flag] = TextBox.text
            cfg.callback(TextBox.text)
        end)
    -- 

    function cfg.set_element_visible(bool)
        textbox_holder.Visible = bool 
    end

    function cfg.set(text) 
        flags[cfg.flag] = text
        TextBox.Text = text
        cfg.callback(text)
    end 

    if cfg.default then 
        cfg.set(cfg.default) 
    end 

    cfg.set_element_visible(cfg.visible)

    library.config_flags[cfg.flag] = cfg.set
    library.visible_flags[cfg.flag] = cfg.set_element_visible

    return setmetatable(cfg, library) 
end 

function library:button_holder(options) 
    local cfg = {
        flag = options.flag or "hi", 
        visible = options.visible or true,
    }

    local button_holder = library:create("TextLabel", {
        Parent = self.holder,
        Name = "",
        FontFace = library.font,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = "",
        ZIndex = 2,
        Size = dim2(1, -8, 0, 12),
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        AutomaticSize = Enum.AutomaticSize.Y,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255), 
    })

    self.current_holder = button_holder

    -- instances 
        library:create("UIStroke", {
            Parent = button_holder,
            Name = ""
        })
        
        library:create("UIListLayout", {
            Parent = button_holder,
            Name = "",
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            Padding = dim(0, 4),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
    -- 
    
    function cfg.set_element_visible(bool)
        button_holder.Visible = bool 
    end

    cfg.set_element_visible(cfg.visible)

    library.visible_flags[cfg.flag] = cfg.set_element_visible

    return setmetatable(cfg, library)
end 

function library:button(options)
    local cfg = {
        callback = options.callback or function() end, 
        name = options.text or options.name or "Button",
    }   

    local button = library:create("TextButton", {
        Parent = self.current_holder,
        Name = "",
        Position = dim2(0, 0, 0, 2),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -27, 0, 18),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.outline,
        Text = ""
    })
    
    library:apply_theme(button, "outline", "BackgroundColor3") 
    
    local inline = library:create("Frame", {
        Parent = button,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.inline
    })
    
    library:apply_theme(inline, "inline", "BackgroundColor3") 
    
    local background = library:create("Frame", {
        Parent = inline,
        Name = "",
        Position = dim2(0, 1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = themes.preset.accent
    })
    
    library:apply_theme(background, "accent", "BackgroundColor3") 
    
    local _UIGradient = library:create("UIGradient", {
        Parent = background,
        Name = "",
        Rotation = 90,
        Color = rgbseq{
        rgbkey(0, rgb(255, 255, 255)),
        rgbkey(1, rgb(167, 167, 167))
    }
    })
    
    library:apply_theme(_UIGradient, "contrast", "Color") 
    
    local contrast = library:create("Frame", {
        Parent = background,
        Name = "",
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local UIGradient = library:create("UIGradient", {
        Parent = contrast,
        Name = "",
        Rotation = 90,
        Color = rgbseq{
        rgbkey(0, rgb(41, 41, 55)),
        rgbkey(1, rgb(35, 35, 47))
    }
    })
    
    library:apply_theme(UIGradient, "contrast", "Color") 
    
    local text = library:create("TextLabel", {
        Parent = contrast,
        Name = "",
        TextWrapped = true,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = cfg.name,
        Size = dim2(1, -4, 1, 0),
        Position = dim2(0, 4, 0, -1),
        BackgroundTransparency = 1,
        TextTruncate = Enum.TextTruncate.AtEnd,
        BorderSizePixel = 0,
        FontFace = library.font,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local UIStroke = library:create("UIStroke", {
        Parent = text,
        Name = "",
        LineJoinMode = Enum.LineJoinMode.Miter
    })

    button.MouseButton1Click:Connect(function()
        cfg.callback() 
    end)

    return setmetatable(cfg, library)
end 

function library:label(options)
    local cfg = {name = options.text or options.name or "Label"}

    local dropdown = library:create("TextLabel", {
        Parent = self.holder,
        Name = "",
        FontFace = library.font,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = "",
        ZIndex = 2,
        Size = dim2(1, -8, 0, 12),
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        AutomaticSize = Enum.AutomaticSize.Y,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local UIStroke = library:create("UIStroke", {
        Parent = dropdown,
        Name = ""
    })
    
    local left_components = library:create("Frame", {
        Parent = dropdown,
        Name = "",
        BackgroundTransparency = 1,
        Position = dim2(0, 2, 0, -1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(0, 0, 0, 14),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    })
    
    local TextLabel = library:create("TextLabel", {
        Parent = left_components,
        Name = "",
        FontFace = library.font,
        TextColor3 = themes.preset.text,
        BorderColor3 = rgb(0, 0, 0),
        Text = cfg.name,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.Y,
        TextSize = 12,
        BackgroundColor3 = rgb(255, 255, 255)
    })

    local right_components = library:create("Frame", {
        Parent = dropdown,
        Name = "right_components",
        Position = dim2(1, -1, 0, 1),
        BorderColor3 = rgb(0, 0, 0),
        Size = dim2(0, 0, 0, 12),
        BorderSizePixel = 0,
        BackgroundColor3 = rgb(255, 255, 255)
    }) cfg.right_holder = right_components

    local list = library:create("UIListLayout", {
        Parent = right_components,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        FillDirection = Enum.FillDirection.Horizontal,
        HorizontalAlignment = Enum.HorizontalAlignment.Right,
        Padding = dim(0, 4),
        Name = "list",
        SortOrder = Enum.SortOrder.LayoutOrder
    })
    
    local UIStroke = library:create("UIStroke", {
        Parent = TextLabel,
        Name = ""
    })

    function cfg.change_text(text) 
        TextLabel.Text = text 
    end 
                
    return setmetatable(cfg, library)   
end 

function library:playerlist(options) 
    local cfg = {
        callback = options.callback or function() end, 

        labels = {
            name,
            display, 
            uid, 
        }
    }

    local selected_button; 

    local patterns = {
        ["Priority"] = rgb(255, 255, 0),
        ["Enemy"] = rgb(255, 0, 0),
        ["Neutral"] = themes.preset.text,
        ["Friendly"] = rgb(0, 255, 255)
    }

    -- elements 
        local playerlist_holder = library:create("TextLabel", {
            Parent = self.holder,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            ZIndex = 2,
            Size = dim2(1, -8, 0, 12),
            BorderSizePixel = 0,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIPadding = library:create("UIPadding", {
            Parent = playerlist_holder,
            Name = "",
            PaddingBottom = dim(0, -2),
            PaddingLeft = dim(0, 1)
        })
        
        local UIStroke = library:create("UIStroke", {
            Parent = playerlist_holder,
            Name = ""
        })
        
        local bottom_components = library:create("Frame", {
            Parent = playerlist_holder,
            Name = "",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 26, 0, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        library:create("UIListLayout", {
            Parent = bottom_components,
            Name = "",
            Padding = dim(0, 10),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
        
        local list = library:create("Frame", {
            Parent = bottom_components,
            Name = "",
            Position = dim2(0, 0, 0, 2),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -27, 1, 232),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(list, "outline", "BackgroundColor3") 
        
        local inline = library:create("Frame", {
            Parent = list,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.inline
        })library:apply_theme(inline, "inline", "BackgroundColor3") 
        
        local background = library:create("Frame", {
            Parent = inline,
            Name = "",
            Position = dim2(0, 1, 0, 1),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, -2, 1, -2),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.accent
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = background,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
                rgbkey(0, rgb(255, 255, 255)),
                rgbkey(1, rgb(167, 167, 167))
            }
        }); library:apply_theme(UIGradient, "contrast", "Color") 
        
        local contrast = library:create("Frame", {
            Parent = background,
            Name = "",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = rgb(255, 255, 255)
        })
        
        local UIGradient = library:create("UIGradient", {
            Parent = contrast,
            Name = "",
            Rotation = 90,
            Color = rgbseq{
            rgbkey(0, rgb(41, 41, 55)),
            rgbkey(1, rgb(35, 35, 47))
        }
        }); library:apply_theme(UIGradient, "contrast", "Color") 
        
        local ScrollingFrame = library:create("ScrollingFrame", {
            Parent = contrast,
            Name = "",
            ScrollBarImageColor3 = themes.preset.accent,
            Active = true,
            AutomaticCanvasSize = Enum.AutomaticSize.Y,
            ScrollBarThickness = 2,
            BackgroundTransparency = 1,
            Size = dim2(1, 0, 1, 0),
            BackgroundColor3 = rgb(255, 255, 255),
            BorderColor3 = rgb(0, 0, 0),
            BorderSizePixel = 0,
            CanvasSize = dim2(0, 0, 0, 0)
        })library:apply_theme(ScrollingFrame, "accent", "ScrollBarImageColor3") 
        
        local UIPadding = library:create("UIPadding", {
            Parent = ScrollingFrame,
            Name = "",
            PaddingTop = dim(0, 4),
            PaddingBottom = dim(0, 4),
            PaddingRight = dim(0, 4),
            PaddingLeft = dim(0, 4)
        })
        
        local UIListLayout = library:create("UIListLayout", {
            Parent = ScrollingFrame,
            Name = "",
            Padding = dim(0, 4),
            SortOrder = Enum.SortOrder.LayoutOrder
        })
    -- 

    function cfg.create_player(player) 
        library.playerlist_data[tostring(player)] = {}
        local path = library.playerlist_data[tostring(player)]
        
        local TextButton = library:create("TextButton", {
            Parent = ScrollingFrame,
            Name = "",
            FontFace = library.font,
            TextColor3 = themes.preset.text,
            BorderColor3 = rgb(0, 0, 0),
            Text = "",
            BackgroundTransparency = 1,
            Size = dim2(1, 0, 0, 0),
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })

local player_name = library:create("TextLabel", {
    Parent = TextButton,
    FontFace = library.font,
    TextColor3 = themes.preset.text,
    BorderColor3 = rgb(0, 0, 0),
    Text = tostring(player) .. " (" .. players[tostring(player)].DisplayName .. ")",
    BorderSizePixel = 0,
    BackgroundTransparency = 1,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTruncate = Enum.TextTruncate.AtEnd,
    AutomaticSize = Enum.AutomaticSize.Y,
    TextSize = 12,
    LayoutOrder = -100, 
    BackgroundColor3 = rgb(255, 255, 255)
})
        library:apply_theme(player_name, "text", "TextColor3") 
        library:apply_theme(player_name, "accent", "TextColor3") 
        
        local priority_text = library:create("TextLabel", {
            Parent = TextButton,
            Name = "",
            FontFace = library.font,
            TextColor3 = tostring(player) ~= lp.Name and themes.preset.text or rgb(255, 255, 255),
            BorderColor3 = rgb(0, 0, 0),
            Text = tostring(player) ~= lp.Name and "Neutral" or "LocalPlayer",
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            AutomaticSize = Enum.AutomaticSize.Y,
            TextSize = 12,
            BackgroundColor3 = rgb(255, 255, 255)
        })

        local Frame = library:create("Frame", {
            Parent = priority_text,
            Name = "",
            Position = dim2(0, -10, 0, 0),
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(0, 1, 0, 12),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(main_holder, "outline", "BackgroundColor3") 
        
        local UIListLayout = library:create("UIListLayout", {
            Parent = TextButton,
            Name = "",
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalFlex = Enum.UIFlexAlignment.Fill,
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalFlex = Enum.UIFlexAlignment.Fill
        })
        
        local UIPadding = library:create("UIPadding", {
            Parent = TextButton,
            Name = "",
            PaddingRight = dim(0, 2),
            PaddingLeft = dim(0, 2)
        })

        local line = library:create("Frame", {
            Parent = ScrollingFrame,
            Name = "",
            BorderColor3 = rgb(0, 0, 0),
            Size = dim2(1, 0, 0, 1),
            BorderSizePixel = 0,
            BackgroundColor3 = themes.preset.outline
        })library:apply_theme(main_holder, "outline", "BackgroundColor3") 

        path.instance = TextButton 
        path.line = line 
        path.priority = "Neutral"
        path.priority_text = priority_text
        -- library.selected_player = players[tostring(player)]
        
        TextButton.MouseButton1Click:Connect(function()
            if tostring(player) == lp.Name then 
                return 
            end 

            if selected_button then 
                selected_button.TextColor3 = themes.preset.text 
                selected_button = nil 
            end     

            selected_button = player_name 
            player_name.TextColor3 = themes.preset.accent 

            library.selected_player = tostring(player)



            if cfg.labels.name then 
                cfg.labels.name.change_text("User: " .. tostring(player))
                cfg.labels.display.change_text("DisplayName: " .. players[tostring(player)].DisplayName)
                cfg.labels.uid.change_text("User Id: " .. players[tostring(player)].UserId)
            end
        end)

        return path 
    end 

    function cfg.search(text)
        for _, player in next, players:GetPlayers() do 
            local name = tostring(player)
            local path = library.playerlist_data[name]

            if path then 
                local sanity = string.lower(name):match(string.lower(text)) and true or false
                path.instance.Visible = sanity
                path.line.Visible = sanity
            end 
        end 
    end 

    function cfg.remove_player(player) 
        local path = library.playerlist_data[tostring(player)]
        path.instance:Destroy() 
        path.line:Destroy() 
        path = nil 
    end 

    function library.prioritize(text) 
        local path = library.playerlist_data[library.selected_player]
        
        if path then 
            path.priority_text.Text = text
            path.priority_text.TextColor3 = patterns[text]
            path.priority = text
        end 
    end 

    function library.get_priority(player) 
        local path = library.playerlist_data[tostring(player)]

        if path then 
            return path.priority
        end 
    end 

    players.PlayerAdded:Connect(cfg.create_player)
    players.PlayerRemoving:Connect(cfg.remove_player)
    
    for _, player in next, players:GetPlayers() do 
        local player_object = cfg.create_player(player.Name)
        insert(library.playerlist_data, player_object)
    end 

    cfg.labels.name = self:label({name = "Name: ??"})
    cfg.labels.display = self:label({name = "Display Name: ??"})
    cfg.labels.uid = self:label({name = "User Id: ??"})

    return setmetatable(cfg, library)
end

-- // Luarmor Checks
library:notification({ text = "SylithV2 - Script Succesfully Executed.", time = 3 })

local Premium = false
local ScriptVersion = "PolSec"

if LRM_ScriptVersion then
    ScriptVersion = LRM_ScriptVersion
end

if LRM_IsUserPremium or ScriptVersion == "PolSec" then
    Premium = true
    library:notification({ text = "SylithV2 - Welcome back", time = 3 })
else
    Premium = false
    library:notification({ text = "SylithV2 - Welcome back", time = 3 })
end

-- // Knock Check //
local function KnockCheck(player)
    if player and player.Character then
        local bodyEffects = player.Character:FindFirstChild("BodyEffects")
        if bodyEffects then
            local knockOut = bodyEffects:FindFirstChild("K.O")
            return knockOut and knockOut.Value == true
        end
    end

    return false
end

-- // Game Check //

local MainEvent = nil

if game:GetService("ReplicatedStorage"):FindFirstChild("MainEvent") then -- Da Hood
    MainEvent = game:GetService("ReplicatedStorage").MainEvent
elseif game:GetService("ReplicatedStorage"):FindFirstChild("MAINEVENT") then -- Idk Da Hood
    MainEvent = game:GetService("ReplicatedStorage").MAINEVENT
elseif game:GetService("ReplicatedStorage"):WaitForChild("MainRemotes"):WaitForChild("MainRemoteEvent") then -- Der Hood
    MainEvent = game:GetService("ReplicatedStorage"):WaitForChild("MainRemotes"):WaitForChild("MainRemoteEvent")
else
    print("Couldn't find MainEvent, game not supported.")
end


-- // Target Aim

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local function GetClosestCharacter()
    local Closest, ClosestDist = nil, math.huge

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local Head = player.Character.Head
            local ScreenPos, OnScreen = workspace.CurrentCamera:WorldToScreenPoint(Head.Position)

            if OnScreen then
                local Dist = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPos.X, ScreenPos.Y)).Magnitude
                if Dist < ClosestDist then
                    Closest, ClosestDist = player, Dist
                end
            end
        end
    end

    return Closest
end

local TweenService = game:GetService("TweenService")
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local VirtualInputManager = game:GetService('VirtualInputManager')
local M1Down = false
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        M1Down = true
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        M1Down = false
    end
end)

local shortestDistance = math.huge
game:GetService("RunService").Heartbeat:Connect(function(dt)
    if SylithV2.KillAura.Enabled and SylithV2.KillAura.Keybind and localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("Head") then
        for _, player in pairs(players:GetPlayers()) do
            if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") and not KnockCheck(player) and not player.Character:FindFirstChild("ForceField") then
                local distance = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                local Tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
                if distance <= SylithV2.KillAura.Distance and distance < shortestDistance and Tool then
                    local args = {
                        [1] = "ShootGun",
                        [2] = Tool.Handle,
                        [3] = Tool.Handle.Position,
                        [4] = player.Character.Head.Position,
                        [5] = player.Character.Head,
                        [6] = Vector3.new(0, 0, 0)
                    }
                      
                    MainEvent:FireServer(unpack(args))
                end
            end
        end
    end

    -- Auto Reload
    if SylithV2.AutoReload.Enabled and localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("Head") then
        tool = localPlayer.Character:FindFirstChildWhichIsA("Tool")
        if tool and tool:FindFirstChild("Ammo") then
            ammoValue = tool.Ammo.Value
            if ammoValue <= 0 then
                MainEvent:FireServer("Reload", tool)
            end
        end
    end
    
end)

-- Good Target Aim ( 90%+ UNC Method )
if not blockedGames[game.PlaceId] then
if getnamecallmethod then
    local Meta = getrawmetatable(game)
    local backupindex = Meta.__index
    setreadonly(Meta, false)
    local Handler = game:FindService("ReplicatedStorage").MainModule
    local Module = require(Handler)
    if workspace:FindFirstChild("Vehicles") then
        Module.Ignored = {workspace:WaitForChild("Vehicles"), workspace:WaitForChild("MAP"), workspace:WaitForChild("Ignored")}
    end

    Meta.__index = function(t, k)
        if k:lower() == "hit" then
            if SylithV2.TargetAim.Enabled and SylithV2.TargetAim.CSync == false and SylithV2.TargetAim.Target ~= "None" and localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("Head") then
                local TargetPlayer = players:FindFirstChild(SylithV2.TargetAim.Target)
                if TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("Head") and not TargetPlayer.Character:FindFirstChild("ForceField") then
                    if not KnockCheck(TargetPlayer) then
                        return TargetPlayer.Character.Head.CFrame
                    end
                end
            end
        end
        return backupindex(t, k)
    end
end
end
-- Hood Customs Forcehit

if getnamecallmethod and game.GameId == 9825515356 then
    local OldNamecall
    OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
    
        if method == "FireServer" and self.Name == "MainEvent" and args[1] == "Shoot" then

            if SylithV2.TargetAim.Enabled and SylithV2.TargetAim.AutoFire and SylithV2.TargetAim.Target ~= "None" and localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("Head") then
                local TargetPlayer = players:FindFirstChild(SylithV2.TargetAim.Target)
                if TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("Head") and not TargetPlayer.Character:FindFirstChild("ForceField") then
                    if not KnockCheck(TargetPlayer) then
                        local TargetPart = TargetPlayer.Character.Head
                        if TargetPart and args[2] then
                            for _, info in pairs(args[2][1]) do
                                info["Instance"] = TargetPart
                            end
                            for _, info in pairs(args[2][2]) do
                                info["thePart"] = TargetPart
                                info["theOffset"] = CFrame.new()
                            end
                            return OldNamecall(self, unpack(args))
                        end
                    end
                end
            end
        end
    
        return OldNamecall(self, ...)
    end)
end


local tracerOutline = Drawing.new("Line")
tracerOutline.Visible = false
tracerOutline.Color = SylithV2.TargetAim.TracerOutlineColor
tracerOutline.Thickness = 4

local tracer = Drawing.new("Line")
tracer.Visible = false
tracer.Color = SylithV2.TargetAim.TracerFillColor
tracer.Thickness = 2

game:GetService("RunService").Heartbeat:Connect(function(dt)
    
    -- Target Aim
    if SylithV2.TargetAim.Enabled and SylithV2.TargetAim.Target ~= "None" and localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("Head") then
        local TargetPlayer = players:FindFirstChild(SylithV2.TargetAim.Target)
        if TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("Head") and not KnockCheck(TargetPlayer) then
            local tool = localPlayer.Character:FindFirstChildOfClass("Tool")
            if tool and TargetPlayer.Character and (not TargetPlayer.Character:FindFirstChild("ForceField") or tool.Name == "[Rifle]") then

                local distance = (TargetPlayer.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                local Tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
    
                if Tool then
                    if SylithV2.TargetAim.AutoFire then
                        if game.PlaceId == 9825515356 then
                            local args = {
                                "Shoot",
                                {
                                    {
                                        [1] = {
                                            ["Instance"] = TargetPlayer.Character.Head,
                                            ["Normal"] = Vector3.new(0.9937344193458557, 0.10944880545139313, -0.022651424631476402),
                                            ["Position"] = Vector3.new(-141.78562927246094, 33.89368438720703, -365.6424865722656)
                                        },
                                        [2] = {
                                            ["Instance"] = TargetPlayer.Character.Head,
                                            ["Normal"] = Vector3.new(0.9937344193458557, 0.10944880545139313, -0.022651424631476402),
                                            ["Position"] = Vector3.new(-141.78562927246094, 33.89368438720703, -365.6424865722656)
                                        },
                                        [3] = {
                                            ["Instance"] = TargetPlayer.Character.Head,
                                            ["Normal"] = Vector3.new(0.9937343597412109, 0.10944879800081253, -0.022651422768831253),
                                            ["Position"] = TargetPlayer.Character.Head.Position 
                                        },
                                        [4] = {
                                            ["Instance"] = TargetPlayer.Character.Head,
                                            ["Normal"] = Vector3.new(0.9937344193458557, 0.10944880545139313, -0.022651424631476402),
                                            ["Position"] = TargetPlayer.Character.Head.Position 
                                        },
                                        [5] = {
                                            ["Instance"] = TargetPlayer.Character.Head,
                                            ["Normal"] = Vector3.new(0.9937344193458557, 0.10944880545139313, -0.022651424631476402),
                                            ["Position"] = Vector3.new(-141.79481506347656, 34.033607482910156, -365.369384765625)
                                        }
                                    },
                                    {
                                        [1] = {
                                            ["thePart"] = TargetPlayer.Character.Head,
                                            ["theOffset"] = CFrame.new(0, 0, 0)
                                        },
                                        [2] = {
                                            ["thePart"] = TargetPlayer.Character.Head,
                                            ["theOffset"] = CFrame.new(0, 0, 0)
                                        },
                                        [3] = {
                                            ["thePart"] = TargetPlayer.Character.Head,
                                            ["theOffset"] = CFrame.new(0, 0, 0)
                                        },
                                        [4] = {
                                            ["thePart"] = TargetPlayer.Character.Head,
                                            ["theOffset"] = CFrame.new(0, 0, 0)
                                        },
                                        [5] = {
                                            ["thePart"] = TargetPlayer.Character.Head,
                                            ["theOffset"] = CFrame.new(0, 0, 0)
                                        }
                                    },
                                    game.Players.LocalPlayer.Character.Head.Position,
                                    game.Players.LocalPlayer.Character.Head.Position,
                                    workspace:GetServerTimeNow()
                                }
                            }
                            MainEvent:FireServer(unpack(args))
                        else
                            if SylithV2.TargetAim.CSync == false then
                                local args = {
                                    [1] = "ShootGun",
                                    [2] = Tool.Handle,
                                    [3] = Tool.Handle.Position,
                                    [4] = TargetPlayer.Character.Head.Position,
                                    [5] = TargetPlayer.Character.Head,
                                    [6] = Vector3.new(0, 0, 0)
                                }
                                
                                MainEvent:FireServer(unpack(args))
                            end
                        end
                    else
                        -- Shitty Target Aim ( 90%- UNC Method )
                        if M1Down then
                            if not getnamecallmethod and SylithV2.TargetAim.CSync == false then
                                local args = {
                                    [1] = "ShootGun",
                                    [2] = Tool.Handle,
                                    [3] = Tool.Handle.Position,
                                    [4] = TargetPlayer.Character.Head.Position,
                                    [5] = TargetPlayer.Character.Head,
                                    [6] = Vector3.new(0, 0, 0)
                                }
                                  
                                MainEvent:FireServer(unpack(args))
                            end
                        end
                    end
                end
            end
        elseif KnockCheck(TargetPlayer) and SylithV2.TargetAim.AutoStomp and localPlayer.Character.BodyEffects.Reload.Value == false and SylithV2.TargetAim.Strafe == false then
            local bodyEffects = TargetPlayer.Character:FindFirstChild("BodyEffects")
            local isDead = bodyEffects and bodyEffects:FindFirstChild("SDeath") and bodyEffects.SDeath.Value
            if isDead == false then
                SavedPosition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(TargetPlayer.Character.UpperTorso.Position + Vector3.new(0, 3, 0))

                if SylithV2.HitEffects.HitNotifications then
                    if tick() - t >= 3 then
                        t = tick()
                        library:notification({ text = "SylithV2 - Attempted to Stomp Target: " .. TargetPlayer.Name, time = SylithV2.HitEffects.HitNotificationsTime })
                    end
                end
    
                MainEvent:FireServer("Stomp")
            
                game:GetService("RunService"):BindToRenderStep("RestoreCFrame", 199, function()
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = SavedPosition
                    game:GetService("RunService"):UnbindFromRenderStep("RestoreCFrame")
                end)
            end
        end

        if SylithV2.TargetAim.Highlight then
            if TargetPlayer.Character:FindFirstChild("Highlight") then
                TargetPlayer.Character.Highlight.FillColor = SylithV2.TargetAim.HighlightFillColor
                TargetPlayer.Character.Highlight.OutlineColor = SylithV2.TargetAim.HighlightOutlineColor
            else
                local Highlight = Instance.new("Highlight")
                Highlight.Parent = TargetPlayer.Character
            end
        end

        if SylithV2.TargetAim.LookAt then
local char = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local hum = char:FindFirstChildOfClass("Humanoid")
if hum then
    hum.AutoRotate = false -- or true depending on where it is
end
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(localPlayer.Character.HumanoidRootPart.Position, Vector3.new(TargetPlayer.Character.HumanoidRootPart.Position.X, localPlayer.Character.HumanoidRootPart.Position.Y, TargetPlayer.Character.HumanoidRootPart.Position.Z))
        else
local char = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local hum = char:FindFirstChildOfClass("Humanoid")
if hum then
    hum.AutoRotate = true -- or true depending on where it is
end
        end

        if SylithV2.TargetAim.Tracer then
            local mouseScreenPosition = UserInputService:GetMouseLocation()
        
            local head = TargetPlayer.Character:FindFirstChild("Head")
            local humanoidRootPart = TargetPlayer.Character:FindFirstChild("HumanoidRootPart")
        
            if head and humanoidRootPart then
                local humanoidRootPart_Position = humanoidRootPart.CFrame
                local humanoidRootPart_Size = humanoidRootPart.Size
        
                local adjustedPosition = humanoidRootPart_Position * CFrame.new(0, -humanoidRootPart_Size.Y, 0).p
        
                local headScreenPosition, onScreen = workspace.CurrentCamera:WorldToViewportPoint(head.Position)
        
                if onScreen then
                    local adjustedMousePosition = Vector2.new(mouseScreenPosition.X, mouseScreenPosition.Y)
        
                    local tool = localPlayer.Character:FindFirstChildOfClass("Tool")
                    if SylithV2.TargetAim.TracerPosition == "Tool" and tool and tool:FindFirstChild("Handle") then
                        local pos = workspace.CurrentCamera:WorldToViewportPoint(tool.Handle.Position)
                        tracer.From = Vector2.new(pos.X, pos.Y)
                        tracerOutline.From = Vector2.new(pos.X, pos.Y)
                    else
                        tracer.From = adjustedMousePosition
                        tracerOutline.From = adjustedMousePosition
                    end           

                    tracer.To = Vector2.new(headScreenPosition.X, headScreenPosition.Y)
                    tracerOutline.To = Vector2.new(headScreenPosition.X, headScreenPosition.Y)
        
                    tracerOutline.Visible = true
                    tracer.Visible = true
        
                    tracerOutline.Color = SylithV2.TargetAim.TracerOutlineColor
                    tracer.Color = SylithV2.TargetAim.TracerFillColor
                else
                    tracer.Visible = false
                    tracerOutline.Visible = false
                end
            end
        end
    else
local char = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local hum = char:FindFirstChildOfClass("Humanoid")
if hum then
    hum.AutoRotate = true -- or true depending on where it is
end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function(dt)
    if SylithV2.KillAura.StompAura and localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("Head") then
        for _, player in pairs(players:GetPlayers()) do
            if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") and KnockCheck(player) and not player.Character:FindFirstChild("ForceField") then
                local distance = (player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if distance <= SylithV2.KillAura.Distance and distance < shortestDistance then
                    local bodyEffects = player.Character:FindFirstChild("BodyEffects")
                    local isDead = bodyEffects and bodyEffects:FindFirstChild("SDeath") and bodyEffects.SDeath.Value
                    if isDead == false then
                        if player.Character:FindFirstChild("UpperTorso") and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") then
                            SavedPosition = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.UpperTorso.Position + Vector3.new(0, 3, 0))

                            MainEvent:FireServer("Stomp")
                        
                            game:GetService("RunService"):BindToRenderStep("RestoreCFrame", 199, function()
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = SavedPosition
                                game:GetService("RunService"):UnbindFromRenderStep("RestoreCFrame")
                            end)

                        end
                    end
                end
            end
        end
    end
end)

-- // Hit Sounds
local function createHitSound()
    local sound = Instance.new("Sound")
    sound.Parent = localPlayer.Character.HumanoidRootPart
    sound.SoundId = SylithV2.HitEffects.HitSoundID
    sound.Volume = SylithV2.HitEffects.HitSoundVolume

    sound:Play()

    sound.Ended:Connect(function()
        sound:Destroy()
    end)
end

local lastHealth = nil

game:GetService("RunService").Heartbeat:Connect(function(dt)
    
    if SylithV2.TargetAim.Enabled and SylithV2.TargetAim.Target ~= "None" then
        local TargetPlayer = players:FindFirstChild(SylithV2.TargetAim.Target)
        
        if TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("Humanoid") and TargetPlayer.Character:FindFirstChild("Head") and not TargetPlayer.Character:FindFirstChild("ForceField") then
            local humanoid = TargetPlayer.Character:FindFirstChild("Humanoid")
            
            if humanoid then
                local currentHealth = math.round(humanoid.Health)
                
                if lastHealth == nil or SylithV2.TargetAim.Target ~= lastTarget then
                    lastHealth = currentHealth
                end

                if currentHealth < lastHealth then
                    if SylithV2.HitEffects.HitNotifications then
                        library:notification({ text = "SylithV2 - Target Hit: " .. TargetPlayer.Name .. " - Health: " .. currentHealth, time = SylithV2.HitEffects.HitNotificationsTime })
                    end

                    if SylithV2.HitEffects.HitSounds then
                        createHitSound()
                    end
                end

                lastHealth = currentHealth
                lastTarget = SylithV2.TargetAim.Target
            end
        end
    end
end)



-- // Bullet Tracers
local function bullettracerlol(startPos, endPos)
    local startPart = Instance.new("Part")
    startPart.Name = "BulletStart"
    startPart.Anchored = true
    startPart.CanCollide = false
    startPart.Transparency = 1
    startPart.Size = Vector3.new(0.2, 0.2, 0.2)
    startPart.Material = Enum.Material.ForceField
    startPart.Color = Color3.new(1, 0, 0)
    startPart.Transparency = 1
    startPart.CanTouch = false
    startPart.CanQuery = false
    startPart.Massless = true
    startPart.CollisionGroupId = 0
    startPart.Position = startPos
    startPart.Parent = Workspace

    local endPart = Instance.new("Part")
    endPart.Name = "BulletEnd"
    endPart.Anchored = true
    endPart.CanCollide = false
    endPart.Size = Vector3.new(0.2, 0.2, 0.2)
    endPart.Material = Enum.Material.ForceField
    endPart.Color = Color3.new(1, 0, 0)
    endPart.Transparency = 1
    endPart.CanTouch = false
    endPart.CanQuery = false
    endPart.Massless = true
    endPart.CollisionGroupId = 0
    endPart.Position = endPos
    endPart.Parent = Workspace

    local beam = Instance.new("Beam")
    beam.Attachment0 = Instance.new("Attachment", startPart)
    beam.Attachment1 = Instance.new("Attachment", endPart)
    beam.Parent = startPart
    beam.FaceCamera = true
    beam.Color = ColorSequence.new(SylithV2.BulletTracers.Color)
    beam.Texture = SylithV2.BulletTracers.TextureID
    beam.LightEmission = 1
    beam.Transparency = NumberSequence.new(SylithV2.BulletTracers.Transparency)
    beam.Width0 = SylithV2.BulletTracers.Size
    beam.Width1 = SylithV2.BulletTracers.Size

    task.delay(SylithV2.BulletTracers.TimeAlive, function()
        if beam and beam.Parent then
            local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tween = TweenService:Create(beam, tweenInfo, { Width0 = 0, Width1 = 0 })
            tween:Play()
            
            tween.Completed:Wait()
        end

        if startPart and startPart.Parent then startPart:Destroy() end
        if endPart and endPart.Parent then endPart:Destroy() end
        if beam and beam.Parent then beam:Destroy() end
    end)

    return startPart, endPart, beam
end

if getnamecallmethod and MainEvent ~= nil then
    local mt = getrawmetatable(MainEvent)
    setreadonly(mt, false)
            
    local cloned_mt = table.clone(mt)
    
    local oldnamecall = cloned_mt.__namecall
    
    setrawmetatable(MainEvent, {
        __namecall = (function(self, ...)
            local args = { ... }
            if getnamecallmethod() == "FireServer" then
                if args[1] == "ShootGun" then
    
                    -- Bullet Tracers
                    if SylithV2.BulletTracers.Enabled then
                        bullettracerlol(args[3], args[4])
                    end

                    -- Hit Effects etc. Adding Later..
    
                end
            end
    
            return oldnamecall(self, unpack(args))
        end),
    
        __index = cloned_mt.__index,
        __newindex = cloned_mt.__newindex,
        __call = cloned_mt.__call,
        __tostring = cloned_mt.__tostring,
    })
end

-- // SelfVisuals
local originalCharacterColors = {}
local originalToolColors = {}

game:GetService("RunService").Heartbeat:Connect(function(dt)
    if game.Players.LocalPlayer.Character then
        local char = game.Players.LocalPlayer.Character

        if SylithV2.SelfVisuals.Character then
            for _, part in ipairs(char:GetChildren()) do
                if part:IsA("BasePart") then
                    if not originalCharacterColors[part] then
                        originalCharacterColors[part] = part.Color
                    end

                    part.Material = Enum.Material[SylithV2.SelfVisuals.CharacterMaterial]
                    part.Color = SylithV2.SelfVisuals.CharacterColor
                end
            end
        end

        -- Tool Material
        if SylithV2.SelfVisuals.Tool then
            local tool = char:FindFirstChildOfClass("Tool")
            if tool then
                for _, part in ipairs(tool:GetChildren()) do
                    if part:IsA("BasePart") then
                        if not originalToolColors[part] then
                            originalToolColors[part] = part.Color
                        end

                        part.Material = Enum.Material[SylithV2.SelfVisuals.ToolMaterial]
                        part.Color = SylithV2.SelfVisuals.ToolColor
                    end
                end
            end
        end
    end
end)
    

function ResetCharacterColors()
    local char = game.Players.LocalPlayer.Character
    if char then
        for part, originalColor in pairs(originalCharacterColors) do
            if part and part:IsA("BasePart") then
                part.Color = originalColor
            end
        end
        originalCharacterColors = {}
    end
end

function ResetToolColors()
    local char = game.Players.LocalPlayer.Character
    if char then
        local tool = char:FindFirstChildOfClass("Tool")
        if tool then
            for part, originalColor in pairs(originalToolColors) do
                if part and part:IsA("BasePart") then
                    part.Color = originalColor
                end
            end
        end
        originalToolColors = {}
    end
end

local SavedPosition = localPlayer.Character.HumanoidRootPart.CFrame

-- // Anti Stomp
game:GetService("RunService").Heartbeat:Connect(function(dt)

    if SylithV2.AntiStomp.Enabled then
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
            end

            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('MeshPart') or v:IsA('Part') then
                    v:Destroy()
                end
            end
            for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:IsA('Accessory') then
                    v.Handle:Destroy()
                end
            end
        end
    end
    
end)

if not LPH_OBFUSCATED then
	LPH_JIT_MAX = function(...) return (...) end
	LPH_NO_VIRTUALIZE = function(...) return (...) end
end
Config = Config or {}
Config.Box = {
	Enable = false,
	LocalEnable = false,
	Type = "Full",
	Color = Color3.fromRGB(255, 255, 255),
	Filled = {
		Enable = false,
		Transparency = 0.5,
		Gradient = {
			Enable = false,
			AutoRotation = false,
			Rotation = 0,
			Color = {
				Start = Color3.fromRGB(255, 255, 255),
				End = Color3.fromRGB(0, 255, 0)
			},
			ManualRotation = false
		}
	}
}

local guiRoot = Instance.new("ScreenGui")
guiRoot.Name = "ESP_Filled_GUI"
guiRoot.ResetOnSpawn = false
guiRoot.Parent = game.CoreGui
local cache, connections, utility = {}, {}, {}
utility.funcs = utility.funcs or {}

local lp = game:GetService("Players").LocalPlayer
local cam = workspace.CurrentCamera
local guiInset = game:GetService("GuiService"):GetGuiInset()

utility.funcs.render = LPH_NO_VIRTUALIZE(function(p)
	if not p then return end
	cache[p] = cache[p] or {}
	cache[p].Box = cache[p].Box or {}
	cache[p].Box.Full = cache[p].Box.Full or {}
	local f = cache[p].Box.Full
	if not f.Square then
		f.Square = Drawing.new("Square")
		f.Square.Visible = false
		f.Square.Filled = false
		f.Square.Thickness = 2
		f.Square.Transparency = 1
	end
	if not f.Outline then
		f.Outline = Drawing.new("Square")
		f.Outline.Visible = false
		f.Outline.Filled = false
		f.Outline.Thickness = 1
		f.Outline.Transparency = 1
	end
	if not f.Inline then
		f.Inline = Drawing.new("Square")
		f.Inline.Visible = false
		f.Inline.Filled = false
		f.Inline.Thickness = 1
		f.Inline.Transparency = 1
	end
	if not f.Filled then
		local fr = Instance.new("Frame")
		fr.Name = "ESP_Filled_"..p.Name
		fr.Parent = guiRoot
		fr.Visible = false
		fr.ZIndex = 1
		fr.BorderSizePixel = 0
		fr.BackgroundTransparency = Config.Box.Filled.Transparency
		fr.BackgroundColor3 = Config.Box.Color
		f.Filled = fr
	end
end)

utility.funcs.clear_esp = LPH_NO_VIRTUALIZE(function(p)
	if not cache[p] then return end
	local f = cache[p].Box and cache[p].Box.Full
	if f then
		if f.Square then f.Square.Visible = false end
		if f.Outline then f.Outline.Visible = false end
		if f.Inline then f.Inline.Visible = false end
		if f.Filled then f.Filled.Visible = false end
	end
end)

utility.funcs.update = LPH_NO_VIRTUALIZE(function(p)
	if not p or not cache[p] then return end
	local c = p.Character
	local lc = lp.Character
	if not c or not lc or not cam then utility.funcs.clear_esp(p) return end
	local hrp = c:FindFirstChild("HumanoidRootPart")
	if not hrp then utility.funcs.clear_esp(p) return end
	local pos2D, onscreen = cam:WorldToViewportPoint(hrp.Position)
	if not onscreen then utility.funcs.clear_esp(p) return end
	local topY = cam:WorldToViewportPoint(hrp.Position + Vector3.new(0,3,0)).Y
	local bottomY = cam:WorldToViewportPoint(hrp.Position - Vector3.new(0,1,0)).Y
	local sizeY = (bottomY-topY)/2
	local sz = Vector2.new(math.floor(sizeY*1.5), math.floor(sizeY*3.2))
 local yOffset = math.floor(sz.Y * 0.05)
local pos = Vector2.new(math.floor(pos2D.X - sz.X/2), math.floor(pos2D.Y - sz.Y/2 + yOffset))
	local f = cache[p].Box.Full
	local enabled = (p==lp and Config.Box.LocalEnable) or (p~=lp and Config.Box.Enable)
	if enabled and Config.Box.Type=="Full" then
		if f.Square then
			f.Square.Visible = true
			f.Square.Position = pos
			f.Square.Size = sz
			f.Square.Color = Config.Box.Color
			f.Square.Thickness = 2
			f.Square.Filled = false
		end
		if f.Outline then
			f.Outline.Visible = true
			f.Outline.Position = pos-Vector2.new(1,1)
			f.Outline.Size = sz+Vector2.new(2,2)
			f.Outline.Color = Color3.fromRGB(0,0,0)
			f.Outline.Thickness = 1
			f.Outline.Filled = false
		end
		if f.Inline then
			f.Inline.Visible = true
			f.Inline.Position = pos+Vector2.new(1,1)
			f.Inline.Size = sz-Vector2.new(2,2)
			f.Inline.Color = Color3.fromRGB(0,0,0)
			f.Inline.Thickness = 1
			f.Inline.Filled = false
		end
		if Config.Box.Filled.Enable and f.Filled then
			f.Filled.Position = UDim2.new(0,pos.X,0,pos.Y-guiInset.Y)
			f.Filled.Size = UDim2.new(0,sz.X,0,sz.Y)
			f.Filled.BackgroundTransparency = Config.Box.Filled.Transparency or 0
			if Config.Box.Filled.Gradient.Enable then
				local g = f.Filled:FindFirstChild("Gradient") or Instance.new("UIGradient")
				g.Name = "Gradient"
				g.Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Config.Box.Filled.Gradient.Color.Start or Config.Box.Color),
					ColorSequenceKeypoint.new(1, Config.Box.Filled.Gradient.Color.End or Config.Box.Color)
				})
				if Config.Box.Filled.Gradient.AutoRotation then
					g.Rotation = math.sin(tick()*2)*180
				else
					g.Rotation = Config.Box.Filled.Gradient.Rotation or 0
				end
				if not g.Parent then g.Parent = f.Filled end
				f.Filled.BackgroundColor3 = Color3.fromRGB(255,255,255)
			else
				local g = f.Filled:FindFirstChild("Gradient")
				if g then g:Destroy() end
				f.Filled.BackgroundColor3 = Config.Box.Color
			end
			f.Filled.Visible = true
		elseif f.Filled then
			local g = f.Filled:FindFirstChild("Gradient")
			if g then g:Destroy() end
			f.Filled.Visible = false
		end
	else
		if f then
			if f.Square then f.Square.Visible = false end
			if f.Outline then f.Outline.Visible = false end
			if f.Inline then f.Inline.Visible = false end
			if f.Filled then f.Filled.Visible = false end
		end
	end
end)

for _, p in ipairs(Players:GetPlayers()) do
	if p ~= lp then utility.funcs.render(p) end
end
if Config.Box.LocalEnable then utility.funcs.render(lp) end

Players.PlayerAdded:Connect(function(p)
	if p ~= lp then utility.funcs.render(p) end
	if p==lp and Config.Box.LocalEnable then utility.funcs.render(lp) end
end)

Players.PlayerRemoving:Connect(function(p)
	if p~=lp then utility.funcs.clear_esp(p); cache[p]=nil end
	if p==lp then utility.funcs.clear_esp(p); cache[p]=nil end
end)

connections.main = connections.main or {}
connections.main.RenderStepped = game:GetService("RunService").RenderStepped:Connect(function()
	for p,_ in pairs(cache) do
		if p and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
			local _, v = cam:WorldToViewportPoint(p.Character.HumanoidRootPart.Position)
			if v then
				utility.funcs.update(p)
			else
				utility.funcs.clear_esp(p)
			end
		else
			utility.funcs.clear_esp(p)
		end
	end
end)

Configbar = {
    Bars = {
        Health = {
            Activated = false,
            Outline = false,
            Lerp = false,
            Color = Color3.fromRGB(0, 255, 0),
            Color1 = Color3.fromRGB(0, 255, 0),
            Color2 = Color3.fromRGB(255, 255, 0),
            Color3 = Color3.fromRGB(255, 0, 0),
            LocalActivated = false
        }
    }
}

local gui_inset = game:GetService("GuiService"):GetGuiInset() local utility, connections, cache = {}, {}, {} utility.funcs = utility.funcs or {} utility.funcs.render = function(player) if not player then return end cache[player] = cache[player] or {} cache[player].Bars = cache[player].Bars or {} if cache[player].Bars.Health then return end local healthGui = Instance.new("ScreenGui") healthGui.Name = player.Name .. "_HealthBar" healthGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling healthGui.Parent = game.CoreGui local healthOutline = Instance.new("Frame") healthOutline.BackgroundColor3 = Color3.new(0, 0, 0) healthOutline.BorderSizePixel = 0 healthOutline.Name = "Outline" healthOutline.Parent = healthGui local healthFill = Instance.new("Frame") healthFill.BackgroundTransparency = 0 healthFill.BorderSizePixel = 0 healthFill.Name = "Fill" healthFill.Parent = healthOutline local healthGradient = Instance.new("UIGradient", healthFill) healthGradient.Rotation = 90 cache[player].Bars.Health = { Gui = healthGui, Outline = healthOutline, Frame = healthFill, Gradient = healthGradient, LastHealth = 1 } end utility.funcs.clear_esp = function(player) if not cache[player] then return end local h = cache[player].Bars and cache[player].Bars.Health if h then h.Frame.Visible = false h.Outline.Visible = false end end utility.funcs.update = function(player) if not player or not cache[player] then return end local character = player.Character local client_character = game.Players.LocalPlayer.Character local Camera = workspace.CurrentCamera if not character or not client_character or not Camera then return end local rootPart = character:FindFirstChild("HumanoidRootPart") local humanoid = character:FindFirstChildWhichIsA("Humanoid") if not rootPart or not humanoid then utility.funcs.clear_esp(player) return end local hrp2D, onScreen = Camera:WorldToViewportPoint(rootPart.Position) if not onScreen then utility.funcs.clear_esp(player) return end local charSize = (Camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0,1,0)).Y - Camera:WorldToViewportPoint(rootPart.Position + Vector3.new(0,3,0)).Y)/2 local size = Vector2.new(math.floor(charSize * 1.5), math.floor(charSize * 3.2)) local position = Vector2.new(math.floor(hrp2D.X - charSize * 1.5/2), math.floor(hrp2D.Y - charSize * 3/2)) local h = cache[player].Bars.Health if not h then return end local bar_height = size.Y local bar_width = 3 local base_x = position.X local y = position.Y - gui_inset.Y if ((player ~= game.Players.LocalPlayer and Configbar.Bars.Health.Activated) or (player == game.Players.LocalPlayer and Configbar.Bars.Health.LocalActivated)) and Configbar.Bars.Health.Outline then local targetHealth = math.clamp(humanoid.Health / humanoid.MaxHealth, 0, 1) local lerpedHealth = targetHealth if Configbar.Bars.Health.Lerp then lerpedHealth = h.LastHealth + (targetHealth - h.LastHealth) * 0.05 end h.LastHealth = lerpedHealth local x = base_x - (bar_width + 4) h.Outline.Visible = true h.Outline.Position = UDim2.new(0, x - 1, 0, y - 1) h.Outline.Size = UDim2.new(0, bar_width + 2, 0, bar_height + 1.1) h.Outline.BackgroundTransparency = 0.2 h.Frame.Visible = true h.Frame.Position = UDim2.new(0, 1, 0, (1 - lerpedHealth) * bar_height + 1) h.Frame.Size = UDim2.new(0, bar_width, 0, lerpedHealth * bar_height) if Configbar.Bars.Health.Lerp then h.Gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Configbar.Bars.Health.Color1), ColorSequenceKeypoint.new(0.5, Configbar.Bars.Health.Color2), ColorSequenceKeypoint.new(1, Configbar.Bars.Health.Color3) }) else h.Gradient.Color = ColorSequence.new(Configbar.Bars.Health.Color) end else h.Frame.Visible = false h.Outline.Visible = false end end for _, player in ipairs(game:GetService("Players"):GetPlayers()) do if player ~= game.Players.LocalPlayer then utility.funcs.render(player) end end if Configbar.Bars.Health.LocalActivated then utility.funcs.render(game.Players.LocalPlayer) end game:GetService("Players").PlayerAdded:Connect(function(player) if player ~= game.Players.LocalPlayer then utility.funcs.render(player) end end) game:GetService("Players").PlayerRemoving:Connect(function(player) if player ~= game.Players.LocalPlayer then utility.funcs.clear_esp(player) cache[player] = nil end end) connections.main = connections.main or {} connections.main.RenderStepped = game:GetService("RunService").Heartbeat:Connect(function() for player in pairs(cache) do utility.funcs.update(player) end end)

getgenv().Selec = {
    Box = {
        Font = 'ProggyClean',
    },
    Text = {
        Enable = false,
        LocalEnable = false,
        Name = {
            Enable = false,
            Teamcheck = false,
            Color = Color3.fromRGB(255, 255, 255);
        },
        Studs = {
            Enable = false,
            Color = Color3.fromRGB(255, 255, 255);
        },
        Tool = {
            Enable = false,
            Color = Color3.fromRGB(255, 255, 255);
        },
    },
}

if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...)
        return (...)
    end
    LPH_NO_VIRTUALIZE = function(...)
        return (...)
    end
end

local Overlay = {};
local draw = nil

function Overlay.NewFont(Name, Weight, Style, Asset)
    if not isfile(Asset.Id) then writefile(Asset.Id, Asset.Font) end
    if isfile(Name .. '.font') then delfile(Name .. '.font') end
    local Data = {
        name = Name,
        faces = {
            {
                name = 'Regular',
                weight = Weight,
                style = Style,
                assetId = getcustomasset(Asset.Id),
            },
        },
    }
    writefile(Name .. '.font', game:GetService("HttpService"):JSONEncode(Data))
    return getcustomasset(Name .. '.font');
end

local Fonts = { ['ProggyClean'] = nil }

Fonts['ProggyClean'] = Font.new(Overlay.NewFont('Clean', 100, 'normal', {
    Id = 'ProggyClean.ttf',
    Font = crypt.base64.decode('AAEAAAAMAIAAAwBAT1MvMojrdJAAAAFIAAAATmNtYXACEiN1AAADoAAAAVJjdnQgAAAAAAAABP')
}))

local Overlay
Selec = Selec;
Drawing = Drawing;

local gui_inset = game:GetService("GuiService"):GetGuiInset()

local utility, connections, cache = {}, {}, {}
utility.funcs = utility.funcs or {}

utility.funcs.make_text = function(parent)
    local d = Instance.new("TextLabel")
    d.Parent = parent
    d.Size = UDim2.new(0, 4, 0, 4)
    d.BackgroundTransparency = 1
    d.TextColor3 = Color3.fromRGB(255, 255, 255)
    d.TextStrokeTransparency = 0
    d.TextScaled = false
    d.TextSize = 10
    d.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    d.FontFace = Fonts[Selec.Box.Font]
    return d
end

utility.funcs.render = LPH_NO_VIRTUALIZE(function(player)
    if not player then return end
    local pCache = cache[player]
    if not pCache then cache[player] = {} pCache = cache[player] end
    pCache.Text = {}

    local sgStuds, sgName, sgTool = Instance.new("ScreenGui"), Instance.new("ScreenGui"), Instance.new("ScreenGui")
    sgStuds.Parent, sgName.Parent, sgTool.Parent = game.CoreGui, game.CoreGui, game.CoreGui

    local make = utility.funcs.make_text
    pCache.Text.Studs = make(sgStuds)
    pCache.Text.Name = make(sgName)
    pCache.Text.Tool = make(sgTool)
end)

utility.funcs.clear_esp = LPH_NO_VIRTUALIZE(function(player)
    local t = cache[player] and cache[player].Text
    if t then for _,v in pairs(t) do if v then v.Visible = false end end end
end)

utility.funcs.update = LPH_NO_VIRTUALIZE(function(player)
    local tCache = cache[player]
    if not player or not tCache then return end

    local c, cam = player.Character, workspace.CurrentCamera
    if not c or not cam then return utility.funcs.clear_esp(player) end
    local hrp = c:FindFirstChild("HumanoidRootPart")
    if not hrp then return utility.funcs.clear_esp(player) end

    local hrp2D, onScreen = cam:WorldToViewportPoint(hrp.Position)
    if not onScreen then return utility.funcs.clear_esp(player) end

    local charSize = (cam:WorldToViewportPoint(hrp.Position - Vector3.new(0,1,0)).Y - cam:WorldToViewportPoint(hrp.Position + Vector3.new(0,3,0)).Y)/2
    local size = Vector2.new(math.floor(charSize*1.5), math.floor(charSize*3.2))
    local pos = Vector2.new(math.floor(hrp2D.X - size.X/2), math.floor(hrp2D.Y - size.Y/2) - gui_inset.Y)

    if not ((player ~= game.Players.LocalPlayer and Selec.Text.Enable) or (player == game.Players.LocalPlayer and Selec.Text.LocalEnable)) then
        return utility.funcs.clear_esp(player)
    end

    local baseX = pos.X + size.X/2
    local baseY = pos.Y
    local t = tCache.Text

    if ((player == game.Players.LocalPlayer and Selec.Text.LocalEnable and Selec.Text.Name.Enable) or (player ~= game.Players.LocalPlayer and Selec.Text.Name.Enable)) then
        t.Name.Visible = true
        t.Name.Position = UDim2.new(0, baseX - t.Name.AbsoluteSize.X/2, 0, baseY - 9)
        t.Name.Text = player.Name
        t.Name.TextColor3 = Selec.Text.Name.Color
    else t.Name.Visible = false end

    if ((player == game.Players.LocalPlayer and Selec.Text.LocalEnable and Selec.Text.Tool.Enable) or (player ~= game.Players.LocalPlayer and Selec.Text.Tool.Enable)) then
        t.Tool.Visible = true
        t.Tool.Position = UDim2.new(0, baseX - t.Tool.AbsoluteSize.X/2, 0, baseY + size.Y + 15)
        local tool = c:FindFirstChildOfClass("Tool")
        t.Tool.Text = tool and tool.Name or "none"
        t.Tool.TextColor3 = Selec.Text.Tool.Color
    else t.Tool.Visible = false end

    if ((player == game.Players.LocalPlayer and Selec.Text.LocalEnable and Selec.Text.Studs.Enable) or (player ~= game.Players.LocalPlayer and Selec.Text.Studs.Enable)) then
        t.Studs.Visible = true
        t.Studs.Position = UDim2.new(0, baseX - t.Studs.AbsoluteSize.X/2, 0, baseY + size.Y + 5)
        t.Studs.Text = string.format("[%.0fm]", (cam.CFrame.Position - hrp.Position).Magnitude * 0.28)
        t.Studs.TextColor3 = Selec.Text.Studs.Color
    else t.Studs.Visible = false end
end)

for _, player in ipairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer then utility.funcs.render(player) end
end
if Selec.Text.LocalEnable then utility.funcs.render(game.Players.LocalPlayer) end

game.Players.PlayerAdded:Connect(function(player)
    if player ~= game.Players.LocalPlayer then utility.funcs.render(player) end
end)
game.Players.PlayerRemoving:Connect(function(player)
    if player ~= game.Players.LocalPlayer then utility.funcs.clear_esp(player) end
end)

connections.main = connections.main or {}
connections.main.RenderStepped = game:GetService("RunService").Heartbeat:Connect(function()
    for p in pairs(cache) do utility.funcs.update(p) end
end)

getgenv().AutoArmor = { Enabled = true }

game:GetService('RunService').Heartbeat:Connect(function()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("BodyEffects") and char.BodyEffects:FindFirstChild("Armor") then
        if getgenv().AutoArmor.Enabled and char.BodyEffects.Armor.Value < 100 then
            local shopItem = game.Workspace.Ignored.Shop:FindFirstChild('[High-Medium Armor] - $2513')
            if shopItem and shopItem:FindFirstChild("Head") then
                local savedPos = char.HumanoidRootPart.CFrame
                char.HumanoidRootPart.CFrame = shopItem.Head.CFrame
                fireclickdetector(shopItem:FindFirstChildOfClass("ClickDetector"))
                game:GetService("RunService"):BindToRenderStep("RestoreCFrame", 199, function()
                    char.HumanoidRootPart.CFrame = savedPos
                    game:GetService("RunService"):UnbindFromRenderStep("RestoreCFrame")
                end)
            end
        end
    end
end)

-- // teleport map
local teleportLocations = {
    ["Bank"] = CFrame.new(-442, 39, -284),
    ["Inside Bank"] = CFrame.new(-443, 23, -284),
    ["Vault"] = CFrame.new(-658, -30, -285),
    ["Casino"] = CFrame.new(-1004.3250732421875, 21.254993438720703, -185.85183715820312),
    ["Revolver"] = CFrame.new(-634, 21, -132),
    ["LMG"] = CFrame.new(-626, 23, -295),
    ["AUG"] = CFrame.new(-270.60198974609375, 52.26362609863281, -224.31044006347656),
    ["Downhill"] = CFrame.new(-559, 8, -735),
    ["Military"] = CFrame.new(-40, 65, -926),
    ["Football pitch"] = CFrame.new(-748.701416015625, 22.280269622802734, -485.4525146484375),
    ["Uphill"] = CFrame.new(481, 48, -602),
    ["Police"] = CFrame.new(-264.7526550292969, 21.799951553344727, -78.07140350341797),
    ["School"] = CFrame.new(-594, 21, 173),
    ["Higharmor"] = CFrame.new(-934.5679931640625, -28.5000057220459, 565.1806030273438),
    ["Warehouse"] = CFrame.new(416.2104187011719, 39.27920150756836, -1.0978244543075562),
    ["Barbie Spawn Point"] = CFrame.new(-153.487548828125, 53.81060791015625, -99.07208251953125)
}

local locationKeys = {}
for name, _ in pairs(teleportLocations) do
    table.insert(locationKeys, name)
end
local selectedLocation = nil

-- // Hitbox Expander //
local RS = cloneref(game:GetService("RunService"))
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local highlights = {}
RS.RenderStepped:Connect(function()
    if not SylithV2.HitboxExpander.Enabled then return end

    for _, Player in pairs(Players:GetPlayers()) do
        if Player == Client then continue end
        local char = Player.Character or Player.CharacterAdded:Wait()
        if not char then continue end
        local HRP = char:FindFirstChild("HumanoidRootPart")
        if not HRP then continue end

        HRP.Size = Vector3.new(SylithV2.HitboxExpander.Size, SylithV2.HitboxExpander.Size, SylithV2.HitboxExpander.Size)
        HRP.CanCollide = false

        if SylithV2.HitboxExpander.Visualize then
            if not highlights[Player] then
                local Visualize = Instance.new("Highlight")
                HRP.Transparency = 0.9
                Visualize.Parent = HRP
                Visualize.FillColor = SylithV2.HitboxExpander.Color
                Visualize.OutlineColor = SylithV2.HitboxExpander.OutlineColor
                Visualize.FillTransparency = SylithV2.HitboxExpander.FillTransparency
                Visualize.OutlineTransparency = SylithV2.HitboxExpander.OutlineTransparency
                highlights[Player] = Visualize
            else
                local Visualize = highlights[Player]
                HRP.Transparency = 0.9
                Visualize.FillColor = SylithV2.HitboxExpander.Color
                Visualize.OutlineColor = SylithV2.HitboxExpander.OutlineColor
                Visualize.FillTransparency = SylithV2.HitboxExpander.FillTransparency
                Visualize.OutlineTransparency = SylithV2.HitboxExpander.OutlineTransparency
            end
        else
            local Visualize = highlights[Player]
            if Visualize then
                Visualize:Destroy()
                HRP.Transparency = 1
                highlights[Player] = nil
            end
        end
    end
end)

local activeNotifs = {}
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local function showNotification(data)
    local text, time, category = data.text, data.time or 1, data.category or text
    if activeNotifs[category] then return end
    activeNotifs[category] = true
    library:notification({ text = text, time = time })
    task.delay(time, function() activeNotifs[category] = nil end)
end

local infoDraw = Drawing.new("Text")
infoDraw.Size = 16
infoDraw.Color = Color3.fromRGB(255, 255, 255)
infoDraw.Center = true
infoDraw.Outline = true
infoDraw.Visible = false
infoDraw.Font = 2

local viewportSize = workspace.CurrentCamera.ViewportSize
infoDraw.Position = Vector2.new(viewportSize.X/2, viewportSize.Y/1.3)

RunService.Heartbeat:Connect(function(dt)
    if SylithV2.Target.AutoKill then
        local TargetName = SylithV2.Target.Target
        if TargetName then
            local Target = Players:FindFirstChild(TargetName)
            if Target and Target.Character then
                local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                local head = localPlayer.Character and localPlayer.Character:FindFirstChild("Head")
                local tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
                local toolHandle = tool and tool:FindFirstChild("Handle")
                local targetHRP = Target.Character:FindFirstChild("HumanoidRootPart")
                local targetHead = Target.Character:FindFirstChild("Head")
                local targetHum = Target.Character:FindFirstChildOfClass("Humanoid")
                local SavedPosition = hrp and hrp.CFrame

if targetHRP and targetHum then
    local velocity = targetHRP.Velocity
    local distance = (hrp.Position - targetHRP.Position).Magnitude
    local resolving

    if distance <= 20 then
        resolving = 100
    elseif distance <= 100 then
        resolving = 80 + (20 - math.min(20, distance-20)) * (20/80)  -- or math.floor(80 + ((100 - distance)/80)*20)
        resolving = math.clamp(math.floor(80 + (100 - distance)/80*20), 80, 100)
        resolving = math.clamp(math.floor(80 + (100 - distance)/80*20), 80, 100)
    elseif distance <= 500 then
        resolving = math.floor(68 + ((500 - distance)/(500 - 100))*30)
    elseif distance <= 1000 then
        resolving = math.floor(49 + ((1000 - distance)/(1000 - 500))*25)
    else
        resolving = math.random(0, 25)
    end

    infoDraw.Visible = true
    infoDraw.Text = string.format(
        "target: %s | health: %.1f | resolving: %d/100 | vector: %.2f, %.2f, %.2f",
        Target.DisplayName,
        targetHum.Health,
        resolving,
        velocity.X,
        velocity.Y,
        velocity.Z
    )
else
    infoDraw.Visible = false
end

                if hrp and head and toolHandle and targetHRP and targetHead then
                    if not KnockCheck(Target) then
                        if not Target.Character:FindFirstChild("ForceField") or tool.Name == "[Rifle]" then
                            hrp.CFrame = CFrame.lookAt(
                                targetHead.Position + Vector3.new(math.random(-15,15), math.random(-15,15), math.random(-15,15)),
                                targetHead.Position
                            )
                            showNotification({ text = "SylithV2 - Shooting Target.", time = 1, category = "shoot" })
                            MainEvent:FireServer("ShootGun", toolHandle, toolHandle.Position, targetHead.Position, targetHead, Vector3.new(0,1,0))
                        else
                            hrp.CFrame += Vector3.new(math.random(-80000,80000), math.random(0,80000), math.random(-80000,80000))
                            showNotification({ text = "SylithV2 - Waiting.. Target has forcefield.", time = 1, category = "protection" })
                            MainEvent:FireServer("Reload", tool)
                        end

                        if SylithV2.Target.AutoKillDesync then
                            RunService:BindToRenderStep("RestoreCFrame", 199, function()
                                hrp.CFrame = SavedPosition
                                RunService:UnbindFromRenderStep("RestoreCFrame")
                            end)
                        end
                    else
                        local bodyEffects = Target.Character:FindFirstChild("BodyEffects")
                        local isDead = bodyEffects and bodyEffects:FindFirstChild("SDeath") and bodyEffects.SDeath.Value
                        if isDead == false then
                            if Target.Character:FindFirstChild("UpperTorso") and Target.Character:FindFirstChild("HumanoidRootPart") then
                                hrp.CFrame = CFrame.new(Target.Character.UpperTorso.Position + Vector3.new(0,3,0))
                                showNotification({ text = "SylithV2 - Stomping Target..", time = 1, category = "stomp" })
                                MainEvent:FireServer("Stomp")
                            end
                        elseif isDead == true then
                            hrp.CFrame += Vector3.new(math.random(-80000,80000), math.random(0,80000), math.random(-80000,80000))
                            showNotification({ text = "SylithV2 - Waiting.. Target is currently dead.", time = 1, category = "dead" })
                            MainEvent:FireServer("Reload", tool)
                        end

                        if SylithV2.Target.AutoKillDesync then
                            RunService:BindToRenderStep("RestoreCFrame", 199, function()
                                hrp.CFrame = SavedPosition
                                RunService:UnbindFromRenderStep("RestoreCFrame")
                            end)
                        end
                    end
                else
                    if hrp then
                        hrp.CFrame += Vector3.new(math.random(-80000,80000), math.random(0,80000), math.random(-80000,80000))
                    end
                    showNotification({ text = "SylithV2 - Waiting.. Equip your gun while using 'Auto Kill Target'.", time = 1, category = "equip" })

                    if SylithV2.Target.AutoKillDesync and hrp then
                        RunService:BindToRenderStep("RestoreCFrame", 199, function()
                            hrp.CFrame = SavedPosition
                            RunService:UnbindFromRenderStep("RestoreCFrame")
                        end)
                    end
                end
            else
                infoDraw.Visible = false
                local hrp = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                if hrp then hrp.CFrame = CFrame.new(0, 500, 0) end
                showNotification({ text = "SylithV2 - Target not found.", time = 3, category = "notfound" })
            end
        else
            infoDraw.Visible = false
        end
    else
        infoDraw.Visible = false
    end
end)

local window = library:window({
    name = os.date("SylithV2 - %b %d %Y"),
    size = dim2(0, 1500, 0, 639)
})

local watermark = library:watermark({
    default = os.date("SylithV2 - %b %d %Y - %H:%M:%S")
})

local Combat = window:tab({name = "Main"})
local Visuals = window:tab({name = "Visuals"})
local Misc = window:tab({name = "Misc"})
local PlayersTab = window:tab({name = "Players"})
local Settings = window:tab({name = "Settings"})

local column = Combat:column()
local section = column:section({name = "Target Aim"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
    section:toggle({name = "Enabled", flag = "targetaim_enabled", callback = function(Value)
        SylithV2.TargetAim.Enabled = Value
    end}):keybind({name = "target aim", flag = "targetaim_bind", callback = function(Value)
        if SylithV2.TargetAim.Enabled then
            if Value == false then
                SylithV2.TargetAim.Target = "None"
                if SylithV2.TargetAim.Highlight then
                    for _, player in ipairs(game:GetService("Players"):GetChildren()) do
                        if player.Character then
                            if player.Character:FindFirstChild("Highlight") and player.Character:FindFirstChild("Highlight").FillColor == SylithV2.TargetAim.HighlightFillColor then
                                if SylithV2.ExtraESP.HighlightEnabled == false then
                                    player.Character:FindFirstChild("Highlight"):Destroy()
                                else
                                    player.Character:FindFirstChild("Highlight").FillColor = SylithV2.ExtraESP.HighlightFillColor
                                    player.Character:FindFirstChild("Highlight").OutlineColor = SylithV2.ExtraESP.HighlightOutlineColor
                                end
                            end
                        end
                    end
                end
                tracer.Visible = false
                tracerOutline.Visible = false
            elseif Value == true then
                local target = GetClosestCharacter()
                if target then
                    SylithV2.TargetAim.Target = target.Name
                else
                    SylithV2.TargetAim.Target = "None"
                    if SylithV2.TargetAim.Highlight then
                        for _, player in ipairs(game:GetService("Players"):GetChildren()) do
                            if player.Character then
                                if player.Character:FindFirstChild("Highlight") and player.Character:FindFirstChild("Highlight").FillColor == SylithV2.TargetAim.HighlightFillColor then
                                    player.Character:FindFirstChild("Highlight"):Destroy()
                                end
                            end
                        end
                    end
                    tracer.Visible = false
                    tracerOutline.Visible = false
                end
            end
        end
    end})
    section:toggle({name = "Auto Fire", flag = "targetaim_autofire", callback = function(Value)
        SylithV2.TargetAim.AutoFire = Value
    end})
    section:toggle({name = "Highlight", flag = "targetaim_highlight", callback = function(Value)
        SylithV2.TargetAim.Highlight = Value
        for _, player in ipairs(game:GetService("Players"):GetChildren()) do
            if player.Character and player.Character:FindFirstChild("Highlight") and player.Character:FindFirstChild("Highlight").FillColor == SylithV2.TargetAim.HighlightFillColor then
                player.Character.Highlight:Destroy()
            end
        end
    end}):colorpicker({name = "main", flag = "highlightfill", color = rgb(125, 175, 142), callback = function(Value)
        SylithV2.TargetAim.HighlightFillColor = Value
    end}):colorpicker({name = "outline", flag = "highlightoutline", color = rgb(105, 145, 110), callback = function(Value)
        SylithV2.TargetAim.HighlightOutlineColor = Value
    end})
    section:toggle({name = "Tracer", flag = "targetaim_tracer", callback = function(Value)
        SylithV2.TargetAim.Tracer = Value
        tracer.Visible = false
        tracerOutline.Visible = false
    end}):colorpicker({name = "main", flag = "tracerfill", color = rgb(125, 175, 136), callback = function(Value)
        SylithV2.TargetAim.TracerFillColor = Value
    end}):colorpicker({name = "outline", flag = "traceroutline", color = rgb(0, 0, 0), callback = function(Value)
        SylithV2.TargetAim.TracerOutlineColor = Value
    end})
    section:toggle({name = "Lookat", flag = "targetaim_lookat", callback = function(Value)
        SylithV2.TargetAim.LookAt = Value
    end})
    section:toggle({name = "Auto Stomp", flag = "targetaim_autostomp", callback = function(Value)
        SylithV2.TargetAim.AutoStomp = Value
    end})
    section:toggle({name = "Void Resolver", flag = "void_resolver", callback = function(Value)
        SylithV2.TargetAim.VoidResolver = Value
    end})
end
getgenv().SilentAim = {
    silent = false,
    silentpart = "Head",
    method = "Closest Point",
    knockcheck = false,
    chance = 100,
    wallcheck = false,
    useLegacy = false,
    useCustom = false,
    FOV = {
        Visible = false,
        Transparency = 1,
        Thickness = 1,
        Radius = 150,
        Color = Color3.fromRGB(30, 255, 0)
    },
    Enabled = false
}

getgenv().RunService = game:GetService("RunService")
getgenv().Players = game:GetService("Players")
getgenv().UserInputService = game:GetService("UserInputService")
getgenv().workspace = workspace
getgenv().Camera = workspace.CurrentCamera
getgenv().placeId = game.PlaceId
getgenv().renderConn = nil
getgenv().sy_OldIndex = nil
getgenv().mt = nil
getgenv().oldIndex = nil
getgenv().syHooked = false
getgenv().mtHooked = false
getgenv().FOVCircle = nil
getgenv().Mouse = nil

getgenv().WallCheck = function(part)
    getgenv().origin = getgenv().Camera and getgenv().Camera.CFrame and getgenv().Camera.CFrame.Position or Vector3.new()
    getgenv().target = part.Position
    getgenv().direction = (getgenv().target - getgenv().origin).Unit
    getgenv().distance = (getgenv().target - getgenv().origin).Magnitude
    getgenv().params = RaycastParams.new()
    getgenv().params.FilterDescendantsInstances = {getgenv().Players.LocalPlayer.Character, getgenv().Camera}
    getgenv().params.FilterType = Enum.RaycastFilterType.Blacklist
    getgenv().params.IgnoreWater = true
    getgenv().result = getgenv().workspace:Raycast(getgenv().origin, getgenv().direction * getgenv().distance, getgenv().params)
    if getgenv().result then
        getgenv().model = getgenv().result.Instance:FindFirstAncestorOfClass("Model")
        return not (getgenv().model and getgenv().Players:GetPlayerFromCharacter(getgenv().model))
    end
    return false
end

getgenv().GetClosestPlayer = function()
    getgenv().closestDistance, getgenv().closestPart, getgenv().closestPlayer = nil, nil, nil
    getgenv().mousePosition = getgenv().UserInputService:GetMouseLocation()
    getgenv().hitParts = {
        "LeftHand","LeftLowerArm","LeftUpperArm","RightHand","RightLowerArm","RightUpperArm",
        "UpperTorso","LeftFoot","LeftLowerLeg","LeftUpperLeg","RightFoot","RightLowerLeg","RightUpperLeg",
        "LowerTorso","Head"
    }
    for _, v in next, getgenv().Players:GetPlayers() do
        if v ~= getgenv().Players.LocalPlayer and v.Character then
            getgenv().char = v.Character
            getgenv().hum = getgenv().char:FindFirstChild("Humanoid")
            getgenv().bodyEffects = getgenv().char:FindFirstChild("BodyEffects")
            getgenv().ko = getgenv().bodyEffects and getgenv().bodyEffects:FindFirstChild("K.O") and getgenv().bodyEffects["K.O"].Value
            if getgenv().hum and getgenv().hum.Health > 0 then
                if not getgenv().SilentAim.knockcheck or not getgenv().ko then
                    if getgenv().SilentAim.useCustom then
                        if getgenv().SilentAim.method == "Closest Part" then
                            for _, partName in ipairs(getgenv().hitParts) do
                                getgenv().part = getgenv().char:FindFirstChild(partName)
                                if getgenv().part and (not getgenv().SilentAim.wallcheck or not getgenv().WallCheck(getgenv().part)) then
                                    getgenv().screenPos, getgenv().visible = getgenv().Camera:WorldToScreenPoint(getgenv().part.Position)
                                    if getgenv().visible then
                                        getgenv().dist = (getgenv().mousePosition - Vector2.new(getgenv().screenPos.X, getgenv().screenPos.Y)).Magnitude
                                        if getgenv().dist <= getgenv().SilentAim.FOV.Radius and (not getgenv().closestDistance or getgenv().dist < getgenv().closestDistance) then
                                            getgenv().closestDistance, getgenv().closestPart, getgenv().closestPlayer = getgenv().dist, getgenv().part, v
                                        end
                                    end
                                end
                            end
                        else
                            for _, part in ipairs(getgenv().char:GetChildren()) do
                                if part:IsA("BasePart") and (not getgenv().SilentAim.wallcheck or not getgenv().WallCheck(part)) then
                                    getgenv().screenPos, getgenv().visible = getgenv().Camera:WorldToScreenPoint(part.Position)
                                    if getgenv().visible then
                                        getgenv().dist = (getgenv().mousePosition - Vector2.new(getgenv().screenPos.X, getgenv().screenPos.Y)).Magnitude
                                        if getgenv().dist <= getgenv().SilentAim.FOV.Radius and (not getgenv().closestDistance or getgenv().dist < getgenv().closestDistance) then
                                            getgenv().closestDistance, getgenv().closestPart, getgenv().closestPlayer = getgenv().dist, part, v
                                        end
                                    end
                                end
                            end
                        end
                    elseif getgenv().SilentAim.useLegacy then
                        getgenv().part = getgenv().char:FindFirstChild(getgenv().SilentAim.silentpart)
                        if getgenv().part and (not getgenv().SilentAim.wallcheck or not getgenv().WallCheck(getgenv().part)) then
                            getgenv().screenPos, getgenv().visible = getgenv().Camera:WorldToScreenPoint(getgenv().part.Position)
                            if getgenv().visible then
                                getgenv().dist = (getgenv().mousePosition - Vector2.new(getgenv().screenPos.X, getgenv().screenPos.Y)).Magnitude
                                if getgenv().dist <= getgenv().SilentAim.FOV.Radius and (not getgenv().closestDistance or getgenv().dist < getgenv().closestDistance) then
                                    getgenv().closestDistance, getgenv().closestPart, getgenv().closestPlayer = getgenv().dist, getgenv().part, v
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return getgenv().closestPart, getgenv().closestPlayer
end

getgenv().ApplySilentAim = function(targetPart)
    if math.random(0, 100) <= getgenv().SilentAim.chance then
        return CFrame.new(targetPart.Position)
    end
end

getgenv().CreateFOVCircle = function()
    if not getgenv().Drawing then
        pcall(function() getgenv().Drawing = Drawing end)
    end
    if not getgenv().FOVCircle then
        if typeof(getgenv().Drawing) == "table" and getgenv().Drawing.new then
            getgenv().FOVCircle = getgenv().Drawing.new("Circle")
            getgenv().FOVCircle.ZIndex = 2
            getgenv().FOVCircle.Filled = false
            getgenv().FOVCircle.Visible = false
        end
    end
end

getgenv().UpdateFOVCircle = function()
    if not getgenv().FOVCircle then return end
    getgenv().mousePos = getgenv().UserInputService:GetMouseLocation()
    getgenv().FOVCircle.Position = Vector2.new(getgenv().mousePos.X, getgenv().mousePos.Y)
    getgenv().FOVCircle.Visible = (getgenv().SilentAim.FOV.Visible and getgenv().SilentAim.Enabled and (getgenv().SilentAim.useLegacy or getgenv().SilentAim.useCustom))
    getgenv().FOVCircle.Color = getgenv().SilentAim.FOV.Color
    getgenv().FOVCircle.Thickness = getgenv().SilentAim.FOV.Thickness
    getgenv().FOVCircle.Radius = getgenv().SilentAim.FOV.Radius
    getgenv().FOVCircle.Transparency = getgenv().SilentAim.FOV.Transparency
end

getgenv().HookMouse = function()
    getgenv().Camera = getgenv().workspace.CurrentCamera or getgenv().Camera
    getgenv().Mouse = getgenv().Players.LocalPlayer:GetMouse()
    if getgenv().placeId == 9825515356 then
        if getgenv().syHooked then return end
        getgenv().sy_OldIndex = hookmetamethod(game, "__index", function(self, key)
            if not checkcaller() and self == getgenv().Mouse and (key == "Hit" or key == "Target") and getgenv().SilentAim.Enabled and (getgenv().SilentAim.useLegacy or getgenv().SilentAim.useCustom) then
                getgenv().targetPart, _ = getgenv().GetClosestPlayer()
                if getgenv().targetPart then
                    getgenv().newCF = getgenv().ApplySilentAim(getgenv().targetPart)
                    if getgenv().newCF then return getgenv().newCF end
                end
            end
            return getgenv().sy_OldIndex(self, key)
        end)
        getgenv().syHooked = true
    else
        if getgenv().mtHooked then return end
        getgenv().success, getgenv().mt = pcall(getrawmetatable, game)
        if getgenv().success and getgenv().mt and getgenv().mt.__index and setreadonly then
            getgenv().oldIndex = getgenv().mt.__index
            setreadonly(getgenv().mt, false)
            getgenv().mt.__index = function(self, key)
                if not checkcaller() and self == getgenv().Mouse and getgenv().SilentAim.Enabled and (getgenv().SilentAim.useLegacy or getgenv().SilentAim.useCustom) then
                    if key == "Hit" or key == "Target" then
                        getgenv().targetPart, _ = getgenv().GetClosestPlayer()
                        if getgenv().targetPart then
                            getgenv().newCF = getgenv().ApplySilentAim(getgenv().targetPart)
                            if getgenv().newCF then return getgenv().newCF end
                        end
                    end
                end
                return getgenv().oldIndex(self, key)
            end
            setreadonly(getgenv().mt, true)
            getgenv().mtHooked = true
        end
    end
end

getgenv().UnhookMouse = function()
    if getgenv().placeId == 9825515356 then
        -- cannot reliably remove executor hookmetamethod; keep original stored and rely on Enabled flag to disable
        getgenv().syHooked = getgenv().syHooked
    else
        if getgenv().mtHooked and getgenv().mt and getgenv().oldIndex then
            setreadonly(getgenv().mt, false)
            getgenv().mt.__index = getgenv().oldIndex
            setreadonly(getgenv().mt, true)
            getgenv().oldIndex = nil
            getgenv().mt = nil
            getgenv().mtHooked = false
        end
    end
end

getgenv().StartSilentAim = function()
    if getgenv().renderConn then return end
    getgenv().CreateFOVCircle()
    getgenv().HookMouse()
    getgenv().renderConn = getgenv().RunService.RenderStepped:Connect(function()
        getgenv().UpdateFOVCircle()
    end)
end

getgenv().StopSilentAim = function()
    if getgenv().renderConn then
        pcall(function() getgenv().renderConn:Disconnect() end)
        getgenv().renderConn = nil
    end
    if getgenv().FOVCircle then
        getgenv().FOVCircle.Visible = false
    end
    getgenv().UnhookMouse()
end

getgenv().UpdateSilentState = function()
    getgenv().SilentAim.silent = getgenv().SilentAim.Enabled and (getgenv().SilentAim.useLegacy or getgenv().SilentAim.useCustom)
    if getgenv().SilentAim.silent then
        getgenv().StartSilentAim()
    else
        getgenv().StopSilentAim()
    end
end

local section = column:section({name = "Camlock"})
    getgenv().lock = false
    getgenv().locktrgt = nil
    getgenv().lockUsmooth = false
    getgenv().locksmooth = 0.5
    getgenv().lockpart = "Head"
    getgenv().lockUpred = false
    getgenv().lockpred = 0
    getgenv().shalke = false
    getgenv().shk = 0
section:toggle({
    name = "Enabled",
    flag = "camlock_enabled",
    callback = function(Value)
        getgenv().lock = Value
        if not Value then
            getgenv().locktrgt = nil
        end
    end
}):keybind({
    name = "Camlock Key",
    flag = "camlock_bind",
    callback = function(Value)
        if not getgenv().lock then return end
        if getgenv().locktrgt then
            getgenv().locktrgt = nil
        else
            local closestPlayer, closestDistance = nil, math.huge
            local mousePos = game:GetService("UserInputService"):GetMouseLocation()
            local players = game:GetService("Players"):GetPlayers()
            local localPlayer = game:GetService("Players").LocalPlayer
            local camera = workspace.CurrentCamera

            for i = 1, #players do
                local Player = players[i]
                if Player ~= localPlayer then
                    local character = Player.Character
                    if character then
                        local part = character:FindFirstChild(getgenv().lockpart)
                        if part then
                            local screenPos, onScreen = camera:WorldToViewportPoint(part.Position)
                            if onScreen then
                                local dist = (Vector2.new(mousePos.X, mousePos.Y) - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
                                if dist < closestDistance then
                                    closestDistance = dist
                                    closestPlayer = Player
                                end
                            end
                        end
                    end
                end
            end
            getgenv().locktrgt = closestPlayer
        end
    end
})

-- Target Hitpart dropdown
section:dropdown({
    name = "Target Hitpart",
    flag = "camlock_hitpart",
    items = { "Head", "UpperTorso", "LowerTorso", "HumanoidRootPart", "LeftFoot", "RightFoot", "LeftLowerArm", "RightLowerArm" },
    default = "Head",
    callback = function(Value)
        getgenv().lockpart = Value
    end
})

-- Smoothness toggle + slider
section:toggle({
    name = "Smoothness",
    flag = "camlock_smooth_enabled",
    callback = function(Value)
        getgenv().lockUsmooth = Value
    end
})

section:slider({
    name = "Smoothness Amount",
    min = 0,
    max = 10,
    default = 5,
    interval = 0.1,
    flag = "camlock_smooth_value",
    callback = function(Value)
        getgenv().locksmooth = 1 - (Value / 10)
        if getgenv().locksmooth <= 0 then
            getgenv().locksmooth = 0.01
        end
    end
})

-- Prediction toggle + slider
section:toggle({
    name = "Prediction",
    flag = "camlock_pred_enabled",
    callback = function(Value)
        getgenv().lockUpred = Value
    end
})

section:slider({
    name = "Prediction Amount",
    min = 0,
    max = 10,
    default = 0,
    interval = 0.1,
    flag = "camlock_pred_value",
    callback = function(Value)
        getgenv().lockpred = Value / 10
    end
})

-- Shake toggle + slider
section:toggle({
    name = "Shake",
    flag = "camlock_shake_enabled",
    callback = function(Value)
        getgenv().shalke = Value
    end
})

section:slider({
    name = "Shake Amount",
    min = 0,
    max = 10,
    default = 0,
    interval = 0.1,
    flag = "camlock_shake_value",
    callback = function(Value)
        getgenv().shk = Value / 10
    end
})

-- Strafe (Orbit) toggle + speed slider
section:toggle({
    name = "Strafe while locked",
    flag = "camlock_orbit_enabled",
    callback = function(Value)
        getgenv().orbitMid = Value
        if Value then
            getgenv().orbitAngle = 0
        end
    end
})

section:slider({
    name = "Strafe Speed",
    min = 0,
    max = 100,
    default = 5,
    interval = 0.1,
    flag = "camlock_orbit_speed",
    callback = function(Value)
        getgenv().orbitSpeed = Value
    end
})

getgenv().orbitSpeed = getgenv().orbitSpeed or 5
getgenv().orbitAngle = getgenv().orbitAngle or 0
game:GetService("RunService").RenderStepped:Connect(function(delta)
    if not getgenv().lock or not getgenv().locktrgt then return end
    local character = getgenv().locktrgt.Character
    local targetPart = character and character:FindFirstChild(getgenv().lockpart)
    if not targetPart then return end
    local camera = workspace.CurrentCamera
    local localChar = game.Players.LocalPlayer.Character
    if not localChar then return end
    local hrp = localChar:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local targetPos = targetPart.Position
    if getgenv().lockUpred then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart and rootPart.Velocity then
            targetPos += rootPart.Velocity * getgenv().lockpred
        end
    end
    if getgenv().orbitMid then
        local speed = getgenv().orbitSpeed or 5
        getgenv().orbitAngle += math.rad(speed * delta * 60)
        local radius = 5
        local offset = Vector3.new(
            math.cos(getgenv().orbitAngle) * radius,
            0,
            math.sin(getgenv().orbitAngle) * radius
        )
        hrp.CFrame = CFrame.new(targetPos + offset, targetPos)
    end
    local direction = (targetPos - camera.CFrame.Position).Unit
    if getgenv().shalke and getgenv().shk > 0 then
        local shakePower = getgenv().shk * 0.02
        direction += Vector3.new(
            (math.random() - 0.5) * shakePower,
            (math.random() - 0.5) * shakePower,
            (math.random() - 0.5) * shakePower
        )
        direction = direction.Unit
    end
    if getgenv().lockUsmooth then
        local currentCF = camera.CFrame
        local targetCF = CFrame.new(currentCF.Position, camera.CFrame.Position + direction)
        local smoothness = getgenv().locksmooth or 0.5
        camera.CFrame = currentCF:Lerp(targetCF, 1 - smoothness)
    else
        camera.CFrame = CFrame.new(camera.CFrame.Position, camera.CFrame.Position + direction)
    end
end)
local section = column:section({name = "Hit Effects"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
section:toggle({name = "Hit Notifications", flag = "hitnotifications_enabled", callback = function(Value)
    SylithV2.HitEffects.HitNotifications = Value
end})

section:slider({name = "Notification Time", min = 1, max = 10, default = 3, interval = 1, flag = "hitnotification_time", callback = function(Value)
    SylithV2.HitEffects.HitNotificationsTime = Value
end})

section:toggle({name = "Hit Sounds", flag = "hitsounds_enabled", callback = function(Value)
    SylithV2.HitEffects.HitSounds = Value
end})

section:dropdown({
    name = "Hit Sound",
    items = {"neverlose", "gamesense", "bubble"},
    flag = "hitsounds_selected",
    default = "neverlose",
    scrolling = true,
    callback = function(Value)
        if Value == "neverlose" then
            SylithV2.HitEffects.HitSoundID = "rbxassetid://97643101798871"
        elseif Value == "gamesense" then
            SylithV2.HitEffects.HitSoundID = "rbxassetid://4817809188"
        elseif Value == "bubble" then
            SylithV2.HitEffects.HitSoundID = "rbxassetid://6534947588"
        end
    end
})

section:slider({name = "Volume", min = 1, max = 10, default = 5, interval = 1, flag = "hitsound_volume", callback = function(Value)
    SylithV2.HitEffects.HitSoundVolume = Value
end})
end
local column = Combat:column()

local section = column:section({name = "Ragebot"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
section:toggle({name = "Enabled", flag = "killaura_enabled", callback = function(Value)
    SylithV2.KillAura.Enabled = Value
end}):keybind({name = "Kill Aura", flag = "killaura_bind", callback = function(Value)
    if SylithV2.KillAura.Enabled then
        SylithV2.KillAura.Keybind = Value
    end
end})

section:toggle({name = "Stomp Aura", flag = "stompaura_enabled", callback = function(Value)
    SylithV2.KillAura.StompAura = Value
end})

section:slider({name = "Distance", min = 1, max = 200, default = 200, interval = 1, flag = "killaura_distance", callback = function(Value)
    SylithV2.KillAura.Distance = Value
end})
end
local section = column:section({name = "Triggerbot"})
local lp = game.Players.LocalPlayer
local mouse = lp:GetMouse()
local sylithtb = false
local lastCheck = 0
local currentTarget = nil

local Script = {
    Functions = {},
    Table = {
        Start = {
            TriggerBot = {
                Delay = 0.5,
                Blacklisted = {}
            }
        }
    },
    Connections = {}
}

Script.Functions.isDead = function(player)
    local character = player.Character
    if not character then return false end
    local bodyEffects = character:FindFirstChild("BodyEffects")
    if not bodyEffects then return false end
    local ko = bodyEffects:FindFirstChild("K.O") or bodyEffects:FindFirstChild("KO")
    return ko and ko.Value or false
end

Script.Functions.getTarget = function(instance)
    if not instance then return false end
    for _, player in next, game.Players:GetPlayers() do
        if player.Character and instance:IsDescendantOf(player.Character) then
            if not Script.Functions.isDead(player) then
                return player
            end
        end
    end
    return false
end

Script.Functions.isToolBlacklisted = function(tool)
    for _, toolName in ipairs(Script.Table.Start.TriggerBot.Blacklisted) do
        if tool.Name == toolName then
            return true
        end
    end
    return false
end

Script.Functions.triggerBot = function()
    local con
    con = game:GetService("RunService").Heartbeat:Connect(function()
        if not sylithtb then currentTarget = nil return end
        local now = os.clock()
        if now - lastCheck < 0.05 then return end
        lastCheck = now

        local targetPlayer = Script.Functions.getTarget(mouse.Target)
        if targetPlayer then
            currentTarget = targetPlayer
        else
            currentTarget = nil
        end

        if currentTarget and lp.Character then
            local tool = lp.Character:FindFirstChildWhichIsA("Tool")
            if tool and not Script.Functions.isToolBlacklisted(tool) then
                task.spawn(function()
                    task.wait(Script.Table.Start.TriggerBot.Delay)
                    if currentTarget == Script.Functions.getTarget(mouse.Target) then
                        tool:Activate()
                    end
                end)
            end
        end
    end)
    Script.Connections.triggerBot = con
end

Script.Functions.triggerBot()

section:toggle({
    name = "Enabled",
    flag = "triggerbot_enabled",
    callback = function(Value)
        sylithtb = Value
        if not Value then
            currentTarget = nil
        end
    end
})

section:slider({
    name = "Delay",
    min = 0,
    max = 3,
    default = Script.Table.Start.TriggerBot.Delay,
    interval = 0.01,
    flag = "triggerbot_delay",
    callback = function(Value)
        Script.Table.Start.TriggerBot.Delay = Value
    end
})

section:dropdown({
    name = "Blacklisted Weapons",
    items = {"[Knife]", "Combat", "[Phone]", "[Wallet]", "TipJar", "[Glock]", "[Silencer]", "[LockPicker]"},
    default = {},
    multi = true,
    flag = "triggerbot_blacklisted",
    callback = function(selected)
        Script.Table.Start.TriggerBot.Blacklisted = selected
    end
})
getgenv().section = column:section({name = "Silent Aim"})
if blockedGames[game.PlaceId] then
    getgenv().section:label({name = ""})
        getgenv().section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
getgenv().section:toggle({
    name = "Enabled",
    flag = "silentaim_enabled",
    callback = function(Value)
        getgenv().SilentAim.Enabled = Value
        getgenv().SilentAim.silent = Value and (getgenv().SilentAim.useLegacy or getgenv().SilentAim.useCustom)
        if Value then
            getgenv().StartSilentAim()
        else
            getgenv().StopSilentAim()
        end
    end
})

getgenv().section:toggle({
    name = "Knock Check",
    flag = "silentaim_knockcheck",
    callback = function(Value)
        getgenv().SilentAim.knockcheck = Value
    end
})

getgenv().section:toggle({
    name = "Bike & Wall Check",
    flag = "silentaim_wallcheck",
    callback = function(Value)
        getgenv().SilentAim.wallcheck = Value
    end
})

getgenv().section:toggle({
    name = "Show FOV",
    flag = "silentaim_showfov",
    callback = function(Value)
        getgenv().SilentAim.FOV.Visible = Value
    end
}):colorpicker({
    name = "FOV Color",
    flag = "silentaim_fovcolor",
    color = getgenv().SilentAim.FOV.Color,
    callback = function(Value)
        getgenv().SilentAim.FOV.Color = Value
    end
})

getgenv().section:slider({
    name = "FOV Size",
    min = 50,
    max = 900,
    default = getgenv().SilentAim.FOV.Radius,
    flag = "silentaim_fovsize",
    callback = function(Value)
        getgenv().SilentAim.FOV.Radius = Value
    end
})

getgenv().section:slider({
    name = "Hit Chance",
    min = 0,
    max = 100,
    default = getgenv().SilentAim.chance,
    flag = "silentaim_chance",
    callback = function(Value)
        getgenv().SilentAim.chance = Value
    end
})

getgenv().section:toggle({
    name = "Use Legacy Hitpart",
    flag = "silentaim_uselegacy",
    callback = function(Value)
        getgenv().SilentAim.useLegacy = Value
        getgenv().SilentAim.silent = getgenv().SilentAim.Enabled and (getgenv().SilentAim.useLegacy or getgenv().SilentAim.useCustom)
        if getgenv().SilentAim.silent then getgenv().StartSilentAim() else getgenv().StopSilentAim() end
    end
})

getgenv().section:dropdown({
    name = "Legacy Hitpart",
    flag = "silentaim_legacyhitpart",
    items = {"Head","HumanoidRootPart","UpperTorso","LowerTorso","RightHand","LeftHand","RightLeg"},
    default = "Head",
    callback = function(Value)
        getgenv().SilentAim.silentpart = Value
    end
})

getgenv().section:toggle({
    name = "Use Custom Hitparts",
    flag = "silentaim_usecustom",
    callback = function(Value)
        getgenv().SilentAim.useCustom = Value
        getgenv().SilentAim.silent = getgenv().SilentAim.Enabled and (getgenv().SilentAim.useLegacy or getgenv().SilentAim.useCustom)
        if getgenv().SilentAim.silent then getgenv().StartSilentAim() else getgenv().StopSilentAim() end
    end
})

getgenv().section:dropdown({
    name = "Custom Hitpart Method",
    flag = "silentaim_method",
    items = {"Closest Part", "Closest Point"},
    default = "Closest Point",
    callback = function(Value)
        getgenv().SilentAim.method = Value
    end
})
end
local localPlayer = Players.LocalPlayer
local section = column:section({name = "Hitbox Modifier"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
section:toggle({name = "Enabled", flag = "hitboxexpander_enabled", callback = function(Value)
    SylithV2.HitboxExpander.Enabled = Value
end})

section:toggle({name = "Visualize", flag = "hitboxexpander_visualize", callback = function(Value)
    SylithV2.HitboxExpander.Visualize = Value
end}):colorpicker({name = "main", flag = "hitboxexpandermain", color = rgb(125, 175, 129), callback = function(Value, alpha)
    SylithV2.HitboxExpander.Color = Value
end}):colorpicker({name = "outline", flag = "hitboxexpanderoutline", color = rgb(125, 175, 133), callback = function(Value, alpha)
    SylithV2.HitboxExpander.OutlineColor = Value
end})

section:slider({name = "Fill Transparency", min = 0, max = 1, default = 0.5, interval = 0.01, flag = "hitboxexpander_filltransparency", callback = function(Value)
    SylithV2.HitboxExpander.FillTransparency = Value
end})

section:slider({name = "Outline Transparency", min = 0, max = 1, default = 0.3, interval = 0.01, flag = "hitboxexpander_outlinetransparency", callback = function(Value)
    SylithV2.HitboxExpander.OutlineTransparency = Value
end})

section:slider({name = "Size", min = 1, max = 37, default = 37, interval = 1, flag = "hitboxexpander_size", callback = function(Value)
    SylithV2.HitboxExpander.Size = Value
end})
end


local column = Visuals:column()
local section = column:section({name = "Extra Sensory Perception"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ESP = SylithV2.ExtraESP
local originalStates = {}
local function applyMaterialAndHighlight(char)
    for _, obj in ipairs(char:GetDescendants()) do
        if obj:IsA("BasePart") and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "CUFF" then
            if ESP.MaterialEnabled then
                obj.Material = Enum.Material.Neon
                obj.Color = ESP.MaterialColor
                if obj:IsA("MeshPart") then
                    obj.TextureID = ""
                end
            else
                if not originalStates[obj] then
                    originalStates[obj] = {Material = obj.Material, Color = obj.Color, TextureID = obj:IsA("MeshPart") and obj.TextureID or nil}
                end
                obj.Material = originalStates[obj].Material
                obj.Color = originalStates[obj].Color
                if obj:IsA("MeshPart") then
                    obj.TextureID = originalStates[obj].TextureID or ""
                end
            end
        elseif obj:IsA("SpecialMesh") then
            if ESP.MaterialEnabled then
                obj.TextureId = ""
            else
                obj.TextureId = ""
            end
        elseif obj:IsA("Decal") and obj.Name == "face" then
            if ESP.MaterialEnabled then
                obj:Destroy()
            end
        end
    end

    for _, className in ipairs({"Pants", "Shirt", "ShirtGraphic"}) do
        local clothing = char:FindFirstChildOfClass(className)
        if clothing then
            if ESP.MaterialEnabled then
                clothing:Destroy()
            end
        end
    end

    local highlight = char:FindFirstChildOfClass("Highlight")
    if ESP.HighlightEnabled then
        if not highlight then
            highlight = Instance.new("Highlight")
            highlight.Parent = char
        end
        highlight.FillColor = ESP.HighlightFillColor
        highlight.OutlineColor = ESP.HighlightOutlineColor
        highlight.FillTransparency = 0
        highlight.OutlineTransparency = 0
        highlight.Enabled = true
    elseif highlight then
        if highlight.FillColor == ESP.HighlightFillColor then
            highlight.Enabled = false
        end
    end
end

task.spawn(function()
    while true do
        task.wait(1)

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer and player.Character then
                applyMaterialAndHighlight(player.Character)
            end
        end
    end
end)
section:toggle({
    name = "Player Material",
    flag = "materialesp_enabled",
    callback = function(Value)
        SylithV2.ExtraESP.MaterialEnabled = Value
    end
}):colorpicker({
    name = "main",
    flag = "materialespcolor",
    color = Color3.fromRGB(255, 255, 255),
    callback = function(Value)
        SylithV2.ExtraESP.MaterialColor = Value
    end
})

section:dropdown({
    name = "Material",
    flag = "materialesp_material",
    items = {"Neon", "ForceField", "Plastic", "SmoothPlastic", "Wood", "WoodPlanks", "Marble", "Slate", "Concrete", "Granite", "Brick", "Pebble", "Cobblestone", "Rock", "DiamondPlate", "Metal", "CorrodedMetal", "Foil", "Grass", "Sand", "Fabric", "Ice", "Glass", "Asphalt", "LeafyGrass", "Salt", "Snow", "Mud", "Ground", "Basalt", "CrackedLava"},
    default = "Neon",
    callback = function(Value)
        SylithV2.ExtraESP.Material = Value
    end
})

section:toggle({
    name = "Chams",
    flag = "highlightesp_enabled",
    callback = function(Value)
        SylithV2.ExtraESP.HighlightEnabled = Value
    end
}):colorpicker({
    name = "main",
    flag = "highlightfill_esp",
    color = Color3.fromRGB(0, 0, 0),
    callback = function(Value)
        SylithV2.ExtraESP.HighlightFillColor = Value
    end
}):colorpicker({
    name = "outline",
    flag = "highlightoutline_esp",
    color = Color3.fromRGB(0, 0, 0),
    callback = function(Value)
        SylithV2.ExtraESP.HighlightOutlineColor = Value
    end
})

section:label({ 
    name = "Boxes" 
})
section:toggle({
    name = "Enabled",
    flag = "box_enabled",
    value = Config.Box.Enable,
    callback = function(Value)
        Config.Box.Enable = Value
    end
})

section:toggle({
    name = "Boxes",
    flag = "box_type",
    value = Config.Box.Type == "Full",
    callback = function(Value)
        Config.Box.Type = Value and "Full" or "None"
    end
}):colorpicker({
    name = "Box Color",
    flag = "box_color",
    color = Config.Box.Color,
    alpha = false,
    callback = function(Value)
        Config.Box.Color = Value
    end
})
section:toggle({
    name = "Filled Boxes",
    flag = "box_filled",
    value = Config.Box.Filled.Enable,
    callback = function(Value)
        Config.Box.Filled.Enable = Value
    end
})

section:toggle({
    name = "Gradient Boxes",
    flag = "box_gradient",
    value = Config.Box.Filled.Gradient.Enable,
    callback = function(Value)
        Config.Box.Filled.Gradient.Enable = Value
    end
}):colorpicker({
    name = "Gradient Start",
    flag = "grad_start",
    color = Config.Box.Filled.Gradient.Color.Start,
    alpha = false,
    callback = function(Value)
        Config.Box.Filled.Gradient.Color.Start = Value
    end
}):colorpicker({
    name = "Gradient End",
    flag = "grad_end",
    color = Config.Box.Filled.Gradient.Color.End,
    alpha = false,
    callback = function(Value)
        Config.Box.Filled.Gradient.Color.End = Value
    end
})

section:toggle({
    name = "Rotation Gradient",
    flag = "box_rotation",
    value = false,
    callback = function(Value)
        Config.Box.Filled.Gradient.AutoRotation = false
        Config.Box.Filled.Gradient.ManualRotation = Value
        Config.Box.Filled.Gradient.Rotation = Value and 90 or 0
    end
})

section:toggle({
    name = "Auto Rotation Gradient",
    flag = "box_auto_rotation",
    value = Config.Box.Filled.Gradient.AutoRotation,
    callback = function(Value)
        Config.Box.Filled.Gradient.AutoRotation = Value
    end
})

section:slider({
    name = "Fill Transparency",
    flag = "box_fill_transparency",
    default = Config.Box.Filled.Transparency,
    min = 0,
    max = 1,
    interval = 0.01,
    callback = function(Value)
        Config.Box.Filled.Transparency = Value
    end
})
section:label({ name = "Healthbar" })
section:toggle({
    name = "Enabled",
    flag = "health_activated",
    value = Configbar.Bars.Health.Activated,
    callback = function(Value)
        Configbar.Bars.Health.Activated = Value
    end
})

section:toggle({
    name = "Healthbar",
    flag = "health_outline",
    value = Configbar.Bars.Health.Outline,
    callback = function(Value)
        Configbar.Bars.Health.Outline = Value
    end
})

section:label({ name = "Healthbar Color" }):colorpicker({
    flag = "health_color",
    color = Configbar.Bars.Health.Color or Color3.fromRGB(0, 255, 0),
    callback = function(Value)
        Configbar.Bars.Health.Color = Value
    end
})

section:toggle({
    name = "Lerp",
    flag = "health_lerp",
    value = Configbar.Bars.Health.Lerp,
    callback = function(Value)
        Configbar.Bars.Health.Lerp = Value
    end
}):colorpicker({
    flag = "health_lerp1",
    color = Configbar.Bars.Health.Color1 or Color3.fromRGB(0, 255, 0),
    callback = function(Value)
        Configbar.Bars.Health.Color1 = Value
    end
}):colorpicker({
    flag = "health_lerp2",
    color = Configbar.Bars.Health.Color2 or Color3.fromRGB(255, 255, 0),
    callback = function(Value)
        Configbar.Bars.Health.Color2 = Value
    end
}):colorpicker({
    flag = "health_lerp3",
    color = Configbar.Bars.Health.Color3 or Color3.fromRGB(255, 0, 0),
    callback = function(Value)
        Configbar.Bars.Health.Color3 = Value
    end
})
section:label({ name = "Text" })
section:toggle({
    name = "Enabled",
    flag = "text_esp_enabled",
    value = getgenv().Selec.Text.Enable,
    callback = function(Value)
        getgenv().Selec.Text.Enable = Value
    end
})

section:toggle({
    name = "Names",
    flag = "text_esp_names",
    value = getgenv().Selec.Text.Name.Enable,
    callback = function(Value)
        getgenv().Selec.Text.Name.Enable = Value
    end
})

section:toggle({
    name = "Distance",
    flag = "text_esp_distance",
    value = getgenv().Selec.Text.Studs.Enable,
    callback = function(Value)
        getgenv().Selec.Text.Studs.Enable = Value
    end
})

section:toggle({
    name = "Tool",
    flag = "text_esp_tool",
    value = getgenv().Selec.Text.Tool.Enable,
    callback = function(Value)
        getgenv().Selec.Text.Tool.Enable = Value
    end
})

section:label({ name = "Name Color" }):colorpicker({
    flag = "text_esp_name_color",
    color = getgenv().Selec.Text.Name.Color,
    callback = function(Value)
        getgenv().Selec.Text.Name.Color = Value
    end
})

section:label({ name = "Distance Color" }):colorpicker({
    flag = "text_esp_distance_color",
    color = getgenv().Selec.Text.Studs.Color,
    callback = function(Value)
        getgenv().Selec.Text.Studs.Color = Value
    end
})

section:label({ name = "Tool Color" }):colorpicker({
    flag = "text_esp_tool_color",
    color = getgenv().Selec.Text.Tool.Color,
    callback = function(Value)
        getgenv().Selec.Text.Tool.Color = Value
    end
})

local column = Visuals:column()
local section = column:section({name = "Bullet Tracers"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
section:toggle({name = "enabled", flag = "bullettracers_enabled", callback = function(Value)
    if getnamecallmethod then
        SylithV2.BulletTracers.Enabled = Value
    else
        library:notification({ text = "Your executor does not support this feature.", time = 3 })
    end
end}):colorpicker({name = "main", flag = "bullettracercolor", color = rgb(99, 199, 99), callback = function(Value, alpha)
    SylithV2.BulletTracers.Color = Value
end})

section:dropdown({name = "Texture", flag = "bullettracers_texture", scrolling = true, items = {"Beam", "Lightning", "Heartrate", "Chain", "Glitch", "Swirl" }, default = "Beam", callback = function(Value)
    if Value == "Beam" then
        SylithV2.BulletTracers.TextureID = "rbxassetid://12781852245"
    elseif Value == "Lightning" then
        SylithV2.BulletTracers.TextureID = "rbxassetid://446111271"
    elseif Value == "Heartrate" then
        SylithV2.BulletTracers.TextureID = "rbxassetid://5830549480"
    elseif Value == "Chain" then
        SylithV2.BulletTracers.TextureID = "rbxassetid://9632168658"
    elseif Value == "Glitch" then
        SylithV2.BulletTracers.TextureID = "rbxassetid://8089467613"
    elseif Value == "Swirl" then
        SylithV2.BulletTracers.TextureID = "rbxassetid://5638168605"
    end
end})

section:slider({name = "Size", min = 0.1, max = 3, default = 0.4, interval = 0.01, flag = "bullettracers_size", callback = function(Value)
    SylithV2.BulletTracers.Size = Value
end})

section:slider({name = "Transparency", min = 0, max = 1, default = 0, interval = 0.01, flag = "bullettracers_transparency", callback = function(Value)
    SylithV2.BulletTracers.Transparency = Value
end})

section:slider({name = "Tracer Last Time", min = 1, max = 10, default = 3, interval = 1, flag = "bullettracers_timealive", callback = function(Value)
    SylithV2.BulletTracers.TimeAlive = Value
end})
end

local section = column:section({name = "Map Textures"})
getgenv().originalMaterials = {}
local function clearOldTextures()
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            for _, obj in ipairs(part:GetChildren()) do
                if obj:IsA("Texture") then
                    obj:Destroy()
                end
            end
        end
    end
end

local function applyTextures(textureList)
    clearOldTextures()
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            for _, v in pairs(textureList) do
                if part.Material.Name == v[1] then
                    getgenv().originalMaterials[part] = part.Material
                    for _, face in pairs({"Front","Back","Bottom","Top","Right","Left"}) do
                        local t = Instance.new("Texture", part)
                        t.ZIndex = 2147483647
                        t.Texture = "rbxassetid://" .. v[2]
                        t.Face = Enum.NormalId[face]
                        t.Color3 = part.Color
                        t.Transparency = part.Transparency
                    end
                    part.Material = Enum.Material.SmoothPlastic
                end
            end
        end
    end
end

local function restoreMaterials()
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            for _, obj in ipairs(part:GetChildren()) do
                if obj:IsA("Texture") then
                    obj:Destroy()
                end
            end
            if getgenv().originalMaterials[part] then
                part.Material = getgenv().originalMaterials[part]
               getgenv().originalMaterials[part] = nil
            else
                part.Material = Enum.Material.SmoothPlastic
            end
        end
    end
end

section:button_holder({})
section:button({
    name = "Carti Texture",
    callback = function()
        local textures = {
            {"Wood", "14784281899"}, {"WoodPlanks", "14784281899"},
            {"Brick", "12647798329"}, {"Cobblestone", "12647798329"},
            {"Concrete", "12647798329"}, {"DiamondPlate", "128808789797567"},
            {"Fabric", "128808789797567"}, {"Granite", "4722586771"},
            {"Grass", "17303981964"}, {"Ice", "17303981964"},
            {"Marble", "17303981964"}, {"Metal", "114917525242362"},
            {"Sand", "114917525242362"}, {"Slate", "114917525242362"},
        }
        applyTextures(textures)
    end
})

section:button_holder({})
section:button({
    name = "Minecraft Textures",
    callback = function()
        local textures = {
            {"Wood", "128754006217410"}, {"WoodPlanks", "8676581022"},
            {"Brick", "8139086777"}, {"Cobblestone", "17874801808"},
            {"Concrete", "9405731606"}, {"DiamondPlate", "14197861013"},
            {"Fabric", "9744916443"}, {"Granite", "4714662147"},
            {"Grass", "9267183930"}, {"Ice", "11413423466"},
            {"Marble", "14974016515"}, {"Metal", "14524282848"}, 
            {"Sand", "11119324718"}, {"Slate", "7801228489"},
        }
        applyTextures(textures)
    end
})

section:button_holder({})
section:button({
    name = "Ice Textures",
    callback = function()
        local textures = {
            {"Wood", "5933003775"}, {"WoodPlanks", "5933003775"},
            {"Brick", "17295828838"}, {"Cobblestone", "11760888310"},
            {"Concrete", "109017797659108"}, {"DiamondPlate", "11760888310"},
            {"Fabric", "140018484507153"}, {"Granite", "16833201065"},
            {"Grass", "140018484507153"}, {"Ice", "1090177976591089"},
            {"Marble", "62967586"}, {"Metal", "11760888310"},
            {"Sand", "16833201065"}, {"Slate", "7397414089"},
        }
        applyTextures(textures)
    end
})

section:button_holder({})
section:button({
    name = "Weed Minecraft Textures",
    callback = function()
        local textures = {
            {"Wood", "4722588177"}, {"WoodPlanks", "4722588177"},
            {"Brick", "4722588177"}, {"Cobblestone", "4722588177"},
            {"Concrete", "4722588177"}, {"DiamondPlate", "4722588177"},
            {"Fabric", "4722588177"}, {"Granite", "4722588177"},
            {"Grass", "4722588177"}, {"Ice", "4722588177"},
            {"Marble", "4722588177"}, {"Metal", "4722588177"},
            {"Sand", "4722588177"}
        }
        applyTextures(textures)
    end
})

section:button_holder({})
section:button({
    name = "Remove Textures",
    callback = function()
        restoreMaterials()
    end
})

game.Loaded:Connect(function()
    clearOldTextures()
    getgenv().originalMaterials = {}
end)


local section = column:section({name = "Player"})
local AnimationSpeed = 1
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://14352343065"
local animationTrack
local isPlaying = false
local flossEnabled = false
local function loadAnimationTrack(character)
    local humanoid = character:WaitForChild("Humanoid")
    if animationTrack then
        animationTrack:Stop()
    end
    animationTrack = humanoid:LoadAnimation(animation)
    animationTrack.Looped = true
    animationTrack.Priority = Enum.AnimationPriority.Action
    
    if flossEnabled then
        task.wait(0.6)
        animationTrack:Play()
        animationTrack:AdjustSpeed(AnimationSpeed)
        isPlaying = true
    end
end

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(character)
    loadAnimationTrack(character)
end)

if game:GetService("Players").LocalPlayer.Character then
    loadAnimationTrack(game:GetService("Players").LocalPlayer.Character)
end

section:toggle({
    name = "Player Emote", 
    flag = "dance_enabled", 
    callback = function(Value)
        flossEnabled = Value
        if Value and animationTrack then
            animationTrack:Play()
            animationTrack:AdjustSpeed(AnimationSpeed)
            isPlaying = true
        elseif not Value and animationTrack then
            animationTrack:Stop()
            isPlaying = false
        end
    end
})

section:dropdown({
    name = "Emote", 
    flag = "dance_id", 
    scrolling = true, 
    items = {
        "Baby Queen",
        "Floss", 
        "Yungblud Happier Jump",  
        "Godlike", 
        "Mae Stephens", 
        "Victory Dance", 
        "Elton John", 
        "Sturdy Dance", 
        "Old Town Road"
    }, 
    default = "Baby Queen", 
    callback = function(Value)
        if Value == "Floss" then
            animation.AnimationId = "rbxassetid://10714340543"
        elseif Value == "Yungblud Happier Jump" then
            animation.AnimationId = "rbxassetid://15609995579"
        elseif Value == "Baby Queen" then
            animation.AnimationId = "rbxassetid://14352343065"
        elseif Value == "Godlike" then
            animation.AnimationId = "rbxassetid://10714347256"
        elseif Value == "Mae Stephens" then
            animation.AnimationId = "rbxassetid://16553163212"
        elseif Value == "Victory Dance" then
            animation.AnimationId = "rbxassetid://15505456446"
        elseif Value == "Elton John" then
            animation.AnimationId = "rbxassetid://11309255148"
        elseif Value == "Sturdy Dance" then
            animation.AnimationId = "rbxassetid://17746180844"
        elseif Value == "Old Town Road" then
            animation.AnimationId = "rbxassetid://10714391240"
        end
        
        if game:GetService("Players").LocalPlayer.Character then
            loadAnimationTrack(game:GetService("Players").LocalPlayer.Character)
        end
    end
})

section:slider({name = "Emote Speed", min = 0, max = 10, default = 1, interval = 0.1, flag = "animationplayerspeed", callback = function(Value)
    AnimationSpeed = Value
    if animationTrack and isPlaying then
        animationTrack:AdjustSpeed(AnimationSpeed)
    end
end})

local UserID = 133827245
section:toggle({name = "Avatar Changer", flag = "avatarchanger_enabled", callback = function(Value)
    if game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.RightArm == 0 then
        if Value then
            for _, item in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if item:IsA("Shirt") or item:IsA("Pants") or item:IsA("Accessory") then
                    item:Destroy()
                end
            end
        
            game.Players.LocalPlayer.Character.Humanoid:ApplyDescriptionClientServer(game.Players:GetHumanoidDescriptionFromUserId(UserID))
        else
            game.Players.LocalPlayer.Character.Humanoid:ApplyDescriptionClientServer(game.Players:GetHumanoidDescriptionFromUserId(game.Players.LocalPlayer.UserId))
        end
    else
        library:notification({ text = "SylithV2 - 'Avatar Changer' requires you to use the 'Blocky Pack' Please change your avatar.", time = 3 })
    end
end})

section:dropdown({name = "Avatar", flag = "avatarchanger_avatar", scrolling = true, items = {"Nex5us", "dtbbullet", "Bodygrave", "24k"}, default = "Nex5us", callback = function(Value)
    if Value == "Nex5us" then
        UserID = 244844600
    elseif Value == "dtbbullet" then
        UserID = 2395613299
    elseif Value == "Bodygrave" then
        UserID = 133827245
    elseif Value == "24k" then
        UserID = 2504762737
    end
end})

section:toggle({name = "Player", flag = "charactermaterial_enabled", callback = function(Value)
    SylithV2.SelfVisuals.Character = Value
    if Value == false then
        for _, part in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if part:IsA("BasePart") then
                part.Material = Enum.Material.Plastic
            end
        end
        ResetCharacterColors()
    end
end}):colorpicker({name = "main", flag = "charactercolor", color = rgb(125, 175, 132), callback = function(Value, alpha)
    SylithV2.SelfVisuals.CharacterColor = Value
end})


section:dropdown({name = "Player Material", flag = "charactermaterial_material", scrolling = true, items = {"ForceField", "Neon", "Plastic", "SmoothPlastic", "Wood", "WoodPlanks", "Marble", "Slate", "Concrete", "Granite", "Brick", "Pebble", "Cobblestone", "Rock", "DiamondPlate", "Metal", "CorrodedMetal", "Foil", "Grass", "Sand", "Fabric", "Ice", "Glass", "Asphalt", "LeafyGrass", "Salt", "Snow", "Mud", "Ground", "Basalt", "CrackedLava"}, default = "ForceField", callback = function(Value)
    SylithV2.SelfVisuals.CharacterMaterial = Value
end})

section:toggle({name = "Tool", flag = "toolmaterial_enabled", callback = function(Value)
    SylithV2.SelfVisuals.Tool = Value
    if Value == false and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
        for _, part in ipairs(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):GetChildren()) do
            if part:IsA("BasePart") then
                part.Material = Enum.Material.Plastic
            end
        end
        ResetToolColors()
    end
end}):colorpicker({name = "main", flag = "toolcolor", color = rgb(125, 175, 133), callback = function(Value, alpha)
    SylithV2.SelfVisuals.ToolColor = Value
end})

section:dropdown({name = "tool material", flag = "toolmaterial_material", scrolling = true, items = {"ForceField", "Neon", "Plastic", "SmoothPlastic", "Wood", "WoodPlanks", "Marble", "Slate", "Concrete", "Granite", "Brick", "Pebble", "Cobblestone", "Rock", "DiamondPlate", "Metal", "CorrodedMetal", "Foil", "Grass", "Sand", "Fabric", "Ice", "Glass", "Asphalt", "LeafyGrass", "Salt", "Snow", "Mud", "Ground", "Basalt", "CrackedLava"}, default = "ForceField", callback = function(Value)
    SylithV2.SelfVisuals.ToolMaterial = Value
end})

-- // Misc // --

local column = Misc:column()
local section = column:section({name = "movement"})

section:toggle({name = "Flight", flag = "fly_enabled", callback = function(Value)
    SylithV2.Fly.Enabled = Value
end}):keybind({name = "flyhack", flag = "fly_bind", callback = function(Value)
    if SylithV2.Fly.Enabled then
        SylithV2.Fly.Keybind = Value
    end
end})

section:slider({name = "Flight Value", min = 1, max = 100, default = 20, interval = 1, flag = "fly_speed", callback = function(Value)
    SylithV2.Fly.Speed = Value
end})

section:toggle({name = "CFrame Speed", flag = "speed_enabled", callback = function(Value)
    SylithV2.Speed.Enabled = Value
end}):keybind({name = "speedhack", flag = "speed_bind", callback = function(Value)
    if SylithV2.Speed.Enabled then
        SylithV2.Speed.Keybind = Value
    end
end})

section:slider({name = "Speed Value", min = 1, max = 100, default = 20, interval = 1, flag = "speed_speed", callback = function(Value)
    SylithV2.Speed.Speed = Value
end})
getgenv().isWalkSpeedEnabled = false
getgenv().isWalkSpeedKeybindActive = false
getgenv().walkSpeedValue = 16
getgenv().walkSpeedKey = nil
local lastWalkSpeed

local walkToggle = section:toggle({
    name = "Walkspeed",
    flag = "WalkSpeedToggle",
    callback = function(state)
        getgenv().isWalkSpeedEnabled = state
        getgenv().isWalkSpeedKeybindActive = false
        local char = game.Players.LocalPlayer.Character
        local hum = char and char:FindFirstChildWhichIsA("Humanoid")
        if hum and lastWalkSpeed then
            hum.WalkSpeed = lastWalkSpeed
            lastWalkSpeed = nil
        end
    end
})

walkToggle:keybind({
    name = "WalkSpeed Key",
    flag = "WalkSpeedKeybind",
    callback = function(state)
        getgenv().isWalkSpeedKeybindActive = state
    end,
    ChangedCallback = function(newKey)
        getgenv().walkSpeedKey = newKey
        getgenv().isWalkSpeedKeybindActive = false
    end
})

section:slider({
    name = "Walkspeed Amount",
    min = 16,
    max = 500,
    default = 16,
    interval = 1,
    flag = "WalkSpeedSlider",
    callback = function(value)
        getgenv().walkSpeedValue = value
    end
})

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if getgenv().walkSpeedKey and input.KeyCode == getgenv().walkSpeedKey then
        getgenv().isWalkSpeedKeybindActive = true
    end
end)

UIS.InputEnded:Connect(function(input, gpe)
    if gpe then return end
    if getgenv().walkSpeedKey and input.KeyCode == getgenv().walkSpeedKey then
        getgenv().isWalkSpeedKeybindActive = false
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    local char = game.Players.LocalPlayer.Character
    local hum = char and char:FindFirstChildWhichIsA("Humanoid")
    if not hum then return end

    if getgenv().isWalkSpeedEnabled and getgenv().isWalkSpeedKeybindActive then
        if not lastWalkSpeed then lastWalkSpeed = hum.WalkSpeed end
        hum.WalkSpeed = getgenv().walkSpeedValue
    elseif lastWalkSpeed then
        hum.WalkSpeed = lastWalkSpeed
        lastWalkSpeed = nil
    end
end)

getgenv().pos = Vector3.new(0, math.random(1e6, 2e6), 0)
getgenv().lockTp = false
getgenv().connection = nil
getgenv().teleported = false
getgenv().lastSafeCFrame = nil
getgenv().canShowMessage = true
getgenv().healthThreshold = 85

getgenv().createMessageLabel = function()
    local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    local screenGui = playerGui:FindFirstChild("AntiKillMessageGui")
    if screenGui then screenGui:Destroy() end
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "AntiKillMessageGui"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = playerGui

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0, 500, 0, 100)
    label.Position = UDim2.new(0.5, -250, 0.4, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(0, 255, 0)
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
    label.Text = "Cant go back, health is under "..getgenv().healthThreshold.."!"
    label.TextTransparency = 1
    label.Parent = screenGui

    return label, screenGui
end

getgenv().showMessage = function()
    if not getgenv().canShowMessage then return end
    getgenv().canShowMessage = false
    local TweenService = game:GetService("TweenService")
    local label, screenGui = getgenv().createMessageLabel()
    local fadeIn = TweenService:Create(label, TweenInfo.new(0.4), {TextTransparency = 0})
    local fadeOut = TweenService:Create(label, TweenInfo.new(0.4), {TextTransparency = 1})
    fadeIn:Play()
    fadeIn.Completed:Wait()
    task.wait(2)
    fadeOut:Play()
    fadeOut.Completed:Wait()
    screenGui:Destroy()
    task.wait(0.4)
    getgenv().canShowMessage = true
end

getgenv().teleportAway = function()
    local character = game.Players.LocalPlayer.Character
    if not character then return end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    getgenv().lastSafeCFrame = hrp.CFrame
    hrp.Velocity = Vector3.zero
    hrp.CFrame = CFrame.new(getgenv().pos)
    getgenv().teleported = true
end

getgenv().teleportBack = function()
    local character = game.Players.LocalPlayer.Character
    if not character then return end
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    if humanoid.Health < getgenv().healthThreshold then
        task.spawn(getgenv().showMessage)
        return
    end
    if not getgenv().teleported then return end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    hrp.Velocity = Vector3.zero
    if getgenv().lastSafeCFrame then
        hrp.CFrame = getgenv().lastSafeCFrame
    end
    getgenv().teleported = false
end

getgenv().monitorHealth = function()
    local RunService = game:GetService("RunService")
    if getgenv().connection then getgenv().connection:Disconnect() end
    getgenv().teleported = false
    getgenv().connection = RunService.Heartbeat:Connect(function()
        if not getgenv().lockTp then return end
        local character = game.Players.LocalPlayer.Character
        if not character then return end
        local hrp = character:FindFirstChild("HumanoidRootPart")
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if not hrp or not humanoid then return end
        if humanoid.Health < getgenv().healthThreshold and not getgenv().teleported then
            getgenv().teleportAway()
        end
        if getgenv().teleported then
            hrp.Velocity = Vector3.zero
            hrp.CFrame = CFrame.new(getgenv().pos)
        end
    end)
end
local section = column:section({name = "Misc"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
section:dropdown({
    name = "Location",
    items = locationKeys,
    flag = "Locations",
    default = nil,
    scrolling = true,
    callback = function(state)
selectedLocation = state
end
})

section:button_holder({})
section:button({
    name = "Teleport",
    callback = function()
if not selectedLocation then
    return
end
if game.Players.LocalPlayer.Character and teleportLocations[selectedLocation] then
    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(teleportLocations[selectedLocation])
end
end})

if game.PlaceId == 2788229376 then
    ShopFolder = workspace:WaitForChild("Ignored"):WaitForChild("Shop")
end

SelectedItem, Debounce, AutoBuyOnRespawn, AmmoBuyCount = nil, false, false, 0

ShopItems = {
"[Taco] - $2",
    "[Hamburger] - $5",
    "[Rifle] - $1694",
"5 [Rifle Ammo] - $273",
"[LMG] - $4098",
"200 [LMG Ammo] - $328",
"[AK47] - $2459",
"90 [AK47 Ammo] - $87",
"[AUG] - $2131",
"90 [AUG Ammo] - $87",
"[AR] - $1093",
"60 [AR Ammo] - $82",
"[Double-Barrel SG] - $1475",
"18 [Double-Barrel SG Ammo] - $55",
"[Drum-Shotgun] - $1202",
"18 [Drum-Shotgun Ammo] - $71",
"[DrumGun] - $3278",
"100 [DrumGun Ammo] - $219",
"[Fire Armor] - $2623",
"[Glock] - $546",
"25 [Glock Ammo] - $66",
"[P90] - $1093",
"120 [P90 Ammo] - $66",
"[RPG] - $21855",
"5 [RPG Ammo] - $1093",
"[Revolver] - $1421",
"12 [Revolver Ammo] - $82",
"[Silencer] - $601",
"25 [Silencer Ammo] - $55",
"[SilencerAR] - $1366",
"120 [SilencerAR Ammo] - $82",
"[Shotgun] - $1366",
"20 [Shotgun Ammo] - $66",
"[SMG] - $820",
"80 [SMG Ammo] - $66",
"[TacticalShotgun] - $1912",
"20 [TacticalShotgun Ammo] - $66",
"[Taser] - $1093",
"[Grenade] - $765",
}

section:dropdown({
    name = "Items",
    items = ShopItems,
    flag = "Shop_Dropdown",
    default = nil,
    scrolling = true,
    callback = function(state)
        SelectedItem = state
    end
})

function GetCharacterRoot()
    Character = LocalPlayer.Character
    return Character and Character:FindFirstChild("HumanoidRootPart")
end

function BuyItem(ItemName)
    if not ItemName or Debounce then return end
    Debounce = true
    RootPart = GetCharacterRoot()
    if not RootPart then 
        library:notification({ text = "[ERROR] No HumanoidRootPart found!", time = 3 })
        Debounce = false
        return
    end

    ItemModel = ShopFolder:FindFirstChild(ItemName)
    if ItemModel then
        ClickDetector = ItemModel:FindFirstChildOfClass("ClickDetector")
        if ClickDetector then
            OriginalPosition = RootPart.CFrame
            RootPart.CFrame = CFrame.new(ItemModel.Head.Position + Vector3.new(0, 3, 0))
            task.wait(0.2)
            fireclickdetector(ClickDetector)
            library:notification({ text = "Bought " .. ItemName, time = 3 })
            RootPart.CFrame = OriginalPosition
        else
            library:notification({ text = "[ERROR] ClickDetector not found in " .. ItemName, time = 3 })
        end
    else
        library:notification({ text = "[ERROR] Item not found: " .. ItemName, time = 3 })
    end

    Debounce = false
end

function BuyAmmo()
    if not SelectedItem or Debounce then return end

    AmmoMap = {
        ["[Revolver] - $82"] = "12 [Revolver Ammo] - $82",
        ["[AUG] - $87"] = "90 [AUG Ammo] - $87",
        ["[LMG] - $328"] = "200 [LMG Ammo] - $328",
        ["[Rifle] - $273"] = "5 [Rifle Ammo] - $273",
        ["[AK47] - $2459"] = "90 [AK47 Ammo] - $87",
["[AR] - $1093"] = "60 [AR Ammo] - $82",
["[Double-Barrel SG] - $1475"] = "18 [Double-Barrel SG Ammo] - $55",
["[Drum-Shotgun] - $1202"] = "18 [Drum-Shotgun Ammo] - $71",
["[DrumGun] - $3278"] = "100 [DrumGun Ammo] - $219",
["[Glock] - $546"] = "25 [Glock Ammo] - $66",
["[P90] - $1093"] = "120 [P90 Ammo] - $66",
["[RPG] - $21855"] = "5 [RPG Ammo] - $1093",
["[Silencer] - $601"] = "25 [Silencer Ammo] - $55",
["[SilencerAR] - $1366"] = "120 [SilencerAR Ammo] - $82",
["[Shotgun] - $1366"] = "20 [Shotgun Ammo] - $66",
["[SMG] - $820"] = "80 [SMG Ammo] - $66",
["[TacticalShotgun] - $1912"] = "20 [TacticalShotgun Ammo] - $66",
    }

    AmmoItem = AmmoMap[SelectedItem]
    if AmmoItem then
        BuyItem(AmmoItem)
    else
        library:notification({ text = "[ERROR] No ammo available.", time = 3 })
    end
end

function AutoBuyOnRespawnHandler()
    if not AutoBuyOnRespawn or not SelectedItem then return end

    BuyItem(SelectedItem)

    if AmmoBuyCount < 1 then
        for i = 1, 1 do
            BuyAmmo()
            task.wait(0.5)
        end
        AmmoBuyCount = 1
    end
end

section:button_holder({})
section:button({
    name = "Buy Item",
    callback = function()
        BuyItem(SelectedItem)
    end
})

section:toggle({
    name = "Rebuy on respawn",
    flag = "RBOR",
    value = false,
    callback = function(state)
        AutoBuyOnRespawn = state
        AmmoBuyCount = 0
    end
})

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    ShopFolder = workspace:WaitForChild("Ignored"):WaitForChild("Shop")
    AutoBuyOnRespawnHandler()
end)
end
local section = column:section({name = "Gun Modifications"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
local hookEnabled = false
local originalNewIndex
local modified = {}
local heartbeatConn

originalNewIndex = hookmetamethod(game, "__newindex", function(self, idx, val)
    local success, result = pcall(function()
        if hookEnabled and game.PlaceId == 2788229376 then
            local callScript = getcallingscript()
            if callScript and tostring(callScript):lower():find("framework") and tostring(self):lower():find("camera") and idx == "CFrame" then
                return
            end
        end
        return originalNewIndex(self, idx, val)
    end)
    if not success then
        return originalNewIndex(self, idx, val)
    end
    return result
end)

section:toggle({
    name = "No Recoil",
    flag = "NoRecoil",
    callback = function(val)
        hookEnabled = val
    end
})

section:toggle({
    name = "Rapid Fire",
    flag = "rapidfire_enabled",
    callback = function(Value)
        if not getnamecallmethod then
            library:notification({ text = "Your executor does not support this feature.", time = 3 })
            return
        end
        if SylithV2 and SylithV2.RapidFire then
            SylithV2.RapidFire.Enabled = Value
        end
        if Value then
            if heartbeatConn then heartbeatConn:Disconnect() end
            heartbeatConn = RunService.Heartbeat:Connect(function()
                local tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
                if not tool or not tool:FindFirstChild("GunScript") then return end
                for _, conn in ipairs(getconnections(tool.Activated or {})) do
                    local ok, info = pcall(debug.getinfo, conn.Function)
                    if ok and info then
                        for i = 1, info.nups do
                            local ok2, up = pcall(debug.getupvalue, conn.Function, i)
                            if ok2 and type(up) == "number" then
                                if not modified[conn.Function] then modified[conn.Function] = {} end
                                if modified[conn.Function][i] == nil then modified[conn.Function][i] = up end
                                pcall(debug.setupvalue, conn.Function, i, 1e-20)
                            end
                        end
                    end
                end
            end)
        else
            if heartbeatConn then heartbeatConn:Disconnect() heartbeatConn = nil end
            for func, ups in pairs(modified) do
                for i, orig in pairs(ups) do
                    pcall(debug.setupvalue, func, i, orig)
                end
            end
            modified = {}
        end
    end
})
section:toggle({name = "Auto Reload", flag = "autoreload_enabled", callback = function(Value)
    SylithV2.AutoReload.Enabled = Value
end})
local Affeboy = {BulletControl = {Enabled = false,Intensity = 100}}
section:toggle({
    name = "Bullet Spread",
    flag = "BLTSPRTG",
    callback = function(v)
        Affeboy.BulletControl.Enabled = v
    end
})

section:slider({
    name = "Spread Intensity",
    default = Affeboy.BulletControl.Intensity,
    min = 0,
    max = 100,
    interval = 0.01, -- finer increments
    flag = "BulletSpreadtg",
    callback = function(v)
        Affeboy.BulletControl.Intensity = v
    end
})
local OriginalRandom
OriginalRandom = hookfunction(math.random, function(...)
    local args = {...}
    if checkcaller() then return OriginalRandom(...) end
    if (#args == 0) or (args[1] == -0.05 and args[2] == 0.05) or (args[1] == -0.1) or (args[1] == -0.05) then
        if Affeboy.BulletControl.Enabled then
            return OriginalRandom(...) * (Affeboy.BulletControl.Intensity / 100)
        end
    end
    return OriginalRandom(...)
end)
end
local AntiKillSection = column:section({name = "Anti Kill Protection"})
AntiKillSection:toggle({
    name = "Enabled",
    flag = "AntiKillEnabled",
    value = false,
    callback = function(state)
        getgenv().lockTp = state
        if not state then
            if getgenv().connection then
                getgenv().connection:Disconnect()
                getgenv().connection = nil
            end
            getgenv().teleported = false
            getgenv().lastSafeCFrame = nil
        else
            getgenv().monitorHealth()
        end
    end
})
AntiKillSection:dropdown({
    name = "Apply AntiKill under",
    flag = "AntiKillHealthThreshold",
    items = {"<90 Health", "<85 Health", "<80 Health", "<75 Health", "<70 Health", "<65 Health", "<60 Health"},
    default = "<85 Health",
    callback = function(value)
        local num = tonumber(value:match("%d+"))
        if num then
            getgenv().healthThreshold = num
        end
    end
})
AntiKillSection:button_holder({})
AntiKillSection:button({
    name = "Go Back",
    callback = function()
        getgenv().teleportBack()
    end
})

local column = Misc:column()
local section = column:section({name = "Server Side"})
getgenv().SylithV2 = getgenv().SylithV2 or { Network = {Desync = false, FakePos = false, UseSenderRate = true, SenderRate = 60, RefreshRate = 20} }
getgenv().fpos = getgenv().fpos or { enabled = false, client_root = nil, saved_cframe = nil, hook = nil, timer = 0, is_elevated = false }
getgenv().csync = getgenv().csync or { enabled = false, selectedMode = "None", mode = "Void Spam", client_root = nil, saved_cframe = nil, hook = nil, is_elevated = false, timer = 0, void_time = 0.4, normal_time = 0.133, dummy = nil }

-- ======================== FE Invisible / Fake Pos ========================
local a = false 
RunService.Heartbeat:Connect(function()
    if getgenv().SylithV2.Network.Desync 
    and LocalPlayer.Character 
    and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        
        a = not a
        sethiddenproperty(LocalPlayer.Character.HumanoidRootPart, "NetworkIsSleeping", a)

        if getgenv().SylithV2.Network.UseSenderRate and not getgenv().SylithV2.Network.FakePos then
            if a then 
                setfflag("S2PhysicsSenderRate", tostring(getgenv().SylithV2.Network.SenderRate))
            else
                setfflag("S2PhysicsSenderRate", "20")
            end
        end
    end
end)


coroutine.wrap(function()
    while true do
        if getgenv().SylithV2.Network.FakePos then
            setfflag("S2PhysicsSenderRate", "1")
            setfpscap(1)
            task.wait(0.1)
            setfflag("S2PhysicsSenderRate", "20000")
            setfpscap(240)
        end
        task.wait(getgenv().SylithV2.Network.RefreshRate)
    end
end)()

section:label({name = ""})
section:label({name = "Fake Position"})
section:toggle({
    name = "Fake Pos",
    flag = "fakepos_enabled",
    callback = function(Value)
        getgenv().SylithV2.Network.Desync = Value
        if Value then
            setfflag("S2PhysicsSenderRate", "1")
            setfpscap(1)
            task.wait(0.1)
            setfflag("S2PhysicsSenderRate", "20000")
            setfpscap(240)
        end
    end
})

section:toggle({name = "Refresh", flag = "refresh_enabled", callback = function(Value)
    getgenv().SylithV2.Network.FakePos = Value
end})

section:slider({name = "Refresh Rate", min = 5, max = 200, default = 20, interval = 1, flag = "refresh_value", callback = function(Value)
    getgenv().SylithV2.Network.RefreshRate = Value
end})

-- ======================== FE Invisible Hook ========================
task.spawn(function()
    while true do
        getgenv().fpos.client_root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        task.wait(1)
    end
end)

getgenv().fpos.enable_hook = function()
    if not getgenv().fpos.hook then
        getgenv().fpos.hook = hookmetamethod(game, "__index", function(self, index)
            if not checkcaller() and getgenv().fpos.enabled and getgenv().fpos.saved_cframe and index == "CFrame" and self == getgenv().fpos.client_root then
                return getgenv().fpos.saved_cframe
            end
            return getgenv().fpos.hook(self, index)
        end)
    end
end

getgenv().fpos.disable_hook = function()
    if getgenv().fpos.hook then
        unhookmetamethod(game, "__index", getgenv().fpos.hook)
        getgenv().fpos.hook = nil
    end
end

getgenv().fpos.getUndergroundCFrame = function()
    if getgenv().fpos.client_root and getgenv().fpos.client_root.CFrame then
        return getgenv().fpos.client_root.CFrame - Vector3.new(0,18,0)
    end
    return CFrame.new()
end

section:label({name = ""})
section:label({name = "Invisible"})
section:toggle({name = "Invisible", flag = "fakepostg", callback = function(v)
    getgenv().fpos.enabled = v
    if not v then
        if getgenv().fpos.hook then getgenv().fpos.disable_hook() end
        getgenv().fpos.saved_cframe = nil
        getgenv().fpos.is_elevated = false
    end
end})

RunService.Heartbeat:Connect(function(delta)
    if not getgenv().fpos.client_root then return end
    if getgenv().fpos.enabled then
        if not getgenv().fpos.hook then getgenv().fpos.enable_hook() end
        getgenv().fpos.timer = getgenv().fpos.timer + delta
        local threshold = 0.133
        if getgenv().fpos.timer >= threshold then
            getgenv().fpos.timer = 0
            getgenv().fpos.is_elevated = not getgenv().fpos.is_elevated
        end
        local random_rotation = CFrame.Angles(math.rad(math.random(-180,180)), math.rad(math.random(-180,180)), math.rad(math.random(-180,180)))
        local target_cframe = getgenv().fpos.getUndergroundCFrame() * random_rotation
        getgenv().fpos.saved_cframe = getgenv().fpos.client_root.CFrame
        getgenv().fpos.client_root.CFrame = target_cframe
        RunService.RenderStepped:Wait()
        getgenv().fpos.client_root.CFrame = getgenv().fpos.saved_cframe
    end
end)

getgenv().csync = {
    enabled = false,
    selectedMode = "None",
    mode = "Void Spam",
    client_root = nil,
    saved_cframe = nil,
    hook = nil,
    is_elevated = false,
    timer = 0,
    void_time = 0.4,
    normal_time = 0.133,
    dummy = nil,
    VisualizeEnabled = false
}

getgenv().createDummy = function()
    local r6_dummy = game:GetObjects("rbxassetid://9474737816")[1]
    if not r6_dummy then return nil end
    if r6_dummy:FindFirstChild("Head") and r6_dummy.Head:FindFirstChild("Face") then
        r6_dummy.Head.Face:Destroy()
    end
    for _, v in pairs(r6_dummy:GetChildren()) do
        if v:IsA("BasePart") then
            v.Transparency = v.Name == "HumanoidRootPart" and 1 or 0.5
            v.Material = Enum.Material.Neon
            v.Color = Color3.fromRGB(0, 255, 0)
            v.CanCollide = false
            v.Anchored = false
        end
    end
    local torso = r6_dummy:FindFirstChild("Torso")
    if torso then
        local decalBack = Instance.new("Decal", torso)
        decalBack.Face = Enum.NormalId.Back
        decalBack.Transparency = 0.5
        decalBack.Texture = "http://www.roblox.com/asset/?id=14848745201"
        local decalFront = Instance.new("Decal", torso)
        decalFront.Face = Enum.NormalId.Front
        decalFront.Transparency = 0.5
        decalFront.Texture = "http://www.roblox.com/asset/?id=14848745201"
    end
    return r6_dummy
end

getgenv().csync.dummy = getgenv().createDummy()

task.spawn(function()
    while true do
        getgenv().csync.client_root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        task.wait(1)
    end
end)

getgenv().enable_hook = function()
    if not getgenv().csync.hook then
        getgenv().csync.hook = hookmetamethod(game, "__index", function(self, index)
            if not checkcaller() and getgenv().csync.enabled and getgenv().csync.saved_cframe and index == "CFrame" and self == getgenv().csync.client_root then
                return getgenv().csync.saved_cframe
            end
            return getgenv().csync.hook(self, index)
        end)
    end
end

getgenv().disable_hook = function()
    if getgenv().csync.hook then
        unhookmetamethod(game, "__index", getgenv().csync.hook)
        getgenv().csync.hook = nil
    end
end

getgenv().getDummyCFrame = function()
    if getgenv().csync.mode == "Void Spam" then
        return getgenv().csync.is_elevated and CFrame.new(getgenv().csync.client_root.Position.X, math.random(1e6, 2e6), getgenv().csync.client_root.Position.Z) or getgenv().csync.client_root.CFrame
    elseif getgenv().csync.mode == "Void" then
        return CFrame.new(
            getgenv().csync.client_root.Position.X + math.random(-444444, 444444),
            getgenv().csync.client_root.Position.Y + math.random(-444444, 444444),
            getgenv().csync.client_root.Position.Z + math.random(-44444, 44444)
        )
    elseif getgenv().csync.mode == "Random Strafe" then
        return CFrame.new(
            getgenv().csync.client_root.Position.X + math.random(-10, 10),
            getgenv().csync.client_root.Position.Y + math.random(2, 5),
            getgenv().csync.client_root.Position.Z + math.random(-10, 10)
        )
    elseif getgenv().csync.mode == "None" then
        return getgenv().csync.client_root.CFrame
    end
end

getgenv().updateDummy = function()
    if not getgenv().csync.client_root or not getgenv().csync.dummy then return end
    local target_cframe = getgenv().getDummyCFrame()
    if getgenv().csync.dummy.PrimaryPart then
        getgenv().csync.dummy:SetPrimaryPartCFrame(target_cframe)
        if not getgenv().csync.dummy.Parent then
            getgenv().csync.dummy.Parent = workspace
        end
    end
end
section:label({name = ""})
section:label({name = "Desync"})
getgenv().visualizeToggle = section:toggle({
    name = "Visualize",
    default = false,
    flag = "VoidSpamVisualize",
    callback = function(state)
        getgenv().csync.VisualizeEnabled = state
    end
})

getgenv().modeDropdown = section:dropdown({
    name = "Method",
    items = {"None", "Void", "Random Strafe", "Void Spam"},
    default = "None",
    flag = "DesyncMode",
    callback = function(selected)
        getgenv().csync.selectedMode = selected
    end
})

RunService.RenderStepped:Connect(function()
    if getgenv().csync.VisualizeEnabled then
        getgenv().updateDummy()
    else
        if getgenv().csync.dummy and getgenv().csync.dummy.Parent then
            getgenv().csync.dummy.Parent = nil
        end
    end
end)

RunService.Heartbeat:Connect(function(delta)
    if not getgenv().csync.client_root then return end
    local wasEnabled = getgenv().csync.enabled
    getgenv().csync.enabled = getgenv().csync.selectedMode ~= "None"
    getgenv().csync.mode = getgenv().csync.selectedMode
    if getgenv().csync.enabled then
        if not wasEnabled then getgenv().enable_hook() end
        getgenv().csync.timer = getgenv().csync.timer + delta
        local threshold = getgenv().csync.is_elevated and getgenv().csync.void_time or getgenv().csync.normal_time
        if getgenv().csync.timer >= threshold then
            getgenv().csync.timer = 0
            getgenv().csync.is_elevated = not getgenv().csync.is_elevated
        end
        local random_rotation = CFrame.Angles(
            math.rad(math.random(-180, 180)),
            math.rad(math.random(-180, 180)),
            math.rad(math.random(-180, 180))
        )
        local target_cframe = getgenv().getDummyCFrame() * random_rotation
        getgenv().csync.saved_cframe = getgenv().csync.client_root.CFrame
        getgenv().csync.client_root.CFrame = target_cframe
        RunService.RenderStepped:Wait()
        getgenv().csync.client_root.CFrame = getgenv().csync.saved_cframe
    elseif wasEnabled then
        if getgenv().csync.hook then getgenv().disable_hook() end
        getgenv().csync.saved_cframe = nil
        getgenv().csync.is_elevated = false
    end
end)

local section = column:section({name = "Other"})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
section:toggle({name = "Auto Armor", flag = "autoarmor_enabled", callback = function(Value)
        SylithV2.AutoArmor.Enabled = Value
        getgenv().AutoArmor = getgenv().AutoArmor or {}
        getgenv().AutoArmor.Enabled = Value
end})

section:toggle({name = "Anti Stomp", flag = "antistomp_enabled", callback = function(Value)
    SylithV2.AntiStomp.Enabled = Value
end})

-- Anti Seat
local cachedSeats = {}
local function processSeat(seat, state)
    if seat:IsA("Seat") and not cachedSeats[seat] then
        cachedSeats[seat] = seat
    end
    if cachedSeats[seat] then
        seat.Disabled = state
        if state then
            game:GetService("CollectionService"):AddTag(seat, "Seat")
        else
            game:GetService("CollectionService"):RemoveTag(seat, "Seat")
        end
    end
end

for _, object in ipairs(workspace:GetDescendants()) do
    if object:IsA("Seat") then
        cachedSeats[object] = object
    end
end

workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Seat") then
        processSeat(descendant, game:GetService("CollectionService"):HasTag(descendant, "Seat"))
    end
end)

section:toggle({name = "Anti Seat", flag = "disableseats_enabled", callback = function(Value)
    for seat, _ in pairs(cachedSeats) do
        processSeat(seat, Value)
    end
end})
end
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
-- Noclip
local nocliped = false
local noclipConn
section:toggle({name = "Noclip", flag = "Noclip", callback = function(state)
    nocliped = state
    if nocliped then
        noclipConn = game:GetService("RunService").Heartbeat:Connect(function()
            local char = game.Players.LocalPlayer.Character
            if char then
                for _, part in pairs(char:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        if noclipConn then
            noclipConn:Disconnect()
            noclipConn = nil
        end
    end
end})

-- No Jump-Cooldown
local jumpConn
local function setJumpCooldown(enabled)
    local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local hum = char:WaitForChild("Humanoid")
    hum.UseJumpPower = not enabled
    if jumpConn then jumpConn:Disconnect() end
    jumpConn = game.Players.LocalPlayer.CharacterAdded:Connect(function(newChar)
        local newHum = newChar:WaitForChild("Humanoid")
        newHum.UseJumpPower = not enabled
    end)
end

section:toggle({name = "No jump-cooldown", flag = "NoJumpCooldown", callback = function(val)
    setJumpCooldown(val)
end})
end
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
-- Anti Void
local antiVoidEnabled = false
local antiVoidConn
section:toggle({name = "Anti Void", flag = "NoVoid", callback = function(val)
    antiVoidEnabled = val
    if antiVoidEnabled then
        antiVoidConn = game:GetService("RunService").Heartbeat:Connect(function()
            local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if root and root.Position.Y <= -150 then
                root.CFrame = root.CFrame + Vector3.new(0, 500, 0)
            end
        end)
    else
        if antiVoidConn then
            antiVoidConn:Disconnect()
            antiVoidConn = nil
        end
    end
end})
end
-- Max Zoom
local zoomEnabled = false
section:toggle({name = "Max Zoom", flag = "InfiniteZoom", callback = function(val)
    zoomEnabled = val
    if val then
        game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
    else
        game.Players.LocalPlayer.CameraMaxZoomDistance = 30
    end
end})

--Chatspy
local TextChatService = game:GetService("TextChatService")
section:toggle({
    name = "Chatspy",
    flag = "chspy",
    callback = function(val)
        if TextChatService.ChatWindowConfiguration then
            TextChatService.ChatWindowConfiguration.Enabled = val
        end
    end
})
if blockedGames[game.PlaceId] then
    section:label({name = ""})
        section:label({name = "Feature not supported, only DaHood and HoodCustoms."})
else
section:button_holder({})
section:button({
    name = "Redeem all DaHood codes",
    callback = function()
        local codes = { "OCTOBER25", "BRAINROT", "LUXE", "TURBO" }
        local successfulCodes = {}
        local function redeemCode(code)
            local args = {
                [1] = "EnterPromoCode",
                [2] = code
            }
            local successIndicator = nil
            local connection
            connection = MainEvent.OnClientEvent:Connect(function(response)
                if type(response) == "table" and response.Code == code then
                    successIndicator = response.Status
                end
            end)
            MainEvent:FireServer(unpack(args))
            wait(1.5)
            connection:Disconnect()
            if successIndicator == "Success" then
                table.insert(successfulCodes, code)
                library:notification({ text = code .. " redeemed successfully!", time = 2 })
            elseif successIndicator == "AlreadyRedeemed" then
                library:notification({ text = code .. " was already redeemed.", time = 2 })
            elseif successIndicator == "Expired" then
                library:notification({ text = code .. " is expired.", time = 2 })
            else
                library:notification({ text = code .. " could not be redeemed, or already redeemed", time = 2 })
            end
        end

        for _, code in ipairs(codes) do
            redeemCode(code)
        end
    end
})
section:button_holder({})
section:button({
    name = "Give Animation Packs",
    callback = function()
repeat wait()until game:IsLoaded()and(game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")and(game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack")and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")))local F=false local i=false function loadUI()local i=game.Players.LocalPlayer local H=i.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack")local d=i.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")if H and not H.Visible then H.Visible=true end if d and not d.Visible then d.Visible=true end F=true end function unloadUI()local i=game.Players.LocalPlayer local H=i.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack")local d=i.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")if H and H.Visible then H.Visible=false end if d and d.Visible then d.Visible=false end F=false end if F then unloadUI()else loadUI()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lean")then game.ReplicatedStorage.ClientAnimations.Lean:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lay")then game.ReplicatedStorage.ClientAnimations.Lay:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance1")then game.ReplicatedStorage.ClientAnimations.Dance1:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance2")then game.ReplicatedStorage.ClientAnimations.Dance2:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Greet")then game.ReplicatedStorage.ClientAnimations.Greet:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Chest Pump")then(game.ReplicatedStorage.ClientAnimations)["Chest Pump"]:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Praying")then game.ReplicatedStorage.ClientAnimations.Praying:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TheDefault")then game.ReplicatedStorage.ClientAnimations.TheDefault:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Sturdy")then game.ReplicatedStorage.ClientAnimations.Sturdy:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Rossy")then game.ReplicatedStorage.ClientAnimations.Rossy:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Griddy")then game.ReplicatedStorage.ClientAnimations.Griddy:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TPose")then game.ReplicatedStorage.ClientAnimations.TPose:Destroy()end if game.ReplicatedStorage.ClientAnimations:FindFirstChild("SpeedBlitz")then game.ReplicatedStorage.ClientAnimations.SpeedBlitz:Destroy()end local H=game.ReplicatedStorage.ClientAnimations local d=Instance.new("Animation",H)d.Name="Lean"d.AnimationId="rbxassetid://3152375249"local j=Instance.new("Animation",H)j.Name="Lay"j.AnimationId="rbxassetid://3152378852"local l=Instance.new("Animation",H)l.Name="Dance1"l.AnimationId="rbxassetid://3189773368"local v=Instance.new("Animation",H)v.Name="Dance2"v.AnimationId="rbxassetid://3189776546"local T=Instance.new("Animation",H)T.Name="Greet"T.AnimationId="rbxassetid://3189777795"local o=Instance.new("Animation",H)o.Name="Chest Pump"o.AnimationId="rbxassetid://3189779152"local m=Instance.new("Animation",H)m.Name="Praying"m.AnimationId="rbxassetid://3487719500"local M=Instance.new("Animation",H)M.Name="TheDefault"M.AnimationId="rbxassetid://11710529975"local s=Instance.new("Animation",H)s.Name="Sturdy"s.AnimationId="rbxassetid://11710524717"local N=Instance.new("Animation",H)N.Name="Rossy"N.AnimationId="rbxassetid://11710527244"local a=Instance.new("Animation",H)a.Name="Griddy"a.AnimationId="rbxassetid://11710529220"local I=Instance.new("Animation",H)I.Name="TPose"I.AnimationId="rbxassetid://11710524200"local c=Instance.new("Animation",H)c.Name="SpeedBlitz"c.AnimationId="rbxassetid://11710541744"function AnimationPack(F)F:WaitForChild("Humanoid")repeat wait()until game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR")and(game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack")and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack"))local i=(game:GetService("Players")).LocalPlayer.PlayerGui.MainScreenGui.AnimationPack local H=(game:GetService("Players")).LocalPlayer.PlayerGui.MainScreenGui.AnimationPlusPack local x=i.ScrollingFrame local E=i.CloseButton local g=H.ScrollingFrame local y=H.CloseButton local b=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(d)local Z=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(j)local z=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(l)local q=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(v)local C=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(T)local U=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(o)local X=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(m)local t=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(M)local r=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(s)local V=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(N)local Q=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(a)local A=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(I)local p=(game:GetService("Players")).LocalPlayer.Character.Humanoid:LoadAnimation(c)i.Visible=true H.Visible=true x.UIListLayout.SortOrder=Enum.SortOrder.LayoutOrder g.UIListLayout.SortOrder=Enum.SortOrder.LayoutOrder for F,i in pairs(x:GetChildren())do if i.Name=="TextButton"then if i.Text=="Lean"then i.Name="LeanButton"end end end for F,i in pairs(x:GetChildren())do if i.Name=="TextButton"then if i.Text=="Lay"then i.Name="LayButton"end end end for F,i in pairs(x:GetChildren())do if i.Name=="TextButton"then if i.Text=="Dance1"then i.Name="Dance1Button"end end end for F,i in pairs(x:GetChildren())do if i.Name=="TextButton"then if i.Text=="Dance2"then i.Name="Dance2Button"end end end for F,i in pairs(x:GetChildren())do if i.Name=="TextButton"then if i.Text=="Greet"then i.Name="GreetButton"end end end for F,i in pairs(x:GetChildren())do if i.Name=="TextButton"then if i.Text=="Chest Pump"then i.Name="ChestPumpButton"end end end for F,i in pairs(x:GetChildren())do if i.Name=="TextButton"then if i.Text=="Praying"then i.Name="PrayingButton"end end end for F,i in pairs(g:GetChildren())do if i.Name=="TextButton"then if i.Text=="The Default"then i.Name="TheDefaultButton"end end end for F,i in pairs(g:GetChildren())do if i.Name=="TextButton"then if i.Text=="Sturdy"then i.Name="SturdyButton"end end end for F,i in pairs(g:GetChildren())do if i.Name=="TextButton"then if i.Text=="Rossy"then i.Name="RossyButton"end end end for F,i in pairs(g:GetChildren())do if i.Name=="TextButton"then if i.Text=="Griddy"then i.Name="GriddyButton"end end end for F,i in pairs(g:GetChildren())do if i.Name=="TextButton"then if i.Text=="T Pose"then i.Name="TPoseButton"end end end for F,i in pairs(g:GetChildren())do if i.Name=="TextButton"then if i.Text=="Speed Blitz"then i.Name="SpeedBlitzButton"end end end function Stop()b:Stop()Z:Stop()z:Stop()q:Stop()C:Stop()U:Stop()X:Stop()t:Stop()r:Stop()V:Stop()Q:Stop()A:Stop()p:Stop()end local f=x.LeanButton local K=x.LayButton local w=x.Dance1Button local J=x.Dance2Button local k=x.GreetButton local e=x.ChestPumpButton local O=x.PrayingButton local R=g.TheDefaultButton local D=g.SturdyButton local n=g.RossyButton local P=g.GriddyButton local L=g.TPoseButton local S=g.SpeedBlitzButton i.MouseButton1Click:Connect(function()if x.Visible==false then x.Visible=true E.Visible=true H.Visible=false end end)H.MouseButton1Click:Connect(function()if g.Visible==false then g.Visible=true y.Visible=true i.Visible=false end end)E.MouseButton1Click:Connect(function()if x.Visible==true then x.Visible=false E.Visible=false H.Visible=true end end)y.MouseButton1Click:Connect(function()if g.Visible==true then g.Visible=false y.Visible=false i.Visible=true end end)f.MouseButton1Click:Connect(function()Stop()b:Play()end)K.MouseButton1Click:Connect(function()Stop()Z:Play()end)w.MouseButton1Click:Connect(function()Stop()z:Play()end)J.MouseButton1Click:Connect(function()Stop()q:Play()end)k.MouseButton1Click:Connect(function()Stop()C:Play()end)e.MouseButton1Click:Connect(function()Stop()U:Play()end)O.MouseButton1Click:Connect(function()Stop()X:Play()end)R.MouseButton1Click:Connect(function()Stop()t:Play()end)D.MouseButton1Click:Connect(function()Stop()r:Play()end)n.MouseButton1Click:Connect(function()Stop()V:Play()end)P.MouseButton1Click:Connect(function()Stop()Q:Play()end)L.MouseButton1Click:Connect(function()Stop()A:Play()end)S.MouseButton1Click:Connect(function()Stop()p:Play()end);(game:GetService("Players")).LocalPlayer.Character.Humanoid.Running:Connect(function()Stop()end);(game:GetService("Players")).LocalPlayer.CharacterAdded:Connect(function()Stop()end)end AnimationPack(game.Players.LocalPlayer.Character)game.Players.LocalPlayer.CharacterAdded:Connect(AnimationPack)
    end,
})
end
-- // Players // --

local column = PlayersTab:column()
if Premium then

    local section = column:section({ name = "Playerlist" })

    local playerlist = section:playerlist({})
    
    game:GetService("RunService").Heartbeat:Connect(function(dt)
        local selectedplayername = library.selected_player
            
        if selectedplayername then
            SylithV2.Target.Target = selectedplayername
        end
    end)
    
    local section = column:section({ name = "Actions" })
    if blockedGames[game.PlaceId] then
    section:label({name = ""})
else
    section:button_holder({})
    
    section:button({name = "Execute", callback = function()
        local originalCFrame = localPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        while task.wait() do
            local Target = game.Players:FindFirstChild(SylithV2.Target.Target)
            if not localPlayer or not localPlayer.Character then continue end
    
            local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            local Tool = localPlayer.Character:FindFirstChildOfClass("Tool")
            
            if SylithV2.Target.Target ~= nil then
                if Target and Target.Character and humanoidRootPart and Tool and Tool:FindFirstChild("Handle") then
                    local targetHRP = Target.Character:FindFirstChild("HumanoidRootPart")
                    local targetHead = Target.Character:FindFirstChild("Head")
        
                    if not KnockCheck(Target) and targetHead and targetHRP then
                        if (not Target.Character:FindFirstChild("ForceField")) or (Tool.Name == "[Rifle]") then
                            humanoidRootPart.CFrame = CFrame.new(targetHRP.Position + Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25)))
                            task.wait()
                            MainEvent:FireServer("ShootGun", Tool.Handle, Tool.Handle.Position, targetHead.Position, targetHead, Vector3.new(0, 1, 0))
                        else
                            humanoidRootPart.CFrame = CFrame.new(50000, 10000, 0) + Vector3.new(math.random(-25, 25), math.random(-25, 0), math.random(-25, 25))
                            library:notification({ text = "SylithV2 - Waiting.. Target has spawn protection.", time = 1 })
                            MainEvent:FireServer("Reload", Tool)
                        end
                    else
                        if Target.Character:FindFirstChild("BodyEffects") and Target.Character.BodyEffects:FindFirstChild("SDeath") and Target.Character.BodyEffects.SDeath.Value == false then
                            if Target.Character:FindFirstChild("UpperTorso") and Target.Character:FindFirstChild("HumanoidRootPart") and Target.Character:FindFirstChild("Humanoid") then
                                humanoidRootPart.CFrame = CFrame.new(Target.Character.UpperTorso.Position + Vector3.new(0, 3, 0))
                                game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("Stomp")
                            end
                        elseif Target.Character:FindFirstChild("BodyEffects") and Target.Character.BodyEffects:FindFirstChild("SDeath") and Target.Character.BodyEffects.SDeath.Value == true then
                            task.wait(1)
                            library:notification({ text = "SylithV2 - Target has been killed.", time = 3 })
                            humanoidRootPart.CFrame = originalCFrame
                            return
                        end
                    end
                else
                    library:notification({ text = "SylithV2 - please equip your gun before using 'Kill Target'.", time = 3 })
                    return
                end
            end
        end
    end})
    
    section:button({name = "Knock", callback = function()
        local originalCFrame = localPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        while task.wait() do
            local Target = game.Players:FindFirstChild(SylithV2.Target.Target)
            if not localPlayer or not localPlayer.Character then continue end
    
            local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            local Tool = localPlayer.Character:FindFirstChildOfClass("Tool")
            
            if SylithV2.Target.Target ~= nil then
                if Target and Target.Character and humanoidRootPart and Tool and Tool:FindFirstChild("Handle") then
                    local targetHRP = Target.Character:FindFirstChild("HumanoidRootPart")
                    local targetHead = Target.Character:FindFirstChild("Head")
        
                    if not KnockCheck(Target) and targetHead and targetHRP then
                        if (not Target.Character:FindFirstChild("ForceField")) or (Tool.Name == "[Rifle]") then
                            humanoidRootPart.CFrame = CFrame.new(targetHRP.Position + Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25)))
                            task.wait()
                            MainEvent:FireServer("ShootGun", Tool.Handle, Tool.Handle.Position, targetHead.Position, targetHead, Vector3.new(0, 1, 0))
                        else
                            humanoidRootPart.CFrame = CFrame.new(50000, 10000, 0) + Vector3.new(math.random(-25, 25), math.random(-25, 0), math.random(-25, 25))
                            library:notification({ text = "SylithV2 - Waiting.. Target has spawn protection.", time = 1 })
                            MainEvent:FireServer("Reload", Tool)
                        end
                    else
                        library:notification({ text = "SylithV2 - Target has been knocked.", time = 3 })
                        humanoidRootPart.CFrame = originalCFrame
                        return
                    end
                else
                    library:notification({ text = "SylithV2 - please equip your gun before using 'Knock Target'.", time = 3 })
                    return
                end
            end
        end
    end})
end
    section:button_holder({})
    
    section:button({name = "Teleport", callback = function()
        local Target = game.Players:FindFirstChild(SylithV2.Target.Target)
        if SylithV2.Target.Target ~= nil and Target and Target.Character and localPlayer then
            localPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
        else
            library:notification({ text = "SylithV2 - please select a target before using 'Go-To Target'.", time = 3 })
        end
    end})

    local SavedCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local conn
section:toggle({
    name = "View",
    callback = function(v)
        if v then
            local t
            if typeof(SylithV2.Target.Target) == "number" then
                t = game.Players:GetPlayerByUserId(SylithV2.Target.Target)
            else
                t = game.Players:FindFirstChild(tostring(SylithV2.Target.Target))
            end
            if t and t.Character and t.Character:FindFirstChild("Humanoid") then
                conn = game:GetService("RunService").Heartbeat:Connect(function()
                    if t.Character and t.Character:FindFirstChild("Humanoid") then
                        workspace.CurrentCamera.CameraSubject = t.Character.Humanoid
                    end
                end)
            else
                library:notification({
                    text = "SylithV2 - please select a valid target before using 'Spectate Target'.",
                    time = 3
                })
            end
        else
            if conn then conn:Disconnect() conn = nil end
            local lp = game.Players.LocalPlayer
            if lp.Character and lp.Character:FindFirstChild("Humanoid") then
                workspace.CurrentCamera.CameraSubject = lp.Character.Humanoid
            end
        end
    end
})
        if blockedGames[game.PlaceId] then
    section:label({name = ""})
else
    section:toggle({name = "Auto Execute", callback = function(Value)
        if Value == true then
            SavedCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
        SylithV2.Target.AutoKill = Value
        if Value == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SavedCFrame
        end
    end})
end
end
-- // Settings // --

getgenv().load_config = function(name)
    library:load_config(readfile(library.directory .. "/configs/" .. name .. ".cfg"))
end

local column = Settings:column()
local section = column:section({ name = "Options" })

local old_config = library:get_config()
config_holder = section:list({ flag = "config_name_list" })

section:textbox({ flag = "config_name_text_box" })
section:button_holder({})
section:button({
    name = "Create",
    callback = function()
        writefile(library.directory .. "/configs/" .. flags["config_name_text_box"] .. ".cfg", library:get_config())
        library:config_list_update()
    end
})

section:button({
    name = "Delete",
    callback = function()
        delfile(library.directory .. "/configs/" .. flags["config_name_list"] .. ".cfg")
        library:config_list_update()
    end
})

section:button_holder({})

section:button({
    name = "Load",
    callback = function()
        library:load_config(readfile(library.directory .. "/configs/" .. flags["config_name_list"] .. ".cfg"))
        library:notification({ text = "Loaded Config: " .. flags["config_name_list"], time = 3 })
    end
})

section:button({
    name = "Save",
    callback = function()
        writefile(library.directory .. "/configs/" .. flags["config_name_list"] .. ".cfg", library:get_config())
        library:config_list_update()
        library:notification({ text = "Saved Config: " .. flags["config_name_list"], time = 3 })
    end
})

section:button_holder({})

section:button({ name = "Refresh", callback = function() library:config_list_update() end })
section:button_holder({})

section:button({ name = "Unload", callback = function() library:load_config(old_config) end })

section:button({
    name = "Unload Menu",
    callback = function()
        library:load_config(old_config)
        for _, gui in library.guis do gui:Destroy() end
        for _, connection in library.connections do connection:Disconnect() end
    end
})

-- Theme Section
local column = Settings:column()
local section = column:section({ name = "Theme" })

section:label({ name = "accent" })
    :colorpicker({
        name = "Accent",
        color = themes.preset.accent,
        flag = "accent",
        callback = function(color, alpha)
            library:update_theme("accent", color)
        end
    })

section:label({ name = "Contrast" })
    :colorpicker({
        name = "low",
        color = themes.preset.low_contrast,
        flag = "low_contrast",
        callback = function(color)
            if flags["high_contrast"] and flags["low_contrast"] then
                library:update_theme("contrast", rgbseq{
                    rgbkey(0, flags["low_contrast"].Color),
                    rgbkey(1, flags["high_contrast"].Color)
                })
            end
        end
    })
    :colorpicker({
        name = "high",
        color = themes.preset.high_contrast,
        flag = "high_contrast",
        callback = function(color)
            library:update_theme("contrast", rgbseq{
                rgbkey(0, flags["low_contrast"].Color),
                rgbkey(1, flags["high_contrast"].Color)
            })
        end
    })

section:label({ name = "Inline" })
    :colorpicker({
        name = "inline",
        color = themes.preset.inline,
        flag = "inline",
        callback = function(color, alpha)
            library:update_theme("inline", color)
        end
    })

section:label({ name = "Outline" })
    :colorpicker({
        name = "outline",
        color = themes.preset.outline,
        flag = "outline",
        callback = function(color, alpha)
            library:update_theme("outline", color)
        end
    })

section:label({ name = "Text Color" })
    :colorpicker({
        name = "main",
        color = themes.preset.text,
        flag = "textcolor",
        callback = function(color, alpha)
            library:update_theme("text", color)
        end
    })
    :colorpicker({
        name = "outline",
        color = themes.preset.text_outline,
        flag = "text_outline",
        callback = function(color, alpha)
            library:update_theme("text_outline", color)
        end
    })

section:label({ name = "Glow Color" })
    :colorpicker({
        name = "glow",
        color = themes.preset.glow,
        flag = "glow",
        callback = function(color, alpha)
            library:update_theme("glow", color)
        end
    })

section:label({ name = "UI Key" })
    :keybind({ callback = window.set_menu_visibility, key = Enum.KeyCode.RightControl })

section:toggle({
    name = "Keybind List",
    flag = "keybind_list",
    callback = function(bool)
        library.keybind_list_frame.Visible = bool
    end
})

section:toggle({
    name = "Watermark",
    flag = "watermark",
    callback = function(bool)
        watermark.set_visible(bool)
    end
})

section:button_holder({})
section:button({ name = "Copy JobId", callback = function() setclipboard(game.JobId) end })
section:button_holder({})
section:button({ name = "Copy GameId", callback = function() setclipboard(game.GameId) end })
section:button_holder({})

section:button_holder({})
section:button({
    name = "Rejoin",
    callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)
    end
})

section:button_holder({})
section:button({
    name = "Rejoin (New server)",
    callback = function()
        local apiRequest = game:GetService("HttpService"):JSONDecode(
            game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")
        )
        local data = apiRequest.data[random(1, #apiRequest.data)]
        
        if data.playing <= flags["max_players"] then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, data.id)
        end
    end
})

section:slider({
    name = "Max Players",
    flag = "max_players",
    min = 0,
    max = 40,
    default = 15,
    interval = 1
})

game:GetService("RunService").Heartbeat:Connect(function(dt)
    local TargetAimActive = false
    local BuyingActive = false
    local AutoArmorActive = false
    local AutoLoadoutActive = false
    local BuyingSingleActive = false
    if SylithV2.TargetAim.Enabled and SylithV2.TargetAim.Strafe and SylithV2.TargetAim.Target ~= "None" and localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character:FindFirstChild("Humanoid") and localPlayer.Character:FindFirstChild("Head") then
        local TargetPlayer = players:FindFirstChild(SylithV2.TargetAim.Target)
        local Tool = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Tool")
        if TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("Head") and Tool then
            if not TargetPlayer.Character:FindFirstChild("ForceField") or Tool.Name == "[Rifle]" then
                local bodyEffects = TargetPlayer.Character:FindFirstChild("BodyEffects")
                local isDead = bodyEffects and bodyEffects:FindFirstChild("SDeath") and bodyEffects.SDeath.Value   
                if ((not KnockCheck(TargetPlayer)) or (SylithV2.TargetAim.AutoStomp and isDead == false)) and localPlayer.Character and localPlayer.Character:FindFirstChild("BodyEffects") and localPlayer.Character.BodyEffects:FindFirstChild("Reload") and localPlayer.Character.BodyEffects.Reload.Value == false then
                    if SylithV2.TargetAim.VoidResolver then
                        if (TargetPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 0, 0)).Magnitude > 5000 then
                            return
                        end
                    end
                    TargetAimActive = true
                end
            end
        end
    end
    if BuyingSingle and not game.Players.LocalPlayer.Character:FindFirstChild(SelectedGun) and not game.Players.LocalPlayer.Backpack:FindFirstChild(SelectedGun) then
        BuyingSingleActive = true
    end
    if SylithV2.AutoLoadout.Enabled and SylithV2.AutoLoadout.Gun and ShopTable[SylithV2.AutoLoadout.Gun] and not game.Players.LocalPlayer.Character:FindFirstChild(SylithV2.AutoLoadout.Gun) and not game.Players.LocalPlayer.Backpack:FindFirstChild(SylithV2.AutoLoadout.Gun) then
        AutoLoadoutActive = true
    end
    if SylithV2.AutoArmor.Enabled == true then
        if localPlayer.Character
        and localPlayer.Character:FindFirstChild("BodyEffects")
        and localPlayer.Character.BodyEffects:FindFirstChild("Armor")
        and localPlayer.Character.BodyEffects.Armor.Value < 100 then
            AutoArmorActive = true
        end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function(dt)
    -- Fly
    if SylithV2.Fly.Enabled and SylithV2.Fly.Keybind then
        if localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local move_direction = localPlayer.Character.Humanoid.MoveDirection;
            local hrp = localPlayer.Character.HumanoidRootPart;
            local add = Vector3.new(0, (game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) and SylithV2.Fly.Speed /  8 or game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) and -SylithV2.Fly.Speed / 8) or 0, 0);
            hrp.CFrame = hrp.CFrame + (move_direction * dt) * SylithV2.Fly.Speed * 10;
            hrp.CFrame = hrp.CFrame + add;
            hrp.Velocity = (hrp.Velocity * Vector3.new(1, 0, 1)) + Vector3.new(0, 1.9, 0);
        end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function(dt)
    -- Speed
    if SylithV2.Speed.Enabled and SylithV2.Speed.Keybind then
        if localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local move_direction = localPlayer.Character.Humanoid.MoveDirection;
            local hrp = localPlayer.Character.HumanoidRootPart
            hrp.CFrame = hrp.CFrame + (move_direction * dt) * SylithV2.Speed.Speed * 10
        end
    end
end)

Combat.open_tab() 

task.spawn(function()
    while task.wait(1) do 
        watermark.change_text(os.date('SylithV2 - ' .. ScriptVersion .. ' - %b %d %Y - %H:%M:%S'))
    end 
end) 
warn("[+] - PolSec : Authenticated 🔵")
wait(0.3)
warn("[+] - Memory : Initialized 🟢")
warn('[+] - Framework : Initialized 🟢')
warn('[+] - Menu Structure : Initialized 🟢')
warn("[+] - Loaded in : 4.6214 seconds")
print('')
library:config_list_update()
