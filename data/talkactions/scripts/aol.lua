function onSay(cid, words, param)
if exhaustion.check(cid, 30032) then
    return FALSE
end
exhaustion.set(cid, 30032, 10)
if getPlayerMoney(cid) >= 10000 then
doPlayerRemoveMoney(cid,10000)
doPlayerAddItem(cid,2173,1)
doSendMagicEffect(getPlayerPosition(cid),12)
doPlayerSendTextMessage(cid,22,"You bought an amulet of loss.")
else
doPlayerSendCancel(cid,"You don't have enough money! You need 10000gps")
doSendMagicEffect(getPlayerPosition(cid),2)
end
return TRUE
end