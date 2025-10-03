-- STEP TELEPORT (файловый счётчик) — 1 клик = следующий поинт

-- === ФАЙЛ СЧЁТЧИКА (в той же папке, что и lua) ===
local PATH = "tp_idx.txt"

-- Полезные алиасы
local Vector3 = CS.UnityEngine.Vector3

local function show(msg)
  if CS and CS.MoleMole and CS.MoleMole.ActorUtils and CS.MoleMole.ActorUtils.ShowMessage then
    CS.MoleMole.ActorUtils.ShowMessage(tostring(msg))
  else
    print(tostring(msg))
  end
end

-- === СПИСОК ГЕОКУЛОВ ===
local W = {
  {name="Geoculus 1",  x=2814.58, y=313.04, z=-1585.82},
  {name="Geoculus 2",  x=1862.30, y=205.01, z=-1349.28},
  {name="Geoculus 3",  x=1730.61, y=284.38, z=-1373.80},
  {name="Geoculus 4",  x=1629.37, y=262.48, z=-1421.16},
  {name="Geoculus 5",  x=1527.38, y=257.54, z=-1385.91},
  {name="Geoculus 6",  x=1561.70, y=303.61, z=-1176.01},
  {name="Geoculus 7",  x=1681.41, y=285.18, z=-1122.31},
  {name="Geoculus 8",  x=1738.39, y=262.88, z=-1112.02},
  {name="Geoculus 9",  x=1767.98, y=276.58, z=-1029.32},
  {name="Geoculus 10", x=1928.16, y=224.51, z=-1105.95},
  {name="Geoculus 11", x=1932.76, y=238.67, z=-949.64},
  {name="Geoculus 12", x=2958.25, y=228.96, z=-1804.28},
  {name="Geoculus 13", x=1931.57, y=263.70, z=-840.20},
  {name="Geoculus 14", x=1849.97, y=276.35, z=-695.66},
  {name="Geoculus 15", x=1987.34, y=256.15, z=-547.08},
  {name="Geoculus 16", x=2091.50, y=253.18, z=-460.44},
  {name="Geoculus 17", x=2196.58, y=255.79, z=-417.98},
  {name="Geoculus 18", x=2267.21, y=241.81, z=-491.19},
  {name="Geoculus 19", x=2342.13, y=287.44, z=-421.20},
  {name="Geoculus 20", x=2390.43, y=288.25, z=-328.28},
  {name="Geoculus 21", x=2431.40, y=298.13, z=-202.54},
  {name="Geoculus 22", x=2528.78, y=317.73, z=-356.39},
  {name="Geoculus 23", x=2502.48, y=309.06, z=-1632.73},
  {name="Geoculus 24", x=2630.98, y=261.25, z=-385.18},
  {name="Geoculus 25", x=2690.59, y=252.99, z=-372.31},
  {name="Geoculus 26", x=2640.67, y=250.87, z=-493.66},
  {name="Geoculus 27", x=2552.77, y=219.38, z=-433.13},
  {name="Geoculus 28", x=2482.69, y=230.42, z=-427.47},
  {name="Geoculus 29", x=2642.42, y=294.94, z=-189.22},
  {name="Geoculus 30", x=2824.36, y=253.85, z=-24.58},
  {name="Geoculus 31", x=2744.10, y=220.00, z=170.36},
  {name="Geoculus 32", x=2865.05, y=223.94, z=88.18},
  {name="Geoculus 33", x=2686.10, y=236.79, z=182.05},
  {name="Geoculus 34", x=2330.46, y=313.87, z=-1760.90},
  {name="Geoculus 35", x=2930.27, y=218.97, z=-35.48},
  {name="Geoculus 36", x=2592.67, y=253.27, z=339.18},
  {name="Geoculus 37", x=2700.66, y=215.30, z=232.30},
  {name="Geoculus 38", x=2559.34, y=188.24, z=389.70},
  {name="Geoculus 39", x=2479.86, y=227.27, z=272.40},
  {name="Geoculus 40", x=2652.28, y=329.02, z=132.43},
  {name="Geoculus 41", x=2882.73, y=246.92, z=300.93},
  {name="Geoculus 42", x=2314.28, y=275.56, z=-58.95},
  {name="Geoculus 43", x=2182.94, y=273.21, z=22.86},
  {name="Geoculus 44", x=1777.00, y=238.42, z=-403.56},
  {name="Geoculus 45", x=2239.11, y=274.46, z=-1560.74},
  {name="Geoculus 46", x=1627.93, y=266.98, z=-439.60},
  {name="Geoculus 47", x=1681.33, y=204.67, z=-280.78},
  {name="Geoculus 48", x=2086.82, y=205.20, z=-746.33},
  {name="Geoculus 49", x=2593.18, y=227.32, z=-726.93},
  {name="Geoculus 50", x=2653.18, y=286.09, z=-678.93},
  {name="Geoculus 51", x=2901.59, y=231.86, z=-1105.12},
  {name="Geoculus 52", x=2769.95, y=276.88, z=-1195.13},
  {name="Geoculus 53", x=2311.61, y=253.64, z=-1261.90},
  {name="Geoculus 54", x=2073.10, y=208.79, z=-1265.48},
  {name="Geoculus 55", x=1826.33, y=215.43, z=-1225.50},
  {name="Geoculus 56", x=2010.82, y=211.05, z=-1401.22},
  {name="Geoculus 57", x=1473.20, y=263.75, z=-1597.34},
  {name="Geoculus 58", x=1373.63, y=253.96, z=-1570.84},
  {name="Geoculus 59", x=1332.67, y=280.28, z=-1691.93},
  {name="Geoculus 60", x=1214.37, y=264.73, z=-1454.18},
  {name="Geoculus 61", x=1489.08, y=209.90, z=-1922.01},
  {name="Geoculus 62", x=1637.44, y=205.68, z=-2667.48},
  {name="Geoculus 63", x=2622.96, y=206.97, z=-2392.52},
  {name="Geoculus 64", x=1977.93, y=199.21, z=-1266.30},
  {name="Geoculus 65", x=1887.48, y=223.02, z=-1257.90},
}

-- читаем индекс из файла
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

-- пишем индекс в файл
local function write_idx(n)
  local okw, err = pcall(function()
    local f = io.open(PATH, "w")
    if f then f:write(tostring(n)); f:close() end
  end)
  if not okw then
    show("Ошибка записи: " .. tostring(err))
  end
end

-- основной шаг
local idx = read_idx()
local wp  = W[idx]

-- тп
local pos = Vector3(wp.x, wp.y, wp.z)
CS.MoleMole.ActorUtils.SetAvatarPos(pos)
show(string.format("TP %d/%d: %s  (X:%.2f Y:%.2f Z:%.2f)  [next-> %d]",
  idx, #W, wp.name, wp.x, wp.y, wp.z, (idx % #W) + 1))

-- следующий индекс (циклично) и сохранение
idx = idx + 1
if idx > #W then idx = 1 end
write_idx(idx)
