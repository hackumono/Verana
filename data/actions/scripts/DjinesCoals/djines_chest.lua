function onUse(cid, item, frompos, item2, topos)

if item.uid == 12961 then
	if getPlayerStorageValue(cid,12961) == 2 and getPlayerStorageValue(cid,12962) == -1 then
		doPlayerAddItem(cid,8867,1) 
		setPlayerStorageValue(cid,12962,1)
		doPlayerSendTextMessage(cid,22,"You have found a Dragon Robe.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
else
	doPlayerSendCancel(cid,"Sorry not possible.")
end

return 1
end