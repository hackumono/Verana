 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7171 then
queststatus = getPlayerStorageValue(cid,5064)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Demon Shield.")
doPlayerAddItem(cid, 2520,1)
setPlayerStorageValue(cid,5064,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end