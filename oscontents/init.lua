local bootaddr = computer.getBootAddress()

local gpu = component.proxy(component.list("gpu")())
local fs = component.proxy(bootaddr)

gpu.set(1, 1, "Welcome to Nybblum.")
