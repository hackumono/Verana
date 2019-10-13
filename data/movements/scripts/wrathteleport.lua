local back = {x=33090, y=31198, z=8}
local draken = {x=33101, y=31103, z=12}
local safe = {x=33219, y=31050, z=9}
local zao = {x=33144, y=31231, z=6}
local zlak = {x=33084, y=31202, z=8}

function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
    if item.actionid == 7300 then
		doTeleportThing(cid,safe)
		doSendMagicEffect(getCreaturePosition(cid),47)
	elseif item.actionid == 7301 then
		doTeleportThing(cid,zao)
		doSendMagicEffect(getCreaturePosition(cid),47)
	elseif item.actionid == 7302 then
		doTeleportThing(cid,zlak)
		doSendMagicEffect(getCreaturePosition(cid),47)
     elseif item.actionid == 7304 then
		doTeleportThing(cid,draken)
		doSendMagicEffect(getCreaturePosition(cid),47)
      elseif item.actionid == 7305 then
		doTeleportThing(cid,back)
		doSendMagicEffect(getCreaturePosition(cid),47)
	else
		doTeleportThing(cid, fromPosition)
		doSendMagicEffect(getCreaturePosition(cid),47)
	end
end