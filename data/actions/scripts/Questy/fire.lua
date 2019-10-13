 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7890 then
queststatus = getPlayerStorageValue(cid,7890)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found fiery war axe.")
doPlayerAddItem(cid,7753,1)
setPlayerStorageValue(cid,7890,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end