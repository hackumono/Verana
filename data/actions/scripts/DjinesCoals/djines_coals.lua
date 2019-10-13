function onUse(cid, item, frompos, topos)

if item.actionid == 13145 and item.itemid == 1484 then
	doTransformItem(item.uid, item.itemid + 1)
elseif item.actionid == 13145 and item.itemid == 1485 then
	doTransformItem(item.uid, item.itemid - 1)
	if getPlayerStorageValue(cid,12961) == -1 then
		setPlayerStorageValue(cid,12961,1)
		doPlayerSendTextMessage(cid,22,"Turn on light in five chapel.")
	end
	if getPlayerStorageValue(cid,13145) == -1 then
		setPlayerStorageValue(cid,13145,1)
	end
end

if item.actionid == 13146 and item.itemid == 1484 then
	doTransformItem(item.uid, item.itemid + 1)
elseif item.actionid == 13146 and item.itemid == 1485 then
	doTransformItem(item.uid, item.itemid - 1)
	if getPlayerStorageValue(cid,12961) == -1 then
		setPlayerStorageValue(cid,12961,1)
		doPlayerSendTextMessage(cid,22,"Turn on light in five chapel.")
	end
	if getPlayerStorageValue(cid,13146) == -1 then
		setPlayerStorageValue(cid,13146,1)
	end
end

if item.actionid == 13147 and item.itemid == 1484 then
	doTransformItem(item.uid, item.itemid + 1)
elseif item.actionid == 13147 and item.itemid == 1485 then
	doTransformItem(item.uid, item.itemid - 1)
	if getPlayerStorageValue(cid,12961) == -1 then
		setPlayerStorageValue(cid,12961,1)
		doPlayerSendTextMessage(cid,22,"Turn on light in five chapel.")
	end
	if getPlayerStorageValue(cid,13147) == -1 then
		setPlayerStorageValue(cid,13147,1)
	end
end

if item.actionid == 13148 and item.itemid == 1484 then
	doTransformItem(item.uid, item.itemid + 1)
elseif item.actionid == 13148 and item.itemid == 1485 then
	doTransformItem(item.uid, item.itemid - 1)
	if getPlayerStorageValue(cid,12961) == -1 then
		setPlayerStorageValue(cid,12961,1)
		doPlayerSendTextMessage(cid,22,"Turn on light in five chapel.")
	end
	if getPlayerStorageValue(cid,13148) == -1 then
		setPlayerStorageValue(cid,13148,1)
	end
end

if item.actionid == 13149 and item.itemid == 1484 then
	doTransformItem(item.uid, item.itemid + 1)
elseif item.actionid == 13149 and item.itemid == 1485 then
	doTransformItem(item.uid, item.itemid - 1)
	if getPlayerStorageValue(cid,12961) == -1 then
		setPlayerStorageValue(cid,12961,1)
		doPlayerSendTextMessage(cid,22,"Turn on light in five chapel.")
	end
	if getPlayerStorageValue(cid,13149) == -1 then
		setPlayerStorageValue(cid,13149,1)
	end
end

return 1
end