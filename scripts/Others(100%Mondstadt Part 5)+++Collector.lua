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
  {name="a224",  x=2105.53, y=274.86, z=-199.09},
  {name="a225",  x=2554.40, y=256.56, z=-429.38},
  {name="huojujiemi1",  x=1248.78, y=312.21, z=-1296.46},
  {name="huojujiemi2",  x=2001.31, y=221.38, z=-1568.72},
  {name="huojujiemi3",  x=2514.93, y=267.70, z=-1430.36},
  {name="huojujiemi4",  x=2726.59, y=260.07, z=-1210.40},
  {name="huojujiemi5",  x=2341.21, y=252.45, z=-1333.18},
  {name="huojujiemi6",  x=2712.32, y=295.56, z=-405.81},
  {name="huojujiemi7",  x=2688.65, y=251.59, z=-374.71},
  {name="huojujiemi8",  x=2224.38, y=214.06, z=-465.45},
  {name="huojujiemi9",  x=1416.31, y=237.56, z=-1454.99},
  {name="jhfb1",  x=1663.06, y=202.03, z=-2598.10},
  {name="jhfb2",  x=1711.77, y=265.79, z=-1340.83},
  {name="jhfb3",  x=1937.51, y=206.97, z=-1559.65},
  {name="jhfb4",  x=2031.50, y=261.87, z=-368.83},
  {name="jhfb5",  x=2501.87, y=203.05, z=-1136.78},
  {name="jhfb6",  x=1580.89, y=252.18, z=-1634.03},
  {name="jhfb7",  x=1860.64, y=199.46, z=-1235.41},
  {name="ppg1",  x=1835.65, y=194.60, z=-1509.80},
  {name="ppg2",  x=2075.70, y=210.67, z=-1272.03},
  {name="ppg3",  x=1886.22, y=254.04, z=-534.41},
  {name="ppg4",  x=2236.12, y=254.56, z=-437.94},
  {name="ppg5",  x=2444.89, y=207.32, z=-1150.74},
  {name="ppg6",  x=2881.31, y=270.62, z=-1846.33},
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