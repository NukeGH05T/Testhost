-- STEP TELEPORT (file counter) — 1 click = next point

-- === COUNTER FILE (in the same folder as the game exe) ===
local PATH = "tp_idx.txt"
local Vector3 = CS.UnityEngine.Vector3

local function show(msg)
  if CS and CS.MoleMole and CS.MoleMole.ActorUtils and CS.MoleMole.ActorUtils.ShowMessage then
    CS.MoleMole.ActorUtils.ShowMessage(tostring(msg))
  else
    print(tostring(msg))
  end
end

-- === LIST OF WAYPOINTS (Teleports) ===
local W = {
  {name="TP 1", x=1971.161743, y=201.321869, z=9096.432617},
{name="TP 2", x=1989.001953, y=201.566330, z=9083.772461},
{name="TP 3", x=2194.356689, y=200.809616, z=8824.017578},
{name="TP 4", x=2185.488525, y=202.636856, z=8808.249023},
{name="TP 5", x=2208.066895, y=200.980682, z=8790.884766},
{name="TP 6", x=2219.507080, y=203.112244, z=8774.443359},
{name="TP 7", x=2220.003174, y=201.239410, z=8753.477539},
{name="TP 8", x=2185.773926, y=201.629044, z=8750.896484},
{name="TP 9", x=1866.679688, y=251.828934, z=10351.541016},
{name="TP 10", x=1741.351562, y=221.076996, z=10359.739258},
{name="TP 11", x=1735.550171, y=222.852325, z=10343.125977},
{name="TP 12", x=1717.597046, y=230.177826, z=10378.434570},
{name="TP 13", x=1712.089600, y=232.683548, z=10388.162109},
{name="TP 14", x=1727.422241, y=229.447525, z=10401.484375},
{name="TP 15", x=1717.233276, y=227.711105, z=10411.277344},
{name="TP 16", x=3728.258789, y=205.711395, z=9269.203125},
{name="TP 17", x=3756.337891, y=215.030548, z=9264.256836},
{name="TP 18", x=3767.847412, y=215.669159, z=9257.182617},
{name="TP 19", x=3773.048828, y=214.616669, z=9237.031250},
{name="TP 20", x=3794.385742, y=212.249832, z=9232.963867},
{name="TP 21", x=3785.451172, y=208.439819, z=9258.514648},
{name="TP 22", x=3790.606201, y=202.674072, z=9271.037109},
{name="TP 23", x=3812.310059, y=202.884354, z=9236.250977},
{name="TP 24", x=3777.273926, y=218.877609, z=9200.993164},
{name="TP 25", x=3747.507324, y=219.509659, z=9211.729492},
{name="TP 26", x=3722.335938, y=216.763062, z=9225.757812},
{name="TP 27", x=3714.931885, y=211.103638, z=9252.076172},
{name="TP 28", x=3739.075684, y=229.318710, z=9181.290039},
{name="TP 29", x=3751.575928, y=228.702667, z=9185.018555},
}

-- read index from file
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

-- write index to file
local function write_idx(n)
  local okw, err = pcall(function()
    local f = io.open(PATH, "w")
    if f then f:write(tostring(n)); f:close() end
  end)
  if not okw then
    show("Write error: " .. tostring(err))
  end
end

-- main step
local idx = read_idx()
local wp  = W[idx]

-- teleport
local pos = Vector3(wp.x, wp.y, wp.z)
CS.MoleMole.ActorUtils.SetAvatarPos(pos)
show(string.format("TP %d/%d: %s  (X:%.2f Y:%.2f Z:%.2f)  [next-> %d]",
  idx, #W, wp.name, wp.x, wp.y, wp.z, (idx % #W) + 1))

-- next index (cyclic) and save
idx = idx + 1
if idx > #W then idx = 1 end
write_idx(idx)
