local config = {
                {chance = 50, max_per_day = 4, name = 'Strongest Bosses', raids = {'Ferumbras', 'Ghazbaran', 'Morgaroth', 'Orshabaal', 'Massacre', 'Tiquandas Revenge'}},
                {chance = 50, max_per_day = 4, name = 'Stronger Bosses', raids = {'Tiquandas Revenge', 'Demodras', 'undead army', 'undead darashia', 'Sir Valorcrest'}},
                {chance = 50, max_per_day = 4, name = 'Strong Bosses', raids = {'Arachir the Ancient One', 'The Old Widow', 'Diblis The Fair', 'Necropharus', 'quaras'}},
                {chance = 50, max_per_day = 4, name = 'Normal Bosses', raids = {'Barbarian', 'nomads', 'Elfs', 'Tiquandas Revenge', 'Pirates', 'Zulazza the Corruptor'}}
                }
local MAX_RAID = 12
local raids = {}

local function checkCountRaids(table)
local p = 0
for i = 1, #table do
    p = p + table[i]
end
return p
end

local function randomRaid()
local v = config[math.random(#config)]
if (raids[os.date('%Y')][os.date('%m')][os.date('%d')][v.name] or 0) < v.max_per_day then
    if math.random(100) <= v.chance then
        raids[os.date('%Y')][os.date('%m')][os.date('%d')][v.name] = (raids[os.date('%Y')][os.date('%m')][os.date('%d')][v.name] or 0) + 1
        print(v.name .. ' raid execute.')
        return executeRaid(v.raids[math.random(#v.raids)])
    end
    return randomRaid()
end
return true
end

function onThink(interval, lastExecution, thinkInterval)
raids[os.date('%Y')] = raids[os.date('%Y')] or {}
raids[os.date('%Y')][os.date('%m')] = raids[os.date('%Y')][os.date('%m')] or {}
raids[os.date('%Y')][os.date('%m')][os.date('%d')] = raids[os.date('%Y')][os.date('%m')][os.date('%d')] or {}
if checkCountRaids(raids[os.date('%Y')][os.date('%m')][os.date('%d')]) < MAX_RAID then
    return randomRaid()
end
return true
end