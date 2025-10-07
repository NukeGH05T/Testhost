local FileName = 'alump2'
local Restart = false
local Main = {
   {n='Amethyst Lump #1', x=-75.75, y=210.93, z=208.31},
   {n='Amethyst Lump #2', x=-196.87, y=236.58, z=152.43},
   {n='Amethyst Lump #3', x=-296.45, y=222.39, z=325.39},
   {n='Amethyst Lump #4', x=-288.58, y=222.33, z=335.39},
   {n='Amethyst Lump #5', x=-229.71, y=208.43, z=443.12},
   {n='Amethyst Lump #6', x=-236.85, y=188.18, z=494.6},
   {n='Amethyst Lump #7', x=-109.63, y=185.99, z=464.52},
   {n='Amethyst Lump #8', x=-118.48, y=200.59, z=342.42},
   {n='Amethyst Lump #9', x=151.22, y=279.95, z=428.32},
   {n='Amethyst Lump #10', x=345.94, y=219.47, z=123.34},
   {n='Amethyst Lump #11', x=539.22, y=143.16, z=-312.08},
   {n='Amethyst Lump #12', x=506.1, y=136.95, z=-345.22},
   {n='Amethyst Lump #13', x=562.12, y=174.51, z=-397.24},
   {n='Amethyst Lump #14', x=130.37, y=199.74, z=-335.57},
   {n='Amethyst Lump #15', x=-727.2, y=182.63, z=-204.0},
   {n='Amethyst Lump #16', x=-774.64, y=187.19, z=-214.92},
   {n='Amethyst Lump #17', x=-799.57, y=191.44, z=-203.32},
   {n='Amethyst Lump #18', x=-562.47, y=212.64, z=571.89},
   {n='Amethyst Lump #19', x=-537.2, y=210.19, z=572.47},
   {n='Amethyst Lump #20', x=-241.76, y=186.68, z=1579.74},
   {n='Amethyst Lump #21', x=632.61, y=249.89, z=610.26},
   {n='Amethyst Lump #22', x=669.53, y=250.0, z=640.68},
   {n='Amethyst Lump #23', x=761.78, y=222.24, z=544.03},
   {n='Amethyst Lump #24', x=672.07, y=247.32, z=502.65},
   {n='Amethyst Lump #25', x=1306.04, y=234.8, z=697.61},
   {n='Amethyst Lump #26', x=1286.76, y=275.22, z=-658.35},
   {n='Amethyst Lump #27', x=1328.82, y=264.56, z=-661.42}
}

local function message(text)
    if CS and CS.MoleMole and CS.MoleMole.ActorUtils and CS.MoleMole.ActorUtils.ShowMessage then
        CS.MoleMole.ActorUtils.ShowMessage(tostring(text))
    end
end

local ok2, err2 = pcall(function()
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
            end
        end)
    end

    local function readfile(path)
        local ok, content_or_err = pcall(function()
            local file, file_err = io.open(path, "r")
            if file then
                local content = file:read("*a")
                file:close()
                return content
            else
                return nil
            end
        end)

        if ok then
            return content_or_err
        else
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
