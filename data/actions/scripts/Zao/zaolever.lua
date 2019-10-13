local t = {
	[4830] = {{x=32998,y=31523,z=1}, {x=32998,y=31523,z=4}},
	[4831] = {{x=32998,y=31523,z=4}, {x=32998,y=31523,z=1}},
	[4832] = {{x=33000,y=31531,z=4}, {x=33068,y=31511,z=10}},
	[4833] = {{x=33068,y=31511,z=10}, {x=33000,y=31531,z=4}}
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 1945 then
		local i = t[item.actionid]
		local v = getTopCreature(i[1]).uid
		if isPlayer(v) then
			doTeleportThing(v, i[2])
			doSendMagicEffect(i[1], CONST_ME_TELEPORT)
			doSendMagicEffect(i[2], CONST_ME_TELEPORT)
			doTransformItem(item.uid, 1946)
		else
			return doPlayerSendCancel(cid, 'Sorry, not possible.')
		end
	else
		return doTransformItem(item.uid, 1945)
	end
end