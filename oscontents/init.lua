local bootaddr = computer.getBootAddress()

local gpu = component.proxy(component.list("gpu")())
local fs = component.proxy(bootaddr)

computer.beep(750, 0.25)
computer.beep(1000, 0.25)
gpu.set(1, 1, "Welcome to Nybblum.")
gpu.set(1, 2, "Booting from "..bootaddr)
gpu.set(1, 3, "Loading require.lua...")

if fs.exists("/packages/require.lua") then
  local handle = fs.open("/packages/require.lua", "r")
  load(fs.read(handle, math.huge))
else
  error("Module not found: require.lua")
end
