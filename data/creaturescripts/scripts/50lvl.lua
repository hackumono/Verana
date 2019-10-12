local config =
{
storage = 1112,
item = {2152,50},
level = 50
}
	function onAdvance(cid, skill, oldLevel, newLevel)
	local storage = getPlayerStorageValue(cid, config.storage)
	    if (skill == SKILL__LEVEL and newLevel == config.level and storage == -1) then
        doPlayerAddItem(cid, config.item[1], config.item[2])
        doPlayerSendTextMessage(cid,21,'Congratulations! You have reached level 50 and have received 50 platinum coins.')
      setPlayerStorageValue(cid, config.storage, 1)
   end
    return true
	end