local FileName = "SeaHydroucli"
local Restart = false
local Main = {
   {n='Hydroculus #1', x=1390.99, y=306.94, z=3432.23},
   {n='Hydroculus #2', x=1363.13, y=366.13, z=3544.44},
   {n='Hydroculus #3', x=1490.32, y=403.14, z=3577.08},
   {n='Hydroculus #4', x=1585.14, y=344.18, z=3671.97},
   {n='Hydroculus #5', x=1614.85, y=256.31, z=3696.15},
   {n='Hydroculus #6', x=1505.03, y=265.73, z=3749.36},
   {n='Hydroculus #7', x=1409.33, y=272.81, z=3683.63},
   {n='Hydroculus #8', x=1383.83, y=158.25, z=3668.04},
   {n='Hydroculus #9', x=1294.49, y=228.89, z=3726.72},
   {n='Hydroculus #10', x=1315.04, y=222.99, z=3853.69},
   {n='Hydroculus #11', x=1256.38, y=281.77, z=3943.91},
   {n='Hydroculus #12', x=1254.47, y=146.56, z=3933.19},
   {n='Hydroculus #13', x=1376.78, y=214.18, z=3979.53},
   {n='Hydroculus #14', x=1422.16, y=131.32, z=3998.48},
   {n='Hydroculus #15', x=1469.89, y=91.12, z=3952.17},
   {n='Hydroculus #16', x=1459.37, y=215.4, z=3915.41},
   {n='Hydroculus #17', x=1515.08, y=144.29, z=3818.55},
   {n='Hydroculus #18', x=1620.24, y=171.27, z=3794.28},
   {n='Hydroculus #19', x=1589.3, y=246.92, z=3879.89},
   {n='Hydroculus #20', x=1591.16, y=343.35, z=3814.3},
   {n='Hydroculus #21', x=1362.71, y=348.0, z=3873.48},
   {n='Hydroculus #22', x=1635.97, y=146.43, z=3937.49},
   {n='Hydroculus #23', x=1486.19, y=244.47, z=3552.74},
   {n='Hydroculus #24', x=1540.97, y=-411.78, z=3566.87},
   {n='Hydroculus #25', x=1585.44, y=-491.48, z=3571.8},
   {n='Hydroculus #26', x=1611.8, y=588.84, z=4329.02},
   {n='Hydroculus #27', x=1555.91, y=556.82, z=4458.49},
   {n='Hydroculus #28', x=1514.48, y=593.68, z=4451.36},
   {n='Hydroculus #29', x=1433.65, y=678.76, z=4489.65},
   {n='Hydroculus #30', x=1459.77, y=752.31, z=4491.25},
   {n='Hydroculus #31', x=1581.29, y=721.98, z=4429.03},
   {n='Hydroculus #32', x=1570.38, y=641.88, z=4572.95},
   {n='Hydroculus #33', x=1657.41, y=698.18, z=4592.2},
   {n='Hydroculus #34', x=1747.8, y=683.94, z=4546.95},
   {n='Hydroculus #35', x=1749.22, y=578.96, z=4605.8},
   {n='Hydroculus #36', x=1671.06, y=573.51, z=4665.78},
   {n='Hydroculus #37', x=1638.53, y=564.77, z=4481.02},
   {n='Hydroculus #38', x=1741.11, y=521.75, z=4478.87},
   {n='Hydroculus #39', x=1401.59, y=637.45, z=4407.75},
   {n='Hydroculus #40', x=1442.17, y=682.17, z=4624.98},
   {n='Hydroculus #41', x=1406.49, y=631.36, z=4674.25},
   {n='Hydroculus #42', x=1325.08, y=606.13, z=4729.72},
   {n='Hydroculus #43', x=1259.72, y=651.56, z=4690.43},
   {n='Hydroculus #44', x=1286.28, y=626.0, z=4604.41},
   {n='Hydroculus #45', x=1419.44, y=820.87, z=4850.31}
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