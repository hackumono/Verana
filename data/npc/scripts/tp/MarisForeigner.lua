local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        
        local travelNode = keywordHandler:addKeyword({'mistrock'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=32674, y=31442, z=7}, msg = 'Set the sails!' })
        
	local travelNode2 = keywordHandler:addKeyword({'fenrock'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=32784, y=31326, z=7}, msg = 'Set the sails!' })
			
        keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'There are two small islands west of Yalahar. I\'m not sure if they have an official name but the people call the bigger one \'Mistrock\' and the other one \'Fenrock\'.'})
		keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'There are two small islands west of Yalahar. I\'m not sure if they have an official name but the people call the bigger one \'Mistrock\' and the other one \'Fenrock\'.'})
		keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'There are two small islands west of Yalahar. I\'m not sure if they have an official name but the people call the bigger one \'Mistrock\' and the other one \'Fenrock\'.'})
		keywordHandler:addKeyword({'island'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'There are two small islands west of Yalahar. I\'m not sure if they have an official name but the people call the bigger one \'Mistrock\' and the other one \'Fenrock\'.'})

npcHandler:addModule(FocusModule:new())