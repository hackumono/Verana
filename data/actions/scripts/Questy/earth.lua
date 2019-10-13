 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7887 then
queststatus = getPlayerStorageValue(cid,7887)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found earth war axe.")
doPlayerAddItem(cid,7863,1)
setPlayerStorageValue(cid,7887,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end