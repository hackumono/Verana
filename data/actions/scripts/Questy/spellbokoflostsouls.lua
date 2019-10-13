 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7152 then
queststatus = getPlayerStorageValue(cid,5045)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Spellbook of lost souls.")
doPlayerAddItem(cid,8903,1)
setPlayerStorageValue(cid,5045,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end