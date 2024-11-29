local Client = require "pns.client"

local args = {...}
if #args ~= 1 then
  error("expected 1 argument, got " .. #args)
end

peripheral.find("modem", rednet.open)

local client = Client.new{}
local response = client:look_up(args[1])
print(response)

rednet.close()
