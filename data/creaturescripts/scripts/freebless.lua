local freeBlessMaxLevel = 30

function onLogin(cid)
if(getPlayerLevel(cid) <= freeBlessMaxLevel and not getPlayerBlessing(cid,1)) then
for b=1, 5 do
doPlayerAddBlessing(cid, b)
end
doPlayerSendTextMessage(cid,26,"You have received free blessings because you are under level 30.")
doSendMagicEffect(getThingPosition(cid), CONST_ME_HOLYDAMAGE)
end
return true
end
