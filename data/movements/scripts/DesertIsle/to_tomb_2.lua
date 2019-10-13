to_tomb_2 = {x=32640, y=32133, z=8} --- pos to tp

function onStepIn(cid, item, pos)
	doTeleportThing(cid, to_tomb_2, TRUE)
	doSendMagicEffect(to_tomb_2, 10)
end