 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7165 then
queststatus = getPlayerStorageValue(cid,5058)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Mastermind Shield.")
doPlayerAddItem(cid, 2514,1)
setPlayerStorageValue(cid,5058,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end