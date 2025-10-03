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
  {name="SLASH-TP26103",  x=47.68, y=847.62, z=-642.35},
  {name="SLASH-TP26104",  x=256.35, y=804.43, z=120.73},
  {name="SLASH-TP26105",  x=-170.79, y=842.72, z=-424.60},
  {name="SLASH-TP26106",  x=-382.63, y=737.52, z=-239.61},
  {name="SLASH-TP26107",  x=-397.35, y=1371.98, z=-185.56},
  {name="SLASH-TP26108",  x=-275.83, y=842.08, z=-100.54},
  {name="SLASH-TP26109",  x=80.39, y=697.37, z=261.86},
  {name="SLASH-TP26110",  x=89.64, y=703.46, z=416.07},
  {name="SLASH-TP26111",  x=109.71, y=85.53, z=-93.36},
  {name="SLASH-TP26112",  x=239.52, y=178.20, z=-450.12},
  {name="SLASH-TP26113",  x=537.69, y=184.22, z=-576.12},
  {name="SLASH-TP26114",  x=330.82, y=200.13, z=-152.16},
  {name="SLASH-TP26115",  x=542.03, y=68.50, z=-325.92},
  {name="SLASH-TP26116",  x=456.96, y=-96.28, z=-347.90},
  {name="SLASH-TP26117",  x=672.70, y=60.00, z=-309.37},
  {name="SLASH-TP26118",  x=484.01, y=46.48, z=-130.61},
  {name="SLASH-TP26119",  x=522.45, y=32.12, z=-219.05},
  {name="SLASH-TP26120",  x=636.44, y=100.74, z=-168.60},
  {name="SLASH-TP26121",  x=662.70, y=88.04, z=-99.74},
  {name="SLASH-TP26122",  x=465.11, y=103.72, z=27.44},
  {name="SLASH-TP26123",  x=313.82, y=157.15, z=196.05},
  {name="SLASH-TP26124",  x=323.65, y=348.76, z=287.14},
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