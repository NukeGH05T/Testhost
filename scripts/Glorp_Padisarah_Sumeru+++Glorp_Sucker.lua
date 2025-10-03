local FileName = "Padisarah"
local Restart = false
local Main = {
   {n='Padisarah #1', x=82.57, y=194.83, z=2555.55},
   {n='Padisarah #2', x=91.81, y=197.7, z=2595.92},
   {n='Padisarah #3', x=81.88, y=196.03, z=2617.35},
   {n='Padisarah #4', x=96.84, y=200.88, z=2626.5},
   {n='Padisarah #5', x=52.3, y=195.16, z=2630.6},
   {n='Padisarah #6', x=48.17, y=191.35, z=2616.14},
   {n='Padisarah #7', x=-286.64, y=248.48, z=2766.86},
   {n='Padisarah #8', x=-272.96, y=247.07, z=2869.79},
   {n='Padisarah #9', x=-428.11, y=239.5, z=2753.62},
   {n='Padisarah #10', x=-409.22, y=242.67, z=2712.02},
   {n='Padisarah #11', x=-522.84, y=236.08, z=2717.76},
   {n='Padisarah #12', x=-530.14, y=221.28, z=2654.13},
   {n='Padisarah #13', x=-525.13, y=203.46, z=2786.63},
   {n='Padisarah #14', x=-243.85, y=247.0, z=3353.9},
   {n='Padisarah #15', x=-245.93, y=243.13, z=3385.58},
   {n='Padisarah #16', x=-253.46, y=238.5, z=3387.16},
   {n='Padisarah #17', x=-261.22, y=237.94, z=3383.49},
   {n='Padisarah #18', x=-253.92, y=250.82, z=3395.62},
   {n='Padisarah #19', x=-216.9, y=268.37, z=3374.03},
   {n='Padisarah #20', x=-168.36, y=257.31, z=3393.63},
   {n='Padisarah #21', x=-162.38, y=262.64, z=3330.51},
   {n='Padisarah #22', x=-84.63, y=227.14, z=3262.43},
   {n='Padisarah #23', x=-52.07, y=226.72, z=3232.5},
   {n='Padisarah #24', x=-37.04, y=228.07, z=3261.2},
   {n='Padisarah #25', x=-41.99, y=224.69, z=3273.02},
   {n='Padisarah #26', x=-64.21, y=252.61, z=3443.61},
   {n='Padisarah #27', x=-34.5, y=267.0, z=3443.07},
   {n='Padisarah #28', x=-107.36, y=249.95, z=3435.93},
   {n='Padisarah #29', x=-155.17, y=239.66, z=3470.64},
   {n='Padisarah #30', x=-147.4, y=266.19, z=3505.4},
   {n='Padisarah #31', x=-148.9, y=256.38, z=3525.09},
   {n='Padisarah #32', x=-158.43, y=277.06, z=3533.22},
   {n='Padisarah #33', x=-148.67, y=278.84, z=3534.94},
   {n='Padisarah #34', x=-187.74, y=229.44, z=3529.04},
   {n='Padisarah #35', x=-187.9, y=228.74, z=3506.35},
   {n='Padisarah #36', x=-219.43, y=234.38, z=3482.12},
   {n='Padisarah #37', x=-244.97, y=242.57, z=3472.56},
   {n='Padisarah #38', x=-236.29, y=248.01, z=3441.98},
   {n='Padisarah #39', x=-202.0, y=241.56, z=3609.92},
   {n='Padisarah #40', x=-196.36, y=247.1, z=3643.93},
   {n='Padisarah #41', x=-713.71, y=217.91, z=3621.03},
   {n='Padisarah #42', x=-712.4, y=211.26, z=3587.08},
   {n='Padisarah #43', x=-1058.64, y=294.21, z=3216.28},
   {n='Padisarah #44', x=-1055.38, y=296.27, z=3206.72},
   {n='Padisarah #45', x=-1064.21, y=294.21, z=3203.62},
   {n='Padisarah #46', x=-1090.46, y=286.67, z=3207.41},
   {n='Padisarah #47', x=-1113.15, y=278.46, z=3231.53},
   {n='Padisarah #48', x=-1136.34, y=283.29, z=3186.64},
   {n='Padisarah #49', x=-1068.47, y=287.4, z=3156.9}
}

local function message(text)
    if CS and CS.MoleMole and CS.MoleMole.ActorUtils and CS.MoleMole.ActorUtils.ShowMessage then
        CS.MoleMole.ActorUtils.ShowMessage(tostring(text))
    end
end

local ok2, err2 = pcall(function()
	-- local path = os.getenv("USERPROFILE") .. "GlorpSucker" .. FileName .. ".txt"
	local path = "GlorpSucker" .. FileName .. ".txt"
    local function isfile(path)
        local ok, result = pcall(function()
            local file = io.open(path, "r")
            if file then
                file:close()
                return true
            else
                return false
            end
        end)

        if ok then
            return result
        else
            return false
        end
    end

    local function writefile(text)
        local ok, err_code = pcall(function()
            local file, file_err = io.open(path, "w")
            if file then
                file:write(tostring(text))
                file:close()
                -- message("Saved File")
            else
                -- message("File Open Error: " .. tostring(file_err))
            end
        end)

        if not ok then
            -- message("Write Error: " .. tostring(err_code))
        end
    end

    local function readfile(path)
        local ok, content_or_err = pcall(function()
            local file, file_err = io.open(path, "r")
            if file then
                local content = file:read("*a")
                file:close()
                return content
            else
                -- message("File Open Error: " .. tostring(file_err))
                return nil
            end
        end)

        if ok then
            return content_or_err
        else
            -- message("Read Error: " .. tostring(content_or_err))
            return nil
        end
    end

	local Counter = 1
	if isfile(path) then
		Counter = tonumber(readfile(path))
	end

	if Restart or Counter > #Main then
		Counter = 1
	end
	
	local Thing = Main[Counter]
	local Vector3 = CS.UnityEngine.Vector3
	local pos = Vector3(Thing["x"], Thing["y"], Thing["z"])
	CS.MoleMole.ActorUtils.SetAvatarPos(pos)
	message(Thing["n"] .. "/" .. #Main)
	writefile(tostring(Counter+1))
end)

if not ok2 then
	-- message("error send to glorp " .. err2)
end