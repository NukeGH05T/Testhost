-- GET PLAYER COORDINATES + SAVE TO FILE (with auto-numbering)
-- Saves coordinates in coords.txt file from where it can be copied and used in most of the other available tp scripts.
-- Execute the script while in desired position to fetch coords and append it.

local FILE_PATH = "coords.txt"
local Vector3 = CS.UnityEngine.Vector3

local function show(msg)
  if CS and CS.MoleMole and CS.MoleMole.ActorUtils and CS.MoleMole.ActorUtils.ShowMessage then
    CS.MoleMole.ActorUtils.ShowMessage(tostring(msg))
  else
    print(tostring(msg))
  end
end

local function get_player_pos()
  if CS and CS.MoleMole and CS.MoleMole.ActorUtils then
    local pos = CS.MoleMole.ActorUtils.GetAvatarPos()
    if pos then
      return pos.x, pos.y, pos.z
    end
  end
  return nil, nil, nil
end

local function count_existing_points()
  local f = io.open(FILE_PATH, "r")
  if not f then return 0 end
  local count = 0
  for _ in f:lines() do
    count = count + 1
  end
  f:close()
  return count
end

local function save_coords(x, y, z)
  local idx = count_existing_points() + 1
  local ok, err = pcall(function()
    local f = io.open(FILE_PATH, "a") -- append mode
    if f then
      f:write(string.format("{name=\"TP %d\", x=%.6f, y=%.6f, z=%.6f},\n", idx, x, y, z))
      f:close()
    end
  end)
  if not ok then
    show("Ошибка записи: " .. tostring(err))
  end
  return idx
end

-- === MAIN ===
local x, y, z = get_player_pos()
if x and y and z then
  local idx = save_coords(x, y, z)
  show(string.format("Saved TP %d: X=%.3f, Y=%.3f, Z=%.3f", idx, x, y, z))
else
  show("Unable to fetch player position!")
end
