local config = {
stairID = 3687,
stairPosition = {x=31980, y=31929, z=12,stackpos=1}
}
function onStepIn(cid, item, position, fromPosition)

if isPlayer(cid) == TRUE then
doCreateItem(config.stairID,1,config.stairPosition)
end
return true
end

function onStepOut(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
end
if getThingFromPos(config.stairPosition).itemid == config.stairID then
	doRemoveItem(getThingFromPos(config.stairPosition).uid,1)
	else
end
return true
end