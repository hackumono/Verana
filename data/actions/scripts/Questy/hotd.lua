 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7183 then
queststatus = getPlayerStorageValue(cid,5076)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Helmet of the deep.")
doPlayerAddItem(cid, 5461,1)
setPlayerStorageValue(cid,5076,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end