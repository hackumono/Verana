 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7126 then
queststatus = getPlayerStorageValue(cid,5021)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found ScullCracker Armor.")
doPlayerAddItem(cid,8889,1)
setPlayerStorageValue(cid,5021,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end