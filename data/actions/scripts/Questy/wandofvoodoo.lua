 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7153 then
queststatus = getPlayerStorageValue(cid,5046)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Wand of Voodoo.")
doPlayerAddItem(cid,8922,1)
setPlayerStorageValue(cid,5046,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end