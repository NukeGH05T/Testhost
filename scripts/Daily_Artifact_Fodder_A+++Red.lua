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
  {name="0: Artifact Route A-127",  x=-3197.06, y=226.72, z=-3958.07},
  {name="1: Artifact Route A-127",  x=-3218.86, y=219.17, z=-3939.86},
  {name="2: Artifact Route A-127",  x=-3268.67, y=213.27, z=-3928.62},
  {name="3: Artifact Route A-127",  x=-4240.77, y=202.06, z=-4163.94},
  {name="4: Artifact Route A-127",  x=-4244.87, y=202.30, z=-4161.23},
  {name="5: Artifact Route A-127",  x=-4231.85, y=202.13, z=-4157.69},
  {name="6: Artifact Route A-127",  x=-4234.33, y=211.24, z=-4246.68},
  {name="7: Artifact Route A-127",  x=-4260.43, y=213.47, z=-4236.50},
  {name="8: Artifact Route A-127",  x=-4236.23, y=222.75, z=-4228.57},
  {name="9: Artifact Route A-127",  x=-4250.92, y=226.34, z=-4216.17},
  {name="10: Artifact Route A-127",  x=-4299.85, y=242.22, z=-4185.44},
  {name="11: Artifact Route A-127",  x=-4453.29, y=223.82, z=-3977.76},
  {name="12: Artifact Route A-127",  x=-4397.72, y=165.44, z=-3829.93},
  {name="13: Artifact Route A-127",  x=-4438.74, y=215.58, z=-3970.22},
  {name="14: Artifact Route A-127",  x=-4435.24, y=215.52, z=-3966.01},
  {name="15: Artifact Route A-127",  x=-4423.81, y=207.59, z=-3972.83},
  {name="16: Artifact Route A-127",  x=-4423.89, y=206.96, z=-3977.19},
  {name="17: Artifact Route A-127",  x=-4402.52, y=210.96, z=-3966.69},
  {name="18: Artifact Route A-127",  x=-4383.13, y=204.39, z=-3968.03},
  {name="19: Artifact Route A-127",  x=-4510.18, y=213.74, z=-3849.87},
  {name="20: Artifact Route A-127",  x=-4483.83, y=215.76, z=-3839.70},
  {name="21: Artifact Route A-127",  x=-4421.43, y=196.43, z=-3785.65},
  {name="22: Artifact Route A-127",  x=-4424.16, y=196.27, z=-3790.10},
  {name="23: Artifact Route A-127",  x=-4441.06, y=199.98, z=-3774.43},
  {name="24: Artifact Route A-127",  x=-4440.35, y=201.92, z=-3739.89},
  {name="25: Artifact Route A-127",  x=-4431.90, y=201.01, z=-3742.48},
  {name="26: Artifact Route A-127",  x=-4440.89, y=194.90, z=-3742.44},
  {name="27: Artifact Route A-127",  x=-4440.37, y=195.17, z=-3738.76},
  {name="28: Artifact Route A-127",  x=-4440.14, y=186.35, z=-3770.95},
  {name="29: Artifact Route A-127",  x=-4438.70, y=186.90, z=-3775.59},
  {name="30: Artifact Route A-127",  x=-4431.11, y=188.23, z=-3740.81},
  {name="31: Artifact Route A-127",  x=-4431.16, y=189.46, z=-3726.55},
  {name="32: Artifact Route A-127",  x=-4431.57, y=195.57, z=-3719.65},
  {name="33: Artifact Route A-127",  x=-4428.85, y=194.77, z=-3726.22},
  {name="34: Artifact Route A-127",  x=-4747.40, y=218.53, z=-3712.33},
  {name="35: Artifact Route A-127",  x=1275.54, y=234.89, z=1141.58},
  {name="36: Artifact Route A-127",  x=1285.27, y=231.52, z=1120.11},
  {name="37: Artifact Route A-127",  x=1285.34, y=231.57, z=1115.15},
  {name="38: Artifact Route A-127",  x=-291.21, y=313.95, z=1506.23},
  {name="39: Artifact Route A-127",  x=-281.43, y=303.85, z=1488.32},
  {name="40: Artifact Route A-127",  x=-275.83, y=303.78, z=1476.02},
  {name="41: Artifact Route A-127",  x=106.72, y=285.30, z=2347.09},
  {name="42: Artifact Route A-127",  x=103.99, y=285.50, z=2350.29},
  {name="43: Artifact Route A-127",  x=-665.24, y=243.58, z=3250.47},
  {name="44: Artifact Route A-127",  x=-668.96, y=235.61, z=3243.30},
  {name="45: Artifact Route A-127",  x=-672.45, y=234.45, z=3237.78},
  {name="46: Artifact Route A-127",  x=-667.88, y=231.83, z=3176.94},
  {name="47: Artifact Route A-127",  x=-666.76, y=231.02, z=3167.00},
  {name="48: Artifact Route A-127",  x=-737.61, y=240.17, z=3442.08},
  {name="49: Artifact Route A-127",  x=-573.80, y=220.60, z=3133.97},
  {name="50: Artifact Route A-127",  x=-480.20, y=203.94, z=3111.92},
  {name="51: Artifact Route A-127",  x=-472.82, y=204.17, z=3090.43},
  {name="52: Artifact Route A-127",  x=-470.25, y=203.75, z=3127.29},
  {name="53: Artifact Route A-127",  x=-733.71, y=206.07, z=3592.48},
  {name="54: Artifact Route A-127",  x=-728.99, y=203.57, z=3608.56},
  {name="55: Artifact Route A-127",  x=-764.15, y=194.08, z=3626.48},
  {name="56: Artifact Route A-127",  x=-780.80, y=192.41, z=3644.23},
  {name="57: Artifact Route A-127",  x=-379.44, y=283.77, z=4017.80},
  {name="58: Artifact Route A-127",  x=-372.47, y=283.56, z=4010.50},
  {name="59: Artifact Route A-127",  x=-383.11, y=278.77, z=3997.41},
  {name="60: Artifact Route A-127",  x=-388.62, y=277.96, z=3995.99},
  {name="61: Artifact Route A-127",  x=-408.08, y=277.93, z=3991.56},
  {name="62: Artifact Route A-127",  x=-424.42, y=272.46, z=4007.67},
  {name="63: Artifact Route A-127",  x=-416.62, y=272.79, z=4011.75},
  {name="64: Artifact Route A-127",  x=-358.75, y=270.74, z=3978.86},
  {name="65: Artifact Route A-127",  x=-359.94, y=257.00, z=3940.28},
  {name="66: Artifact Route A-127",  x=-343.03, y=249.72, z=3919.36},
  {name="67: Artifact Route A-127",  x=-756.09, y=150.27, z=4016.48},
  {name="68: Artifact Route A-127",  x=-761.47, y=149.99, z=4019.91},
  {name="69: Artifact Route A-127",  x=-771.95, y=151.16, z=4013.62},
  {name="70: Artifact Route A-127",  x=-1054.74, y=348.72, z=4010.61},
  {name="71: Artifact Route A-127",  x=-1039.30, y=348.48, z=4024.75},
  {name="72: Artifact Route A-127",  x=-1053.73, y=342.88, z=4028.26},
  {name="73: Artifact Route A-127",  x=-1092.06, y=273.69, z=3929.11},
  {name="74: Artifact Route A-127",  x=-866.81, y=177.76, z=3673.12},
  {name="75: Artifact Route A-127",  x=-1072.73, y=342.83, z=4007.59},
  {name="76: Artifact Route A-127",  x=-1051.53, y=343.58, z=3996.87},
  {name="77: Artifact Route A-127",  x=-1048.21, y=345.42, z=3994.49},
  {name="78: Artifact Route A-127",  x=-1089.30, y=342.19, z=3991.90},
  {name="79: Artifact Route A-127",  x=-2210.98, y=4.35, z=5554.03},
  {name="80: Artifact Route A-127",  x=-2260.54, y=3.30, z=5620.39},
  {name="81: Artifact Route A-127",  x=-2288.93, y=3.42, z=5589.55},
  {name="82: Artifact Route A-127",  x=-2279.43, y=3.32, z=5533.70},
  {name="83: Artifact Route A-127",  x=-2320.54, y=110.87, z=5236.46},
  {name="84: Artifact Route A-127",  x=-2320.45, y=111.65, z=5261.72},
  {name="85: Artifact Route A-127",  x=-2321.48, y=111.71, z=5280.24},
  {name="86: Artifact Route A-127",  x=-2381.81, y=111.51, z=5280.74},
  {name="87: Artifact Route A-127",  x=-2382.06, y=110.87, z=5261.61},
  {name="88: Artifact Route A-127",  x=-2380.71, y=110.87, z=5241.44},
  {name="89: Artifact Route A-127",  x=-2380.02, y=110.87, z=5216.35},
  {name="90: Artifact Route A-127",  x=-2414.02, y=99.48, z=5286.58},
  {name="91: Artifact Route A-127",  x=-2438.68, y=99.11, z=5271.91},
  {name="92: Artifact Route A-127",  x=-2431.20, y=99.10, z=5238.55},
  {name="93: Artifact Route A-127",  x=-2264.06, y=75.16, z=5154.16},
  {name="94: Artifact Route A-127",  x=-2264.09, y=74.90, z=5163.81},
  {name="95: Artifact Route A-127",  x=-2287.78, y=75.52, z=5164.98},
  {name="96: Artifact Route A-127",  x=-2323.56, y=96.57, z=5092.58},
  {name="97: Artifact Route A-127",  x=-2316.76, y=96.10, z=5068.23},
  {name="98: Artifact Route A-127",  x=-2328.68, y=95.87, z=5066.62},
  {name="99: Artifact Route A-127",  x=-2380.83, y=95.87, z=5066.40},
  {name="100: Artifact Route A-127",  x=-2370.95, y=96.43, z=5066.77},
  {name="101: Artifact Route A-127",  x=-2371.74, y=96.71, z=5091.01},
  {name="102: Artifact Route A-127",  x=-2381.00, y=95.91, z=5091.46},
  {name="103: Artifact Route A-127",  x=-2305.83, y=120.34, z=5036.20},
  {name="104: Artifact Route A-127",  x=-2296.37, y=120.66, z=5037.52},
  {name="105: Artifact Route A-127",  x=-2295.58, y=120.60, z=5061.78},
  {name="106: Artifact Route A-127",  x=-2299.45, y=120.99, z=5060.15},
  {name="107: Artifact Route A-127",  x=-2306.05, y=120.06, z=5061.63},
  {name="108: Artifact Route A-127",  x=-2413.86, y=119.89, z=5056.07},
  {name="109: Artifact Route A-127",  x=-2411.09, y=119.97, z=5042.03},
  {name="110: Artifact Route A-127",  x=-2400.62, y=120.52, z=5042.17},
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