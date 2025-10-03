local PATH = "tp_idx.txt"
local Vector3 = CS.UnityEngine.Vector3

local function show(msg)
  if CS and CS.MoleMole and CS.MoleMole.ActorUtils and CS.MoleMole.ActorUtils.ShowMessage then
    CS.MoleMole.ActorUtils.ShowMessage(tostring(msg))
  else
    print(tostring(msg))
  end
end

-- 替换tp坐标 --
local W = {
  {name="daoqibaoxiang4",  x=-1830.84, y=200.89, z=-4294.49},
  {name="daoqibaoxiang6",  x=-1850.03, y=211.67, z=-4185.38},
  {name="leiling5",  x=-2468.93, y=227.51, z=-4107.99},
  {name="leiling6",  x=-2474.29, y=224.98, z=-4152.15},
  {name="leiling7",  x=-2792.69, y=192.53, z=-4067.76},
  {name="leiling8",  x=-2794.81, y=181.25, z=-4085.32},
  {name="leiling9",  x=-2875.70, y=204.03, z=-4175.63},
  {name="leiling10",  x=-2851.98, y=208.78, z=-4095.85},
  {name="leiling11",  x=-2789.24, y=219.12, z=-4259.24},
  {name="leiling12",  x=-2821.98, y=220.95, z=-4370.82},
  {name="leiling13",  x=-2794.48, y=231.05, z=-4489.26},
  {name="leiling14",  x=-2731.15, y=238.44, z=-4521.93},
  {name="leiling15",  x=-2603.36, y=214.84, z=-4123.92},
  {name="leiling16",  x=-2570.09, y=218.15, z=-4131.64},
  {name="leiling17",  x=-2642.24, y=213.47, z=-4227.87},
  {name="leiling18",  x=-2599.51, y=230.13, z=-4324.58},
  {name="leiling19",  x=-2185.95, y=229.62, z=-4263.96},
  {name="leiling20",  x=-1958.00, y=200.51, z=-4266.55},
  {name="leiling21",  x=-2446.39, y=201.68, z=-4604.16},
  {name="leiling22",  x=-2353.46, y=203.75, z=-4508.22},
  {name="leiling23",  x=-2357.45, y=201.10, z=-4745.73},
  {name="leiling24",  x=-2244.81, y=200.35, z=-4825.61},
  {name="leiling25",  x=-2503.00, y=311.36, z=-4495.81},
  {name="leiling26",  x=-2444.80, y=316.42, z=-4422.85},
  {name="leiling27",  x=-2964.30, y=205.93, z=-4069.16},
  {name="leiling28",  x=-3023.11, y=202.08, z=-4021.83},
  {name="leiling29",  x=-3186.11, y=203.49, z=-3921.78},
  {name="leiling30",  x=-3240.99, y=203.79, z=-3883.67},
  {name="leiling31",  x=-3268.70, y=213.90, z=-3929.54},
  {name="leiling32",  x=-3242.31, y=202.54, z=-3965.53},
  {name="leiling33",  x=-3224.15, y=211.17, z=-3977.81},
  {name="leiling34",  x=-3236.21, y=217.74, z=-3942.26},
  {name="leiling35",  x=-3217.39, y=219.00, z=-3938.61},
  {name="leiling36",  x=-3196.00, y=225.59, z=-3955.62},
  {name="leiling37",  x=-3309.98, y=202.85, z=-3215.71},
  {name="leiling38",  x=-3297.04, y=225.27, z=-3265.56},
  {name="leiling39",  x=-3379.11, y=211.69, z=-3654.85},
  {name="leiling40",  x=-3292.23, y=206.10, z=-3591.04},
  {name="leiling41",  x=-3588.93, y=199.68, z=-3595.80},
  {name="leiling42",  x=-3584.85, y=201.01, z=-3637.02},
  {name="leiling43",  x=-3478.34, y=202.57, z=-3242.66},
  {name="leiling44",  x=-3508.19, y=203.11, z=-3210.73},
  {name="leiling45",  x=-3709.68, y=201.97, z=-3335.86},
  {name="leiling46",  x=-3735.25, y=202.16, z=-3359.16},
  {name="leiling47",  x=-3651.60, y=235.94, z=-3191.07},
  {name="leiling48",  x=-3686.91, y=263.02, z=-3148.52},
  {name="leiling49",  x=-3720.52, y=251.21, z=-3111.14},
  {name="leiling50",  x=-3722.55, y=271.12, z=-3170.82},
  {name="leiling51",  x=-3818.86, y=232.18, z=-3165.92},
  {name="leiling52",  x=-3830.18, y=234.16, z=-3155.05},
  {name="leiling53",  x=-3949.22, y=202.19, z=-3086.64},
  {name="leiling54",  x=-3906.04, y=234.46, z=-3104.53},
  {name="leiling55",  x=-3993.77, y=213.60, z=-2912.14},
  {name="leiling56",  x=-4124.32, y=202.87, z=-2959.81},
  {name="leiling57",  x=-4109.98, y=242.43, z=-3059.43},
  {name="leiling58",  x=-4095.52, y=207.99, z=-3140.76},
  {name="leiling59",  x=-3755.41, y=204.03, z=-2965.23},
  {name="leiling60",  x=-3847.48, y=235.74, z=-3011.22},
  {name="leiling61",  x=-3875.06, y=247.31, z=-3024.21},
  {name="leiling62",  x=-3874.13, y=202.85, z=-3292.40},
  {name="leiling63",  x=-3951.86, y=207.88, z=-3271.18},
  {name="leiling64",  x=-3600.43, y=207.79, z=-2397.93},
  {name="leiling65",  x=-3598.09, y=206.23, z=-2290.93},
  {name="leiling66",  x=-3622.35, y=213.29, z=-2250.49},
  {name="leiling67",  x=-3567.49, y=252.91, z=-2130.72},
  {name="leiling68",  x=-3591.23, y=250.97, z=-2235.97},
  {name="leiling69",  x=-3590.01, y=226.69, z=-1960.54},
  {name="leiling70",  x=-3523.05, y=201.79, z=-2026.83},
  {name="leiling71",  x=-3720.78, y=225.36, z=-2094.31},
  {name="leiling72",  x=-3657.81, y=226.65, z=-2200.00},
  {name="leiling73",  x=-3625.83, y=219.38, z=-2310.53},
  {name="leiling74",  x=-3606.54, y=219.52, z=-2361.86},
  {name="leiling75",  x=-3797.05, y=248.02, z=-2266.93},
  {name="leiling76",  x=-3845.90, y=246.09, z=-2529.87},
  {name="leiling77",  x=-3841.50, y=229.34, z=-2549.38},
  {name="leiling78",  x=-3886.37, y=206.88, z=-2555.12},
  {name="leiling79",  x=-3990.79, y=244.95, z=-2528.85},
  {name="leiling80",  x=-3962.82, y=231.20, z=-2498.97},
  {name="leiling81",  x=-3895.67, y=266.14, z=-2244.13},
  {name="leiling82",  x=-3994.16, y=202.52, z=-2283.02},
  {name="leiling83",  x=-4014.04, y=224.75, z=-2314.25},
  {name="leiling84",  x=-4043.82, y=211.58, z=-2187.57},
  {name="leiling85",  x=-4089.23, y=215.62, z=-2247.13},
  {name="leiling86",  x=-3597.37, y=219.54, z=-1708.74},
  {name="leiling87",  x=-3655.80, y=202.55, z=-1611.50},
  {name="leiling88",  x=-4034.26, y=213.95, z=-1254.89},
  {name="leiling89",  x=-3978.95, y=200.78, z=-1165.62},
  {name="leiling90",  x=-3541.78, y=177.46, z=-1190.72},
  {name="leiling91",  x=-3935.77, y=168.20, z=-705.90},
  {name="leiling92",  x=-3828.34, y=120.84, z=-643.55},
  {name="leiling93",  x=-3778.23, y=132.59, z=-672.94},
  {name="leiling94",  x=-3655.28, y=122.73, z=-757.52},
  {name="leiling95",  x=-3722.47, y=113.69, z=-857.13},
  {name="leiling96",  x=-3826.67, y=108.70, z=-884.58},
  {name="leiling97",  x=-3858.47, y=111.30, z=-775.06},
  {name="leiling98",  x=-3995.33, y=214.55, z=-722.12},
  {name="leiling99",  x=-4009.93, y=227.20, z=-646.93},
  {name="leiling100",  x=-3561.92, y=216.03, z=-651.81},
  {name="leiling101",  x=-3551.80, y=204.55, z=-529.38},
  {name="leiling102",  x=-3639.74, y=202.66, z=-589.19},
  {name="leiling103",  x=-4293.18, y=203.62, z=-3806.64},
  {name="leiling104",  x=-4387.98, y=234.20, z=-3856.70},
  {name="leiling105",  x=-4389.61, y=217.47, z=-3923.79},
  {name="leiling106",  x=-4485.07, y=220.03, z=-3876.56},
  {name="leiling107",  x=-4575.59, y=214.96, z=-3793.39},
  {name="leiling108",  x=-4685.09, y=206.27, z=-3734.91},
  {name="leiling109",  x=-4262.78, y=204.46, z=-4176.28},
  {name="leiling110",  x=-4323.18, y=208.67, z=-4019.99},
  {name="leiling111",  x=-4303.45, y=203.29, z=-4209.02},
  {name="leiling112",  x=-4349.11, y=240.13, z=-4194.96},
  {name="leiling113",  x=-4460.24, y=201.15, z=-4305.97},
  {name="leiling114",  x=-4137.35, y=202.66, z=-4314.98},
  {name="leiling115",  x=-4814.32, y=224.88, z=-4806.49},
  {name="leiling116",  x=-4810.03, y=248.78, z=-4665.89},
  {name="leiling117",  x=-4979.49, y=204.65, z=-4344.87},
  {name="leiling118",  x=-5009.63, y=268.51, z=-4250.48},
  {name="leiling119",  x=-4783.78, y=275.35, z=-4023.35},
  {name="leiling120",  x=-4947.88, y=201.14, z=-3930.98},
  {name="leiling121",  x=-4664.93, y=202.70, z=-4066.58},
  {name="leiling122",  x=-4788.01, y=201.20, z=-4071.40},
  {name="leiling123",  x=-3969.75, y=273.61, z=-2473.18},
  {name="leiling124",  x=-3945.28, y=199.66, z=-2421.13},
  {name="leiling125",  x=-3717.02, y=268.00, z=-2383.52},
  {name="touweixiaogou",  x=-1899.11, y=201.30, z=-4285.93},
  {name="xianling1",  x=-1867.80, y=223.65, z=-4187.92},
}

local function read_idx()
  local f = io.open(PATH, "r")
  if f then
    local s = f:read("*l")
    f:close()
    local n = tonumber(s)
    if n and n >= 1 and n <= #W then return n end
  end
  return 1
end

local function write_idx(n)
  local okw, err = pcall(function()
    local f = io.open(PATH, "w")
    if f then f:write(tostring(n)); f:close() end
  end)
  if not okw then
    show("写入错误: " .. tostring(err))
  end
end

local idx = read_idx()
local wp = W[idx]
local pos = Vector3(wp.x, wp.y, wp.z)
CS.MoleMole.ActorUtils.SetAvatarPos(pos)
show(string.format("TP %d/%d: %s  (X:%.2f Y:%.2f Z:%.2f)  [next-> %d]",
  idx, #W, wp.name, wp.x, wp.y, wp.z, (idx % #W) + 1))
idx = idx + 1
if idx > #W then idx = 1 end
write_idx(idx)