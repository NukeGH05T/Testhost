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

-- === СПИСОК ВАЙПОИНТОВ (Телепорты) ===
local W = {
  {name="TP 1", x=2832.247070, y=265.612579, z=-1627.127075},
  {name="TP 2", x=2722.490479, y=252.466003, z=-1270.853882},
  {name="TP 3", x=2491.382568, y=264.522064, z=-1560.191406},
  {name="TP 4", x=2297.601074, y=264.986115, z=-1508.821411},
  {name="TP 5", x=2197.436035, y=214.988663, z=-1121.499390},
  {name="TP 6", x=1975.574951, y=237.063019, z=-1531.177612},
  {name="TP 7", x=2277.049805, y=221.069977, z=-876.574951},
  {name="TP 8", x=2261.405518, y=273.204620, z=-747.965942},
  {name="TP 9", x=1929.662598, y=196.740997, z=-1266.021118},
  {name="TP 10", x=1461.533447, y=258.661102, z=-1436.956665},
  {name="TP 11", x=1328.421631, y=303.750763, z=-1868.845947},
  {name="TP 12", x=1439.318848, y=329.696747, z=-2002.947144},
  {name="TP 13", x=1858.055664, y=258.634094, z=-576.219482},
  {name="TP 14", x=1994.073120, y=212.449249, z=-873.734375},
  {name="TP 15", x=1790.796753, y=236.397446, z=-912.441833},
  {name="TP 16", x=1679.750244, y=264.099884, z=-892.104065},
  {name="TP 17", x=1702.498291, y=256.346161, z=-662.697205},
  {name="TP 18", x=1863.828003, y=204.161911, z=-203.281067},
  {name="TP 19", x=2179.400146, y=213.717117, z=-524.287476},
  {name="TP 20", x=2293.637451, y=255.089600, z=-385.027039},
  {name="TP 21", x=2257.106445, y=270.327271, z=-258.473267},
  {name="TP 22", x=2644.067871, y=262.712616, z=176.499222},
  {name="TP 23", x=2376.388672, y=227.413406, z=34.663040},
  {name="TP 24", x=2580.969238, y=207.391144, z=342.568970},
  {name="TP 25", x=2651.697998, y=300.838898, z=118.665604},
  {name="TP 26", x=2786.094727, y=216.672470, z=-89.018219},
  {name="TP 27", x=2920.272217, y=209.477509, z=268.877747},
  {name="TP 28", x=2582.965576, y=267.186157, z=-435.477905},
  {name="TP 29", x=1596.869385, y=288.621368, z=-1132.685059},
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