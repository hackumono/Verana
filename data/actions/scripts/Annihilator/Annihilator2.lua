        local room = {     -- room with demons
        fromX = 33246,
        fromY = 31687,
        fromZ = 14,
        --------------
        toX = 33253,
        toY = 31693,
        toZ = 14
        }

        local monster_pos = {
        [1] = {pos = {33247, 31688, 14}, monster = "Helfire Fighter"},
        [2] = {pos = {33249, 31688, 14}, monster = "Helfire Fighter"},
        [3] = {pos = {33248, 31692, 14}, monster = "Helfire Fighter"},
        [4] = {pos = {33250, 31692, 14}, monster = "Helfire Fighter"},
        [5] = {pos = {33251, 31690, 14}, monster = "Helfire Fighter"},
        [6] = {pos = {33252, 31690, 14}, monster = "Helfire Fighter"}
        }

        local players_pos = {
        {x = 33230, y =31690, z = 14, stackpos = 253},
        {x = 33231, y =31690, z = 14, stackpos = 253},
        {x = 33232, y =31690, z = 14, stackpos = 253},
        {x = 33233, y =31690, z = 14, stackpos = 253}
        }

        local new_player_pos = {
        {x = 33247, y = 31690, z = 14},
        {x = 33248, y = 31690, z = 14},
        {x = 33249, y = 31690, z = 14},
        {x = 33250, y = 31690, z = 14}
        }

        local playersOnly = "yes"
        local questLevel = 150

        ------------------------------------------------------
        --- CONFIG END ---------------------------------------
        ------------------------------------------------------

function onUse(cid, item, fromPosition, itemEx, toPosition)
        local all_ready, monsters, player, level = 0, 0, {}, 0
        if item.itemid == 1945 then
                for i = 1, #players_pos do
                        table.insert(player, 0)
                end
                for i = 1, #players_pos do
                        player[i] = getThingfromPos(players_pos[i])
                        if player[i].itemid > 0 then
                                if string.lower(playersOnly) == "yes" then
                                        if isPlayer(player[i].uid) == TRUE then
                                                all_ready = all_ready+1
                                        else
                                                monsters = monsters+1
                                        end
                                else
                                        all_ready = all_ready+1
                                end
                        end
                end
                if all_ready == #players_pos then
                        for i = 1, #players_pos do
                                player[i] = getThingfromPos(players_pos[i])
                                if isPlayer(player[i].uid) == TRUE then
                                        if getPlayerLevel(player[i].uid) >= questLevel then
                                                level = level+1
                                        end
                                else
                                        level = level+1
                                end
                        end
                        if level == #players_pos then
                                if string.lower(playersOnly) == "yes" and monsters == 0 or string.lower(playersOnly) == "no" then
                                        local door = getTileItemById({x=33253, y=31690, z=14}, 5109).uid
					if door > 0 then
						doTransformItem(door, 5108)
					end

										for _, area in pairs(monster_pos) do
                                                        doSummonCreature(area.monster,{x=area.pos[1],y=area.pos[2],z=area.pos[3]})
                                        end
                                        for i = 1, #players_pos do
                                                doSendMagicEffect(players_pos[i], CONST_ME_POFF)
                                                doTeleportThing(player[i].uid, new_player_pos[i], FALSE)
                                                doSendMagicEffect(new_player_pos[i], CONST_ME_ENERGYAREA)
                                                doTransformItem(item.uid,1946)
                                        end
                                else
                                        doPlayerSendTextMessage(cid,19,"Only players can do this quest.")
                                end
                        else
                                doPlayerSendTextMessage(cid,19,"All Players have to be level "..questLevel.." to do this quest.")
                        end
                else
                        doPlayerSendTextMessage(cid,19,"You need "..table.getn(players_pos).." players to do this quest.")
                end
        elseif item.itemid == 1946 then
                local player_room = 0
                for x = room.fromX, room.toX do
                        for y = room.fromY, room.toY do
                                for z = room.fromZ, room.toZ do
                                        local pos = {x=x, y=y, z=z,stackpos = 253}
                                        local thing = getThingfromPos(pos)
                                        if thing.itemid > 0 then
                                                if isPlayer(thing.uid) == TRUE then
                                                        player_room = player_room+1
                                                end
                                        end
                                end
                        end
                end
                if player_room >= 1 then
                        doPlayerSendTextMessage(cid,19,"There is already a team in the quest room.")          
                elseif player_room == 0 then
                        for x = room.fromX, room.toX do
                                for y = room.fromY, room.toY do
                                        for z = room.fromZ, room.toZ do
                                                local pos = {x=x, y=y, z=z,stackpos = 253}
                                                local thing = getThingfromPos(pos)
                                                if thing.itemid > 0 then
                                                        doRemoveCreature(thing.uid)
                                                end
                                        end
                                end
                        end
                        doTransformItem(item.uid,1945)
                end
        end
        return TRUE
end