 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7173 then
queststatus = getPlayerStorageValue(cid,5066)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Axe.")
doPlayerAddItem(cid, 2386,1)
setPlayerStorageValue(cid,5066,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end