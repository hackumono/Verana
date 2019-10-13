from_tomb_2 = {x=32641, y=32145, z=7} --- pos to tp

function onStepIn(cid, item, pos)
	doTeleportThing(cid, from_tomb_2, TRUE)
	doSendMagicEffect(from_tomb_2, 10)
end