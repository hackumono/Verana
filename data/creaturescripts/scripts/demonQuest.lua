local config = {
	message = "Go into the teleporter in 3 minutes, else it will disappear.",
	timeToRemove = 180, -- seconds
	teleportId = 1387,
	bosses = {
		["Zuguroosh"] = { x = 32727, y = 32265, z = 15 },
		["Ushuriell"] = { x = 32797, y = 32264, z = 15 },
		["Gollgordan"] = { x = 32667, y = 32304, z = 15 },
		["Annihillon"] = { x = 32730, y = 32306, z = 15 },
		["Madaretth"] = { x = 32809, y = 32311, z = 15 },
		["Latriivan"] = { x = 32716, y = 32353, z = 15},
           ["Hellgoorak"] = { x = 32739, y = 32217, z = 15},
           ["Satan"] = { x = 32729, y = 32216, z = 15}
	}
}
	
local function removal(position)
	doRemoveThing(getTileItemById(position, config.teleportId).uid, 1)
    return TRUE
end

function onDeath(cid, corpse, killer)
	registerCreatureEvent(cid, "demonQuest")
	local position = getCreaturePosition(cid)
	
	for name, pos in pairs(config.bosses) do
		if name == getCreatureName(cid) then
			teleport = doCreateTeleport(config.teleportId, pos, position)
			doCreatureSay(cid, config.message, TALKTYPE_ORANGE_1)
			addEvent(removal, config.timeToRemove * 1000, position)
		end
	end
	return TRUE
end