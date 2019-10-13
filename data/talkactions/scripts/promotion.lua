local config = {
	promotion = 1,	-- Promotion level, ignoruj jeœli nie masz nowych profesji 
	minLevel = 20,	-- Level potrzebny do kupienia promocji
	cost = 20000 	-- Koszt promotion
}

function onSay(cid, words, param)
if exhaustion.check(cid, 30032) then
    return FALSE
end
exhaustion.set(cid, 30032, 10)
	if(getPlayerPromotionLevel(cid) >= config.promotion) then
		doPlayerSendCancel(cid, "Masz juz promocje.")
	elseif(getPlayerLevel(cid) < config.minLevel) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Potrzebujesz " .. config.minLevel .. " level aby kupic promotion.")
	elseif(doPlayerRemoveMoney(cid, config.cost) ~= TRUE) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Nie masz pieniedzy! Promotion kosztuje " .. config.cost .. " gp.")
	else
		setPlayerPromotionLevel(cid, config.promotion)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Udalo ci sie promowac na " .. getVocationInfo(getPlayerVocation(cid)).name .. ".")
	end
	return TRUE
end

