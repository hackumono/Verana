local gatepos = {x=33312, y=31592, z=15, stackpos=1}

function onUse(cid, item, frompos, item2, topos)

local getgate = getThingfromPos(gatepos)

if item.uid == 15353 and item.itemid == 1945 and getgate.itemid == 1285 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 15353 and item.itemid == 1946 and getgate.itemid == 0 then
doCreateItem(1285,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end