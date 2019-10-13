function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.actionid >= 42361 and item.actionid <= 42365 and getPlayerStorageValue(cid, 42361) ~= 1 then
		local reward = 0
		if item.actionid == 42361 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 2160, 5)
		elseif item.actionid == 42362 then
			reward = doCreateItemEx(7406,1)
		elseif item.actionid == 42363 then
			reward = doCreateItemEx(7380,1)
		elseif item.actionid == 42364 then
			reward = doCreateItemEx(7392,1)
		elseif item.actionid == 42365 then
			reward = doCreateItemEx(7342,1)
			doAddContainerItem(reward, 7850, 100)
			doAddContainerItem(reward, 7838, 100)
                        doAddContainerItem(reward, 7839, 100)
                        doAddContainerItem(reward, 7840, 100)
		end
		if doPlayerAddItemEx(cid, reward, 0) == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You found ' .. getItemName(getThing(reward).uid) .. '.')
			setPlayerStorageValue(cid, 42361, 1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You do not have enought capacity or place in backpack.')
		end
	elseif item.actionid >= 42371 and item.actionid <= 42375 and getPlayerStorageValue(cid, 42371) ~= 1 then
		local reward = 0
		if item.actionid == 42371 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 2160, 10)
		elseif item.actionid == 42372 then
			reward = doCreateItemEx(7384,1)
		elseif item.actionid == 42373 then
			reward = doCreateItemEx(7389,1)
		elseif item.actionid == 42374 then
			reward = doCreateItemEx(7415,1)
		elseif item.actionid == 42375 then
			reward = doCreateItemEx(8849,1)
		end
		if doPlayerAddItemEx(cid, reward, 0) == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You found ' .. getItemName(getThing(reward).uid) .. '.')
			setPlayerStorageValue(cid, 42371, 1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You do not have enought capacity or place in backpack.')
		end
	elseif item.actionid >= 42381 and item.actionid <= 42385 and getPlayerStorageValue(cid, 42381) ~= 1 then
		local reward = 0
		if item.actionid == 42381 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 2160, 15)
		elseif item.actionid == 42382 then
			reward = doCreateItemEx(7390,1)
		elseif item.actionid == 42383 then
			reward = doCreateItemEx(7434,1)
		elseif item.actionid == 42384 then
			reward = doCreateItemEx(7429,1)
		elseif item.actionid == 42385 then
			reward = doCreateItemEx(8850,1)
		end
		if doPlayerAddItemEx(cid, reward, 0) == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You found ' .. getItemName(getThing(reward).uid) .. '.')
			setPlayerStorageValue(cid, 42381, 1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You do not have enought capacity or place in backpack.')
		end
        elseif item.actionid >= 42391 and item.actionid <= 42395 and getPlayerStorageValue(cid, 42391) ~= 1 then
		local reward = 0
		if item.actionid == 42391 then
			reward = doCreateItemEx(1990,1)
			doAddContainerItem(reward, 2160, 20)
		elseif item.actionid == 42392 then
			reward = doCreateItemEx(7417,1)
		elseif item.actionid == 42393 then
			reward = doCreateItemEx(7435,1)
		elseif item.actionid == 42394 then
			reward = doCreateItemEx(7431,1)
		elseif item.actionid == 42395 then
			reward = doCreateItemEx(8852,1)
		end
		if doPlayerAddItemEx(cid, reward, 0) == RETURNVALUE_NOERROR then
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You found ' .. getItemName(getThing(reward).uid) .. '.')
			setPlayerStorageValue(cid, 42391, 1)
		else
			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,'You do not have enought capacity or place in backpack.')
		end
	end
	return TRUE
end