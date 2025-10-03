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
  {name="x1",  x=1325.45, y=282.40, z=-1788.05},
  {name="x2",  x=1802.03, y=196.24, z=-1339.42},
  {name="x3",  x=1983.65, y=220.62, z=-1584.98},
  {name="x4",  x=2016.39, y=196.39, z=-1232.32},
  {name="x5",  x=1665.21, y=266.47, z=-1293.30},
  {name="x6",  x=1738.09, y=272.12, z=-1051.38},
  {name="x7",  x=1115.62, y=309.37, z=-1463.88},
  {name="x8",  x=1692.72, y=204.03, z=-469.90},
  {name="x9",  x=1684.90, y=263.72, z=-866.49},
  {name="x10",  x=1947.13, y=212.68, z=-900.25},
  {name="x11",  x=1876.69, y=204.68, z=-118.36},
  {name="x12",  x=2411.38, y=257.74, z=-1333.09},
  {name="x13",  x=2397.10, y=302.35, z=-1632.85},
  {name="x14",  x=2839.12, y=265.15, z=-1890.25},
  {name="x15",  x=2600.38, y=220.56, z=-1498.82},
  {name="x16",  x=2672.29, y=234.96, z=-1109.01},
  {name="x17",  x=2744.20, y=257.34, z=-1303.91},
  {name="x18",  x=2092.55, y=224.96, z=-529.65},
  {name="x19",  x=2261.24, y=202.67, z=-502.45},
  {name="x20",  x=2675.93, y=249.56, z=-289.94},
  {name="x21",  x=2595.89, y=273.48, z=-330.30},
  {name="x22",  x=2720.50, y=245.63, z=-420.56},
  {name="x23",  x=2790.44, y=206.84, z=38.69},
  {name="x24",  x=2849.59, y=209.28, z=207.39},
  {name="x25",  x=2829.98, y=207.89, z=326.00},
  {name="x26",  x=2677.24, y=206.94, z=319.33},
  {name="x27",  x=2472.17, y=209.74, z=314.32},
  {name="x28",  x=2682.09, y=238.42, z=47.09},
  {name="x29",  x=2650.05, y=207.35, z=-95.51},
  {name="x30",  x=2520.29, y=210.68, z=329.19},
  {name="x31",  x=2943.76, y=221.98, z=-1748.86},
  {name="x32",  x=2258.06, y=270.23, z=-261.98},
  {name="x33",  x=2350.15, y=280.60, z=-386.08},
  {name="x34",  x=2477.95, y=244.05, z=-370.68},
  {name="x35",  x=1387.07, y=233.77, z=-1514.66},
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
