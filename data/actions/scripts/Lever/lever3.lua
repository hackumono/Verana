function onUse(cid, item, frompos, item2, topos)
wall = {x=33171, y=31897, z=8, stackpos=0}
local getwall = getThingfromPos(wall) 
if item.uid == 17568 and item.itemid == 1945 then
   doTransformItem(item.uid,item.itemid+1)
   doTransformItem(getwall.uid,5770)
elseif item.uid == 17568 and item.itemid == 1946 then


   doTransformItem(item.uid,item.itemid-1)
   doTransformItem(getwall.uid,493)
bplayer = {x=33171, y=31897, z=8, stackpos=253}
bplayer2 = getThingfromPos(bplayer)
if isCreature(bplayer2.uid) == TRUE then
   doMoveCreature(bplayer2.uid,WEST)
end
	end
   return 1
end