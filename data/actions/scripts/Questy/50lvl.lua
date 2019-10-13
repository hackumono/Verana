function onUse(cid, item, frompos, item2, topos)
if item.uid == 3006 then
queststatus = getPlayerStorageValue(cid,3006)
if getPlayerLevel(cid) >= 50 then
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found 8cc!.")
doPlayerAddItem(cid,2160,8 )
setPlayerStorageValue(cid,3006,1)
else
doPlayerSendTextMessage(cid,22,"Juz raz wykonales tego questa!")
end
else
doPlayerSendTextMessage(cid,22,'Nie mozesz wziasc, bo nie masz 50 poziomu.')
return 0
end
return 1
end 
end