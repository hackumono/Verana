-- By Rafmix
function onSay(cid, words, param)
if exhaustion.check(cid, 30032) then
    return FALSE
end
exhaustion.set(cid, 30032, 10)
    local femaleOutfits = { ["citizen"]={136}, ["hunter"]={137}, ["mage"]={138}, ["knight"]={139}, ["nobleman"]={140}, ["summoner"]={141}, ["warrior"]={142}, ["barbarian"]={147}, ["druid"]={148}, ["wizard"]={149}, ["oriental"]={150}, ["pirate"]={155}, ["assassin"]={156}, ["beggar"]={157}, ["shaman"]={158}, ["norsewoman"]={252}, ["nightmare"]={269}, ["jester"]={270}, ["brotherhood"]={279}, ["demonhunter"]={288}, ["warmaster"]={336}, ["yalaharian"]={324}, ["wayfarer"]={366} }
    local maleOutfits = { ["citizen"]={128}, ["hunter"]={129}, ["mage"]={130}, ["knight"]={131}, ["nobleman"]={132},["summoner"]={133}, ["warrior"]={134}, ["barbarian"]={143}, ["druid"]={144}, ["wizard"]={145}, ["oriental"]={146}, ["pirate"]={151}, ["assassin"]={152}, ["beggar"]={153}, ["shaman"]={154}, ["norsewoman"]={251}, ["nightmare"]={268}, ["jester"]={273}, ["brotherhood"]={278}, ["demonhunter"]={289},["warmaster"]={335}, ["yalaharian"]={325}, ["wayfarer"]={367} }
    local msg = {"Command requires GOOD param!", "Nie POsiadasz Addon Doll!", "Bad param!", " Full Addon Zostal Dodany!"}
    local param = string.lower(param) 
    if(getPlayerItemCount(cid, 8982) > 0) then
        if(param ~= "" and maleOutfits[param] and femaleOutfits[param]) then
            doPlayerRemoveItem(cid, 8982, 1)
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[4])
                doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS)
            if(getPlayerSex(cid) == 0)then
              doPlayerAddOutfit(cid, femaleOutfits[param][1], 3)
            else
              doPlayerAddOutfit(cid, maleOutfits[param][1], 3)
            end
        else
          doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[1])
        end
    else
      doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[2])
    end
end