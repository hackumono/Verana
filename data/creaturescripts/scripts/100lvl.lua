local config =
{
storage = 1113,
item = {2160,2},
level = 100
}
	function onAdvance(cid, skill, oldLevel, newLevel)
	local storage = getPlayerStorageValue(cid, config.storage)
	    if (skill == SKILL__LEVEL and newLevel == config.level and storage == -1) then
        doPlayerAddItem(cid, config.item[1], config.item[2])
        doPlayerSendTextMessage(cid,21,'Congratulations! You have reached level 50 and have received 2 crystal coins.')
      setPlayerStorageValue(cid, config.storage, 1)
   end
    return true
	end