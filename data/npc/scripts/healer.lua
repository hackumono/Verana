local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end
	if msgcontains(msg, "heal") then
		if getCreatureCondition(cid, CONDITION_FIRE) == TRUE then
			npcHandler:say("You are burning. I will help you.", cid)
			doRemoveCondition(cid, CONDITION_FIRE)
			doSendMagicEffect(getCreaturePosition(cid), 14)
		elseif getCreatureCondition(cid, CONDITION_POISON) == TRUE then
			npcHandler:say("You are poisoned. I will help you.", cid)
			doRemoveCondition(cid, CONDITION_POISON)
			doSendMagicEffect(getCreaturePosition(cid), 13)
		elseif getCreatureHealth(cid) <= 64 then
			npcHandler:say("You are looking really bad. Let me heal your wounds.", cid)
			doCreatureAddHealth(cid, 65 - getCreatureHealth(cid))
			doSendMagicEffect(getCreaturePosition(cid), 12)
		else
			npcHandler:say("You aren't looking really bad, " .. getCreatureName(cid) .. ". I only help in cases of real emergencies. Raise your health simply by eating {food}.", cid)
		end
	end
	return TRUE
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())