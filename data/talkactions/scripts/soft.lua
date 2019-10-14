-- Script by Magic 
function onSay(cid, words, param) 
if exhaustion.check(cid, 30032) then
    return FALSE
end
exhaustion.set(cid, 30032, 10)
-- \/ Panel konfiguracji skryptu \/
local stare = 10021 
local nowe = 6132 
local pozycja = getPlayerPosition(cid) 
local tekst = "Soft boots repaired." -- Wpisz tekst
local tekst1 = "You do not have a pair of soft boots." -- Co ma pisac jak nie ma softow
local tekst2 = "You do not have enough money." -- Co ma pisac jak nie ma kasy
-- /\ Panel konfiguracji skryptu /\
if doPlayerRemoveMoney(cid,10000) == TRUE then 
if doPlayerRemoveItem(cid,stare,1) == TRUE and doPlayerAddItem(cid,nowe,1) == TRUE then 
doSendAnimatedText(pozycja,soft,198) 
else 
doPlayerSendTextMessage(cid,22,tekst1) 
end 
else 
doPlayerSendTextMessage(cid,22,tekst2) 
return 1 
end 
end
