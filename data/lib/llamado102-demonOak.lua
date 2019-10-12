oneByQuest = true
killAllBeforeCut = true
level = 120
positions =
{
    kick = {x = 32713, y = 32361, z = 7},
    summon =
    {
        {x = 32712, y = 32352, z = 7},
        {x = 32716, y = 32356, z = 7},
        {x = 32721, y = 32352, z = 7},
        {x = 32716, y = 32347, z = 7},
        {x = 32720, y = 32348, z = 7},
        {x = 32719, y = 32354, z = 7},
        {x = 32713, y = 32354, z = 7},
        {x = 32714, y = 32349, z = 7}
    },
    rewardRoom = {x = 32768, y = 32411, z = 8}
}

summons =
{
    [1] = {"Demon", "Grim Reaper", "Elder Beholder", "Demon Skeleton"},
    [2] = {"Dark Torturer", "Banshee", "Betrayed Wraith", "Blightwalker"},
    [3] = {"Bonebeast", "Braindeath", "Diabolic Imp", "Giant Spider"},
    [4] = {"Hand of Cursed Fate", "Lich", "Undead Dragon", "Vampire"},
    [5] = {"braindeath", "Demon", "Bonebeast", "Diabolic Imp"},
    [6] = {"Demon Skeleton", "Banshee", "Elder Beholder", "Bonebeast"},
    [7] = {"Dark Torturer", "Undead Dragon", "Demon", "Demon"},
    [8] = {"Elder Beholder", "Betrayed Wraith", "Demon Skeleton", "Giant Spider"},
    [9] = {"Demon", "Banshee", "Blightwalker", "Demon Skeleton"},
    [10] = {"Grim Reaper", "Demon", "Diabolic Imp", "Braindeath"},
    [11] = {"Banshee", "Grim Reaper", "Hand of Cursed Fate", "Demon"}
}

areaPosition =
{
    {x=32712, y=32347, z=7, stackpos = 255},
    {x=32721, y=32356, z=7, stackpos = 255}
}

demonOak = {8288, 8289, 8290, 8291}

storages =
{
    done = 35701,
    treeCut = 35702
}

blockingTree =
{
    [2709] = {32193, 3614}
}

floorDamage =
{
    min = 270,
    max = 310,
    type = COMBAT_EARTHDAMAGE,
    effect = CONST_ME_BIGPLANTS
}

rewards =
{
    [12901] = {done = 12900, reward = 2495, count = 1},
    [12902] = {done = 12900, reward = 8905, count = 1},
    [12903] = {done = 12900, reward = 8918, count = 1},
    [12904] = {done = 12900, reward = 8851, count = 1}
}

HALLOWEDAXE_PRICE = 1000

ERROR_NOERROR = 0
ERROR_TREEPOSITION = 1
ERROR_NOTENOUGHLEVEL = 2
ERROR_ALREADYDONE = 3
ERROR_ALREADYCUT = 4
ERROR_WAITFOR = 5
ERROR_UNKNOWN = 6

TYPE_PLAYER = 1
TYPE_MONSTER = 2
TYPE_NPC = 3
TYPE_CREATURE = 4
GET_COUNT = 1
GET_UID = 2

function canEnter(cid, tree)

    if isInRange(tree, areaPosition[1], areaPosition[2]) then
        return ERROR_TREEPOSITION
    elseif getPlayerLevel(cid) < level then
        return ERROR_NOTENOUGHLEVEL
    elseif getCreatureStorage(cid, storages.done) > 0 then
        return ERROR_ALREADYDONE
    elseif oneByQuest then
        local players = getPlayersOnline()
        for _, pid in ipairs(players) do
            if isInRange(getCreaturePosition(pid), areaPosition[1], areaPosition[2]) then
                return ERROR_WAITFOR
            end
        end
    else
        return ERROR_UNKNOWN
    end
    return ERROR_NOERROR
end


function getError(err, tree)
    if err == ERROR_TREEPOSITION then
        return print("[Warning - Action::Demon Oak Script] Dead tree position is inside the quest area positions.\nDead tree position: (x: " .. tree.x .. ", y: " .. tree.y .. ", z: " .. tree.z .. ")\nNorth-West area position (x: " .. areaPosition[1].x .. ", y: " .. areaPosition[1].y .. ", z: " .. areaPosition[1].z .. ")\nSouth-West area position (x: " .. areaPosition[2].x .. ", y: " .. areaPosition[2].y .. ", z: " .. areaPosition[2].z .. ")\nScript will not work correctly, please fix it.") and "Something is wrong, please contact a staff member."
    elseif err == ERROR_NOTENOUGHLEVEL then
        return "You need level " .. level .. " or higher to enter to the quest area."
    elseif err == ERROR_ALREADYDONE then
        return "You already done this quest."
    elseif err == ERROR_WAITFOR then
        return "Wait until the player inside the quest area finish the quest."
    end
    return ""
end

function getCreaturesInRange(type, fromPos, toPos, get, countSummon)

    local types =
    {
        [TYPE_PLAYER] = isPlayer,
        [TYPE_MONSTER] = isMonster,
        [TYPE_NPC] = isNpc,
        [TYPE_CREATURE] = isCreature
    }
    local tmp = {}

    local t = types[type]
    if(not t) then return print("[Warning - Function::getCreaturesInRange] Unknow type " .. (type or "(nil value)")) end

    local thing
    local pos
    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            for z = fromPos.z, toPos.z do
                pos = {x = x, y = y, z = z}
                thing = getTopCreature(pos)
                if t(thing.uid) then
                    if countSummon then
                        if isSummon(thing.uid) then
                            table.insert(tmp, thing.uid)
                        end
                    else
                        if not isSummon(thing.uid) then
                            table.insert(tmp, thing.uid)
                        end
                    end
                end
            end
        end
    end
    if(get == GET_COUNT) then
        return table.maxn(tmp)
    elseif(get == GET_UID) then
        return tmp
    else
        print("[Warning - Function::getCreaturesInRange] Unknow type to get " .. (get or "(nil value)"))
    end
end

function monsterExists(name)

    local file = "data/monster/monsters.xml"
    local m_name, getName, getFile, m_file = 0, 0, 0, 0
    local monsterExists, fileExists = false, false
    if io.open(file, "r") ~= nil then
        for line in io.lines(file) do
            if line:find('name=".*".*') and line:find('file=".*".*') then
                getName = string.match(line, 'name=".*".*')
                getFile = string.match(line, 'file=".*".*')
                m_name = string.sub(getName, string.find(getName, '="') + 2, string.find(getName, '" ') - 1)
                m_file = string.sub(getFile, string.find(getFile, '="') + 2, string.find(getFile, '"/') - 1)
                if m_name == name then
                    monsterExists = true
                    if io.open("data/monster/" .. m_file, "r") ~= nil then
                        fileExists = true
                    end
                end
            end
        end
    end
    return monsterExists and fileExists or false
end

function isSummon(cid)
    return getCreatureMaster(cid) ~= cid or false
end