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
  {name="SLASH-TP25789",  x=-113.73, y=335.16, z=10089.78},
  {name="SLASH-TP25790",  x=-137.81, y=210.25, z=9877.34},
  {name="SLASH-TP25794",  x=-1619.53, y=221.38, z=10587.19},
  {name="SLASH-TP25798",  x=-161.80, y=1240.92, z=10162.09},
  {name="SLASH-TP25799",  x=-1415.88, y=22.12, z=9208.31},
  {name="SLASH-TP25801",  x=-1691.22, y=133.44, z=9738.08},
  {name="SLASH-TP25802",  x=223.76, y=252.86, z=9645.37},
  {name="SLASH-TP25803",  x=-122.95, y=340.76, z=10105.03},
  {name="SLASH-TP25804",  x=-744.49, y=253.25, z=9594.16},
  {name="SLASH-TP25807",  x=-123.65, y=397.62, z=10144.29},
  {name="SLASH-TP25808",  x=-107.36, y=334.28, z=10033.21},
  {name="SLASH-TP25809",  x=-1455.91, y=238.23, z=9771.23},
  {name="SLASH-TP25810",  x=-1468.86, y=253.09, z=10813.34},
  {name="SLASH-TP25811",  x=-1531.38, y=318.16, z=9687.31},
  {name="SLASH-TP25812",  x=-1688.63, y=67.26, z=9392.99},
  {name="SLASH-TP25813",  x=-322.54, y=262.55, z=9093.79},
  {name="SLASH-TP25816",  x=-1706.97, y=187.70, z=9677.82},
  {name="SLASH-TP25817",  x=-36.25, y=699.37, z=9853.42},
  {name="SLASH-TP25819",  x=-1429.64, y=166.28, z=9490.48},
  {name="SLASH-TP25821",  x=-385.42, y=81.62, z=10294.42},
  {name="SLASH-TP25822",  x=-1143.70, y=206.81, z=9844.47},
  {name="SLASH-TP25823",  x=-376.24, y=224.20, z=9396.90},
  {name="SLASH-TP25824",  x=-1381.65, y=277.21, z=9382.06},
  {name="SLASH-TP25826",  x=-1388.38, y=100.67, z=9760.61},
  {name="SLASH-TP25827",  x=-155.53, y=501.41, z=9999.01},
  {name="SLASH-TP25828",  x=-1090.94, y=276.58, z=9400.81},
  {name="SLASH-TP25829",  x=-1742.97, y=231.64, z=9978.17},
  {name="SLASH-TP25830",  x=-1580.37, y=98.47, z=9386.26},
  {name="SLASH-TP25831",  x=-605.37, y=377.91, z=9120.28},
  {name="SLASH-TP25832",  x=-1821.94, y=155.46, z=9457.54},
  {name="SLASH-TP25833",  x=-1819.06, y=184.19, z=9831.21},
  {name="SLASH-TP25835",  x=-207.63, y=287.06, z=9846.95},
  {name="SLASH-TP25836",  x=-1669.79, y=103.05, z=9657.20},
  {name="SLASH-TP25837",  x=194.76, y=336.10, z=9648.92},
  {name="SLASH-TP25838",  x=-1552.77, y=47.46, z=9571.65},
  {name="SLASH-TP25839",  x=-1014.77, y=265.41, z=9635.28},
  {name="SLASH-TP25840",  x=-1977.87, y=275.70, z=9864.82},
  {name="SLASH-TP25841",  x=-1604.62, y=240.20, z=9993.52},
  {name="SLASH-TP25842",  x=-193.50, y=499.67, z=10072.69},
  {name="SLASH-TP25843",  x=-121.20, y=1247.30, z=10014.75},
  {name="SLASH-TP25844",  x=-1775.18, y=162.73, z=9621.34},
  {name="SLASH-TP25845",  x=-1912.06, y=207.36, z=9910.34},
  {name="SLASH-TP25846",  x=-1205.83, y=327.44, z=9483.20},
  {name="SLASH-TP25848",  x=-1788.11, y=98.45, z=9300.00},
  {name="SLASH-TP25860",  x=-1822.12, y=158.34, z=9726.38},
  {name="SLASH-TP25888",  x=-153.46, y=205.09, z=10305.82},
  {name="SLASH-TP25889",  x=-192.13, y=299.63, z=10379.55},
  {name="SLASH-TP25890",  x=-424.90, y=394.59, z=10285.08},
  {name="SLASH-TP25891",  x=-330.29, y=217.83, z=10137.23},
  {name="SLASH-TP25892",  x=-255.47, y=334.08, z=10029.32},
  {name="SLASH-TP25893",  x=-344.56, y=291.81, z=9979.08},
  {name="SLASH-TP25894",  x=-372.64, y=288.04, z=9876.39},
  {name="SLASH-TP25895",  x=-426.44, y=241.10, z=9900.52},
  {name="SLASH-TP25896",  x=-295.23, y=6.91, z=9779.09},
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