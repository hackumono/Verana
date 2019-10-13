function TransformStatue1()

statue1 = {x=32359,y=32300,z=9, stackpos=1}
getstatue1 = getThingFromPos(statue1)

doTransformItem(getstatue1.uid, getstatue1.itemid-1)

end

function TransformStatue2()

statue2 = {x=32357,y=32300,z=9, stackpos=1}
getstatue2 = getThingFromPos(statue2)

doTransformItem(getstatue2.uid, getstatue2.itemid-1)

end

function onUse(cid, item, frompos, item2, topos)

statue1 = {x=32359,y=32300,z=9, stackpos=1}
getstatue1 = getThingFromPos(statue1)

statue2 = {x=32357,y=32300,z=9, stackpos=1}
getstatue2 = getThingFromPos(statue2)

if item.uid == 14179 and item.itemid == 3697 then
	doTransformItem(getstatue1.uid, getstatue1.itemid+1)
	addEvent(TransformStatue1, 5000)
	if getPlayerStorageValue(cid,14179) == -1 then
		doPlayerAddItem(cid,7435,1) 
		setPlayerStorageValue(cid,14179,1)
		doPlayerSendTextMessage(cid,22,"You have found a Impaler!.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
else
	doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 14180 and item.itemid == 3697 then
	doTransformItem(getstatue2.uid, getstatue2.itemid+1)
	addEvent(TransformStatue2, 5000)
	if getPlayerStorageValue(cid,14180) == -1 then
		doPlayerAddItem(cid,10139,1) 
		setPlayerStorageValue(cid,14180,1)
		doPlayerSendTextMessage(cid,22,"You have found Odznaczenie 1 of 6 ;) (Po zdobyciu wszystkich mozna zglosic sie po nagrode do Gm'a).")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
else
	doPlayerSendCancel(cid,"Sorry not possible.")
end


return 1
end
