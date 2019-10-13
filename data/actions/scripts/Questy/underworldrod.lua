 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7154 then
queststatus = getPlayerStorageValue(cid,5047)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Underworld Rod.")
doPlayerAddItem(cid,8910,1)
setPlayerStorageValue(cid,5047,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end