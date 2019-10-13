local waittime = 300 --Default (300 seconds By Proceder)
local storage = 5560

function onSay(cid, words, param, channel)
if exhaustion.get(cid, storage) == FALSE then
doPlayerSave(cid)
exhaustion.set(cid, storage, waittime)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have successfully saved your character.")
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Wait a " .. exhaustion.get(cid, storage) .. " seconds.")
end 
return TRUE
end