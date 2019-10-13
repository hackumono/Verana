 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7535 then
queststatus = getPlayerStorageValue(cid,5098)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Abyss Hammer.")
doPlayerAddItem(cid,7414,1)
setPlayerStorageValue(cid,5098,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end