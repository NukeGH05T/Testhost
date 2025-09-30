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
  {name="TP 1", x=-1395.698364, y=200.428268, z=7746.947266},
{name="TP 2", x=-1358.250854, y=141.977631, z=7527.420898},
{name="TP 3", x=-1643.285522, y=269.013123, z=7630.156738},
{name="TP 4", x=-1868.212158, y=217.726151, z=7794.250488},
{name="TP 5", x=-1749.459839, y=191.433014, z=7855.873047},
{name="TP 6", x=-1564.464478, y=103.627617, z=7975.887695},
{name="TP 7", x=-1426.422974, y=66.337059, z=8268.382812},
{name="TP 8", x=-1217.598145, y=175.516571, z=8396.162109},
{name="TP 9", x=-1265.896973, y=255.372070, z=8674.435547},
{name="TP 10", x=-1487.009033, y=128.006836, z=8443.095703},
{name="TP 11", x=-1734.310425, y=51.221260, z=8241.803711},
{name="TP 12", x=-1871.248413, y=131.684036, z=8175.807129},
{name="TP 13", x=-1814.834595, y=-62.583107, z=8427.719727},
{name="TP 14", x=-1932.875732, y=97.128159, z=8598.189453},
{name="TP 15", x=-2062.439941, y=151.844238, z=8668.048828},
{name="TP 16", x=-1855.296753, y=132.465271, z=8733.938477},
{name="TP 17", x=-1580.092285, y=145.228546, z=8707.608398},
{name="TP 18", x=-1380.646973, y=244.615204, z=9053.532227},
{name="TP 19", x=-1460.317993, y=127.117432, z=9046.671875},
{name="TP 20", x=-1632.588745, y=130.594620, z=8906.263672},
{name="TP 21", x=-1879.202271, y=60.237717, z=8973.398438},
{name="TP 22", x=-1848.797852, y=67.373253, z=9050.568359},
{name="TP 23", x=-1969.764893, y=65.538994, z=9089.247070},
{name="TP 24", x=-2223.629883, y=201.718079, z=8667.446289},
{name="TP 25", x=-2218.571045, y=255.858139, z=8508.003906},
{name="TP 26", x=-2193.297119, y=357.028107, z=8367.981445},
{name="TP 27", x=-2346.718262, y=288.592316, z=8377.246094},
{name="TP 28", x=-2284.940674, y=354.519104, z=8193.340820},
{name="TP 29", x=-2369.378174, y=226.129089, z=8064.512695},
{name="TP 30", x=-2226.357666, y=227.288239, z=7977.724609},
{name="TP 31", x=-2120.669678, y=257.940674, z=8062.111816},
{name="TP 32", x=-2048.017334, y=267.399750, z=7848.257324},
{name="TP 33", x=-2253.371582, y=252.395370, z=7740.308594},
{name="TP 34", x=-2750.872559, y=201.644897, z=7877.517578},
{name="TP 35", x=-2656.027588, y=231.278610, z=8579.421875},
{name="TP 36", x=-2520.954834, y=242.210007, z=8292.794922},
{name="TP 37", x=-2442.396973, y=254.220978, z=8641.230469},
{name="TP 38", x=-2301.091797, y=244.384155, z=8945.918945},
{name="TP 39", x=-2422.358887, y=212.707703, z=9040.864258},
{name="TP 40", x=-2682.469727, y=218.220169, z=8914.466797},
{name="TP 41", x=-3013.513428, y=207.689957, z=8744.002930},
{name="TP 42", x=-2928.837891, y=253.906677, z=8287.082031},
{name="TP 43", x=-2670.836670, y=88.326042, z=8347.485352},
{name="TP 44", x=-1778.591675, y=161.906784, z=9520.319336},
{name="TP 45", x=-1805.786987, y=118.182228, z=9392.978516},
{name="TP 46", x=-1734.411499, y=115.077354, z=9229.922852},
{name="TP 47", x=-1668.972656, y=241.798264, z=9469.397461},
{name="TP 48", x=-1551.919922, y=255.388718, z=9711.451172},
{name="TP 49", x=-1623.574585, y=174.734497, z=9691.416992},
{name="TP 50", x=-1858.523071, y=152.962463, z=9644.011719},
{name="TP 51", x=-1851.812500, y=46.778198, z=9604.765625},
{name="TP 52", x=-1768.172119, y=172.979950, z=9781.954102},
{name="TP 53", x=-1605.975586, y=237.640198, z=9970.269531},
{name="TP 54", x=-1288.861450, y=224.173248, z=9847.604492},
{name="TP 55", x=-1286.638306, y=301.942902, z=9589.685547},
{name="TP 56", x=-1421.905884, y=216.864258, z=9306.304688},
{name="TP 57", x=-1492.043091, y=23.144690, z=9387.967773},
{name="TP 58", x=-1332.841064, y=51.011841, z=9352.973633},
{name="TP 59", x=-1113.953857, y=315.370880, z=9543.281250},
{name="TP 60", x=-846.041687, y=246.509308, z=9714.575195},
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
