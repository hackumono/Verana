 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7164 then
queststatus = getPlayerStorageValue(cid,5057)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Golden Legs.")
doPlayerAddItem(cid, 2470,1)
setPlayerStorageValue(cid,5057,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end