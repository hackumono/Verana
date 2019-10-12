function onDeath(cid, corpse, killer)
registerCreatureEvent(cid, "waldek")
local creaturename = getCreatureName(cid)
--- miejsce gdzie tp zostanie utworzone
local pos1 = {x=33161, y=31400, z=7, stackpos=2}
--- gdzie teleport Cie teleportuje:
local pos2 = {x=33152, y=31403, z=7, stackpos=1}
local time_to_pass = 60 -- czas po jakim zniknie tp w sekundach
local tpID = 5023
local doEffect = CONST_ME_ENERGYHIT
local message = "Well done! Teleport appeared in the middle of room. You got one minuts to get into or it will dissapear!."
if creaturename == 'Orc Waldek' then
teleport = doCreateTeleport(tpID, pos2, pos1)
doSendMagicEffect(pos1, doEffect)
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
addEvent(removeTeleportInBossWard, (1000*time_to_pass))
end
end
function removeTeleportInBossWard()
--- miejsce gdzie tp zostanie utworzone
if getThingfromPos({x=33161, y=31400, z=7, stackpos=1}).itemid == 5023 then
--- miejsce gdzie tp zostanie utworzone
doRemoveItem(getThingfromPos({x=33161, y=31400, z=7, stackpos=1}).uid,1)
--- miejsce gdzie tp zostanie utworzone
doSendMagicEffect({x=33161, y=31400, z=7, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end