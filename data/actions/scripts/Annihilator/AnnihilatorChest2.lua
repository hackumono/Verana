function onUse(cid, item, frompos, item2, topos)

if item.uid == 8005 then
	if getPlayerStorageValue(cid,8005) == -1 then
		doPlayerAddItem(cid,2499,1)
		setPlayerStorageValue(cid,8005,1)
		doPlayerSendTextMessage(cid,22,"You have found a Amazon Helmet.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end		

if item.uid == 8006 then
	if getPlayerStorageValue(cid,8005) == -1 then
		doPlayerAddItem(cid,2500,1)
		setPlayerStorageValue(cid,8005,1)
		doPlayerSendTextMessage(cid,22,"You have found a Amazon Armor.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 8007 then
	if getPlayerStorageValue(cid,8005) == -1 then
		doPlayerAddItem(cid,2537,1)
		setPlayerStorageValue(cid,8005,1)
		doPlayerSendTextMessage(cid,22,"You have found a Amazon Shield.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 8008 then
	if getPlayerStorageValue(cid,8005) == -1 then
		doPlayerAddItem(cid,2160,30)
		setPlayerStorageValue(cid,8005,1)
		doPlayerSendTextMessage(cid,22,"You have found a 30cc.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end	

return true
end