--- Created by Darkhaos
 
function onDeath(cid, corpse, killer)
 
registerCreatureEvent(cid, "MythrilAxe")
 
local creaturename = getCreatureName(cid)
local in_pos = {x=32784, y=31420, z=15, stackpos=2} --- Position where tp is created
local checkIID = getThingfromPos(in_pos)
local to_pos = {x=32800, y=31418, z=15, stackpos=1} --- To position tp leads player
local time_to_pass = 60 -- in seconds
local tpID = 1387 --- Don't change
 
if creaturename == 'Pythius The Rotten' then
 
teleport = doCreateTeleport(tpID, to_pos, in_pos)
 
doSendMagicEffect(in_pos, CONST_ME_TELEPORT)
 
doCreatureSay(cid, "You have 60 seconds to enter the teleport before it is closed.", TALKTYPE_ORANGE_1)
addEvent(removeTeleport, (1000*time_to_pass))
 
 
end
end
 
function removeTeleport()
if getThingfromPos({x=32784, y=31420, z=15, stackpos=1}).itemid == 1387 then
doRemoveItem(getThingfromPos({x=32784, y=31420, z=15, stackpos=1}).uid,1)
doSendMagicEffect({x=32784, y=31420, z=8, stackpos=15}, CONST_ME_POFF)
return TRUE
end
end