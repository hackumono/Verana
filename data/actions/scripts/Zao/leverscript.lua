function onUse(cid, item, fromPosition, itemEx, toPosition)

  if item.itemid == 1946 then
    return doTransformItem(item.uid, item.itemid - 1)
	elseif(item.actionid == 23232) and item.itemid == 1945 then
       doTeleportThing(getTopCreature({x=33085,y=31064,z=13}).uid, {x=33089,y=31094,z=2})
	elseif (item.actionid == 23233) and item.itemid == 1945 then
		doTeleportThing(getTopCreature({x=33089,y=31094,z=2}).uid, {x=33085,y=31064,z=13})
	end
	  doTransformItem(item.uid, item.itemid + 1)
	return true
end