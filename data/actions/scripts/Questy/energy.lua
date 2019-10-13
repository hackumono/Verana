 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7889 then
queststatus = getPlayerStorageValue(cid,7889)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found energy war axe.")
doPlayerAddItem(cid,7878,1)
setPlayerStorageValue(cid,7889,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end