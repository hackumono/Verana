local config = {
notOpen = 1945,
resetTime = 60, --minutes
wall2Position = {x=31990, y=31863, z=10, stackpos=1}
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
function resetDoor(cid)
doTransformItem(item.uid,1945)
doTransformItem(getThingFromPos(config.wall2Position).uid,1145)
end
if item.itemid == config.notOpen then
	addEvent(resetDoor,config.resetTime*60*1000,cid)
	doTransformItem(item.uid,item.itemid+1)
	doSendMagicEffect(config.wall2Position,44)
	doTransformItem(getThingFromPos(config.wall2Position).uid,1163)
	end
return true
end
