local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        
        local travelNode = keywordHandler:addKeyword({'mistrock'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can bring you to Mistrock. Agreed?'})
        	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=32674, y=31442, z=7}, msg = 'Set the sails!' })
        	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'Come back anytime.'})
        
		local travelNode2 = keywordHandler:addKeyword({'yalahar'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=32540, y=31099, z=6}, msg = 'Set the sails!' })
			
        keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Mistrock} or back to {Yalahar}.'})
		keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Mistrock} or back to {Yalahar}.'})
		keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Mistrock} or back to {Yalahar}.'})
		keywordHandler:addKeyword({'island'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Well, we haven\'t got many options here. It\'s either {Mistrock} or back to {Yalahar}.'})
		keywordHandler:addKeyword({'fenrock'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I\'d search on Fenrock if I were you. Even though there\'s snow on the surface, it\'s still warm underground. There are often caves under fresh lava streams.'})

        npcHandler:addModule(FocusModule:new())