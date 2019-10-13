local LEVEL = 8

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local talkState = {}
local vocation = {}
local town = {}
local destination = {}

function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)                       npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                                              npcHandler:onThink() end

function greetCallback(cid)
    if(getPlayerLevel(cid) < LEVEL) then
        npcHandler:say('CHILD! COME BACK WHEN YOU HAVE GROWN UP!', cid)
        return false
    elseif getPlayerVocation(cid) > 0 then
                npcHandler:say("YOU ALREADY HAVE A VOCATION!", cid)
                return false
        else
                local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
                talkState[talkUser] = 0
        return true
    end
end

function creatureSayCallback(cid, type, msg)

        if(not npcHandler:isFocused(cid)) then
                return false
        end
        
        local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
        if msgcontains(msg, 'yes') and talkState[talkUser] == 0 then
                if isPremium(cid) == TRUE then
                        npcHandler:say("IN WHICH TOWN DO YOU WANT TO LIVE: {Thais} OR {Carlin}?", cid)
                else
                        npcHandler:say("IN WHICH TOWN DO YOU WANT TO LIVE: {Thais} OR {Carlin}?", cid)
                end
                talkState[talkUser] = 1
        elseif talkState[talkUser] == 0 then
                npcHandler:unGreet(cid)
        elseif msgcontains(msg, 'thais') and talkState[talkUser] == 1 then
                npcHandler:say("In Thais! AND WHAT PROFESSION HAVE YOU CHOSEN: {KNIGHT}, {PALADIN}, {SORCERER}, OR {DRUID}?", cid)
                talkState[talkUser] = 2
                town[talkUser] = 1
                destination[talkUser] = {x=32369, y=32241, z=7}
        elseif msgcontains(msg, 'carlin') and talkState[talkUser] == 1 then
                npcHandler:say("In Carlin! AND WHAT PROFESSION HAVE YOU CHOSEN: {KNIGHT}, {PALADIN}, {SORCERER}, OR {DRUID}?", cid)
                talkState[talkUser] = 2
                town[talkUser] = 3
                destination[talkUser] = {x=32360, y=31782, z=7}
        elseif talkState[talkUser] == 1 then
                if isPremium(cid) == TRUE then
                                npcHandler:say("{Thais} OR {Carlin}?", cid)
                else
                        npcHandler:say("{Thais} OR {Carlin}?", cid)
                end
                talkState[talkUser] = 1
        elseif msgcontains(msg, 'sorcerer') and talkState[talkUser] == 2 then
                npcHandler:say("A SORCERER! ARE YOU SURE? THIS DECISION IS IRREVERSIBLE!", cid)
                talkState[talkUser] = 3
                vocation[talkUser] = 1
        elseif msgcontains(msg, 'druid') and talkState[talkUser] == 2 then
                npcHandler:say("A DRUID! ARE YOU SURE? THIS DECISION IS IRREVERSIBLE!", cid)
                talkState[talkUser] = 3
                vocation[talkUser] = 2
        elseif msgcontains(msg, 'paladin') and talkState[talkUser] == 2 then
                npcHandler:say("A PALADIN! ARE YOU SURE? THIS DECISION IS IRREVERSIBLE!", cid)
                talkState[talkUser] = 3
                vocation[talkUser] = 3
        elseif msgcontains(msg, 'knight') and talkState[talkUser] == 2 then
                npcHandler:say("A KNIGHT! ARE YOU SURE? THIS DECISION IS IRREVERSIBLE!", cid)
                talkState[talkUser] = 3
                vocation[talkUser] = 4
        elseif talkState[talkUser] == 2 then
                npcHandler:say("{KNIGHT}, {PALADIN}, {SORCERER}, OR {DRUID}?", cid)
                talkState[talkUser] = 2
        elseif msgcontains(msg, 'yes') and talkState[talkUser] == 3 then
                npcHandler:say("SO BE IT!", cid)
                talkState[talkUser] = 0
                doPlayerSetVocation(cid, vocation[talkUser])
                doPlayerSetTown(cid, town[talkUser])
			doPlayerAddItem(cid, 8974, 1)
                npcHandler:releaseFocus(cid)
                doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
                doTeleportThing(cid, destination[talkUser])
                doSendMagicEffect(destination[talkUser], CONST_ME_TELEPORT)
        elseif talkState[talkUser] == 3 then
                npcHandler:unGreet(cid)
        end
        return TRUE
end

npcHandler:setMessage(MESSAGE_GREET, '|PLAYERNAME|, ARE YOU PREPARED TO FACE YOUR DESTINY?')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'COME BACK WHEN YOU ARE PREPARED TO FACE YOUR DESTINY!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'COME BACK WHEN YOU ARE PREPARED TO FACE YOUR DESTINY!')

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())