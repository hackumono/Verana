function onUse(cid, item, fromPosition, itemEx, toPosition)
	local cfg = {}
	cfg.refuel = 42 * 60 * 1000
	if(getPlayerStamina(cid) >= cfg.refuel) then
		doPlayerSendCancel(cid, "Twoja stamina jest pelna.")
	elseif(not isPremium(cid)) then
		doPlayerSendCancel(cid, "Musisz posiadac Premium Account.")
	else
		doPlayerSetStamina(cid, cfg.refuel)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Stamina zostala zregenerowana!!!.")
		doRemoveItem(item.uid)
	end
	return true
end