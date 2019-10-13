function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 6357 then
   		queststatus = getPlayerStorageValue(cid,6357)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have saved the Zugu Room.")
   			setPlayerStorageValue(cid,6357,1)
   		else
   			doPlayerSendTextMessage(cid,22,"This seal was saved.")
   		end
   	elseif item.uid == 6358 then
   		queststatus = getPlayerStorageValue(cid,6358)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have saved the Usher Room.")
   			setPlayerStorageValue(cid,6358,1)
   		else
   			doPlayerSendTextMessage(cid,22,"This seal was saved.")
   		end
   	elseif item.uid == 6359 then
   		queststatus = getPlayerStorageValue(cid,6359)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have saved Golgi Room.")
   			setPlayerStorageValue(cid,6359,1)
   		else
   			doPlayerSendTextMessage(cid,22,"This seal was saved.")
   		end
   	elseif item.uid == 6360 then
   		queststatus = getPlayerStorageValue(cid,6360)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have saved Anni Room.")
   			setPlayerStorageValue(cid,6360,1)
   		else
   			doPlayerSendTextMessage(cid,22,"This seal was saved.")
   		end
     elseif item.uid == 6361 then
   		queststatus = getPlayerStorageValue(cid,6361)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have saved Madar Room.")
   			setPlayerStorageValue(cid,6361,1)
   		else
   			doPlayerSendTextMessage(cid,22,"This seal was saved.")
   		end
   	elseif item.uid == 6362 then
   		queststatus = getPlayerStorageValue(cid,6362)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have saved Latri Room.")
   			setPlayerStorageValue(cid,6362,1)
   		else
   			doPlayerSendTextMessage(cid,22,"This seal was saved.")
   		end
      elseif item.uid == 6366 then
   		queststatus = getPlayerStorageValue(cid,6366)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have saved Helli Room.")
   			setPlayerStorageValue(cid,6366,1)
   		else
   			doPlayerSendTextMessage(cid,22,"This seal was saved.")
   	   	
   		end
	else
		return 0
   	end

   	return 1
end
