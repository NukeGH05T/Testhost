local FileName = "Hydroucli"
local Restart = false
local Main = {
   {n='Hydroculus #1', x=1137.12, y=46.67, z=3746.43},
   {n='Hydroculus #2', x=1261.27, y=103.71, z=3802.62},
   {n='Hydroculus #3', x=1205.9, y=155.64, z=3862.78},
   {n='Hydroculus #4', x=1245.95, y=85.05, z=3899.77},
   {n='Hydroculus #5', x=1275.26, y=100.38, z=3924.53},
   {n='Hydroculus #6', x=1139.91, y=50.75, z=3896.13},
   {n='Hydroculus #7', x=1167.36, y=318.03, z=4287.59},
   {n='Hydroculus #8', x=1213.29, y=301.5, z=4369.33},
   {n='Hydroculus #9', x=1242.88, y=372.99, z=4268.55},
   {n='Hydroculus #10', x=1871.14, y=519.61, z=4783.93},
   {n='Hydroculus #11', x=1727.48, y=485.7, z=4970.95},
   {n='Hydroculus #12', x=1561.57, y=292.08, z=5092.09},
   {n='Hydroculus #13', x=2284.07, y=510.73, z=4760.69},
   {n='Hydroculus #14', x=2333.07, y=575.84, z=4854.08},
   {n='Hydroculus #15', x=2393.71, y=599.79, z=4920.74},
   {n='Hydroculus #16', x=2533.73, y=442.09, z=4762.36},
   {n='Hydroculus #17', x=2509.66, y=442.65, z=4731.88},
   {n='Hydroculus #18', x=2591.49, y=504.11, z=4661.69},
   {n='Hydroculus #19', x=2549.8, y=427.09, z=4510.82},
   {n='Hydroculus #20', x=2486.46, y=358.8, z=4536.41},
   {n='Hydroculus #21', x=2435.98, y=452.16, z=4545.49},
   {n='Hydroculus #22', x=2374.05, y=499.47, z=4358.8},
   {n='Hydroculus #23', x=2432.08, y=486.05, z=4279.79},
   {n='Hydroculus #24', x=2524.01, y=488.29, z=4186.36},
   {n='Hydroculus #25', x=2471.82, y=626.36, z=4077.68},
   {n='Hydroculus #26', x=2380.97, y=395.94, z=3996.99},
   {n='Hydroculus #27', x=2440.74, y=444.34, z=3862.82},
   {n='Hydroculus #28', x=2517.29, y=496.2, z=3848.44},
   {n='Hydroculus #29', x=2620.22, y=425.86, z=3829.29},
   {n='Hydroculus #30', x=2631.25, y=335.24, z=3768.22},
   {n='Hydroculus #31', x=2598.62, y=268.13, z=3560.25},
   {n='Hydroculus #32', x=2541.84, y=371.36, z=3550.42},
   {n='Hydroculus #33', x=2572.34, y=433.63, z=3447.36},
   {n='Hydroculus #34', x=2665.48, y=573.62, z=3423.79},
   {n='Hydroculus #35', x=2741.97, y=444.05, z=3451.5},
   {n='Hydroculus #36', x=2791.86, y=318.07, z=3555.95},
   {n='Hydroculus #37', x=2921.24, y=425.58, z=3568.63},
   {n='Hydroculus #38', x=3013.33, y=440.94, z=3591.17},
   {n='Hydroculus #39', x=3000.17, y=333.31, z=3687.97},
   {n='Hydroculus #40', x=3102.38, y=316.71, z=3705.96},
   {n='Hydroculus #41', x=3138.69, y=299.02, z=3708.17},
   {n='Hydroculus #42', x=2994.34, y=470.7, z=3789.71},
   {n='Hydroculus #43', x=2839.17, y=502.37, z=3948.46},
   {n='Hydroculus #44', x=2813.95, y=499.56, z=4114.71},
   {n='Hydroculus #45', x=2851.43, y=413.91, z=4185.9},
   {n='Hydroculus #46', x=2904.09, y=452.29, z=4192.05},
   {n='Hydroculus #47', x=2840.67, y=429.01, z=4323.35},
   {n='Hydroculus #48', x=2715.38, y=470.36, z=4291.68},
   {n='Hydroculus #49', x=2746.85, y=341.1, z=4220.37},
   {n='Hydroculus #50', x=2744.53, y=400.08, z=4462.04},
   {n='Hydroculus #51', x=2841.46, y=364.83, z=4480.21},
   {n='Hydroculus #52', x=2935.85, y=432.18, z=4584.36},
   {n='Hydroculus #53', x=3073.23, y=442.78, z=4451.54},
   {n='Hydroculus #54', x=3031.79, y=394.28, z=4420.02},
   {n='Hydroculus #55', x=3139.64, y=359.16, z=4388.86},
   {n='Hydroculus #56', x=3154.17, y=245.53, z=4261.68},
   {n='Hydroculus #57', x=3132.68, y=234.12, z=4203.27},
   {n='Hydroculus #58', x=3212.35, y=254.96, z=4177.02},
   {n='Hydroculus #59', x=3203.5, y=342.12, z=4134.83},
   {n='Hydroculus #60', x=3157.15, y=447.84, z=4088.65},
   {n='Hydroculus #61', x=3032.66, y=418.73, z=4054.07},
   {n='Hydroculus #62', x=3187.27, y=618.87, z=4147.49},
   {n='Hydroculus #63', x=3273.25, y=523.54, z=4294.69},
   {n='Hydroculus #64', x=3343.36, y=467.18, z=4361.39},
   {n='Hydroculus #65', x=3534.17, y=390.8, z=4241.7},
   {n='Hydroculus #66', x=3481.03, y=404.86, z=4067.25},
   {n='Hydroculus #67', x=3389.6, y=375.8, z=4057.65},
   {n='Hydroculus #68', x=3388.07, y=462.45, z=4056.26},
   {n='Hydroculus #69', x=3285.9, y=409.23, z=3880.65},
   {n='Hydroculus #70', x=3356.9, y=439.2, z=3780.84},
   {n='Hydroculus #71', x=3322.27, y=551.53, z=3818.19},
   {n='Hydroculus #72', x=3239.26, y=473.46, z=3542.27},
   {n='Hydroculus #73', x=3356.61, y=475.22, z=3500.79},
   {n='Hydroculus #74', x=3514.22, y=639.76, z=3405.57},
   {n='Hydroculus #75', x=3627.41, y=502.93, z=3319.27},
   {n='Hydroculus #76', x=3573.52, y=466.43, z=3288.76},
   {n='Hydroculus #77', x=3600.2, y=577.52, z=3166.27},
   {n='Hydroculus #78', x=3665.48, y=564.74, z=3063.28},
   {n='Hydroculus #79', x=3685.18, y=507.2, z=2931.05},
   {n='Hydroculus #80', x=3607.57, y=457.1, z=2924.96},
   {n='Hydroculus #81', x=3506.08, y=442.67, z=2927.44},
   {n='Hydroculus #82', x=3419.77, y=479.97, z=2896.88},
   {n='Hydroculus #83', x=3364.83, y=381.89, z=2994.18},
   {n='Hydroculus #84', x=3376.02, y=376.64, z=3042.23},
   {n='Hydroculus #85', x=3261.19, y=445.53, z=3069.92},
   {n='Hydroculus #86', x=3374.89, y=498.06, z=3128.44},
   {n='Hydroculus #87', x=3350.21, y=442.75, z=3214.64},
   {n='Hydroculus #88', x=3207.98, y=461.37, z=3232.99},
   {n='Hydroculus #89', x=3044.5, y=391.6, z=3142.84},
   {n='Hydroculus #90', x=2950.73, y=487.34, z=3180.51},
   {n='Hydroculus #91', x=2887.09, y=416.88, z=3338.29},
   {n='Hydroculus #92', x=2888.49, y=362.67, z=3339.92},
   {n='Hydroculus #93', x=2839.03, y=568.62, z=3328.33},
   {n='Hydroculus #94', x=2687.5, y=445.26, z=3267.44},
   {n='Hydroculus #95', x=2517.61, y=486.36, z=3258.03},
   {n='Hydroculus #96', x=2424.0, y=461.95, z=3171.96},
   {n='Hydroculus #97', x=2422.11, y=351.48, z=3596.32},
   {n='Hydroculus #98', x=2627.31, y=699.64, z=3655.9},
   {n='Hydroculus #99', x=2177.01, y=443.39, z=4282.57},
   {n='Hydroculus #100', x=2129.98, y=447.92, z=4366.18},
   {n='Hydroculus #101', x=2165.92, y=451.3, z=4488.61},
   {n='Hydroculus #102', x=2250.51, y=365.27, z=4439.73},
   {n='Hydroculus #103', x=2491.44, y=264.74, z=4613.3},
   {n='Hydroculus #104', x=2587.79, y=272.68, z=4494.87},
   {n='Hydroculus #105', x=2711.14, y=412.8, z=4572.46},
   {n='Hydroculus #106', x=2805.37, y=554.16, z=4717.16},
   {n='Hydroculus #107', x=2819.57, y=597.71, z=4923.06},
   {n='Hydroculus #108', x=2921.13, y=575.84, z=4917.39},
   {n='Hydroculus #109', x=3085.23, y=450.88, z=4861.72},
   {n='Hydroculus #110', x=3044.31, y=435.48, z=4779.18},
   {n='Hydroculus #111', x=3144.54, y=450.88, z=4655.73},
   {n='Hydroculus #112', x=3504.49, y=574.14, z=4517.09},
   {n='Hydroculus #113', x=3644.87, y=628.06, z=4653.42},
   {n='Hydroculus #114', x=3831.82, y=552.95, z=4649.22},
   {n='Hydroculus #115', x=3722.61, y=488.62, z=4512.39},
   {n='Hydroculus #116', x=3633.08, y=464.8, z=4403.01},
   {n='Hydroculus #117', x=3948.2, y=356.7, z=4359.42},
   {n='Hydroculus #118', x=3971.73, y=557.33, z=4268.1},
   {n='Hydroculus #119', x=4195.99, y=512.52, z=4147.1},
   {n='Hydroculus #120', x=4311.15, y=518.53, z=4140.91},
   {n='Hydroculus #121', x=4346.77, y=544.65, z=4249.42},
   {n='Hydroculus #122', x=4418.27, y=472.07, z=4279.49},
   {n='Hydroculus #123', x=4301.72, y=480.85, z=4350.29},
   {n='Hydroculus #124', x=4214.08, y=498.52, z=4535.83},
   {n='Hydroculus #125', x=4178.03, y=565.71, z=4584.5},
   {n='Hydroculus #126', x=4095.89, y=507.02, z=4684.29},
   {n='Hydroculus #127', x=4092.52, y=461.02, z=4533.28},
   {n='Hydroculus #128', x=4365.44, y=388.23, z=4573.18},
   {n='Hydroculus #129', x=4396.02, y=445.73, z=4770.21},
   {n='Hydroculus #130', x=4322.27, y=382.15, z=4892.96},
   {n='Hydroculus #131', x=4359.86, y=453.05, z=4929.75},
   {n='Hydroculus #132', x=4414.82, y=496.4, z=5049.43},
   {n='Hydroculus #133', x=4507.39, y=478.39, z=5046.9},
   {n='Hydroculus #134', x=4595.72, y=433.9, z=4942.19},
   {n='Hydroculus #135', x=4583.79, y=423.69, z=4774.73},
   {n='Hydroculus #136', x=4555.67, y=294.25, z=4781.22},
   {n='Hydroculus #137', x=4729.19, y=164.89, z=4714.24},
   {n='Hydroculus #138', x=4712.58, y=132.13, z=4636.98},
   {n='Hydroculus #139', x=4695.95, y=189.66, z=4570.49},
   {n='Hydroculus #140', x=4844.46, y=252.28, z=4443.05},
   {n='Hydroculus #141', x=4934.05, y=385.95, z=4417.03},
   {n='Hydroculus #142', x=4927.82, y=625.8, z=4400.47},
   {n='Hydroculus #143', x=4844.03, y=606.12, z=4196.44},
   {n='Hydroculus #144', x=4875.66, y=567.16, z=4145.91},
   {n='Hydroculus #145', x=4802.66, y=527.67, z=4148.45},
   {n='Hydroculus #146', x=4786.68, y=528.63, z=4233.77},
   {n='Hydroculus #147', x=4753.08, y=545.07, z=4281.25},
   {n='Hydroculus #148', x=4711.2, y=547.02, z=4431.28},
   {n='Hydroculus #149', x=4541.04, y=444.09, z=4426.19},
   {n='Hydroculus #150', x=4501.46, y=388.98, z=4385.39},
   {n='Hydroculus #151', x=4545.95, y=419.6, z=4191.2},
   {n='Hydroculus #152', x=4614.91, y=451.57, z=4100.51},
   {n='Hydroculus #153', x=4551.85, y=410.92, z=4051.21},
   {n='Hydroculus #154', x=4452.07, y=480.19, z=4096.46},
   {n='Hydroculus #155', x=4488.74, y=562.82, z=4004.91},
   {n='Hydroculus #156', x=4369.82, y=554.99, z=3944.6},
   {n='Hydroculus #157', x=4243.98, y=541.56, z=3966.9},
   {n='Hydroculus #158', x=4206.48, y=626.76, z=3920.92},
   {n='Hydroculus #159', x=4073.41, y=645.85, z=3792.42},
   {n='Hydroculus #160', x=4186.73, y=658.42, z=3735.67},
   {n='Hydroculus #161', x=4354.79, y=588.08, z=3803.57},
   {n='Hydroculus #162', x=4438.81, y=542.69, z=3754.06},
   {n='Hydroculus #163', x=4396.45, y=449.85, z=3719.39},
   {n='Hydroculus #164', x=4393.2, y=476.89, z=3633.91},
   {n='Hydroculus #165', x=4249.19, y=588.95, z=3540.1},
   {n='Hydroculus #166', x=4198.86, y=557.42, z=3318.96},
   {n='Hydroculus #167', x=4032.76, y=539.41, z=3364.35},
   {n='Hydroculus #168', x=3979.88, y=525.91, z=3301.81},
   {n='Hydroculus #169', x=3976.12, y=526.31, z=3293.95},
   {n='Hydroculus #170', x=3952.32, y=520.22, z=3302.95},
   {n='Hydroculus #171', x=3940.42, y=517.84, z=3311.95},
   {n='Hydroculus #172', x=3929.26, y=520.63, z=3283.92},
   {n='Hydroculus #173', x=3946.95, y=523.38, z=3278.02},
   {n='Hydroculus #174', x=3999.95, y=585.6, z=3279.78},
   {n='Hydroculus #175', x=3985.79, y=549.79, z=3446.87},
   {n='Hydroculus #176', x=4003.9, y=591.64, z=3601.75},
   {n='Hydroculus #177', x=3815.39, y=515.4, z=3657.75},
   {n='Hydroculus #178', x=3808.89, y=492.51, z=3593.27},
   {n='Hydroculus #179', x=3745.59, y=481.22, z=3684.34},
   {n='Hydroculus #180', x=3726.91, y=509.97, z=3788.38},
   {n='Hydroculus #181', x=3678.38, y=375.42, z=3527.43},
   {n='Hydroculus #182', x=3781.72, y=402.39, z=3356.39},
   {n='Hydroculus #183', x=3831.52, y=578.14, z=3392.74},
   {n='Hydroculus #184', x=3807.17, y=476.05, z=3175.9},
   {n='Hydroculus #185', x=3944.78, y=496.7, z=3082.06},
   {n='Hydroculus #186', x=3853.47, y=505.42, z=2978.64},
   {n='Hydroculus #187', x=3826.69, y=483.32, z=3004.44},
   {n='Hydroculus #188', x=3789.58, y=440.01, z=2971.16},
   {n='Hydroculus #189', x=3821.01, y=481.64, z=2723.73},
   {n='Hydroculus #190', x=4025.71, y=435.12, z=3191.3},
   {n='Hydroculus #191', x=4615.88, y=527.18, z=3641.44},
   {n='Hydroculus #192', x=4730.98, y=634.84, z=3742.1},
   {n='Hydroculus #193', x=4716.74, y=728.65, z=3841.42},
   {n='Hydroculus #194', x=4719.34, y=669.0, z=3877.21},
   {n='Hydroculus #195', x=4635.81, y=535.93, z=3879.41},
   {n='Hydroculus #196', x=4592.61, y=487.97, z=3865.15},
   {n='Hydroculus #197', x=4684.11, y=420.24, z=4022.41},
   {n='Hydroculus #198', x=4860.24, y=479.27, z=3962.59},
   {n='Hydroculus #199', x=4810.91, y=603.93, z=4025.0},
   {n='Hydroculus #200', x=5044.08, y=579.68, z=4015.35},
   {n='Hydroculus #201', x=5003.03, y=764.8, z=4218.0},
   {n='Hydroculus #202', x=5165.26, y=592.97, z=4376.32},
   {n='Hydroculus #203', x=4933.51, y=489.28, z=4739.01},
   {n='Hydroculus #204', x=4966.95, y=471.12, z=4965.3},
   {n='Hydroculus #205', x=4816.76, y=365.21, z=5032.21},
   {n='Hydroculus #206', x=4802.66, y=317.79, z=4991.76},
   {n='Hydroculus #207', x=4648.71, y=611.98, z=5133.33},
   {n='Hydroculus #208', x=4391.19, y=364.93, z=5086.98},
   {n='Hydroculus #209', x=4230.63, y=541.05, z=5036.95},
   {n='Hydroculus #210', x=4001.05, y=557.65, z=4914.08},
   {n='Hydroculus #211', x=3999.79, y=514.69, z=4843.02},
   {n='Hydroculus #212', x=3932.45, y=583.06, z=5032.34},
   {n='Hydroculus #213', x=3770.71, y=565.09, z=4999.77},
   {n='Hydroculus #214', x=3644.07, y=529.09, z=5002.65},
   {n='Hydroculus #215', x=3672.81, y=342.06, z=5013.11},
   {n='Hydroculus #216', x=3689.86, y=289.83, z=5013.48},
   {n='Hydroculus #217', x=3749.84, y=284.83, z=4930.93},
   {n='Hydroculus #218', x=3516.51, y=333.78, z=4970.07},
   {n='Hydroculus #219', x=2708.61, y=389.07, z=4810.25},
   {n='Hydroculus #220', x=2649.96, y=501.15, z=4954.87},
   {n='Hydroculus #221', x=2670.47, y=566.74, z=5083.98},
   {n='Hydroculus #222', x=2736.86, y=698.3, z=4940.14},
   {n='Hydroculus #223', x=2571.89, y=457.12, z=5244.02},
   {n='Hydroculus #224', x=2668.24, y=228.81, z=4989.92},
   {n='Hydroculus #225', x=2427.43, y=247.7, z=4980.31},
   {n='Hydroculus #226', x=2411.23, y=190.08, z=4954.92},
   {n='Hydroculus #227', x=3314.59, y=247.27, z=4149.75},
   {n='Hydroculus #228', x=4250.78, y=113.2, z=4389.55},
   {n='Hydroculus #229', x=4392.97, y=167.78, z=4417.61},
   {n='Hydroculus #230', x=3174.54, y=453.0, z=2914.46},
   {n='Hydroculus #231', x=3207.64, y=463.8, z=2766.56}
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