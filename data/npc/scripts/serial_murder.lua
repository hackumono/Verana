local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

function onCreatureAppear(cid)
    npcHandler:onCreatureAppear(cid)
end
function onCreatureDisappear(cid)
    npcHandler:onCreatureDisappear(cid)
end
function onCreatureSay(cid, type, msg)
    npcHandler:onCreatureSay(cid, type, msg)
end
function onThink()
    npcHandler:onThink()
end
function say(param)
            npcHandler:say(param.text,param.cid)
         end
    function delayedSay(text, delay, cid)
    if(not npcHandler:isFocused(cid)) then
                return FALSE
     else
         local param = {cid = cid, text = text}
            local delay = delay or 0
            local cid = cid or 0
            local nid = getNpcCid()
            addEvent(say, delay, param)


        end
    end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
    return false
end
    
        if msgcontains(msg, 'mission') then
		npcHandler:say('Heres a list of the missions avaible for you. {rotworms}, {vampire}, {necromancer}, {quara}, {lizard}, {dragon}, {bog raider}, {giant spider}, {dragon lord}, {juggernauts}, {frost dragon}, {hydra}, {nightmare}, {draken}, {behemoth}, {hellspawn}, {serpent}, {infernalist}, {phantasm}, {fury}, {dark torturer}, {hand of cursed fate}, {grim reaper}, {demon}, {hellhound}, {undead dragon}, {juggernaut}, {orshabaal} or {ferumbras}.', cid)
		if getPlayerStorageValue(cid, 47666) == -1 then
			setPlayerStorageValue(cid, 47666, 1)
		end
		talk_state = 0
	elseif msgcontains(msg, 'juggernaut') or msgcontains(msg, 'juggernauts') then
		if getPlayerStorageValue(cid,46020) == -1 then
			npcHandler:say('You selected a hard mission. Your job is to kill 111 juggernauts. The reward is {Piece of Massacre\'s Shell} and {1,500,000 experience}}.', cid)
			setPlayerStorageValue(cid, 46020, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46020) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,6540,1)
                        doPlayerAddExp(cid, 1500000)
			setPlayerStorageValue(cid, 46020, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'dark torturer') or msgcontains(msg, 'dark torturers') then
		if getPlayerStorageValue(cid,46021) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 300 dark torturers. The reward is {Mr. Punish\'s Handcuffs} and {1,300,000 experience}.', cid)
			setPlayerStorageValue(cid, 46021, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46021) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,6537,1)
                        doPlayerAddExp(cid, 1300000)
			setPlayerStorageValue(cid, 46021, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'bog raider') or msgcontains(msg, 'bog raiders') then
		if getPlayerStorageValue(cid,46022) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 1111 bog riders. The reward is {Plasmother\'s Remains} and {1,250,000 experience}.', cid)
			setPlayerStorageValue(cid, 46022, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46022) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,6535,1)
                        doPlayerAddExp(cid, 1250000)
			setPlayerStorageValue(cid, 46022, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'undead dragon') or msgcontains(msg, 'undead dragons') then
		if getPlayerStorageValue(cid,46023) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 500 undead dragons. The reward is {Dracola\'s Eye} and {1,800,000 experience}.', cid)
			setPlayerStorageValue(cid, 46023, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46023) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,6546,1)
                        doPlayerAddExp(cid, 1800000)
			setPlayerStorageValue(cid, 46023, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'vampire') or msgcontains(msg, 'vampires') then
		if getPlayerStorageValue(cid,46024) == -1 then
			npcHandler:say('If you kill 600 vampires The reward is {800,000 experience}.', cid)
			setPlayerStorageValue(cid, 46024, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46024) == 2 then
			npcHandler:say('Good job!.', cid)
                        doPlayerAddExp(cid, 700000)
			setPlayerStorageValue(cid, 46024, 1)
			setPlayerStorageValue(cid, 45024, 1)
			talk_state = 0
		end
	elseif msgcontains(msg, 'hand of cursed fate') or msgcontains(msg, 'hand of cursed fates') then
		if getPlayerStorageValue(cid,46026) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 300 hand of cursed fates. The reward is {Handmaiden\'s Protector} and {1,300,000 experience}.', cid)
			setPlayerStorageValue(cid, 46026, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46026) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,6539,1)
                        doPlayerAddExp(cid, 1300000)
			setPlayerStorageValue(cid, 46026, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'phantasm') or msgcontains(msg, 'phantasms') then
		if getPlayerStorageValue(cid,46027) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 360 phantasms. The reward is {Countess Sorrow\'s Frozen Tear} and {1,200,000 experience}.', cid)
			setPlayerStorageValue(cid, 46027, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46027) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,6536,1)
                        doPlayerAddExp(cid, 1200000)
			setPlayerStorageValue(cid, 46027, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'infernalist') or msgcontains(msg, 'infernalists') then
		if getPlayerStorageValue(cid,46028) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 400 infernalists. The reward is {Imperor\'s Trident} and {1,000,000 experience}.', cid)
			setPlayerStorageValue(cid, 46028, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46028) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,6534,1)
                        doPlayerAddExp(cid, 1000000)
			setPlayerStorageValue(cid, 46028, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'serpent') or msgcontains(msg, 'serpents') then
		if getPlayerStorageValue(cid,46029) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 400 serpents. The reward is {Sea Serpent Trophy}, {5 crystal coins} and {800,000 experience}.', cid)
			setPlayerStorageValue(cid, 46029, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46029) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,10529,1)
                        doPlayerAddExp(cid, 800000)
                        doPlayerAddItem(cid,2160,5)
			setPlayerStorageValue(cid, 46029, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'nightmare') or msgcontains(msg, 'nightmares') then
		if getPlayerStorageValue(cid,46030) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 800 nightmares. The reward is {1,700,000 experience}.', cid)
			setPlayerStorageValue(cid, 46030, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46030) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,3954,1)
                        doPlayerAddExp(cid, 1700000)
			setPlayerStorageValue(cid, 46030, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'hellspawn') or msgcontains(msg, 'hellspawns') then
		if getPlayerStorageValue(cid,46032) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 600 hellspawns. The reward is {Nose Ring}, {1,100,000 experience}.', cid)
			setPlayerStorageValue(cid, 46032, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46032) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,5804,1)
                        doPlayerAddExp(cid, 1100000)
			setPlayerStorageValue(cid, 46032, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'necromancer') or msgcontains(msg, 'necromancers') then
		if getPlayerStorageValue(cid,46033) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 500 necormancers. The reward is {Soul Stone} and {600,000 experience}.', cid)
			setPlayerStorageValue(cid, 46033, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46033) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,5809,1)
                        doPlayerAddExp(cid, 600000)
			setPlayerStorageValue(cid, 46033, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'quara') or msgcontains(msg, 'quara') then
		if getPlayerStorageValue(cid,46034) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 400 quara. The reward is {Merlin Trophy}, {700,000 experience} and {5 crystal coins}.', cid)
			setPlayerStorageValue(cid, 46034, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46034) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,7964,1)
                        doPlayerAddExp(cid, 700000)
                        doPlayerAddItem(cid,2160,5)
			setPlayerStorageValue(cid, 46034, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'dragon lord') or msgcontains(msg, 'dragon lords') then
		if getPlayerStorageValue(cid,46036) == -1 then
			npcHandler:say('You selected easy mission. Your job is to kill 1111 dragon lords. The reward is {Dragon Claw}, {1,200,000 experience}.', cid)
			setPlayerStorageValue(cid, 46036, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46036) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,5919,1)
			doPlayerAddExp(cid, 1200000)
			setPlayerStorageValue(cid, 46036, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'grim reaper') or msgcontains(msg, 'grim reapers') then
		if getPlayerStorageValue(cid,46037) == -1 then
			npcHandler:say('You selected very easy mission. Your job is to kill 600 grim reapers. The reward is {1,400,000 experience} and {10 crystal coins}.', cid)
			setPlayerStorageValue(cid, 46037, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46037) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddExp(cid, 1400000)
                        doPlayerAddItem(cid,2160,10)
			setPlayerStorageValue(cid, 46037, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'fury') or msgcontains(msg, 'furys') then
		if getPlayerStorageValue(cid,46038) == -1 then
			npcHandler:say('You selected very easy mission. Your job is to kill 666 furys. The reward is {1,000,000 experience} and {10 crystal coins}.', cid)
			setPlayerStorageValue(cid, 46038, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46038) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddExp(cid, 1000000)
                        doPlayerAddItem(cid,2160,10)
			setPlayerStorageValue(cid, 46038, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'rotworm') or msgcontains(msg, 'rotworms') then
		if getPlayerStorageValue(cid,46039) == -1 then
			npcHandler:say('You selected very easy mission. Your job is to kill 100 rotworms. The reward is {200,000 experience} and {1 crystal coin}.', cid)
			setPlayerStorageValue(cid, 46039, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,46039) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,2160,1)
                        doPlayerAddExp(cid, 200000)
			setPlayerStorageValue(cid, 46039, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'behemoth') or msgcontains(msg, 'behemoths') then
		if getPlayerStorageValue(cid,14251) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 400 behemoth. The reward is {behemoth trophy}, {900,000 experience}.', cid)
			setPlayerStorageValue(cid, 14251, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14251) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,7396,1)
                        doPlayerAddExp(cid, 900000)
			setPlayerStorageValue(cid, 14251, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'draken') or msgcontains(msg, 'drakens') then
		if getPlayerStorageValue(cid,14253) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 800 drakens. The reward is {draken trophy}, {2,000,000 experience} and {10 crystal coins}.', cid)
			setPlayerStorageValue(cid, 14253, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14253) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
                        doPlayerAddItem(cid,2160,10)
                        doPlayerAddExp(cid, 2000000)
			setPlayerStorageValue(cid, 14253, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'lizard') or msgcontains(msg, 'lizards') then
		if getPlayerStorageValue(cid,14255) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 600 lizards. The reward is {lizard trophy}, {1,000,000 experience}.', cid)
			setPlayerStorageValue(cid, 14255, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14255) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,11336,1)
                        doPlayerAddExp(cid, 1000000)
			setPlayerStorageValue(cid, 14255, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'giant spider') or msgcontains(msg, 'giant spiders') then
		if getPlayerStorageValue(cid,14257) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 500 giant spiders. The reward is {spiderwebs}, {1,100,000 experience} and {15 crystal coins}.', cid)
			setPlayerStorageValue(cid, 14257, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14257) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,8860,1)
                        doPlayerAddItem(cid,2160,15)
                        doPlayerAddExp(cid, 1100000)
			setPlayerStorageValue(cid, 14257, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'hellhound') or msgcontains(msg, 'hellhounds') then
		if getPlayerStorageValue(cid,14259) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 500 hellhounds. The reward is {2,000,000 experience}.', cid)
			setPlayerStorageValue(cid, 14259, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14259) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
                        doPlayerAddExp(cid, 2000000)
			setPlayerStorageValue(cid, 14259, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'ferumbras') then
		if getPlayerStorageValue(cid,14261) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 1 ferumbras. The reward is {fireflanz}, {400,000 experience} and {10 crystal coins}.', cid)
			setPlayerStorageValue(cid, 14261, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14261) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,7959,1)
                        doPlayerAddExp(cid, 400000)
                        doPlayerAddItem(cid,2160,15)
			setPlayerStorageValue(cid, 14261, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'frost dragon') or msgcontains(msg, 'frost dragons') then
		if getPlayerStorageValue(cid,14263) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 1111 frost dragons. The reward is {bonebreaker}, {1,100,000 experience}.', cid)
			setPlayerStorageValue(cid, 14263, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14263) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddItem(cid,7428,1)
			doPlayerAddExp(cid, 1100000)
			setPlayerStorageValue(cid, 14263, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'demon') or msgcontains(msg, 'demons') then
		if getPlayerStorageValue(cid,14273) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 666 demons. The reward is {2,000,000 experience} and {5 crystal coins}.', cid)
			setPlayerStorageValue(cid, 14273, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14273) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddExp(cid, 2000000)
                        doPlayerAddItem(cid,2160,5)
			setPlayerStorageValue(cid, 14273, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'hydra') or msgcontains(msg, 'hydras') then
		if getPlayerStorageValue(cid,14275) == -1 then
			npcHandler:say('You selected hard mission. Your job is to kill 800 hydras. The reward is {1,000,000 experience}.', cid)
			setPlayerStorageValue(cid, 14275, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14275) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddExp(cid, 1000000)
  			setPlayerStorageValue(cid, 14275, 3)
			talk_state = 0
		end	
	elseif msgcontains(msg, 'dragon') or msgcontains(msg, 'dragons') then
		if getPlayerStorageValue(cid,14277) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 1200 dragons. The reward is {Dragon Robe}, {1,000,000 experience}.', cid)
			setPlayerStorageValue(cid, 14277, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14277) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
			doPlayerAddExp(cid, 1000000)
						doPlayerAddItem(cid,8867,1)
			setPlayerStorageValue(cid, 14277, 3)
			talk_state = 0
		end
	elseif msgcontains(msg, 'orshabaal') then
		if getPlayerStorageValue(cid,14279) == -1 then
			npcHandler:say('You selected very hard mission. Your job is to kill 1 orshabaals. The reward is {500,000 experience} and {15 crystal coins}.', cid)
			setPlayerStorageValue(cid, 14279, 1)
			talk_state = 0
		elseif getPlayerStorageValue(cid,14279) == 2 then
			npcHandler:say('Great job! Here is your reward.', cid)
                        doPlayerAddExp(cid, 500000)
                        doPlayerAddItem(cid,2160,15)
			setPlayerStorageValue(cid, 14279, 3)
			talk_state = 0
		end		
	elseif msgcontains(msg, 'no') then
		npcHandler:say('Ok, then not.', cid)
		talk_state = 0
	end

	return 1
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  
