 function onUse(cid, item, frompos, item2, topos)

if item.uid == 7167 then
queststatus = getPlayerStorageValue(cid,5060)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You have found Odznaczenie 1 of 6 ;) (Po zdobyciu wszystkich mozna zglosic sie po nagrode do Gm'a).")
doPlayerAddItem(cid, 10138,1)
setPlayerStorageValue(cid,5060,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end

return 1
else
return 0
end
end