 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7174 then
queststatus = getPlayerStorageValue(cid,5067)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Crusader Helmet.")
doPlayerAddItem(cid, 2497,1)
setPlayerStorageValue(cid,5067,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end