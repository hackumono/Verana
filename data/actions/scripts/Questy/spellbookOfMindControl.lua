 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7179 then
queststatus = getPlayerStorageValue(cid,5072)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Spellbook of Mind Control.")
doPlayerAddItem(cid, 8902,1)
setPlayerStorageValue(cid,5072,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end