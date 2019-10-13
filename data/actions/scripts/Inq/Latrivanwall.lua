function onUse(cid, item, frompos, item2, topos)
 
	local switchUniqueID = 12616 -- uniqueID of switch
	local switchID = 1945
	local switch2ID = 1946
	local itemID = 5527
	local itempos = {x=33297, y=31759, z=13, stackpos=1} 
	local wallpos = {x=33301, y=31760, z=13, stackpos=1}
 
	local playername = getPlayerName(cid)
	local getitem = getThingfromPos(itempos)
	local wallchk = getThingfromPos(wallpos)
 
	if item.uid == switchUniqueID and item.itemid == switchID and getitem.itemid == itemID and wallchk.itemid == 1528 then
			doSendMagicEffect(itempos,10)
			doSendMagicEffect(wallchk,10)
			doRemoveItem(getitem.uid,1)
			doRemoveItem(wallchk.uid,1)
			doTransformItem(item.uid,item.itemid+1)
			addEvent(onTimer5, 2*60*1000)
	elseif item.uid == switchUniqueID and item.itemid == switch2ID then
			doTransformItem(item.uid,item.itemid-1)
	else
			doPlayerSendCancel(cid,"You need to place the corpse of the slain demon lord.")
end
	return 1
end
 
 
function onTimer5()
 
wallnewpos = {x=33301, y=31760, z=13} 
		doCreateItem(1528,1,wallnewpos)
end