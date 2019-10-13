 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7254 then
queststatus = getPlayerStorageValue(cid,5117)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Bloody Edge.")
doPlayerAddItem(cid, 7416,1)
setPlayerStorageValue(cid,5117,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end