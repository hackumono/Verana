function onUse(cid, item, frompos, item2, topos)

if item.uid == 7193 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8887,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found a Frozen Plate.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7194 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8884,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found a Oceanborn Leviathan Armor.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7195 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8879,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found an Voltage Armor.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7196 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8880,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found an Swamplair Armor.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7197 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8878,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found a Crystaline Armor.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7198 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8885,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found a Divine Plate.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7199 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8877,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found a Lavos Armor.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7222 then
if getPlayerStorageValue(cid,5085) == -1 then
	doPlayerAddItem(cid,8886,1) 
	setPlayerStorageValue(cid,5085,1)
	doPlayerSendTextMessage(cid,22,"You have found a Molten Plate.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

return 1
end