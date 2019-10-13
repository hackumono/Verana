newPositionGo2  = {x=32602, y=32338, z=8}

function onUse(cid, item, frompos, item2, topos)

	if item.uid == 8906 then
		doTeleportThing(cid, newPositionGo2)
		doSendMagicEffect(newPositionGo2,12)
		setPlayerStorageValue(cid,86305,1)
      end

return 1
end