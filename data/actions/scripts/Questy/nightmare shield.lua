 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7123 then
queststatus = getPlayerStorageValue(cid,5010)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Nightamre Shield.")
doPlayerAddItem(cid,6391,1)
setPlayerStorageValue(cid,5010,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end