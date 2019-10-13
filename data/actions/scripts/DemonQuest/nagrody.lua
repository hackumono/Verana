function onUse(cid, item, frompos, item2, topos)

if item.uid == 7201 then
if getPlayerStorageValue(cid,7201) == -1 then
	doPlayerAddItem(cid,8903,1) 
	setPlayerStorageValue(cid,7201,1)
	doPlayerSendTextMessage(cid,22,"You have found a Spellbook of lost souls.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7202 then
if getPlayerStorageValue(cid,7201) == -1 then
	doPlayerAddItem(cid,8858,1)
	setPlayerStorageValue(cid,7201,1)
        doPlayerAddExp(cid, 250000)
	doPlayerSendTextMessage(cid,22,"You have found a Elethriel's elemental bow.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7203 then
if getPlayerStorageValue(cid,7202) == -1 then
	doPlayerAddItem(cid,8930,1) 
	setPlayerStorageValue(cid,7202,1)
	doPlayerSendTextMessage(cid,22,"You have found an emerald sword.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7204 then
if getPlayerStorageValue(cid,7202) == -1 then
	doPlayerAddItem(cid,8928,1) 
	setPlayerStorageValue(cid,7202,1)
	doPlayerSendTextMessage(cid,22,"You have found an obsidian truncheon.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7205 then
if getPlayerStorageValue(cid,7202) == -1 then
	doPlayerAddItem(cid,8924,1) 
	setPlayerStorageValue(cid,7202,1)
	doPlayerSendTextMessage(cid,22,"You have found a Hellforged Axe.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

if item.uid == 7206 then
if getPlayerStorageValue(cid,7201) == -1 then
	doPlayerAddItem(cid,11117,1) 
	setPlayerStorageValue(cid,7201,1)
	doPlayerSendTextMessage(cid,22,"You have found a Crystal Boots.")
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"Sorry not possible.")
end

return 1
end