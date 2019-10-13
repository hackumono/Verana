function onUse(cid, item, frompos, item2, topos)

if item.uid == 58267 then
if getPlayerStorageValue(cid,102504) == -1 then
	doPlayerAddItem(cid,9778,1) 
	setPlayerStorageValue(cid,102504,1)
	doPlayerSendTextMessage(cid,22,"You have found an Yalahari Mask.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 58268 then
if getPlayerStorageValue(cid,102504) == -1 then
	doPlayerAddItem(cid,9776,1) 
	setPlayerStorageValue(cid,102504,1)
	doPlayerSendTextMessage(cid,22,"You have found an Yalahari Armor.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 58269 then
if getPlayerStorageValue(cid,102504) == -1 then
	doPlayerAddItem(cid,9777,1) 
	setPlayerStorageValue(cid,102504,1)
	doPlayerSendTextMessage(cid,22,"You have found an Yalahari Leg Piece.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

return 1
end