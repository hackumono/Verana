 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7151 then
queststatus = getPlayerStorageValue(cid,5044)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Wyvern fang.")
doPlayerAddItem(cid,7408,1)
setPlayerStorageValue(cid,5044,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end