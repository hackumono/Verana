local playerPosition =
{
	{x = 32408, y = 32048, z = 11, stackpos = STACKPOS_TOP_CREATURE},
	{x = 32408, y = 32041, z = 11, stackpos = STACKPOS_TOP_CREATURE},
	{x = 32404, y = 32045, z = 11, stackpos = STACKPOS_TOP_CREATURE},
	{x = 32412, y = 32045, z = 11, stackpos = STACKPOS_TOP_CREATURE}
}

local newPosition =
{
	{x = 32363, y = 32092, z = 12},
 	{x = 32364, y = 32092, z = 12},
	{x = 32363, y = 32093, z = 12},
	{x = 32364, y = 32093, z = 12}
}

-- Do not modify the declaration lines below.
local player = {0, 0, 0, 0}
local failed = FALSE

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 1945 then
		for i = 1, 4 do
			failed = TRUE
			player[i] = getThingfromPos(playerPosition[i])
			if player[i].itemid > 0 then
				if isPlayer(player[i].uid) == TRUE then
					if getPlayerStorageValue(player[i].uid, 9012) == -1 then
						if getPlayerLevel(player[i].uid) >= 100 then
							failed = FALSE
						end
					end
				end
			end
			if failed == TRUE then
				doPlayerSendCancel(cid, "Sorry, not possible.")
				return TRUE
			end
		end
		for i = 1, 4 do
			doSendMagicEffect(playerPosition[i], CONST_ME_POFF)
			doTeleportThing(player[i].uid, newPosition[i], FALSE)
			doSendMagicEffect(newPosition[i], CONST_ME_ENERGYAREA)
		end
		doTransformItem(item.uid, item.itemid + 1)
	elseif item.itemid == 1946 then
		doPlayerSendCancel(cid, "Sorry, not possible.")
	end
	return TRUE
end