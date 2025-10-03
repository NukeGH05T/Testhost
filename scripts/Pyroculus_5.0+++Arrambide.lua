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
  {name="SLASH-TP25319",  x=-2933.95, y=304.93, z=8335.35},
  {name="SLASH-TP25320",  x=-1560.15, y=211.94, z=7516.08},
  {name="SLASH-TP25321",  x=-1657.25, y=-27.10, z=8702.10},
  {name="SLASH-TP25322",  x=-1604.87, y=189.46, z=8953.10},
  {name="SLASH-TP25323",  x=-1702.21, y=133.86, z=8969.46},
  {name="SLASH-TP25324",  x=-1386.72, y=262.42, z=9127.41},
  {name="SLASH-TP25325",  x=-1279.54, y=208.51, z=8946.54},
  {name="SLASH-TP25326",  x=-1276.87, y=227.02, z=8786.07},
  {name="SLASH-TP25327",  x=-1418.54, y=33.10, z=8697.00},
  {name="SLASH-TP25328",  x=-2344.54, y=64.84, z=8971.13},
  {name="SLASH-TP25329",  x=-2434.90, y=72.58, z=8952.66},
  {name="SLASH-TP25330",  x=-1801.95, y=287.42, z=7778.43},
  {name="SLASH-TP25331",  x=-1851.37, y=278.65, z=7810.97},
  {name="SLASH-TP25332",  x=-1876.79, y=117.38, z=7856.07},
  {name="SLASH-TP25333",  x=-1807.87, y=-116.22, z=7866.24},
  {name="SLASH-TP25334",  x=-1932.18, y=-132.22, z=7827.06},
  {name="SLASH-TP25335",  x=-1668.33, y=159.42, z=7963.53},
  {name="SLASH-TP25336",  x=-1577.02, y=101.04, z=8010.87},
  {name="SLASH-TP25337",  x=-1454.48, y=134.31, z=7977.69},
  {name="SLASH-TP25338",  x=-1536.53, y=-70.44, z=7976.39},
  {name="SLASH-TP25339",  x=-1301.49, y=154.35, z=8453.95},
  {name="SLASH-TP25340",  x=-1583.03, y=-75.70, z=8118.77},
  {name="SLASH-TP25341",  x=-1639.09, y=64.38, z=8083.23},
  {name="SLASH-TP25342",  x=-1708.77, y=59.55, z=8076.28},
  {name="SLASH-TP25343",  x=-1736.21, y=71.24, z=8174.70},
  {name="SLASH-TP25344",  x=-1770.74, y=36.61, z=8150.12},
  {name="SLASH-TP25345",  x=-1644.16, y=106.78, z=8238.85},
  {name="SLASH-TP25346",  x=-1741.02, y=29.91, z=8304.58},
  {name="SLASH-TP25347",  x=-1662.31, y=106.09, z=8357.64},
  {name="SLASH-TP25348",  x=-1594.30, y=92.51, z=8429.39},
  {name="SLASH-TP25349",  x=-1548.92, y=89.79, z=8428.25},
  {name="SLASH-TP25350",  x=-2441.74, y=210.47, z=8840.74},
  {name="SLASH-TP25351",  x=-1574.47, y=131.35, z=8515.06},
  {name="SLASH-TP25352",  x=-1539.92, y=98.31, z=8518.97},
  {name="SLASH-TP25353",  x=-1476.33, y=55.64, z=8552.07},
  {name="SLASH-TP25354",  x=-1400.29, y=75.23, z=8610.44},
  {name="SLASH-TP25355",  x=-1352.45, y=61.68, z=8531.54},
  {name="SLASH-TP25356",  x=-1213.61, y=192.65, z=8387.87},
  {name="SLASH-TP25357",  x=-1436.98, y=74.65, z=8190.36},
  {name="SLASH-TP25358",  x=-1514.96, y=67.23, z=8312.34},
  {name="SLASH-TP25359",  x=-1497.68, y=93.13, z=8342.19},
  {name="SLASH-TP25360",  x=-1396.91, y=-64.51, z=8022.96},
  {name="SLASH-TP25361",  x=-1522.41, y=151.21, z=8830.14},
  {name="SLASH-TP25362",  x=-1341.22, y=152.05, z=8101.58},
  {name="SLASH-TP25363",  x=-1277.69, y=170.59, z=8218.27},
  {name="SLASH-TP25364",  x=-1191.85, y=180.25, z=8228.44},
  {name="SLASH-TP25365",  x=-1888.40, y=117.12, z=8269.55},
  {name="SLASH-TP25366",  x=-1757.86, y=53.18, z=8464.19},
  {name="SLASH-TP25367",  x=-1935.78, y=114.56, z=8590.76},
  {name="SLASH-TP25368",  x=-1928.55, y=245.81, z=8538.00},
  {name="SLASH-TP25369",  x=-1805.76, y=-15.05, z=8603.80},
  {name="SLASH-TP25370",  x=-2046.76, y=146.87, z=8668.95},
  {name="SLASH-TP25371",  x=-2080.77, y=137.60, z=8754.07},
  {name="SLASH-TP25372",  x=-2700.44, y=449.99, z=8597.20},
  {name="SLASH-TP25373",  x=-2095.63, y=52.03, z=8941.98},
  {name="SLASH-TP25374",  x=-2033.80, y=50.83, z=9069.18},
  {name="SLASH-TP25375",  x=-2243.95, y=194.88, z=8548.72},
  {name="SLASH-TP25376",  x=-2212.77, y=296.94, z=8453.66},
  {name="SLASH-TP25377",  x=-2107.42, y=304.77, z=8438.00},
  {name="SLASH-TP25378",  x=-2151.22, y=344.15, z=8180.17},
  {name="SLASH-TP25379",  x=-2198.69, y=252.24, z=8098.08},
  {name="SLASH-TP25380",  x=-2279.96, y=245.18, z=8072.17},
  {name="SLASH-TP25381",  x=-2349.53, y=276.15, z=8086.62},
  {name="SLASH-TP25382",  x=-2320.78, y=349.57, z=8158.57},
  {name="SLASH-TP25383",  x=-1411.09, y=149.29, z=7374.59},
  {name="SLASH-TP25384",  x=-2247.04, y=189.22, z=8019.55},
  {name="SLASH-TP25385",  x=-2315.32, y=190.12, z=7958.42},
  {name="SLASH-TP25386",  x=-2280.28, y=170.48, z=7819.63},
  {name="SLASH-TP25387",  x=-2254.10, y=126.99, z=7659.19},
  {name="SLASH-TP25388",  x=-2302.51, y=204.76, z=7673.55},
  {name="SLASH-TP25389",  x=-2135.99, y=145.87, z=7658.73},
  {name="SLASH-TP25390",  x=-2177.78, y=111.80, z=7490.24},
  {name="SLASH-TP25391",  x=-1940.57, y=278.78, z=7537.46},
  {name="SLASH-TP25392",  x=-1958.70, y=188.52, z=8179.53},
  {name="SLASH-TP25393",  x=-1862.06, y=-87.95, z=7997.45},
  {name="SLASH-TP25394",  x=-1365.69, y=173.99, z=7648.54},
  {name="SLASH-TP25395",  x=-1857.38, y=-213.76, z=8074.94},
  {name="SLASH-TP25396",  x=-2124.15, y=213.16, z=7917.09},
  {name="SLASH-TP25397",  x=-2288.61, y=287.57, z=8261.37},
  {name="SLASH-TP25398",  x=-2329.33, y=398.30, z=8389.89},
  {name="SLASH-TP25399",  x=-2559.52, y=201.12, z=7935.73},
  {name="SLASH-TP25400",  x=-2463.20, y=120.33, z=7875.15},
  {name="SLASH-TP25401",  x=-2461.44, y=107.83, z=7903.03},
  {name="SLASH-TP25402",  x=-2637.13, y=245.23, z=8597.24},
  {name="SLASH-TP25403",  x=-2599.77, y=225.28, z=8474.65},
  {name="SLASH-TP25404",  x=-2713.88, y=59.91, z=8497.61},
  {name="SLASH-TP25405",  x=-1308.64, y=270.68, z=7759.53},
  {name="SLASH-TP25406",  x=-2738.74, y=43.17, z=8575.54},
  {name="SLASH-TP25407",  x=-2821.85, y=30.44, z=8554.21},
  {name="SLASH-TP25408",  x=-2860.74, y=45.24, z=8588.89},
  {name="SLASH-TP25409",  x=-2803.65, y=64.29, z=8655.13},
  {name="SLASH-TP25410",  x=-2825.82, y=398.39, z=8694.12},
  {name="SLASH-TP25411",  x=-2996.22, y=422.49, z=8394.91},
  {name="SLASH-TP25412",  x=-2824.95, y=260.29, z=8343.05},
  {name="SLASH-TP25413",  x=-3002.23, y=209.90, z=8693.81},
  {name="SLASH-TP25414",  x=-3114.74, y=360.23, z=8658.88},
  {name="SLASH-TP25415",  x=-2661.70, y=226.69, z=8855.14},
  {name="SLASH-TP25416",  x=-1513.18, y=259.58, z=7667.57},
  {name="SLASH-TP25417",  x=-2597.21, y=386.58, z=8933.95},
  {name="SLASH-TP25418",  x=-2922.78, y=272.59, z=9032.66},
  {name="SLASH-TP25419",  x=-2521.48, y=209.99, z=9063.94},
  {name="SLASH-TP25420",  x=-2455.13, y=221.69, z=9106.03},
  {name="SLASH-TP25421",  x=-2382.35, y=210.30, z=8833.97},
  {name="SLASH-TP25422",  x=-2465.76, y=280.65, z=8647.43},
  {name="SLASH-TP25423",  x=-2360.23, y=227.30, z=8621.08},
  {name="SLASH-TP25424",  x=-2347.29, y=251.57, z=8555.03},
  {name="SLASH-TP25425",  x=-2598.67, y=234.04, z=8315.84},
  {name="SLASH-TP25426",  x=-1658.38, y=139.27, z=8700.78},
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