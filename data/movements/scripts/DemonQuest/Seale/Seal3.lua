function onStepIn(cid, item, frompos, item2, topos) 
local playerpos = getPlayerPosition(cid) 
local boss = {x=32668, y=32304, z=15} --wspolrzedne
local storage = 6360 --jakie storage potrzebuje
  if getPlayerStorageValue(cid, storage) > 0 then
    getThingfromPos(playerpos) 
    doTeleportThing(cid,boss) 
    doSendMagicEffect(boss,10)
  else
    doPlayerSendTextMessage(cid, 19, "Musisz wykonac room z Annihillon'em i nacisnac na statue.")
     frompos.y = frompos.y + 1
     doTeleportThing(cid, frompos)
     doSendMagicEffect(frompos, 10)
  end
return TRUE
end