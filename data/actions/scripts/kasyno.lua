--[ Script written and published by Devcod ]--
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local config = {
		chance = math.random(1, 100), --losowanie
		win_chance = 33, --szansa na wygranie w procentach
		multi = 2, --ile razy wiecej sie wygrywa (np. 2 czyli stawiasz 1cc, wygrywasz i dostajesz 2cc)
		items = {2160, 2152}, --id itemow ktorymi mozna grac
		min_count = 1, --minimalna ilosc przedmiotow (1=minimum 1cc)
		max_count = 100 --maksymalna ilosc przedmiotow (10=maksimum 10cc)
	}	
	local positions = {
		[56501] = {x=(fromPosition.x-1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56502] = {x=(fromPosition.x+1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56503] = {x=(fromPosition.x-1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56504] = {x=(fromPosition.x+1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56505] = {x=(fromPosition.x+1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56506] = {x=(fromPosition.x-1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56507] = {x=(fromPosition.x+1), y=fromPosition.y, z=fromPosition.z, stackpos=255},
		[56508] = {x=(fromPosition.x-1), y=fromPosition.y, z=fromPosition.z, stackpos=255}
	}
	local itemplay = getThingfromPos(positions[item.actionid])	
	local storage, exh = 56500, 2 --storage id, czas exh
	if (item.itemid == 1945) then
		doTransformItem(item.uid, 1946)
		if (getPlayerStorageValue(cid, storage)-os.time(t) < 1) then
			doPlayerSetStorageValue(cid, storage, os.time(t)+exh)
			if (isInArray(config.items, itemplay.itemid)) then
				if (itemplay.type >= config.min_count) and (itemplay.type <= config.max_count) then
					if (config.chance <= config.win_chance) then
						doRemoveItem(itemplay.uid, itemplay.type)
						doCreateItem(itemplay.itemid, (itemplay.type*config.multi), positions[item.actionid])
						doSendMagicEffect(positions[item.actionid], 31)
						doSendMagicEffect(getCreaturePosition(cid), 27)
						doPlayerSendCancel(cid, "Congratulations, you just won in our casino!")
						doSendAnimatedText(getCreaturePosition(cid), "~!Winner!~", TEXTCOLOR_YELLOW)
						return true
					else
						doRemoveItem(itemplay.uid, itemplay.type)
						doSendMagicEffect(positions[item.actionid], 31)
						doSendMagicEffect(getCreaturePosition(cid), 13)
						doPlayerSendCancel(cid, "It is your unlucky day! You lost.")
						doSendAnimatedText(getCreaturePosition(cid), "~!Loser!~", TEXTCOLOR_LIGHTBLUE)
						return true							
					end
				else
					doPlayerSendCancel(cid, "You can play only with amount from ".. config.min_count .." to ".. config.max_count ..".")
					doSendMagicEffect(fromPosition, 2)
					return true			
				end
			else
				doPlayerSendCancel(cid, "You cannot play with this item.")
				doSendMagicEffect(fromPosition, 2)
				return true
			end
		else
			doPlayerSendCancel(cid, "You must wait another ".. getPlayerStorageValue(cid, storage)-os.time(t) .." seconds.")
			doSendMagicEffect(fromPosition, 2)
			return true
		end
	else
		doTransformItem(item.uid, 1945)
		doSendMagicEffect(fromPosition, 2)
		return true
	end
end
