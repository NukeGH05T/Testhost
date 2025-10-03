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
  {name="a502",  x=2295.32, y=249.99, z=-716.01},
  {name="tiaozhan1",  x=1874.53, y=248.78, z=-989.44},
  {name="tiaozhan2",  x=2339.14, y=252.85, z=-1406.64},
  {name="tiaozhan3",  x=2872.61, y=225.34, z=87.76},
  {name="tiaozhan4",  x=2820.68, y=304.94, z=-1565.59},
  {name="tiaozhan5",  x=2453.28, y=305.79, z=-332.38},
  {name="tiaozhan6",  x=2536.99, y=217.58, z=-98.84},
  {name="tiaozhan7",  x=2813.83, y=207.40, z=372.32},
  {name="tiaozhan8",  x=2296.53, y=230.31, z=-52.27},
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