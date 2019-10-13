function onStepIn(cid, item, position, fromPosition)
	local gobletPos = getThingPos(item.uid)
	if item.actionid == 8649 then
		if getPlayerStorageValue(cid, 8649) ~= 1 then
			setPlayerStorageValue(cid, 8649, 1)
			local goblet = doCreateItemEx(5785, 1)
			doItemSetAttribute(goblet, "description", "It is given to the courageous victor of the gravedigger mission.\nAwarded to " .. getCreatureName(cid) .. ".")
			doTileAddItemEx({x=gobletPos.x,y=gobletPos.y-1,z=gobletPos.z}, goblet)
		end
	end
	return TRUE
end