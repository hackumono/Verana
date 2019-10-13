local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        
        local travelNode = keywordHandler:addKeyword({'yalahar'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=32540, y=31099, z=6}, msg = 'Set the sails!' })
        
	local travelNode2 = keywordHandler:addKeyword({'fenrock'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=32784, y=31326, z=7}, msg = 'Set the sails!' })
			
        keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Fenrock} or back to {Yalahar}.'})
		keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Fenrock} or back to {Yalahar}.'})
		keywordHandler:addKeyword({'island'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Fenrock} or back to {Yalahar}.'})
		keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Fenrock} or back to {Yalahar}.'})

        npcHandler:addModule(FocusModule:new())