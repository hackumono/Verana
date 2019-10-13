local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

-- START --
function forgehota(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end


        if getPlayerItemCount(cid,8262) >= 1 and getPlayerItemCount(cid,8263) >= 1 and getPlayerItemCount(cid,8264) >= 1 and getPlayerItemCount(cid,8265) >= 1 then
	if doPlayerRemoveItem(cid,8262,1) and doPlayerRemoveItem(cid,8263,1) and doPlayerRemoveItem(cid,8264,1) and doPlayerRemoveItem(cid,8265,1) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,8266,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
   end
end
-- END --

keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can forge Koshei's Ancient Amulet"})

local node = keywordHandler:addKeyword({'koshei\'s ancient amulet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'To achieve a koshei\'s ancient amulet you need to give me four elements of koshei\'s ancient amulet. Do you have them with you?'})
    node:addChildKeyword({'yes'}, forgehota, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

npcHandler:addModule(FocusModule:new())