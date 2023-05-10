local fs = component.proxy(computer.getBootAddress())

function require(modulename)
	if fs.exists("/packages/"..modulename..".lua") then
		local handle = fs.open("/packages/"..modulename..".lua", "r")
		load(fs.read(handle, math.huge))
	else
		error("Module not found: "..modulename..".lua")
	end
end

return require()
