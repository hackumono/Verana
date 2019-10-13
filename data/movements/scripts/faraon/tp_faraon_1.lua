faraon_1 = {x=32574, y=32076, z=12}
dipthrah = {x=32574, y=32068, z=12}
statue2 = {x=32574, y=32084, z=12, stackpos=1}

function onStepIn(cid, item, pos)
	doTeleportThing(cid, faraon_1, TRUE)
	doSendMagicEffect(faraon_1, 10)
	setPlayerStorageValue(cid,8618,1)
	doCreateItem(1550,1,statue2)
	doSummonCreature("Dipthrah", dipthrah)
end