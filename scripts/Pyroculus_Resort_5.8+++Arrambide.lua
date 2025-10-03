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
  {name="SLASH-TP26536",  x=-222.86, y=203.40, z=13710.37},
  {name="SLASH-TP26537",  x=393.36, y=228.05, z=13900.41},
  {name="SLASH-TP26538",  x=404.24, y=262.68, z=14030.64},
  {name="SLASH-TP26539",  x=284.74, y=216.79, z=14219.94},
  {name="SLASH-TP26540",  x=490.55, y=207.00, z=14165.60},
  {name="SLASH-TP26541",  x=648.21, y=220.50, z=14032.27},
  {name="SLASH-TP26542",  x=657.95, y=256.63, z=13932.53},
  {name="SLASH-TP26543",  x=759.12, y=292.28, z=13909.70},
  {name="SLASH-TP26544",  x=896.45, y=341.48, z=13729.18},
  {name="SLASH-TP26545",  x=717.90, y=227.93, z=13649.86},
  {name="SLASH-TP26546",  x=862.12, y=224.95, z=14335.94},
  {name="SLASH-TP26547",  x=-86.08, y=223.70, z=13617.98},
  {name="SLASH-TP26548",  x=807.71, y=230.01, z=14363.43},
  {name="SLASH-TP26549",  x=968.01, y=238.53, z=14285.20},
  {name="SLASH-TP26550",  x=870.85, y=220.88, z=14073.31},
  {name="SLASH-TP26551",  x=805.03, y=237.53, z=14094.38},
  {name="SLASH-TP26552",  x=764.14, y=241.71, z=14082.54},
  {name="SLASH-TP26553",  x=916.82, y=214.70, z=14434.62},
  {name="SLASH-TP26554",  x=919.22, y=216.78, z=14528.86},
  {name="SLASH-TP26555",  x=948.85, y=237.83, z=14764.13},
  {name="SLASH-TP26556",  x=744.23, y=228.32, z=14540.20},
  {name="SLASH-TP26557",  x=594.44, y=216.08, z=14449.83},
  {name="SLASH-TP26558",  x=86.91, y=196.11, z=13611.82},
  {name="SLASH-TP26559",  x=439.15, y=233.63, z=14584.26},
  {name="SLASH-TP26560",  x=537.92, y=289.49, z=14662.70},
  {name="SLASH-TP26561",  x=592.37, y=278.69, z=14706.53},
  {name="SLASH-TP26562",  x=345.69, y=213.95, z=15165.16},
  {name="SLASH-TP26563",  x=1207.26, y=269.59, z=14046.29},
  {name="SLASH-TP26564",  x=1210.58, y=141.68, z=13993.64},
  {name="SLASH-TP26565",  x=1262.75, y=437.49, z=14057.49},
  {name="SLASH-TP26566",  x=1321.38, y=136.57, z=13998.87},
  {name="SLASH-TP26567",  x=1369.08, y=97.55, z=14186.95},
  {name="SLASH-TP26568",  x=1284.11, y=64.65, z=14193.38},
  {name="SLASH-TP26569",  x=200.42, y=226.92, z=13764.77},
  {name="SLASH-TP26570",  x=1270.89, y=120.85, z=14268.16},
  {name="SLASH-TP26571",  x=1529.09, y=94.37, z=13988.43},
  {name="SLASH-TP26572",  x=1634.30, y=241.08, z=15129.11},
  {name="SLASH-TP26573",  x=1619.48, y=258.05, z=15233.10},
  {name="SLASH-TP26574",  x=1849.48, y=242.95, z=15190.03},
  {name="SLASH-TP26575",  x=1399.45, y=226.59, z=15375.18},
  {name="SLASH-TP26576",  x=1398.99, y=215.36, z=15066.57},
  {name="SLASH-TP26577",  x=1510.09, y=228.33, z=15089.11},
  {name="SLASH-TP26578",  x=1611.16, y=222.51, z=14992.45},
  {name="SLASH-TP26579",  x=1530.62, y=225.12, z=14969.63},
  {name="SLASH-TP26580",  x=253.07, y=255.65, z=13767.42},
  {name="SLASH-TP26581",  x=361.25, y=343.85, z=13713.71},
  {name="SLASH-TP26582",  x=495.37, y=294.17, z=13780.83},
  {name="SLASH-TP26583",  x=528.65, y=214.51, z=13872.26},
  {name="SLASH-TP26584",  x=395.12, y=243.23, z=13951.00},
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