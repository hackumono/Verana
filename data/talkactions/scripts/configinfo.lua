local HIDDEN = {"adminPassword", "managerPassword", "encryptionType", "^sql"}

function onSay(cid, words, param, channel)
if exhaustion.check(cid, 30032) then
    return FALSE
end
exhaustion.set(cid, 30032, 10)
	param = param:trim()
	for _, str in ipairs(HIDDEN) do
		if(param:find(str) ~= nil) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Config value \"" .. param .. "\" does not exists.")
			return true
		end
	end

	local value = getConfigValue(param)
	if(value) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, param .. " = " .. value)
		return true
	end

	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Config value \"" .. param .. "\" does not exists.")
	return true
end
