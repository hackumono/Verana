exit = {x=32623, y=32312, z=7} --- pos to tp

function onStepIn(cid, item, pos)
	doTeleportThing(cid, exit, TRUE)
	doSendMagicEffect(exit, 10)
	setPlayerStorageValue(cid,8636,-1)
	setPlayerStorageValue(cid,86209,2)
end