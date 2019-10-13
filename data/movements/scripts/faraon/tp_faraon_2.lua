faraon_2 = {x=32657, y=32177, z=11}
thalas = {x=32657, y=32184, z=11}
statue3 = {x=32657, y=32164, z=11, stackpos=1}

function onStepIn(cid, item, pos)
	doTeleportThing(cid, faraon_2, TRUE)
	doSendMagicEffect(faraon_2, 10)
	doCreateItem(1551,1,statue3)
	doSummonCreature("Thalas", thalas)
end