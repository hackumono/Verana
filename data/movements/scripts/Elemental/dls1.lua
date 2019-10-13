dls1 = {x=31647, y=31504, z=8}

function onStepIn(cid, item, pos)

if isPlayer(cid) then
	if item.uid == 12985 then
		if getPlayerStorageValue(cid,12986) == 1 then
			doSendMagicEffect({x=31647, y=31504, z=8},12)
		elseif getPlayerStorageValue(cid,12986) == -1 then
			doTeleportThing(cid, dls1)
			doSendMagicEffect(dls1,12)
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "You don\'t have premission.")
		end
	end
end

return 1
end