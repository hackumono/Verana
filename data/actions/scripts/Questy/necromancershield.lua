 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7180 then
queststatus = getPlayerStorageValue(cid,5073)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Necromancer Shield.")
doPlayerAddItem(cid, 6433,1)
setPlayerStorageValue(cid,5073,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end