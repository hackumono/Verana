function onDeath(cid, corpse, killer)
registerCreatureEvent(cid, "tirecz")
local creaturename = getCreatureName(cid)
--- miejsce gdzie tp zostanie utworzone
local pos1 = {x=33082, y=31023, z=3, stackpos=2}
--- gdzie teleport Cie teleportuje:
local pos2 = {x=33078, y=31011, z=7, stackpos=1}
local time_to_pass = 180 -- czas po jakim zniknie tp w sekundach
local tpID = 5023
local doEffect = CONST_ME_ENERGYHIT
local message = "Well done! Teleport appeared in the middle of room. You got 3 minuts to get into or it will dissapear!."
if creaturename == 'Tirecz' then
teleport = doCreateTeleport(tpID, pos2, pos1)
doSendMagicEffect(pos1, doEffect)
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
addEvent(removeTeleportInBossWard, (1000*time_to_pass))
end
end
function removeTeleportInBossWard()
--- miejsce gdzie tp zostanie utworzone
if getThingfromPos({x=33082, y=31023, z=3, stackpos=1}).itemid == 5023 then
--- miejsce gdzie tp zostanie utworzone
doRemoveItem(getThingfromPos({x=33082, y=31023, z=3, stackpos=1}).uid,1)
--- miejsce gdzie tp zostanie utworzone
doSendMagicEffect({x=33082, y=31023, z=3, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end