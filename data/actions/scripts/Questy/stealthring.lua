 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7142 then
queststatus = getPlayerStorageValue(cid,5038)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Stealth ring.")
doPlayerAddItem(cid,2202,3)
setPlayerStorageValue(cid,5038,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end