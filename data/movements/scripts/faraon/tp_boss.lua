boss_1 = {x=32577, y=32497, z=10}
syzam = {x=32571, y=32497, z=10}
statue9 = {x=32582, y=32497, z=10, stackpos=1}

function onStepIn(cid, item, pos)
	doTeleportThing(cid, boss_1, TRUE)
	doSendMagicEffect(boss_1, 10)
	doCreateItem(8835,1,statue9)
	doSummonCreature("Syzam", syzam)
end