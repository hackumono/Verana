function onUse(cid, item, frompos, item2, topos)
wall = {x=33789, y=32145, z=10, stackpos=0}
local getwall = getThingfromPos(wall) 
if item.uid == 10254 and item.itemid == 1945 then
   doTransformItem(item.uid,item.itemid+1)
   doTransformItem(getwall.uid,5770)
elseif item.uid == 10254 and item.itemid == 1946 then


   doTransformItem(item.uid,item.itemid-1)
   doTransformItem(getwall.uid,598)
bplayer = {x=33789, y=32145, z=10, stackpos=253}
bplayer2 = getThingfromPos(bplayer)
if isCreature(bplayer2.uid) == TRUE then
   doMoveCreature(bplayer2.uid,WEST)
end
	end
   return 1
end