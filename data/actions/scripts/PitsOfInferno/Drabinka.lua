local config = {
lit = 1946,
notLit = 1945,
stoneID = 1386,
resetTime = 30, --minutes
stonePosition = {x=33782, y=32161, z=10,stackpos=1}
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
function resetEntrance(cid)
if getThingFromPos(config.stonePosition).itemid > config.stoneID or getThingFromPos(config.stonePosition).itemid < config.stoneID then
doCreateItem(config.stoneID,1,config.stonePosition)
doTransformItem(item.uid,1945)
else
stopEvent(resetEntrance,cid)
end
end
  
if item.itemid == config.notLit then
	addEvent(resetEntrance,config.resetTime*60*1000,cid)
	doTransformItem(item.uid,item.itemid+1)
	doSendMagicEffect(config.stonePosition,44)
	doRemoveItem(getThingFromPos(config.stonePosition).uid,1)
end
return true
end
