 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7246 then
queststatus = getPlayerStorageValue(cid,5109)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Twiceslicer.")
doPlayerAddItem(cid,12613,1)
setPlayerStorageValue(cid,5109,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end