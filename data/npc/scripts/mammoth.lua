local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                        npcHandler:onThink()                        end


function greetCallback(cid)

local vip = getPlayerStorageValue(cid,92172)

	if vip <= os.time() then
		npcHandler:say('I couldn\'t travel with person which doesn\'t pay for good of our kingdoms!', cid)
		return false
	else
		return true
	end
end

-- Set the greeting callback function
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
 
npcHandler:setMessage(MESSAGE_GREET, 'Hello friend!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'We will meet again.')


npcHandler:addModule(FocusModule:new())  