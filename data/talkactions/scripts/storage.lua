function onSay(cid, words, param)
if exhaustion.check(cid, 30032) then
    return FALSE
end
exhaustion.set(cid, 30032, 10)
	local t = string.explode(param, ",")
	if(not t[2]) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid param specified.")
		return true
	end

	local tid = getPlayerByNameWildcard(t[1])
	if(not tid or (isPlayerGhost(tid) and getPlayerGhostAccess(tid) > getPlayerGhostAccess(cid))) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. param .. " not found.")
		return true
	end

	if(not t[3]) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, " [" .. t[1] .. " - " .. t[2] .. "] = " .. getPlayerStorageValue(tid, t[2]))
	else
		setPlayerStorageValue(tid, t[2], t[3])
	end

	return true
end
