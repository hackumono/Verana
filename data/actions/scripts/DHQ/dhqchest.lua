function onUse(cid, item, frompos, item2, topos)

if item.uid == 13535 then
	if getPlayerStorageValue(cid,60746) == -1 then
		doPlayerAddItem(cid,2493,1)
		setPlayerStorageValue(cid,60746,1)
		doPlayerSendTextMessage(cid,22,"You have found a Demon Helmet.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end	

if item.uid == 13536 then
	if getPlayerStorageValue(cid,60747) == -1 then
		doPlayerAddItem(cid,2645,1)
		setPlayerStorageValue(cid,60747,1)
		doPlayerSendTextMessage(cid,22,"You have found a Steel Boots.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

if item.uid == 13537 then
	if getPlayerStorageValue(cid,60748) == -1 then
		doPlayerAddItem(cid,2520,1)
		setPlayerStorageValue(cid,60748,1)
		doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
	else
		doPlayerSendTextMessage(cid,22,"It is empty.")
	end
end

return true
end