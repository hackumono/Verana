function onSay(cid, words, param, channel)
print(":D")

        --local stan = getStorage(65430)
        --if stan == 1 then
         --   return false
        --end

print(":P")
        local players = getPlayersOnline()
        local strings = {""}

        local i = 1
        local position = 1
        local added = FALSE
        for _, pid in ipairs(players) do
            print(getPlayerName(pid))
                doPlayerAddItem(pid,8982,1)
        end

        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Rozdane.")
        doSetStorage(65430, 1)

        return TRUE
end