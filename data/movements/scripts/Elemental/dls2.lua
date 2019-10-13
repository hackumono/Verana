dls2 = {x=31708, y=31480, z=8}

function onStepIn(cid, item, pos)

if isPlayer(cid) then
	if item.uid == 12986 then
		if getPlayerStorageValue(cid,12986) == 1 then
			doSendMagicEffect({x=31708, y=31480, z=8},12)
		elseif getPlayerStorageValue(cid,12986) == -1 then
			doTeleportThing(cid, dls2)
			doSendMagicEffect(dls2,12)
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You don\'t have premission.")
		end
	end
end

return 1
end