local config = {
notOpen = 1945,
stoneID = 1285,
block1Position = {x=31986, y=31868, z=10,stackpos=1},
block2Position = {x=31986, y=31869, z=10,stackpos=1},
block3Position = {x=31986, y=31870, z=10,stackpos=1},
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
function resetFirst(cid)
doTransformItem(item.uid,1945)
doCreateItem(config.stoneID,1,config.block1Position)
end
function resetSecond(cid)
doTransformItem(item.uid,1945)
doCreateItem(config.stoneID,1,config.block2Position)
end
function resetThird(cid)
doTransformItem(item.uid,1945)
doCreateItem(config.stoneID,1,config.block3Position)
end
if item.itemid == config.notOpen then

if item.uid == 20005 then
	addEvent(resetFirst,30*60*1000,cid)
	doTransformItem(item.uid,item.itemid+1)
	doSendMagicEffect(config.block1Position,44)
	doRemoveItem(getThingFromPos(config.block1Position).uid,1)
elseif item.uid == 20006 then
	addEvent(resetSecond,30*60*1000,cid)
	doTransformItem(item.uid,item.itemid+1)
	doSendMagicEffect(config.block2Position,44)
	doRemoveItem(getThingFromPos(config.block2Position).uid,1)
elseif item.uid == 20007 then
	addEvent(resetThird,30*60*1000,cid)
	doTransformItem(item.uid,item.itemid+1)
	doSendMagicEffect(config.block3Position,44)
	doRemoveItem(getThingFromPos(config.block3Position).uid,1)
	end
end
return true
end
