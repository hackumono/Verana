 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7229 then
queststatus = getPlayerStorageValue(cid,5092)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found a Demon Shield.")
doPlayerAddItem(cid,2520,1)
setPlayerStorageValue(cid,5092,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end