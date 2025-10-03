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
  {name="0: Artifact Route B-123",  x=876.24, y=349.07, z=-782.67},
  {name="1: Artifact Route B-123",  x=876.99, y=349.33, z=-791.03},
  {name="2: Artifact Route B-123",  x=1148.01, y=273.21, z=-509.01},
  {name="3: Artifact Route B-123",  x=1234.99, y=201.35, z=-91.35},
  {name="4: Artifact Route B-123",  x=1238.80, y=201.35, z=-93.80},
  {name="5: Artifact Route B-123",  x=233.80, y=224.16, z=424.55},
  {name="6: Artifact Route B-123",  x=942.22, y=211.24, z=642.39},
  {name="7: Artifact Route B-123",  x=834.70, y=211.16, z=645.92},
  {name="8: Artifact Route B-123",  x=1276.35, y=234.91, z=1141.29},
  {name="9: Artifact Route B-123",  x=561.97, y=183.52, z=1146.81},
  {name="10: Artifact Route B-123",  x=1285.42, y=231.51, z=1119.93},
  {name="11: Artifact Route B-123",  x=1285.03, y=231.61, z=1114.91},
  {name="12: Artifact Route B-123",  x=1252.21, y=211.48, z=1030.70},
  {name="13: Artifact Route B-123",  x=1257.54, y=212.46, z=1031.14},
  {name="14: Artifact Route B-123",  x=1049.00, y=270.99, z=1495.59},
  {name="15: Artifact Route B-123",  x=1043.62, y=270.75, z=1510.52},
  {name="16: Artifact Route B-123",  x=570.07, y=184.74, z=1170.31},
  {name="17: Artifact Route B-123",  x=558.04, y=183.04, z=1159.84},
  {name="18: Artifact Route B-123",  x=832.95, y=211.25, z=649.57},
  {name="19: Artifact Route B-123",  x=-291.43, y=314.08, z=1506.42},
  {name="20: Artifact Route B-123",  x=-281.54, y=303.82, z=1488.64},
  {name="21: Artifact Route B-123",  x=-276.05, y=303.82, z=1475.65},
  {name="22: Artifact Route B-123",  x=106.42, y=285.40, z=2347.06},
  {name="23: Artifact Route B-123",  x=103.99, y=285.85, z=2350.73},
  {name="24: Artifact Route B-123",  x=-302.05, y=243.27, z=2864.65},
  {name="25: Artifact Route B-123",  x=-283.34, y=249.05, z=2788.34},
  {name="26: Artifact Route B-123",  x=-190.72, y=253.80, z=3308.89},
  {name="27: Artifact Route B-123",  x=-171.99, y=256.59, z=3335.35},
  {name="28: Artifact Route B-123",  x=-184.75, y=246.65, z=3377.29},
  {name="29: Artifact Route B-123",  x=-253.49, y=250.49, z=3396.81},
  {name="30: Artifact Route B-123",  x=-235.58, y=248.16, z=3441.36},
  {name="31: Artifact Route B-123",  x=-243.93, y=240.63, z=3482.92},
  {name="32: Artifact Route B-123",  x=-193.67, y=232.12, z=3479.78},
  {name="33: Artifact Route B-123",  x=-172.58, y=238.67, z=3492.78},
  {name="34: Artifact Route B-123",  x=-206.83, y=242.72, z=3617.96},
  {name="35: Artifact Route B-123",  x=-219.57, y=256.91, z=3634.20},
  {name="36: Artifact Route B-123",  x=-197.38, y=248.55, z=3645.26},
  {name="37: Artifact Route B-123",  x=-165.75, y=243.78, z=3660.36},
  {name="38: Artifact Route B-123",  x=-665.24, y=243.60, z=3250.24},
  {name="39: Artifact Route B-123",  x=-669.16, y=235.62, z=3243.45},
  {name="40: Artifact Route B-123",  x=-673.06, y=234.37, z=3237.56},
  {name="41: Artifact Route B-123",  x=-668.40, y=231.84, z=3177.11},
  {name="42: Artifact Route B-123",  x=-666.04, y=230.64, z=3166.96},
  {name="43: Artifact Route B-123",  x=-574.12, y=220.58, z=3133.86},
  {name="44: Artifact Route B-123",  x=-479.60, y=204.26, z=3111.81},
  {name="45: Artifact Route B-123",  x=-472.03, y=204.20, z=3090.02},
  {name="46: Artifact Route B-123",  x=-470.48, y=204.60, z=3127.82},
  {name="47: Artifact Route B-123",  x=-732.39, y=205.87, z=3592.49},
  {name="48: Artifact Route B-123",  x=-728.94, y=203.72, z=3608.91},
  {name="49: Artifact Route B-123",  x=-763.85, y=193.94, z=3626.58},
  {name="50: Artifact Route B-123",  x=-780.93, y=192.42, z=3644.41},
  {name="51: Artifact Route B-123",  x=-867.02, y=177.81, z=3673.43},
  {name="52: Artifact Route B-123",  x=-756.09, y=150.27, z=4016.48},
  {name="53: Artifact Route B-123",  x=-761.47, y=149.99, z=4019.91},
  {name="54: Artifact Route B-123",  x=-771.95, y=151.16, z=4013.62},
  {name="55: Artifact Route B-123",  x=-2211.51, y=5.16, z=5553.88},
  {name="56: Artifact Route B-123",  x=-2289.15, y=3.55, z=5589.97},
  {name="57: Artifact Route B-123",  x=-2260.64, y=3.28, z=5620.20},
  {name="58: Artifact Route B-123",  x=-2279.85, y=3.39, z=5533.73},
  {name="59: Artifact Route B-123",  x=-3755.85, y=203.92, z=-1365.21},
  {name="60: Artifact Route B-123",  x=-3874.57, y=202.02, z=-1061.28},
  {name="61: Artifact Route B-123",  x=-3701.57, y=136.37, z=-984.93},
  {name="62: Artifact Route B-123",  x=-3699.94, y=136.10, z=-988.45},
  {name="63: Artifact Route B-123",  x=-3689.22, y=130.71, z=-994.67},
  {name="64: Artifact Route B-123",  x=-3706.63, y=130.08, z=-1009.43},
  {name="65: Artifact Route B-123",  x=-3714.42, y=130.71, z=-1016.09},
  {name="66: Artifact Route B-123",  x=-4050.27, y=202.51, z=-703.03},
  {name="67: Artifact Route B-123",  x=-4042.00, y=201.46, z=-688.59},
  {name="68: Artifact Route B-123",  x=-4043.19, y=203.44, z=-672.13},
  {name="69: Artifact Route B-123",  x=-4086.94, y=204.03, z=-694.16},
  {name="70: Artifact Route B-123",  x=-6214.19, y=200.84, z=-3270.35},
  {name="71: Artifact Route B-123",  x=-6220.24, y=201.29, z=-3228.94},
  {name="72: Artifact Route B-123",  x=-6530.61, y=200.63, z=-2580.71},
  {name="73: Artifact Route B-123",  x=-3546.94, y=237.70, z=-3397.20},
  {name="74: Artifact Route B-123",  x=-3542.91, y=234.40, z=-3404.00},
  {name="75: Artifact Route B-123",  x=-3533.87, y=232.73, z=-3405.62},
  {name="76: Artifact Route B-123",  x=-3552.75, y=203.07, z=-3445.45},
  {name="77: Artifact Route B-123",  x=-3566.53, y=202.01, z=-3435.24},
  {name="78: Artifact Route B-123",  x=-3574.09, y=202.45, z=-3420.54},
  {name="79: Artifact Route B-123",  x=-3653.92, y=202.86, z=-3337.84},
  {name="80: Artifact Route B-123",  x=-3646.10, y=203.43, z=-3343.11},
  {name="81: Artifact Route B-123",  x=-3634.54, y=202.28, z=-3353.24},
  {name="82: Artifact Route B-123",  x=-3570.44, y=210.41, z=-3299.60},
  {name="83: Artifact Route B-123",  x=-3583.37, y=226.23, z=-3250.35},
  {name="84: Artifact Route B-123",  x=-3642.49, y=264.30, z=-3274.27},
  {name="85: Artifact Route B-123",  x=-3644.72, y=262.85, z=-3261.45},
  {name="86: Artifact Route B-123",  x=-3647.68, y=263.18, z=-3240.53},
  {name="87: Artifact Route B-123",  x=-3604.48, y=238.14, z=-3210.06},
  {name="88: Artifact Route B-123",  x=-3615.75, y=237.97, z=-3205.27},
  {name="89: Artifact Route B-123",  x=-3614.36, y=216.61, z=-3204.97},
  {name="90: Artifact Route B-123",  x=-3831.13, y=255.12, z=-3152.87},
  {name="91: Artifact Route B-123",  x=-3831.02, y=257.30, z=-3143.97},
  {name="92: Artifact Route B-123",  x=-3733.66, y=236.71, z=-3134.89},
  {name="93: Artifact Route B-123",  x=-3702.96, y=238.14, z=-3159.17},
  {name="94: Artifact Route B-123",  x=-3688.75, y=237.77, z=-3154.68},
  {name="95: Artifact Route B-123",  x=-3696.68, y=237.96, z=-3152.23},
  {name="96: Artifact Route B-123",  x=-3703.70, y=232.99, z=-3144.18},
  {name="97: Artifact Route B-123",  x=-3723.19, y=250.61, z=-3115.72},
  {name="98: Artifact Route B-123",  x=-3730.56, y=251.50, z=-3121.32},
  {name="99: Artifact Route B-123",  x=-3722.34, y=271.31, z=-3172.12},
  {name="100: Artifact Route B-123",  x=-3738.89, y=281.56, z=-3149.37},
  {name="101: Artifact Route B-123",  x=-3726.52, y=282.21, z=-3156.64},
  {name="102: Artifact Route B-123",  x=-3723.71, y=281.17, z=-3158.81},
  {name="103: Artifact Route B-123",  x=-3705.67, y=272.74, z=-3163.76},
  {name="104: Artifact Route B-123",  x=-3636.84, y=254.01, z=-3092.45},
  {name="105: Artifact Route B-123",  x=-3621.20, y=221.08, z=-3118.67},
  {name="106: Artifact Route B-123",  x=-3571.73, y=213.88, z=-3141.78},
  {name="107: Artifact Route B-123",  x=-3570.14, y=220.49, z=-3138.93},
  {name="108: Artifact Route B-123",  x=-3639.56, y=237.04, z=-3031.56},
  {name="109: Artifact Route B-123",  x=-3630.73, y=227.52, z=-3194.87},
  {name="110: Artifact Route B-123",  x=-3695.58, y=206.69, z=-3187.23},
  {name="111: Artifact Route B-123",  x=-3651.70, y=235.94, z=-3190.79},
  {name="112: Artifact Route B-123",  x=-3698.00, y=263.78, z=-3115.19},
  {name="113: Artifact Route B-123",  x=-3692.44, y=258.55, z=-3137.67},
  {name="114: Artifact Route B-123",  x=-3697.91, y=262.67, z=-3125.27},
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