function onLogout(cid)
 
	if getCreatureStorage(cid, 36901) > 0 and getCreatureStorage(cid, 35700) < 1 then
		doCreatureSetStorage(cid, 36901, 0)
	end
	return true
end