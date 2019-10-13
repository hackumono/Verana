from_tomb_1 = {x=32584, y=32129, z=7} --- pos to tp

function onStepIn(cid, item, pos)
	doTeleportThing(cid, from_tomb_1, TRUE)
	doSendMagicEffect(from_tomb_1, 10)
end