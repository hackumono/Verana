 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7186 then
queststatus = getPlayerStorageValue(cid,5079)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Tribal Mask.")
doPlayerAddItem(cid,3967,1)
setPlayerStorageValue(cid,5079,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end