function onUse(cid, item, frompos, item2, topos)
local gatepos = {x=33756, y=32173, z=10, stackpos=1}
local getgate = getThingfromPos(gatepos)

if item.uid == 10204 and item.itemid == 1945 and getgate.itemid == 6289 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 10204 and item.itemid == 1946 and getgate.itemid == 0 then
doCreateItem(6289,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry not possible.")
end
  return 1
  end