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

-- === СПИСОК ВАЙПОИНТОВ (Красные агаты, 72 шт) ===
local W = {
  {name="Agate Point 1", x=1286.45, y=298.11, z=-1047.22 },
  {name="Agate Point 2", x=1207.01, y=334.72, z=-1052.62 },
  {name="Agate Point 3", x=1246.96, y=347.85, z=-1107.65 },
  {name="Agate Point 4", x=1292.55, y=287.82, z=-1227.66 },
  {name="Agate Point 5", x=1195.89, y=306.42, z=-1140.96 },
  {name="Agate Point 6", x=1040.26, y=340.93, z=-1171.52 },
  {name="Agate Point 7", x=1101.83, y=200.07, z=-1188.62 },
  {name="Agate Point 8", x=1081.11, y=215, z=-1268.12 },
  {name="Agate Point 9", x=1072.34, y=201.79, z=-1224.24 },
  {name="Agate Point 10", x=1007.82, y=205.18, z=-1452.26 },
  {name="Agate Point 11", x=913.99, y=212.74, z=-1300.3199 },
  {name="Agate Point 12", x=831.66, y=198.44, z=-1385.53 },
  {name="Agate Point 13", x=900.92, y=262.91, z=-1185.62 },
  {name="Agate Point 14", x=616.13, y=202.4, z=-1157.67 },
  {name="Agate Point 15", x=719.08, y=282.13, z=-1106.25 },
  {name="Agate Point 16", x=753.82, y=213.73, z=-1101.58 },
  {name="Agate Point 17", x=1049.47, y=399.43, z=-1074.72 },
  {name="Agate Point 18", x=933.59, y=455.14, z=-1045.34 },
  {name="Agate Point 19", x=1000.68, y=317.19, z=-1120.92 },
  {name="Agate Point 20", x=902.08, y=199.89, z=-1156.83 },
  {name="Agate Point 21", x=1149.28, y=399.26, z=-997.13 },
  {name="Agate Point 22", x=1176.92, y=361.84, z=-963.17 },
  {name="Agate Point 23", x=1309.87, y=380.86, z=-962.78 },
  {name="Agate Point 24", x=1353.89, y=346.66, z=-930.83 },
  {name="Agate Point 25", x=1316.38, y=366.48, z=-804.2 },
  {name="Agate Point 26", x=1427.4301, y=322.18, z=-829.46 },
  {name="Agate Point 27", x=1382.26, y=305.14, z=-720.21 },
  {name="Agate Point 28", x=1521.21, y=272.34, z=-635.48 },
  {name="Agate Point 29", x=1412.72, y=275.71, z=-536.16 },
  {name="Agate Point 30", x=1393.1, y=284.61, z=-489.01 },
  {name="Agate Point 31", x=1261.47, y=302.46, z=-486.59 },
  {name="Agate Point 32", x=1141.91, y=455.6, z=-687.76 },
  {name="Agate Point 33", x=1220.86, y=345.75, z=-556.21 },
  {name="Agate Point 34", x=1173.63, y=273.78, z=-554.76 },
  {name="Agate Point 35", x=1095.64, y=342.66, z=-521.54 },
  {name="Agate Point 36", x=1083.54, y=286.78, z=-438.26 },
  {name="Agate Point 37", x=1084.5, y=270.64, z=-359.22 },
  {name="Agate Point 38", x=1083.26, y=264.01, z=-373 },
  {name="Agate Point 39", x=987.49, y=282.28, z=-392.81 },
  {name="Agate Point 40", x=1049.63, y=342.95, z=-497.66 },
  {name="Agate Point 41", x=1135.1, y=417.51, z=-721.31 },
  {name="Agate Point 42", x=1093.02, y=419.19, z=-704.51 },
  {name="Agate Point 43", x=942, y=377.84, z=-572.36 },
  {name="Agate Point 44", x=962.78, y=349.56, z=-590.54 },
  {name="Agate Point 45", x=913.09, y=290.87, z=-539.6 },
  {name="Agate Point 46", x=734.09, y=339.69, z=-606.93 },
  {name="Agate Point 47", x=885.24, y=443.4, z=-743.98 },
  {name="Agate Point 48", x=926.1, y=381, z=-740.01 },
  {name="Agate Point 49", x=858.23, y=347.9, z=-791.59 },
  {name="Agate Point 50", x=655.94, y=218.69, z=-875.18 },
  {name="Agate Point 51", x=809.92, y=291.78, z=-919.8 },
  {name="Agate Point 52", x=823.61, y=296.24, z=-909.61 },
  {name="Agate Point 53", x=896.06, y=451.5, z=-893.18 },
  {name="Agate Point 54", x=940.96, y=411.48, z=-869.12 },
  {name="Agate Point 55", x=1012.02, y=366.03, z=-911.92 },
  {name="Agate Point 56", x=988.2, y=317.66, z=-935.33 },
  {name="Agate Point 57", x=937.3353, y=285.5168, z=-954.7059 },
  {name="Agate Point 58", x=935.18, y=287.44, z=-950.6 },
  {name="Agate Point 59", x=1170.46, y=415.17, z=-887.62 },
  {name="Agate Point 60", x=1060.41, y=426.6, z=-878.99 },
  {name="Agate Point 61", x=1045.1801, y=479.82, z=-795.54 },
  {name="Agate Point 62", x=1067.23, y=507.71, z=-876.89 },
  {name="Agate Point 63", x=1032.53, y=504.16, z=-894.65 },
  {name="Agate Point 64", x=1135.71, y=507.57, z=-845.27 },
  {name="Agate Point 65", x=1110.59, y=537.16, z=-796.34 },
  {name="Agate Point 66", x=1026.9301, y=572.07, z=-857.12 },
  {name="Agate Point 67", x=986.02, y=604.16, z=-875.56 },
  {name="Agate Point 68", x=978.29, y=609.89, z=-920.48 },
  {name="Agate Point 69", x=929.79, y=529.35, z=-905.81 },
  {name="Agate Point 70", x=1041.98, y=695.9, z=-821.76 },
  {name="Agate Point 71", x=1002.7961, y=640.8658, z=-905.8728 },
  {name="Agate Point 72", x=1292.041, y=296.6459, z=-1048.9958 },
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
