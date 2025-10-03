local FileName = "AranaraTracker"
local Restart = false
local Main = {
   {n='Aranara #1', x=45.51, y=459.16, z=2055.61},
   {n='Aranara #2', x=160.49, y=427.4, z=2133.56},
   {n='Aranara #3', x=376.65, y=253.4, z=2317.61},
   {n='Aranara #4', x=308.87, y=421.66, z=2457.08},
   {n='Aranara #5', x=328.33, y=362.54, z=2536.99},
   {n='Aranara #6', x=-32.48, y=279.23, z=2766.48},
   {n='Aranara #7', x=-85.12, y=161.36, z=2558.56},
   {n='Aranara #8', x=-274.32, y=192.99, z=2518.0},
   {n='Aranara #9', x=-582.75, y=105.91, z=2341.57},
   {n='Aranara #10', x=-564.82, y=133.09, z=2269.01},
   {n='Aranara #11', x=-580.54, y=108.71, z=2222.74},
   {n='Aranara #12', x=-249.43, y=300.34, z=2123.91},
   {n='Aranara #13', x=-202.27, y=336.24, z=2082.74},
   {n='Aranara #14', x=-621.97, y=159.8, z=2722.3},
   {n='Aranara #15', x=-757.17, y=205.93, z=2879.45},
   {n='Aranara #16', x=-728.8, y=223.23, z=3000.96},
   {n='Aranara #17', x=-767.25, y=223.76, z=3012.73},
   {n='Aranara #18', x=-881.67, y=304.85, z=3134.77},
   {n='Aranara #19', x=-1009.06, y=336.36, z=3126.96},
   {n='Aranara #20', x=-971.16, y=398.51, z=3183.71},
   {n='Aranara #21', x=-948.36, y=412.22, z=3186.24},
   {n='Aranara #22', x=-1093.63, y=265.27, z=3317.27},
   {n='Aranara #23', x=-1170.76, y=268.11, z=3337.21},
   {n='Aranara #24', x=-1151.76, y=236.34, z=3494.13},
   {n='Aranara #25', x=-1281.51, y=284.04, z=3562.36},
   {n='Aranara #26', x=-1187.66, y=236.95, z=3694.11},
   {n='Aranara #27', x=-1037.11, y=172.0, z=3751.1},
   {n='Aranara #28', x=-1006.84, y=292.28, z=3808.78},
   {n='Aranara #29', x=-906.82, y=198.58, z=3607.06},
   {n='Aranara #30', x=-982.43, y=241.59, z=3456.5},
   {n='Aranara #31', x=-900.29, y=266.66, z=3428.96},
   {n='Aranara #32', x=-725.93, y=250.66, z=3198.7},
   {n='Aranara #33', x=-535.8, y=227.24, z=3171.6},
   {n='Aranara #34', x=-466.46, y=201.33, z=3159.6},
   {n='Aranara #35', x=-324.21, y=219.57, z=3128.54},
   {n='Aranara #36', x=-384.32, y=201.83, z=2983.98},
   {n='Aranara #37', x=-353.73, y=217.12, z=3365.98},
   {n='Aranara #38', x=-622.8, y=147.37, z=3499.83},
   {n='Aranara #39', x=-800.08, y=12.81, z=3190.39},
   {n='Aranara #40', x=-1041.22, y=277.43, z=2994.09},
   {n='Aranara #41', x=-1122.22, y=291.44, z=3046.2},
   {n='Aranara #42', x=-1339.84, y=198.5, z=3206.39},
   {n='Aranara #43', x=-1382.12, y=202.11, z=3298.23},
   {n='Aranara #44', x=-1337.49, y=192.46, z=3331.44},
   {n='Aranara #45', x=-1470.0, y=205.75, z=3480.32},
   {n='Aranara #46', x=-1503.22, y=246.7, z=3682.83},
   {n='Aranara #47', x=-1322.68, y=300.03, z=3871.64},
   {n='Aranara #48', x=-1796.23, y=379.19, z=3736.25},
   {n='Aranara #49', x=-1913.42, y=367.1, z=3504.02},
   {n='Aranara #50', x=-1900.87, y=364.29, z=3494.4},
   {n='Aranara #51', x=-1804.75, y=157.88, z=3385.56},
   {n='Aranara #52', x=-1714.71, y=224.9, z=3146.86},
   {n='Aranara #53', x=-1694.14, y=182.19, z=3101.37},
   {n='Aranara #54', x=-1835.83, y=135.97, z=3056.59},
   {n='Aranara #55', x=-1949.0, y=207.68, z=2948.12},
   {n='Aranara #56', x=-1858.06, y=256.01, z=2909.45},
   {n='Aranara #57', x=-1996.34, y=240.48, z=2720.97},
   {n='Aranara #58', x=-1926.43, y=339.03, z=2603.53},
   {n='Aranara #59', x=-1786.96, y=302.1, z=2351.26},
   {n='Aranara #60', x=-1724.0, y=325.73, z=2341.2},
   {n='Aranara #61', x=-1661.43, y=332.93, z=2348.1},
   {n='Aranara #62', x=-1577.01, y=200.78, z=2531.49},
   {n='Aranara #63', x=-1503.21, y=201.16, z=2730.72},
   {n='Aranara #64', x=-1521.78, y=242.37, z=2842.1},
   {n='Aranara #65', x=-1464.92, y=267.73, z=2872.32},
   {n='Aranara #66', x=-1279.44, y=275.56, z=2604.69},
   {n='Aranara #67', x=-1197.78, y=298.63, z=2529.74},
   {n='Aranara #68', x=-1015.77, y=243.17, z=2517.98},
   {n='Aranara #69', x=-997.57, y=261.83, z=2335.44},
   {n='Aranara #70', x=-1129.49, y=258.86, z=2231.74},
   {n='Aranara #71', x=-1090.55, y=275.22, z=2152.96},
   {n='Aranara #72', x=-1197.65, y=139.69, z=2286.56},
   {n='Aranara #73', x=-1475.42, y=354.9, z=2113.83},
   {n='Aranara #74', x=-983.75, y=201.99, z=2708.08},
   {n='Aranara #75', x=-432.36, y=127.14, z=3943.13},
   {n='Aranara #76', x=-297.01, y=251.97, z=3889.36}
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