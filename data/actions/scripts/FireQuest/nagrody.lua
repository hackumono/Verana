function onUse(cid, item, frompos, item2, topos)

if item.uid == 8933 then
if getPlayerStorageValue(cid,8933) == -1 then
	doPlayerAddItem(cid,8932,1) 
	setPlayerStorageValue(cid,8933,1)
	doPlayerSendTextMessage(cid,22,"You have found a Calamity.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 8934 then
if getPlayerStorageValue(cid,8933) == -1 then
	doPlayerAddItem(cid,7453,1) 
	setPlayerStorageValue(cid,8933,1)
	doPlayerSendTextMessage(cid,22,"You have found a Executioner.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 8935 then
if getPlayerStorageValue(cid,8933) == -1 then
	doPlayerAddItem(cid,2452,1) 
	setPlayerStorageValue(cid,8933,1)
	doPlayerSendTextMessage(cid,22,"You have found an Heavy Mace.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 8936 then
if getPlayerStorageValue(cid,8934) == -1 then
	doPlayerAddItem(cid,2539,1) 
	setPlayerStorageValue(cid,8934,1)
	doPlayerSendTextMessage(cid,22,"You have found a Phoenix Shield.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 8937 then
if getPlayerStorageValue(cid,8934) == -1 then
	doPlayerAddItem(cid,2542,1) 
	setPlayerStorageValue(cid,8934,1)
	doPlayerSendTextMessage(cid,22,"You have found a Tempest Shield.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

return 1
end