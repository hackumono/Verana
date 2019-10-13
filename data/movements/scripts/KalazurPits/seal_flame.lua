local config = {
portal_room = {x=31984, y=31954, z=11},
treasure_room = {x=31985, y=31981, z=11},
seal_aids = {20002,20003,20004,20005,20006,20007},
treasure_aid = 20008
}
function onStepIn(cid, item, position, fromPosition)

local storageTODO = item.actionid

if not isPlayer(cid) then
return false
end
if isInArray(config.seal_aids,item.actionid) then
	if getPlayerStorageValue(cid,storageTODO) <= 0 then
		setPlayerStorageValue(cid,storageTODO, 1)
		doTeleportThing(cid,fromPosition,true)
		doSendMagicEffect(position,14)
		doSendMagicEffect(fromPosition,14)
	else
		doTeleportThing(cid,fromPosition,true)
		doSendMagicEffect(position,13)
		doSendMagicEffect(fromPosition,13)
	end
end
	
if item.actionid == config.treasure_aid then
	
local check = {getPlayerStorageValue(cid,20002),getPlayerStorageValue(cid,20003),getPlayerStorageValue(cid,20004),getPlayerStorageValue(cid,20005),getPlayerStorageValue(cid,20006), getPlayerStorageValue(cid,20007)}

		if check[1] > 0 and check[2] > 0 and check[3] > 0 and check[4] > 0 and check[5] > 0 and check[6] > 0 then 
			doTeleportThing(cid,config.treasure_room,false)
			doSendMagicEffect(position,14)
			doSendMagicEffect(config.treasure_room,14)
		else
			doTeleportThing(cid,fromPosition,false)
			doSendMagicEffect(position,13)
			doCreatureSay(cid, "You have not absorbed enough energy", TALKTYPE_ORANGE_1)
		end
end
	return true
end
	