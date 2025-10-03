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
  {name="Anemoculus1",  x=2812.98, y=313.04, z=-1584.82},
  {name="Anemoculus2",  x=2958.25, y=228.96, z=-1804.28},
  {name="Anemoculus3",  x=2502.48, y=309.06, z=-1632.73},
  {name="Anemoculus4",  x=2330.46, y=313.87, z=-1760.90},
  {name="Anemoculus5",  x=2239.11, y=274.46, z=-1560.74},
  {name="Anemoculus6",  x=2010.82, y=211.05, z=-1401.22},
  {name="Anemoculus7",  x=1977.93, y=199.21, z=-1266.30},
  {name="Anemoculus8",  x=1887.48, y=223.02, z=-1257.90},
  {name="Anemoculus9",  x=1826.33, y=215.43, z=-1225.50},
  {name="Anemoculus10",  x=1862.30, y=205.01, z=-1349.28},
  {name="Anemoculus11",  x=1730.61, y=284.38, z=-1373.80},
  {name="Anemoculus12",  x=1629.37, y=262.48, z=-1421.16},
  {name="Anemoculus13",  x=1527.38, y=257.54, z=-1385.91},
  {name="Anemoculus14",  x=1561.70, y=303.61, z=-1176.01},
  {name="Anemoculus15",  x=1681.41, y=285.18, z=-1122.31},
  {name="Anemoculus16",  x=1738.39, y=262.88, z=-1112.02},
  {name="Anemoculus17",  x=1767.98, y=276.58, z=-1029.32},
  {name="Anemoculus18",  x=1928.16, y=224.51, z=-1105.95},
  {name="Anemoculus19",  x=1932.76, y=238.67, z=-949.64},
  {name="Anemoculus20",  x=1931.57, y=263.70, z=-840.20},
  {name="Anemoculus21",  x=1849.97, y=276.35, z=-695.66},
  {name="Anemoculus22",  x=1987.34, y=256.15, z=-547.08},
  {name="Anemoculus23",  x=2091.50, y=253.18, z=-460.44},
  {name="Anemoculus24",  x=2196.58, y=255.79, z=-417.98},
  {name="Anemoculus25",  x=2267.21, y=241.81, z=-491.19},
  {name="Anemoculus26",  x=2342.13, y=287.44, z=-421.20},
  {name="Anemoculus27",  x=2390.43, y=288.25, z=-328.28},
  {name="Anemoculus28",  x=2431.40, y=298.13, z=-202.54},
  {name="Anemoculus29",  x=2528.78, y=317.73, z=-356.39},
  {name="Anemoculus30",  x=2630.98, y=261.25, z=-385.18},
  {name="Anemoculus31",  x=2690.59, y=252.99, z=-372.31},
  {name="Anemoculus32",  x=2640.67, y=250.87, z=-493.66},
  {name="Anemoculus33",  x=2552.77, y=219.38, z=-433.13},
  {name="Anemoculus34",  x=2482.69, y=230.42, z=-427.47},
  {name="Anemoculus35",  x=2642.42, y=294.94, z=-189.22},
  {name="Anemoculus36",  x=2824.36, y=253.85, z=-24.58},
  {name="Anemoculus37",  x=2744.10, y=220.00, z=170.36},
  {name="Anemoculus38",  x=2865.05, y=223.94, z=88.18},
  {name="Anemoculus39",  x=2686.10, y=236.79, z=182.05},
  {name="Anemoculus40",  x=2930.27, y=218.97, z=-35.48},
  {name="Anemoculus41",  x=2592.67, y=253.27, z=339.18},
  {name="Anemoculus42",  x=2700.66, y=215.30, z=232.30},
  {name="Anemoculus43",  x=2559.34, y=188.24, z=389.70},
  {name="Anemoculus44",  x=2479.86, y=227.27, z=272.40},
  {name="Anemoculus45",  x=2652.28, y=329.02, z=132.43},
  {name="Anemoculus46",  x=2882.73, y=246.92, z=300.93},
  {name="Anemoculus47",  x=2314.28, y=275.56, z=-58.95},
  {name="Anemoculus48",  x=2182.94, y=273.21, z=22.86},
  {name="Anemoculus49",  x=1777.00, y=238.42, z=-403.56},
  {name="Anemoculus50",  x=1627.93, y=266.98, z=-439.60},
  {name="Anemoculus51",  x=1681.33, y=204.67, z=-280.78},
  {name="Anemoculus52",  x=2086.82, y=205.20, z=-746.33},
  {name="Anemoculus53",  x=2593.18, y=227.32, z=-726.93},
  {name="Anemoculus54",  x=2653.18, y=286.09, z=-678.93},
  {name="Anemoculus55",  x=2901.59, y=231.86, z=-1105.12},
  {name="Anemoculus56",  x=2769.95, y=276.88, z=-1195.13},
  {name="Anemoculus57",  x=2311.61, y=253.64, z=-1261.90},
  {name="Anemoculus58",  x=2073.10, y=208.79, z=-1265.48},
  {name="Anemoculus59",  x=2071.62, y=208.54, z=-1264.16},
  {name="Anemoculus60",  x=1473.20, y=263.75, z=-1597.34},
  {name="Anemoculus61",  x=1373.63, y=253.96, z=-1570.84},
  {name="Anemoculus62",  x=1332.67, y=280.28, z=-1691.93},
  {name="Anemoculus63",  x=1214.37, y=264.73, z=-1454.18},
  {name="Anemoculus64",  x=1489.08, y=209.90, z=-1922.01},
  {name="Anemoculus65",  x=1637.44, y=205.68, z=-2667.48},
  {name="Anemoculus66",  x=2622.96, y=206.97, z=-2392.52},
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