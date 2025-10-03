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
  {name="jiemi-1 tguoqu 2",  x=-3948.71, y=201.88, z=-3307.83},
  {name="jiemi-11",  x=-2687.10, y=208.19, z=-4167.69},
  {name="jiemi-33",  x=-2331.06, y=226.22, z=-4237.76},
  {name="jiemi-42",  x=-2387.57, y=252.67, z=-4415.60},
  {name="jiemi-54",  x=-3209.66, y=220.68, z=-3433.49},
  {name="jiemi-133",  x=-3513.55, y=201.53, z=-2904.77},
  {name="jiemi-243",  x=-4620.16, y=200.92, z=-3997.61},
  {name="jiemi-312",  x=-3786.32, y=202.05, z=-1030.70},
  {name="jiemi-513",  x=-3748.58, y=201.96, z=-3282.52},
  {name="jiemi-1231",  x=-3779.39, y=200.85, z=-1236.75},
  {name="jiemi-1332",  x=-4854.96, y=206.05, z=-4192.03},
  {name="jiemi-1333",  x=-4359.69, y=204.58, z=-3964.14},
  {name="jiemi-2133",  x=-2594.08, y=255.15, z=-4352.98},
  {name="jiemi-2233",  x=-2823.21, y=212.06, z=-4211.54},
  {name="jiemi-2311",  x=-4050.09, y=213.35, z=-815.37},
  {name="jiemi-2313",  x=-2538.09, y=231.80, z=-4185.39},
  {name="jiemi-3122",  x=-4275.30, y=210.02, z=-4308.46},
  {name="jiemi-4422",  x=-2345.00, y=206.01, z=-4230.39},
  {name="jiemi-4443",  x=-4254.63, y=218.66, z=-4149.03},
  {name="jiemi-5151",  x=-2725.26, y=257.81, z=-4391.62},
  {name="jiemi-23322",  x=-2666.25, y=209.51, z=-4091.92},
  {name="jiemi-111333",  x=-3195.80, y=201.10, z=-3584.99},
  {name="jiemi-122233",  x=-4846.23, y=201.48, z=-4110.96},
  {name="jiemi-133344",  x=-3807.71, y=251.68, z=-544.51},
  {name="jiemi-222441",  x=-3462.76, y=200.96, z=-1973.86},
  {name="jiemi-231423",  x=-3360.85, y=200.77, z=-2973.55},
  {name="jiemi-413213",  x=-3002.40, y=203.74, z=-4489.89},
  {name="jiemi-421133",  x=-4547.88, y=201.13, z=-3861.71},
  {name="jiemi-1133779",  x=-3913.52, y=205.09, z=-1052.47},
  {name="jiemi-2311133",  x=-3837.91, y=125.87, z=-631.89},
  {name="jiemi-3322321",  x=-3677.92, y=173.09, z=-947.41},
  {name="jiemi-4433142",  x=-2300.50, y=200.97, z=-4150.82},
  {name="jiemi-11155688",  x=-3912.44, y=205.09, z=-1055.30},
  {name="jiemi-23431344",  x=-2383.83, y=225.93, z=-4506.13},
  {name="jiemi-75533666",  x=-3905.55, y=205.04, z=-1053.92},
  {name="jiemi-333124411",  x=-3819.93, y=108.49, z=-898.27},
  {name="JieMiShiBei1",  x=-2170.94, y=163.04, z=-4486.59},
  {name="JieMiShiBei2",  x=-2755.38, y=239.57, z=-4418.16},
  {name="JieMiShiBei3",  x=-2833.24, y=200.69, z=-4458.77},
  {name="JieMiShiBei4",  x=-2157.91, y=162.88, z=-4508.35},
  {name="JieMiShiBei5",  x=-2339.73, y=227.35, z=-4261.51},
  {name="JieMiShiBei6",  x=-2529.16, y=288.12, z=-4523.16},
  {name="JieMiShiBei7",  x=-2836.72, y=223.86, z=-4593.28},
  {name="JieMiShiBei8",  x=-3709.86, y=231.04, z=-2516.98},
  {name="JieMiShiBei9",  x=-3910.58, y=285.82, z=-2299.84},
  {name="JieMiShiBei10",  x=-3895.46, y=201.52, z=-2281.78},
  {name="JieMiShiBei11",  x=-3981.28, y=202.60, z=-2279.79},
  {name="JieMiShiBei12",  x=-2347.07, y=205.75, z=-4221.29},
  {name="JieMiShiBei13",  x=-2293.64, y=207.82, z=-4284.68},
  {name="leiyuansufangbei",  x=-2472.68, y=221.79, z=-4112.10},
  {name="TiaoZhan1",  x=-2642.83, y=219.49, z=-4137.64},
  {name="TiaoZhan2",  x=-3291.35, y=223.20, z=-3403.36},
  {name="TiaoZhan3",  x=-3448.48, y=200.84, z=-3405.76},
  {name="TiaoZhan4",  x=-3456.99, y=202.80, z=-3331.43},
  {name="TiaoZhan5",  x=-3587.83, y=217.47, z=-3303.01},
  {name="TiaoZhan6",  x=-3768.49, y=200.19, z=-3485.25},
  {name="TiaoZhan7",  x=-3933.31, y=225.88, z=-3289.05},
  {name="TiaoZhan8",  x=-3912.15, y=273.45, z=-3180.87},
  {name="TiaoZhan9",  x=-4014.45, y=201.69, z=-3120.90},
  {name="TiaoZhan10",  x=-3930.87, y=261.36, z=-3001.66},
  {name="TiaoZhan11",  x=-3933.60, y=213.49, z=-2908.34},
  {name="TiaoZhan12",  x=-2611.12, y=229.52, z=-4277.25},
  {name="TiaoZhan13",  x=-3791.64, y=206.41, z=-2759.42},
  {name="TiaoZhan14",  x=-3674.13, y=272.09, z=-3002.92},
  {name="TiaoZhan15",  x=-3631.43, y=280.85, z=-3070.29},
  {name="TiaoZhan16",  x=-3785.85, y=258.43, z=-3094.55},
  {name="TiaoZhan17",  x=-3772.50, y=201.10, z=-3133.04},
  {name="TiaoZhan18",  x=-3712.64, y=201.44, z=-3139.15},
  {name="TiaoZhan19",  x=-3715.14, y=274.44, z=-3123.26},
  {name="TiaoZhan20",  x=-3783.19, y=268.61, z=-3197.59},
  {name="TiaoZhan21",  x=-3491.59, y=224.84, z=-3087.78},
  {name="TiaoZhan22",  x=-3427.41, y=200.53, z=-2940.27},
  {name="TiaoZhan23",  x=-2788.61, y=206.12, z=-4205.36},
  {name="TiaoZhan24",  x=-3564.44, y=214.17, z=-2002.84},
  {name="TiaoZhan25",  x=-3823.41, y=282.47, z=-2437.32},
  {name="TiaoZhan26",  x=-4004.41, y=248.39, z=-2438.71},
  {name="TiaoZhan27",  x=-4102.35, y=222.03, z=-2437.99},
  {name="TiaoZhan28",  x=-3872.85, y=315.07, z=-2348.70},
  {name="TiaoZhan29",  x=-3553.45, y=176.94, z=-1178.51},
  {name="TiaoZhan30",  x=-3919.58, y=202.25, z=-1160.17},
  {name="TiaoZhan31",  x=-3727.29, y=202.29, z=-1004.98},
  {name="TiaoZhan32",  x=-3575.56, y=208.81, z=-905.86},
  {name="TiaoZhan33",  x=-3562.71, y=201.62, z=-800.70},
  {name="TiaoZhan34",  x=-2698.38, y=231.11, z=-4442.87},
  {name="TiaoZhan35",  x=-3416.15, y=204.46, z=-633.30},
  {name="TiaoZhan36",  x=-3624.12, y=134.53, z=-649.49},
  {name="TiaoZhan37",  x=-3753.39, y=171.41, z=-721.46},
  {name="TiaoZhan38",  x=-3882.56, y=255.45, z=-499.72},
  {name="TiaoZhan39",  x=-4043.82, y=199.62, z=-371.39},
  {name="TiaoZhan40",  x=-4204.31, y=199.67, z=-864.69},
  {name="TiaoZhan41",  x=-3938.26, y=200.69, z=-677.44},
  {name="TiaoZhan42",  x=-3986.90, y=171.18, z=-765.70},
  {name="TiaoZhan43",  x=-4027.66, y=208.64, z=-903.57},
  {name="TiaoZhan44",  x=-3902.64, y=121.05, z=-903.98},
  {name="TiaoZhan45",  x=-2575.05, y=320.74, z=-4543.37},
  {name="TiaoZhan46",  x=-3895.70, y=123.20, z=-968.22},
  {name="TiaoZhan47",  x=-4260.90, y=201.12, z=-3627.99},
  {name="TiaoZhan48",  x=-4521.53, y=204.65, z=-3743.84},
  {name="TiaoZhan49",  x=-4627.96, y=204.32, z=-3793.55},
  {name="TiaoZhan50",  x=-4398.01, y=238.22, z=-3864.26},
  {name="TiaoZhan51",  x=-4275.01, y=198.93, z=-4274.58},
  {name="TiaoZhan52",  x=-4273.91, y=212.38, z=-4251.53},
  {name="TiaoZhan53",  x=-4492.05, y=201.31, z=-4417.52},
  {name="TiaoZhan54",  x=-4951.50, y=201.63, z=-4600.57},
  {name="TiaoZhan55",  x=-4638.79, y=202.91, z=-4107.61},
  {name="TiaoZhan56",  x=-2805.08, y=200.85, z=-4695.34},
  {name="TiaoZhan57",  x=-4926.74, y=203.64, z=-3803.97},
  {name="TiaoZhan58",  x=-6124.64, y=202.22, z=-3314.11},
  {name="TiaoZhan59",  x=-4006.04, y=218.56, z=-2131.61},
  {name="TiaoZhan60",  x=-3011.32, y=209.25, z=-3935.68},
  {name="TiaoZhan61",  x=-3280.90, y=200.86, z=-3648.57},
  {name="TiaoZhan62",  x=-2947.04, y=200.96, z=-3312.35},
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
