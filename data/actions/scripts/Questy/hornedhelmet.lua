 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7230 then
queststatus = getPlayerStorageValue(cid,5093)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Horned Helmet.")
doPlayerAddItem(cid,2496,1)
setPlayerStorageValue(cid,5093,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end