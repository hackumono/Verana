local config = {
notOpen = 1945,
resetTime = 60, --minutes
wall1Position = {x=32085, y=31934, z=11,stackpos=1}
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
function resetWallx(cid)
doCreateItem(9119,1,config.wall1Position)
doTransformItem(item.uid,1945)
end
if item.itemid == config.notOpen then
	addEvent(resetWallx,config.resetTime*60*1000,cid)
	doTransformItem(item.uid,item.itemid+1)
	doSendMagicEffect(config.wall1Position,44)
	doRemoveItem(getThingFromPos(config.wall1Position).uid,1)
	end
return true
end
