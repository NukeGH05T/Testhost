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
  {name="SLASH-TP26291",  x=-2626.72, y=277.36, z=10024.65},
  {name="SLASH-TP26292",  x=-3002.35, y=229.65, z=10848.04},
  {name="SLASH-TP26293",  x=-3320.82, y=205.16, z=10930.86},
  {name="SLASH-TP26294",  x=-3196.96, y=215.32, z=10727.87},
  {name="SLASH-TP26295",  x=-3435.66, y=219.60, z=10352.39},
  {name="SLASH-TP26296",  x=-2911.44, y=253.47, z=9897.60},
  {name="SLASH-TP26297",  x=-2865.43, y=280.49, z=9716.69},
  {name="SLASH-TP26298",  x=-2760.16, y=167.18, z=9626.97},
  {name="SLASH-TP26299",  x=-2683.67, y=217.24, z=9517.55},
  {name="SLASH-TP26300",  x=-2494.65, y=208.31, z=9516.84},
  {name="SLASH-TP26301",  x=-2377.98, y=237.45, z=9378.50},
  {name="SLASH-TP26302",  x=-2375.97, y=271.81, z=9736.16},
  {name="SLASH-TP26303",  x=-2141.58, y=267.44, z=9633.39},
  {name="SLASH-TP26304",  x=-3182.80, y=328.97, z=10117.32},
  {name="SLASH-TP26305",  x=-2984.22, y=322.01, z=10132.78},
  {name="SLASH-TP26306",  x=-2910.18, y=347.45, z=10203.89},
  {name="SLASH-TP26307",  x=-2512.19, y=282.91, z=10346.93},
  {name="SLASH-TP26308",  x=-2624.05, y=281.82, z=10577.78},
  {name="SLASH-TP26309",  x=-2845.39, y=768.58, z=10351.05},
  {name="SLASH-TP26310",  x=-3056.07, y=612.74, z=10573.63},
  {name="SLASH-TP26311",  x=-3221.86, y=303.90, z=10375.43},
  {name="SLASH-TP26312",  x=-2779.95, y=318.25, z=10669.68},
  {name="SLASH-TP26313",  x=-2288.18, y=211.39, z=9754.24},
  {name="SLASH-TP26314",  x=-2735.12, y=304.71, z=10530.27},
  {name="SLASH-TP26315",  x=-2644.32, y=332.00, z=10247.93},
  {name="SLASH-TP26316",  x=-3134.66, y=259.85, z=10886.43},
  {name="SLASH-TP26317",  x=-3868.44, y=234.70, z=11042.72},
  {name="SLASH-TP26318",  x=-2246.80, y=300.89, z=10400.60},
  {name="SLASH-TP26319",  x=-2523.31, y=344.57, z=9679.32},
  {name="SLASH-TP26320",  x=-2878.95, y=706.03, z=10085.79},
  {name="SLASH-TP26321",  x=-2788.55, y=270.59, z=9915.59},
  {name="SLASH-TP26322",  x=-3101.19, y=206.06, z=9981.13},
  {name="SLASH-TP26323",  x=-2220.43, y=142.29, z=9775.27},
  {name="SLASH-TP26324",  x=-2246.94, y=203.05, z=9880.37},
  {name="SLASH-TP26325",  x=-2486.94, y=298.48, z=10180.34},
  {name="SLASH-TP26326",  x=-2439.10, y=255.40, z=10439.51},
  {name="SLASH-TP26327",  x=-2471.97, y=223.23, z=10699.43},
  {name="SLASH-TP26328",  x=-2423.14, y=252.77, z=10934.43},
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