function onAddItem(moveitem, tileitem, position, cid)
text2 = "Item was accepted!"

if tileitem.uid == 13100 then
	if tileitem.itemid == 1485 and moveitem.itemid == 9690 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13100, 2)
		doPlayerSendTextMessage(cid,21,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
elseif tileitem.uid == 13101 then
	if tileitem.itemid == 1485 and moveitem.itemid == 5942 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13101, 2)
		doPlayerSendTextMessage(cid,20,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
elseif tileitem.uid == 13102 then
	if tileitem.itemid == 1485 and moveitem.itemid == 2235 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13102, 2)
		doPlayerSendTextMessage(cid,20,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
elseif tileitem.uid == 13103 then
	if tileitem.itemid == 1485 and moveitem.itemid == 5906 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13103, 2)
		doPlayerSendTextMessage(cid,20,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
elseif tileitem.uid == 13104 then
	if tileitem.itemid == 1485 and moveitem.itemid == 2173 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13104, 2)
		doPlayerSendTextMessage(cid,20,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
elseif tileitem.uid == 13105 then
	if tileitem.itemid == 1485 and moveitem.itemid == 1976 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13106, 2)
		doPlayerSendTextMessage(cid,20,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
elseif tileitem.uid == 13106 then
	if tileitem.itemid == 1485 and moveitem.itemid == 7290 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13105, 2)
		doPlayerSendTextMessage(cid,20,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
elseif tileitem.uid == 13107 then
	if tileitem.itemid == 1485 and moveitem.itemid == 5461 then 
		doRemoveItem(moveitem.uid,1)
		setPlayerStorageValue(cid, 13107, 2)
		doPlayerSendTextMessage(cid,20,text2)
		doSendMagicEffect(position,CONST_ME_MAGIC_BLUE)
	end
end
return 1
end