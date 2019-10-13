local keywordHandler = KeywordHandler:new()
        local npcHandler = NpcHandler:new(keywordHandler)
        NpcSystem.parseParameters(npcHandler)
        
        
        
        -- OTServ event handling functions start
        function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
        function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
        function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
        function onThink() 						npcHandler:onThink() end
        -- OTServ event handling functions end
        
        
        -- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'edron'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=33175, y=31764, z=6} })

local travelNode = keywordHandler:addKeyword({'venore'}, StdModule.travel, {npcHandler = npcHandler,  level = 1, cost = 0, destination = {x=32954, y=32022, z=6} })
	
local travelNode = keywordHandler:addKeyword({'thais'}, StdModule.travel, {npcHandler = npcHandler,  level = 1, cost = 0, destination = {x=32313, y=32209, z=6} })

local travelNode = keywordHandler:addKeyword({'carlin'}, StdModule.travel, {npcHandler = npcHandler,  level = 1, cost = 0, destination = {x=32387, y=31821, z=6} })

local travelNode = keywordHandler:addKeyword({'abdendriel'}, StdModule.travel, {npcHandler = npcHandler,  level = 1, cost = 0, destination = {x=32734, y=31669, z=6} })

local travelNode = keywordHandler:addKeyword({'goroma'}, StdModule.travel, {npcHandler = npcHandler,  level = 1, cost = 0, destination = {x=31994, y=32564, z=6} })

local travelNode = keywordHandler:addKeyword({'ankrahmun'}, StdModule.travel, {npcHandler = npcHandler,  level = 1, cost = 0, destination = {x=33425, y=32905, z=6} })

local travelNode = keywordHandler:addKeyword({'svargrond'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=32431, y=31163, z=6} })

local travelNode = keywordHandler:addKeyword({'yalahar'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=32707, y=31079, z=6} })
	
local travelNode = keywordHandler:addKeyword({'gengia'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=32071, y=32182, z=6} })
	 
local travelNode = keywordHandler:addKeyword({'pyre'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=31840, y=31412, z=6} })

local travelNode = keywordHandler:addKeyword({'zao'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=33032, y=31536, z=10} })

local travelNode = keywordHandler:addKeyword({'razachai'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=33018, y=31216, z=5} })
        
local travelNode = keywordHandler:addKeyword({'oken'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=31598, y=31640, z=6} })

local travelNode = keywordHandler:addKeyword({'vikia'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=31431, y=31524, z=6} })

local travelNode = keywordHandler:addKeyword({'ghala'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=31594, y=31093, z=6} })

local travelNode = keywordHandler:addKeyword({'ghenov'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=31142, y=32063, z=6} })

local travelNode = keywordHandler:addKeyword({'darashia'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=33624, y=32502, z=6} })

local travelNode = keywordHandler:addKeyword({'liberty bay'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=32360, y=32779, z=6} })

local travelNode = keywordHandler:addKeyword({'port hope'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=32864, y=32805, z=6} })

local travelNode = keywordHandler:addKeyword({'demona'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=31958, y=32027, z=7} })

local travelNode = keywordHandler:addKeyword({'undead plains'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=32740, y=32269, z=6} })

local travelNode = keywordHandler:addKeyword({'boss island'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=32128, y=32497, z=7} })

local travelNode = keywordHandler:addKeyword({'hydras'}, StdModule.travel, {npcHandler = npcHandler, level = 1, cost = 0, destination = {x=33463, y=31993, z=7} })



        keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can take you to Thais, Carlin, Venore, Abdendriel, Edron, Svargrond, Goroma, Ankrahmun, Darashia, Liberty Bay, Port Hope, Yalahar, Oken, Gengia, Pyre, Vikia, Ghala, Ghenov, Demona, Undead Plains, Boss, Hydras, Zao and Razachai.'})
        -- Makes sure the npc reacts when you say hi, bye etc.
        npcHandler:addModule(FocusModule:new())