 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7888 then
queststatus = getPlayerStorageValue(cid,7888)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found icy war axe.")
doPlayerAddItem(cid,7772,1)
setPlayerStorageValue(cid,7888,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end