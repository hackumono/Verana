function onStepIn(cid, item, pos)

local kurwa = {x=32424, y=32742, z=7}
local kuzwa = {x=32548, y=32757, z=7}
local kita = {x=32491, y=32804, z=7}
local nao = {x=32603, y=32839, z=7}
local anka = {x=32599, y=32811, z=7}
local jano = {x=32516, y=32859, z=7}
local juno = {x=32566, y=32867, z=7}

	if item.actionid == 51191 then
		doTeleportThing(cid,kurwa)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 51192 then
		doTeleportThing(cid,kuzwa)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 51193 then
		doTeleportThing(cid,kita)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 51194 then
		doTeleportThing(cid,nao)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 51195 then
		doTeleportThing(cid,anka)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 51196 then
		doTeleportThing(cid,jano)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 51197 then
		doTeleportThing(cid,juno)
		doSendMagicEffect(getCreaturePosition(cid),10)
        end
    return 1
end 
end
end
end
end
end
end