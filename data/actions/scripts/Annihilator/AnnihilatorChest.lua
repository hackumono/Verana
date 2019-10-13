function onUse(cid, item, frompos, item2, topos)

if item.uid == 49111 then
	if getPlayerStorageValue(cid,49111) == -1 then
		doPlayerAddItem(cid,2494,1)
		setPlayerStorageValue(cid,49111,1)
		doPlayerSendTextMessage(cid,22,"You have found a Demon Armor.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end		

if item.uid == 49112 then
	if getPlayerStorageValue(cid,49111) == -1 then
		doPlayerAddItem(cid,2400,1)
		setPlayerStorageValue(cid,49111,1)
		doPlayerSendTextMessage(cid,22,"You have found a Magic Sword.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 49113 then
	if getPlayerStorageValue(cid,49111) == -1 then
		doPlayerAddItem(cid,2431,1)
		setPlayerStorageValue(cid,49111,1)
		doPlayerSendTextMessage(cid,22,"You have found a Stonecutter Axe.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 49114 then
	if getPlayerStorageValue(cid,49111) == -1 then
                doPlayerAddItem(cid,2112,1)
		setPlayerStorageValue(cid,49111,1)
		doPlayerSendTextMessage(cid,22,"You have found a Teddy Bear.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end	

return true
end