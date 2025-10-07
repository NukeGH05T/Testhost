local FileName = 'alump1'
local Restart = false
local Main = {
   {n='Amethyst Lump #1', x=-3626.17, y=197.16, z=-633.42},
   {n='Amethyst Lump #2', x=-3757.76, y=203.24, z=-567.48},
   {n='Amethyst Lump #3', x=-3773.02, y=206.68, z=-555.43},
   {n='Amethyst Lump #4', x=-3808.97, y=172.4, z=-608.21},
   {n='Amethyst Lump #5', x=-3786.1, y=134.4, z=-674.82},
   {n='Amethyst Lump #6', x=-3773.38, y=135.01, z=-681.67},
   {n='Amethyst Lump #7', x=-3832.53, y=117.81, z=-733.3},
   {n='Amethyst Lump #8', x=-3817.24, y=116.6, z=-747.71},
   {n='Amethyst Lump #9', x=-3940.81, y=128.86, z=-795.29},
   {n='Amethyst Lump #10', x=-4062.78, y=203.17, z=-823.24},
   {n='Amethyst Lump #11', x=-4008.47, y=210.19, z=-633.02},
   {n='Amethyst Lump #12', x=-4034.95, y=203.67, z=-626.95},
   {n='Amethyst Lump #13', x=-3818.14, y=110.94, z=-884.29},
   {n='Amethyst Lump #14', x=-3703.76, y=116.48, z=-844.69},
   {n='Amethyst Lump #15', x=-3633.08, y=163.55, z=-908.37},
   {n='Amethyst Lump #16', x=-3645.52, y=169.11, z=-931.1},
   {n='Amethyst Lump #17', x=-3578.3, y=206.03, z=-927.75},
   {n='Amethyst Lump #18', x=-3914.14, y=185.65, z=-1048.45},
   {n='Amethyst Lump #19', x=-3922.53, y=153.04, z=-1046.39},
   {n='Amethyst Lump #20', x=-3914.13, y=204.59, z=-1089.11},
   {n='Amethyst Lump #21', x=-3840.57, y=205.16, z=-1202.12},
   {n='Amethyst Lump #22', x=-3764.85, y=203.81, z=-1300.64},
   {n='Amethyst Lump #23', x=-3972.99, y=205.15, z=-2071.96},
   {n='Amethyst Lump #24', x=-4051.39, y=267.26, z=-2218.27},
   {n='Amethyst Lump #25', x=-4034.2, y=204.36, z=-2273.82},
   {n='Amethyst Lump #26', x=-4009.31, y=202.81, z=-2279.65},
   {n='Amethyst Lump #27', x=-3987.32, y=204.0, z=-2297.81},
   {n='Amethyst Lump #28', x=-3963.29, y=212.64, z=-2281.58},
   {n='Amethyst Lump #29', x=-3771.9, y=238.48, z=-2271.89},
   {n='Amethyst Lump #30', x=-3770.82, y=236.09, z=-2119.44},
   {n='Amethyst Lump #31', x=-3672.14, y=240.6, z=-2389.1},
   {n='Amethyst Lump #32', x=-3482.48, y=204.3, z=-2436.76},
   {n='Amethyst Lump #33', x=-3425.06, y=204.78, z=-2184.68},
   {n='Amethyst Lump #34', x=-3555.89, y=202.85, z=-2749.67},
   {n='Amethyst Lump #35', x=-3442.54, y=205.54, z=-3087.08},
   {n='Amethyst Lump #36', x=-3303.37, y=205.97, z=-3268.05},
   {n='Amethyst Lump #37', x=-3312.09, y=218.91, z=-3425.68},
   {n='Amethyst Lump #38', x=-3320.34, y=203.79, z=-3464.08},
   {n='Amethyst Lump #39', x=-3344.2, y=206.3, z=-3460.16},
   {n='Amethyst Lump #40', x=-3433.22, y=203.09, z=-3417.99},
   {n='Amethyst Lump #41', x=-3447.68, y=203.51, z=-3425.81},
   {n='Amethyst Lump #42', x=-3494.94, y=208.27, z=-3368.58},
   {n='Amethyst Lump #43', x=-3502.22, y=208.97, z=-3361.48},
   {n='Amethyst Lump #44', x=-3547.19, y=209.95, z=-3384.48},
   {n='Amethyst Lump #45', x=-3559.14, y=228.57, z=-3394.31},
   {n='Amethyst Lump #46', x=-3765.64, y=203.98, z=-3473.38},
   {n='Amethyst Lump #47', x=-3943.0, y=205.15, z=-3302.54},
   {n='Amethyst Lump #48', x=-3961.71, y=203.23, z=-3302.35},
   {n='Amethyst Lump #49', x=-3894.62, y=272.38, z=-3173.29},
   {n='Amethyst Lump #50', x=-3907.11, y=276.43, z=-3166.2},
   {n='Amethyst Lump #51', x=-3864.75, y=247.44, z=-3038.32},
   {n='Amethyst Lump #52', x=-3868.09, y=242.62, z=-3009.7},
   {n='Amethyst Lump #53', x=-4085.73, y=204.76, z=-3127.07},
   {n='Amethyst Lump #54', x=-4103.41, y=203.85, z=-3124.07},
   {n='Amethyst Lump #55', x=-4103.46, y=204.26, z=-3155.4},
   {n='Amethyst Lump #56', x=-4089.24, y=207.08, z=-3468.04},
   {n='Amethyst Lump #57', x=-4079.34, y=206.3, z=-3480.23},
   {n='Amethyst Lump #58', x=-4389.67, y=217.02, z=-3779.94},
   {n='Amethyst Lump #59', x=-4413.23, y=163.0, z=-3821.8},
   {n='Amethyst Lump #60', x=-4423.13, y=165.65, z=-3825.24},
   {n='Amethyst Lump #61', x=-4437.78, y=163.96, z=-3821.72},
   {n='Amethyst Lump #62', x=-4389.34, y=193.33, z=-3853.51},
   {n='Amethyst Lump #63', x=-4378.08, y=214.44, z=-3908.97},
   {n='Amethyst Lump #64', x=-4309.57, y=206.15, z=-3869.67},
   {n='Amethyst Lump #65', x=-4471.15, y=224.0, z=-3825.4},
   {n='Amethyst Lump #66', x=-4384.78, y=218.79, z=-4161.55},
   {n='Amethyst Lump #67', x=-4305.15, y=219.25, z=-4236.24},
   {n='Amethyst Lump #68', x=-4295.64, y=205.92, z=-4261.57},
   {n='Amethyst Lump #69', x=-4305.56, y=203.99, z=-4308.31},
   {n='Amethyst Lump #70', x=-4436.55, y=205.48, z=-4555.36},
   {n='Amethyst Lump #71', x=-4644.15, y=155.03, z=-4290.13},
   {n='Amethyst Lump #72', x=-4647.02, y=123.7, z=-4285.82},
   {n='Amethyst Lump #73', x=-4671.39, y=103.9, z=-4264.97},
   {n='Amethyst Lump #74', x=-4655.06, y=104.28, z=-4252.84},
   {n='Amethyst Lump #75', x=-4693.12, y=125.89, z=-4225.9},
   {n='Amethyst Lump #76', x=-4806.65, y=210.78, z=-4001.45},
   {n='Amethyst Lump #77', x=-4847.69, y=207.35, z=-3956.82},
   {n='Amethyst Lump #78', x=-5037.9, y=203.48, z=-4128.15},
   {n='Amethyst Lump #79', x=-5089.75, y=205.29, z=-4193.91},
   {n='Amethyst Lump #80', x=-4984.59, y=206.34, z=-4337.03},
   {n='Amethyst Lump #81', x=-4999.03, y=205.39, z=-4613.96},
   {n='Amethyst Lump #82', x=-4893.16, y=203.3, z=-4622.91},
   {n='Amethyst Lump #83', x=-4846.27, y=207.1, z=-4816.36},
   {n='Amethyst Lump #84', x=-4802.3, y=209.09, z=-4807.4},
   {n='Amethyst Lump #85', x=-3359.01, y=208.63, z=-4521.68},
   {n='Amethyst Lump #86', x=-3239.32, y=213.31, z=-4511.83},
   {n='Amethyst Lump #87', x=-3177.22, y=207.13, z=-4724.56},
   {n='Amethyst Lump #88', x=-2674.26, y=246.66, z=-4551.32},
   {n='Amethyst Lump #89', x=-2619.35, y=233.68, z=-4407.38},
   {n='Amethyst Lump #90', x=-2608.78, y=358.5, z=-4459.63},
   {n='Amethyst Lump #91', x=-2564.41, y=354.18, z=-4488.4},
   {n='Amethyst Lump #92', x=-2468.91, y=374.13, z=-4397.88},
   {n='Amethyst Lump #93', x=-2456.14, y=372.11, z=-4407.27},
   {n='Amethyst Lump #94', x=-2442.94, y=204.46, z=-4565.29},
   {n='Amethyst Lump #95', x=-2326.34, y=169.25, z=-4818.31},
   {n='Amethyst Lump #96', x=-2208.56, y=208.6, z=-4253.92},
   {n='Amethyst Lump #97', x=-2319.25, y=205.91, z=-4165.32},
   {n='Amethyst Lump #98', x=-2354.45, y=202.94, z=-4181.0},
   {n='Amethyst Lump #99', x=-2556.95, y=222.25, z=-4134.05},
   {n='Amethyst Lump #100', x=-2564.24, y=228.39, z=-4171.77},
   {n='Amethyst Lump #101', x=-2648.95, y=214.97, z=-4148.28},
   {n='Amethyst Lump #102', x=-2733.13, y=207.25, z=-4160.47},
   {n='Amethyst Lump #103', x=-2755.87, y=210.21, z=-4194.8},
   {n='Amethyst Lump #104', x=-2792.74, y=207.83, z=-4189.94},
   {n='Amethyst Lump #105', x=-2903.14, y=206.63, z=-4212.92},
   {n='Amethyst Lump #106', x=-2806.37, y=204.8, z=-4036.53},
   {n='Amethyst Lump #107', x=-2601.2, y=202.91, z=-3942.59},
   {n='Amethyst Lump #108', x=-2737.44, y=218.43, z=-4330.27},
   {n='Amethyst Lump #109', x=-3370.19, y=203.6, z=-3656.98},
   {n='Amethyst Lump #110', x=-4019.09, y=215.17, z=-2498.68},
   {n='Amethyst Lump #111', x=-4064.26, y=205.27, z=-2478.95},
   {n='Amethyst Lump #112', x=-5790.78, y=207.54, z=-2523.88},
   {n='Amethyst Lump #113', x=-5934.35, y=224.59, z=-2536.24},
   {n='Amethyst Lump #114', x=-5965.95, y=259.96, z=-2545.09},
   {n='Amethyst Lump #115', x=-6070.76, y=205.82, z=-2529.62},
   {n='Amethyst Lump #116', x=-5956.39, y=172.72, z=-2671.38},
   {n='Amethyst Lump #117', x=-6258.24, y=228.21, z=-2673.01},
   {n='Amethyst Lump #118', x=-6310.54, y=357.16, z=-2651.61},
   {n='Amethyst Lump #119', x=-6401.93, y=256.16, z=-2634.41},
   {n='Amethyst Lump #120', x=-6473.27, y=232.42, z=-2531.02},
   {n='Amethyst Lump #121', x=-6521.52, y=203.22, z=-2590.63},
   {n='Amethyst Lump #122', x=-6635.32, y=204.24, z=-2566.57},
   {n='Amethyst Lump #123', x=-6734.46, y=218.13, z=-2593.09},
   {n='Amethyst Lump #124', x=-6735.87, y=207.98, z=-2711.45},
   {n='Amethyst Lump #125', x=-6391.88, y=247.97, z=-2774.41},
   {n='Amethyst Lump #126', x=-6247.04, y=242.09, z=-2914.39},
   {n='Amethyst Lump #127', x=-6218.05, y=228.28, z=-2912.28},
   {n='Amethyst Lump #128', x=-6307.94, y=223.01, z=-2963.36},
   {n='Amethyst Lump #129', x=-6061.82, y=204.54, z=-2962.49},
   {n='Amethyst Lump #130', x=-6122.02, y=203.72, z=-3258.24},
   {n='Amethyst Lump #131', x=-6390.38, y=231.16, z=-2458.67},
   {n='Amethyst Lump #132', x=-6311.26, y=205.97, z=-2433.63},
   {n='Amethyst Lump #133', x=-6199.06, y=204.39, z=-2353.4}
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
