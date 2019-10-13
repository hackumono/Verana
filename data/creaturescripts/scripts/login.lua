local config = {
	loginMessage = getConfigValue('loginMessage')
}

function onLogin(cid)
local PZ = createConditionObject(CONDITION_INFIGHT)
setConditionParam(PZ, CONDITION_PARAM_TICKS, 10000)
doAddCondition(cid, PZ)

-- by Cuddi and Kandix
local lastLogin = getPlayerLastLoginSaved(cid)
if(lastLogin < 1) then
    local pos = getCreaturePosition(cid)
    local ox = math.random (-1,1)
    local oy = math.random (-1,1)
    pos.y = pos.y + oy
    pos.x = pos.x + ox
    doTeleportThing(cid,pos)
end

	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
	end

	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
			doPlayerSendOutfitWindow(cid)
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end

	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "GuildMotd")
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "ReportBug")
        registerCreatureEvent(cid, "Mc")
     registerCreatureEvent(cid, "demonOakLogout")
     registerCreatureEvent(cid, "demonOakDeath")
     registerCreatureEvent(cid, "demonOakAttack")
     registerCreatureEvent(cid, "MonsterCounter")
     registerCreatureEvent(cid, "demonQuest")
     registerCreatureEvent(cid, "aol")
     registerCreatureEvent(cid, "pktcc")
     registerCreatureEvent(cid, "pktcc1")
     registerCreatureEvent(cid, "freebless")
     registerCreatureEvent(cid, "pktcc2")
     registerCreatureEvent(cid, "pktcc3")
     registerCreatureEvent(cid, "pktcc4")
     registerCreatureEvent(cid, "pktcc5")	 
	 registerCreatureEvent(cid, "50lvl")
	 registerCreatureEvent(cid, "100lvl")
	 registerCreatureEvent(cid, "AdvanceSave")
	 registerCreatureEvent(cid, "fraglook")
     registerCreatureEvent(cid, "ArenaKill")
    -- if he did not make full arena 1 he must start from zero
    if getPlayerStorageValue(cid, 42309) < 1 then
        for i = 42300, 42309 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    -- if he did not make full arena 2 he must start from zero
    if getPlayerStorageValue(cid, 42319) < 1 then
        for i = 42310, 42319 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    -- if he did not make full arena 3 he must start from zero
    if getPlayerStorageValue(cid, 42329) < 1 then
        for i = 42320, 42329 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
     -- if he did not make full arena 4 he must start from zero
    if getPlayerStorageValue(cid, 42339) < 1 then
        for i = 42330, 42339 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    if getPlayerStorageValue(cid, 42355) == -1 then
        setPlayerStorageValue(cid, 42355, 0) -- did not arena level
    end
    setPlayerStorageValue(cid, 42350, 0) -- time to kick 0
    setPlayerStorageValue(cid, 42352, 0) -- is not in arena  
	return true
end
