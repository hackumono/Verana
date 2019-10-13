-- !bless by Piotrek1447
-- edited by Kleksu
local bless = {1, 2, 3, 4, 5}
local cost = 50000 -- Cost in gp.
function onSay(cid, words, param)
 if getPlayerStorageValue(cid,13008) < os.time()-10 then
	 setPlayerStorageValue(cid,13008,os.time())
	for i = 1, table.maxn(bless) do
		if(getPlayerBlessing(cid, bless[i])) then
			doPlayerSendCancel(cid, "You have already all blessings.")
			return TRUE
		end
	end
	if(doPlayerRemoveMoney(cid, cost) == TRUE) then
		for i = 1, table.maxn(bless) do
			doPlayerAddBlessing(cid, bless[i])
		end
		doPlayerSendTextMessage(cid,24, "You bought all blessing.")
		doSendMagicEffect(getPlayerPosition(cid), 28)
	else
		doPlayerSendCancel(cid, "You don't have enough money.")
	end
	return TRUE
		else
		local czas = os.time()-getPlayerStorageValue(cid,13008)
		if czas > 0 then
			czas = -(czas-10)
		end
		if czas == 0 then
			czas = 0
		end
	 str = "Wait a " .. czas .. " Second."
	 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, str)
	 return TRUE
 end
	return TRUE 
end