-- Script by Magic 
function onSay(cid, words, param) 
if exhaustion.check(cid, 30032) then
    return FALSE
end
exhaustion.set(cid, 30032, 10)
-- \/ Panel konfiguracji skryptu \/
local stare = 10022 
local nowe = 9933 
local pozycja = getPlayerPosition(cid) 
local tekst = "Firewalkers" -- Wpisz tekst
local tekst1 = "Firewalkery zostaly odnowione !" -- Co ma pisac jak nie ma softow
local tekst2 = "Nie masz kasy..." -- Co ma pisac jak nie ma kasy
-- /\ Panel konfiguracji skryptu /\ 
if doPlayerRemoveMoney(cid,10000) == TRUE then
if doPlayerRemoveItem(cid,stare,1) == TRUE and doPlayerAddItem(cid,nowe,1) == TRUE then 
doSendAnimatedText(pozycja,firewalkers,198) 
else 
doPlayerSendTextMessage(cid,22,tekst1) 
end 
else 
doPlayerSendTextMessage(cid,22,tekst2) 
return 1 
end 
end
