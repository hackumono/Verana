local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState= {}
 
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                    npcHandler:onThink() end
 
function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
 
    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	local cycmsg = 'Cling Clang!'
	local noimsg = 'Lil\' one no have that thing!'
	local deny	= 'Lil\' one is no sure? Okay'
	local infbolt = 4 -- change this to adjust the number of infernal bolts you want to give to the players for 1 soul orb.
 
 
--------------------MESSAGES------------------------------------------------------------------------------
    if msgcontains(msg, 'help') or msgcontains(msg, 'trade') then
		selfSay('Me can make {royal steel}, {draconian steel}, {hell steel} and {crude iron}. Me also make lil\' {infernal bolt}.', cid)
 
	elseif msgcontains(msg, 'royal steel') then
        selfSay('Very noble. Shiny. Me like. But breaks so fast. Me can make from shiny armour. Lil\' one want to trade?', cid)
        talkState[talkUser] = 1
 
    elseif msgcontains(msg, 'draconian steel') then
        selfSay('Firy steel it is. Need green ones\' breath to melt. Or red even better. Me can make from shield. Lil\' one want to trade?', cid)
		talkState[talkUser] = 2
 
    elseif msgcontains(msg, 'hell steel') then
        selfSay('Hellsteel is. Cursed and evil. Dangerous to work with. Me can make from evil helmet. Lil\' one want to trade?', cid)
		talkState[talkUser] = 3
 
    elseif msgcontains(msg, 'crude iron') then
        selfSay('Good iron is. Me friends use it much for fight. Me can make from weapon. Lil\' one want to trade?', cid)
		talkState[talkUser] = 4
 
	elseif msgcontains(msg, 'infernal bolt') then
		selfSay('Uh. Me can make some nasty lil\' bolt from soul orbs. Lil\' one want to trade all?', cid)
		talkState[talkUser] = 5
 
-------------GETTING METALS FROM HIM-------------------
 
	-- Royal Steel
	elseif talkState[talkUser] == 1 then
		if msgcontains(msg, 'yes') then
			if doPlayerTakeItem(cid, 2487, 1) == true then
				doPlayerAddItem(cid, 5887, 1)
				selfSay(cycmsg, cid)
				talkState[talkUser] = 0
			else
				selfSay(noimsg, cid)
			end
		else
			selfSay(deny, cid)
		end
		talkState[talkUser] = 0
	-- Draconian Steel
	elseif talkState[talkUser] == 2 then
		if msgcontains (msg, 'yes') then
			if doPlayerTakeItem(cid, 2516, 1) == true then
				doPlayerAddItem(cid, 5889, 1)
				selfSay(cycmsg, cid)
				talkState[talkUser] = 0
			else
				selfSay(noimsg, cid)
			end
		else
			selfSay(deny, cid)
		end
		talkState[talkUser] = 0
	-- Hell Steel
	elseif talkState[talkUser] == 3 then
		if msgcontains (msg, 'yes') then
			if doPlayerTakeItem(cid, 2462, 1) == true then
				doPlayerAddItem(cid, 5888, 1)
				selfSay(cycmsg, cid)
				talkState[talkUser] = 0
			else
				selfSay(noimsg, cid)
			end
		else
			selfSay(deny, cid)
		end
		talkState[talkUser] = 0
	-- Crude Iron
	elseif talkState[talkUser] == 4 then
		if msgcontains (msg, 'yes') then
			if doPlayerTakeItem(cid, 2393, 1) == true then
				doPlayerAddItem(cid, 5892, 1)
				selfSay(cycmsg, cid)
				talkState[talkUser] = 0
			else
				selfSay(noimsg, cid)
			end
		else
			selfSay(deny, cid)
		end
		talkState[talkUser] = 0
	elseif talkState[talkUser] == 5 then
		if msgcontains (msg, 'yes') then
			if doPlayerTakeItem(cid, 5944, 1) == true then
				doPlayerAddItem(cid, 6529, infbolt)
				selfSay(cycmsg, cid)
				talkState[talkUser] = 0
			else
				selfSay(noimsg, cid)
			end
		else
			selfSay(deny, cid)
		end
		talkState[talkUser] = 0
	end
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())