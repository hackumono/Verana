function onUse(cid, item, frompos, item2, topos)

if item.uid == 13108 then
	if getPlayerStorageValue(cid,13110) == -1 then
		doPlayerAddItem(cid,10305,1)
		setPlayerStorageValue(cid,13110,1)
		doPlayerSendTextMessage(cid,22,"You have found a Holy icon.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end		

if item.uid == 13109 then
	if getPlayerStorageValue(cid,13111) == -1 then
		doPlayerAddItem(cid,10719,1)
		setPlayerStorageValue(cid,13111,1)
		doPlayerSendTextMessage(cid,22,"You have found a Golden Amulet.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 13110 then
	if getPlayerStorageValue(cid,13112) == -1 then
		doPlayerAddItem(cid,10552,1)
		setPlayerStorageValue(cid,13112,1)
		doPlayerSendTextMessage(cid,22,"You have found a Fiery hearts.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 13111 then
	if getPlayerStorageValue(cid,13113) == -1 then
		doPlayerAddItem(cid,11144,1)
		setPlayerStorageValue(cid,13113,1)
		doPlayerSendTextMessage(cid,22,"You have found a Nightmare doll.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end	

if item.uid == 13112 then
	if getPlayerStorageValue(cid,13114) == -1 then
		doPlayerAddItem(cid,10136,1)
		setPlayerStorageValue(cid,13114,1)
		doPlayerSendTextMessage(cid,22,"You have found Odznaczenie 1 of 6 ;) (Po zdobyciu wszystkich mozna zglosic sie po nagrode do Gm'a).")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 13113 then
	if getPlayerStorageValue(cid,13115) == -1 then
		local container = doCreateItemEx(10518, 1)
		doAddContainerItem(container, 2160, 15)
		doPlayerAddItemEx(cid, container)
		setPlayerStorageValue(cid,13115,1)
		doPlayerSendTextMessage(cid,22,"You have found a Demon backpack.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

return true
end