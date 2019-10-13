to_tomb_1 = {x=32583, y=32124, z=8} --- pos to tp

function onStepIn(cid, item, pos)
	doTeleportThing(cid, to_tomb_1, TRUE)
	doSendMagicEffect(to_tomb_1, 10)
end