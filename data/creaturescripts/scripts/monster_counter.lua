local monsters = {
	--name = storage
	["demon"] = 45007,
	["demonic"] = 45007,
	["juggernaut"] = 45020,
	["dark torturer"] = 45021,
	["bog raider"] = 45022,
	["undead dragon"] = 45023,
	["vampire"] = 45024,
    ["vampire bride"] = 45024,
	["hand of cursed fate"] = 45026,
	["phantasm"] = 45027,
	["infernalist"] = 45028,
	["elder infernalist"] = 45028,
	["sea serpent"] = 45029,
	["serpent spawn"] = 45029,
	["young sea serpent"] = 45029,
	["nightmare"] = 45030,
	["nightmare scion"] = 45030,
	["hellspawn"] = 45032,
	["necromancer"] = 45033,
	["quara predator"] = 45034,
	["quara predator scout"] = 45034,
	["quara pincher"] = 45034,
	["quara pincher scout"] = 45034,
	["quara mantassin"] = 45034,
	["quara mantassin scout"] = 45034,
	["quara hydromancer"] = 45034,
	["quara hydromancer scout"] = 45034,
        ["quara constrictor"] = 45034,
        ["quara constrictor scout"] = 45034,
	["dragon lord"] = 45036,
	["grim reaper"] = 45037,
	["fury"] = 45038,
	["rotworm"] = 45039,
	["giant rotworm"] = 45039,
	["the mutated pumpkin"] = 12999,
	["hegard"] = 45009,
	["thalas"] = 45006,
	["hydra"] = 45004,
	["wyrm"] = 45004,	
	["lich"] = 45004,
	["behemoth"] = 14250,
	["draken spellweaver"] = 14252,
	["draken warmaster"] = 14252,
	["draken abomination"] = 14252,
	["draken elite"] = 14252,
	["lizard legionnaire"] = 14254,
	["lizard dragon priest"] = 14254,
	["lizard high guard"] = 14254,
	["lizard zaogun"] = 14254,
	["lizard chosen"] = 14254,
	["lizard snakecharmer"] = 14254,
	["lizard templar"] = 14254,
	["lizard sentinel"] = 14254,
	["giant spider"] = 14256,
	["ferumbras"] = 14260,
    ["frost dragon"] = 14262,
	["demon"] = 14272,
	["hydra"] = 14274,
	["dragon"] = 14276,
	["orshabaal"] = 14278,
	["hellhound"] = 14258,
}

function onKill(cid, target)
	local name = getCreatureName(target)
	local monster = monsters[getCreatureName(target):lower()]
	if name == "The Mutated Pumpkin" then
		if(isPlayer(target) == FALSE and monster) then	
			setPlayerStorageValue(cid,12999,1)
		end
	elseif name == "Juggernaut" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46020) == 1) then
			if getPlayerStorageValue(cid, monster) < 500 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 500 juggernauts.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough jugegernauts.")
				setPlayerStorageValue(cid, 46020, 2)
			end
		end
	elseif name == "Dark Torturer" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46021) == 1) then
			if getPlayerStorageValue(cid, monster) < 300 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 300 dark torturers.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough dark torturers.")
				setPlayerStorageValue(cid, 46021, 2)
			end
		end
	elseif name == "Bog Raider" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46022) == 1) then
			if getPlayerStorageValue(cid, monster) < 1111 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 1111 bog raiders.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough bog raiders.")
				setPlayerStorageValue(cid, 46022, 2)
			end
		end
	elseif name == "Undead Dragon" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46023) == 1) then
			if getPlayerStorageValue(cid, monster) < 500 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 500 undead dragons.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough undead dragons.")
				setPlayerStorageValue(cid, 46023, 2)
			end
		end
	elseif name == "Vampire" or name == "Vampire Bride" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46024) == 1) then
			if getPlayerStorageValue(cid, monster) < 600 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 600 vampires.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough vampires.")
				setPlayerStorageValue(cid, 46024, 2)
			end
		end
	elseif name == "Hand of Cursed Fate" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46026) == 1) then
			if getPlayerStorageValue(cid, monster) < 300 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 300 hand of cursed fates.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough hand of cursed fates.")
				setPlayerStorageValue(cid, 46026, 2)
			end
		end
	elseif name == "Phantasm" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46027) == 1) then
			if getPlayerStorageValue(cid, monster) < 360 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 360 phantasms.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough phantasms.")
				setPlayerStorageValue(cid, 46027, 2)
			end
		end
	elseif name == "Infernalist" or name == "Elder Infernalist" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46028) == 1) then
			if getPlayerStorageValue(cid, monster) < 400 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 400 infernalists.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough infernalists.")
				setPlayerStorageValue(cid, 46028, 2)
			end
		end
	elseif name == "Serpent" or name == "Serpent Spawn" or name == "Young Sea Serpent" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46029) == 1) then
			if getPlayerStorageValue(cid, monster) < 400 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 400 sea serpents.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough sea serpents.")
				setPlayerStorageValue(cid, 46029, 2)
			end
		end
	elseif name == "Nightmare" or name == "Nightmare Scion" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46030) == 1) then
			if getPlayerStorageValue(cid, monster) < 800 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 800 nightmares.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough nightmares.")
				setPlayerStorageValue(cid, 46030, 2)
			end
		end
	elseif name == "Hellspawn" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46032) == 1) then
			if getPlayerStorageValue(cid, monster) < 600 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 600 hellspawns.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough hellspawns.")
				setPlayerStorageValue(cid, 46032, 2)
			end
		end
	elseif name == "Necromancer" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46033) == 1) then
			if getPlayerStorageValue(cid, monster) < 500 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 500 necromaners.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough necromaners.")
				setPlayerStorageValue(cid, 46033, 2)
			end
		end
	elseif name == "Quara Predator" or name == "Quara Predator Scout" or name == "Quara Pincher" or name == "Quara Pincher Scout" or name == "Quara Mantassin" or name == "Quara Mantassin Scout" or name == "Quara Hydromancer" or name == "Quara Hydromancer Scout" or name == "Quara Constrictor" or name == "Quara Constrictor Scout" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46034) == 1) then
			if getPlayerStorageValue(cid, monster) < 400 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 400 quara predators.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough quara predators.")
				setPlayerStorageValue(cid, 46034, 2)
			end
		end
	elseif name == "Dragon Lord" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46036) == 1) then
			if getPlayerStorageValue(cid, monster) < 1111 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 1111 dragon lords.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough dragon lords.")
				setPlayerStorageValue(cid, 46036, 2)
			end
		end
	elseif name == "Grim Reaper" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46037) == 1) then
			if getPlayerStorageValue(cid, monster) < 600 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 600 grim reapers.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough grim reapers.")
				setPlayerStorageValue(cid, 46037, 2)
			end
		end
	elseif name == "Fury" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46038) == 1) then
			if getPlayerStorageValue(cid, monster) < 666 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 666 furys.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough furys.")
				setPlayerStorageValue(cid, 46038, 2)
			end
		end
	elseif name == "Rotworm" or name == "Giant Rotworm" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 46039) == 1) then
			if getPlayerStorageValue(cid, monster) < 100 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 100 rotworms.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough rotworms.")
				setPlayerStorageValue(cid, 46039, 2)
			end
		end
	elseif name == "Behemoth" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14251) == 1) then
			if getPlayerStorageValue(cid, monster) < 400 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 400 behemoths.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough behemoths.")
				setPlayerStorageValue(cid, 14251, 2)
			end
		end
	elseif name == "Draken Warmaster" or name == "Draken Spellweaver" or name == "Draken Abomination" or name == "Draken Elite" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14253) == 1) then
			if getPlayerStorageValue(cid, monster) < 800 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 800 drakens.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough drakens.")
				setPlayerStorageValue(cid, 14253, 2)
			end
		end
	elseif name == "Lizard High Guard" or name == "Lizard Zaogun" or name == "Lizard Dragon Priest" or name == "Lizard Legionnaire" or name == "Lizard Chosen" or name == "Lizard Snakecharmer" or name == "Lizard Templar" or name == "Lizard Sentinel" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14255) == 1) then
			if getPlayerStorageValue(cid, monster) < 600 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 600 lizards.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough lizards.")
				setPlayerStorageValue(cid, 14255, 2)
			end
		end
	elseif name == "Giant Spider" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14257) == 1) then
			if getPlayerStorageValue(cid, monster) < 500 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 500 giant spiders.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough giant spiders.")
				setPlayerStorageValue(cid, 14257, 2)
			end
		end
	elseif name == "Ferumbras" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14261) == 1) then
			if getPlayerStorageValue(cid, monster) < 1 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 1 ferumbras.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough ferumbras.")
				setPlayerStorageValue(cid, 14261, 2)
			end
		end
	elseif name == "Frost Dragon" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14263) == 1) then
			if getPlayerStorageValue(cid, monster) < 1111 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 1111 frost dragons.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough frost dragon.")
				setPlayerStorageValue(cid, 14263, 2)
		        end
		end
		elseif name == "Demon" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14273) == 1) then
			if getPlayerStorageValue(cid, monster) < 666 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 666 demons.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough demons.")
				setPlayerStorageValue(cid, 14273, 2)
		        end
		end
		elseif name == "Hydra" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14275) == 1) then
			if getPlayerStorageValue(cid, monster) < 800 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 800 hydras.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough hydras.")
				setPlayerStorageValue(cid, 14275, 2)
		        end
		end
		elseif name == "Dragon" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14277) == 1) then
			if getPlayerStorageValue(cid, monster) < 1200 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 1200 dragons.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough dragons.")
				setPlayerStorageValue(cid, 14277, 2)
		        end
		end
		elseif name == "Orshabaal" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14279) == 1) then
			if getPlayerStorageValue(cid, monster) < 1 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 1 orshabaals.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough orshabaals.")
				setPlayerStorageValue(cid, 14279, 2)
		        end
		end
		elseif name == "Hellhound" then
		if(isPlayer(target) == FALSE and monster and getPlayerStorageValue(cid, 14259) == 1) then
			if getPlayerStorageValue(cid, monster) < 1 then 
				local killedMonsters = getPlayerStorageValue(cid, monster)
           	 if(killedMonsters == -1) then
           	     killedMonsters = 1
				end
				setPlayerStorageValue(cid, monster, killedMonsters + 1)
				doPlayerSendTextMessage(cid, 22, "You have killed " .. killedMonsters .. " of 500 hellhounds.")
			else
				doPlayerSendTextMessage(cid, 22, "You have killed enough hellhounds.")
				setPlayerStorageValue(cid, 14259, 2)
		        end
		end
	end
	return TRUE
end
