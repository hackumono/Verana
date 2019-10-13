newPositionBack2  = {x=32629, y=32300, z=7}

function onUse(cid, item, frompos, item2, topos)

	if item.uid == 8907 then
		doTeleportThing(cid, newPositionBack2)
		doSendMagicEffect(newPositionBack2,12)
		setPlayerStorageValue(cid,86305,-1)
	end

return 1
end