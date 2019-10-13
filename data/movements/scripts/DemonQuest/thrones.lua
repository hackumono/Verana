function onStepIn(cid, item, pos)
zuguroosh = {x=32665, y=32243, z=15}
ushuriell = {x=32734, y=32255, z=15}
gollgordan = {x=32791, y=32248, z=15}
annihillon = {x=32665, y=32288, z=15}
madaretth = {x=32727, y=32296, z=15}
latriivan = {x=32796, y=32292, z=15}
hellgoorak = {x=32737, y=32343, z=15}
if isPlayer(cid) == TRUE then
    if item.uid == 8600 then
        if getPlayerStorageValue(cid,87000) == -1 then
            setPlayerStorageValue(cid,87000,1)
		doSummonCreature("Zuguroosh", zuguroosh)
            setPlayerStorageValue(cid,87010,1)
        elseif getPlayerStorageValue(cid,87010) == 1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have absorbed some energy out of the throne!')
            setPlayerStorageValue(cid,87020,1)
        end
    elseif item.uid == 8601 then
        if getPlayerStorageValue(cid,87001) == -1 then
            setPlayerStorageValue(cid,87001,1)
		doSummonCreature("Ushuriell", ushuriell)
            setPlayerStorageValue(cid,87011,1)
        elseif getPlayerStorageValue(cid,87011) == 1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have absorbed some energy out of the throne!')
            setPlayerStorageValue(cid,87021,1)
        end
    elseif item.uid == 8602 then
        if getPlayerStorageValue(cid,87002) == -1 then
            setPlayerStorageValue(cid,87002,1)
		doSummonCreature("Gollgordan", gollgordan)
            setPlayerStorageValue(cid,87012,1)
        elseif getPlayerStorageValue(cid,87012) == 1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have absorbed some energy out of the throne!')
            setPlayerStorageValue(cid,87022,1)
        end
    elseif item.uid == 8603 then
        if getPlayerStorageValue(cid,87003) == -1 then
            setPlayerStorageValue(cid,87003,1)
		doSummonCreature("Annihillon", annihillon)
            setPlayerStorageValue(cid,87013,1)
        elseif getPlayerStorageValue(cid,87013) == 1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have absorbed some energy out of the throne!')
            setPlayerStorageValue(cid,87023,1)
        end
    elseif item.uid == 8604 then
        if getPlayerStorageValue(cid,87004) == -1 then
            setPlayerStorageValue(cid,87004,1)
		doSummonCreature("Madaretth", madaretth)
            setPlayerStorageValue(cid,87014,1)
        elseif getPlayerStorageValue(cid,87014) == 1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have absorbed some energy out of the throne!')
            setPlayerStorageValue(cid,87024,1)
        end
    elseif item.uid == 8605 then
        if getPlayerStorageValue(cid,87005) == -1 then
            setPlayerStorageValue(cid,87005,1)
		doSummonCreature("Latriivan", latriivan)
            setPlayerStorageValue(cid,87015,1)
        elseif getPlayerStorageValue(cid,87015) == 1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have absorbed some energy out of the throne!')
            setPlayerStorageValue(cid,87025,1)
        end
    elseif item.uid == 8606 then
        if getPlayerStorageValue(cid,87006) == -1 then
            setPlayerStorageValue(cid,87006,1)
		doSummonCreature("Hellgoorak", hellgoorak)
            setPlayerStorageValue(cid,87016,1)
        elseif getPlayerStorageValue(cid,87016) == 1 then
            doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have absorbed some energy out of the throne!')
            setPlayerStorageValue(cid,87026,1)
        end
    end
end
    return 1
end
