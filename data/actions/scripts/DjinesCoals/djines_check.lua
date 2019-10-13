function onUse(cid, item, frompos, item2, topos)

--Pozycja kapliczek
local lever1 = {x=32836, y=32218, z=6, stackpos=1}
local lever2 = {x=32193, y=31774, z=7, stackpos=1}
local lever3 = {x=32745, y=31802, z=6, stackpos=1}
local lever4 = {x=32696, y=31719, z=7, stackpos=1}
local lever5 = {x=32292, y=32369, z=7, stackpos=1}


newPosition = {x=32664, y=31992, z=8} -- pozycja gdzie ma teleportowaæ

local statua1 = getThingFromPos(lever1)
local statua2 = getThingFromPos(lever2)
local statua3 = getThingFromPos(lever3)
local statua4 = getThingFromPos(lever4)
local statua5 = getThingFromPos(lever5)

if getPlayerStorageValue(cid,12961) == -1 or getPlayerStorageValue(cid,12961) == 1 or getPlayerStorageValue(cid,12961) == 2 then
if item.uid == 9900 then -- uid dziwgni 
if getPlayerStorageValue(cid,13145) == 1 and getPlayerStorageValue(cid,13146) == 1 and getPlayerStorageValue(cid,13147) == 1 and getPlayerStorageValue(cid,13148) == 1 and getPlayerStorageValue(cid,13149) == 1 then
doTransformItem(statua1.uid,1484+1)
doTransformItem(statua2.uid,1484+1)
doTransformItem(statua3.uid,1484+1)
doTransformItem(statua4.uid,1484+1)
doTransformItem(statua4.uid,1484+1)
doTeleportThing(cid, newPosition, TRUE)
doSendMagicEffect(newPosition, 10)
	if getPlayerStorageValue(cid,12961) == -1 or getPlayerStorageValue(cid,12961) == 1 then
		setPlayerStorageValue(cid,12961,2)
	end
else
doPlayerSendTextMessage(cid,22,"Kindle the fire in the temples.")
end
return 1
end
end
end