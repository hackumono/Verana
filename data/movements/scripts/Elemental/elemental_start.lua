function onStepIn(cid, item, position, fromPosition)

if getPlayerStorageValue(cid, 13100) == -1 then
	setPlayerStorageValue(cid,13100,1)
	setPlayerStorageValue(cid,13101,1)
	setPlayerStorageValue(cid,13102,1)
	setPlayerStorageValue(cid,13103,1)
	setPlayerStorageValue(cid,13104,1)
	setPlayerStorageValue(cid,13105,1)
	setPlayerStorageValue(cid,13106,1)
	setPlayerStorageValue(cid,13107,1)
	doPlayerSendTextMessage(cid,21,"Welcome on the dark side!")
end
return true
end
