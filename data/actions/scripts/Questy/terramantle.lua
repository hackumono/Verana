 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7237 then
queststatus = getPlayerStorageValue(cid,5100)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Terra Mantle.")
doPlayerAddItem(cid,7884,1)
setPlayerStorageValue(cid,5100,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end