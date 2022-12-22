
# ZKLS Discord:
https://discord.gg/qkDSBwzZ

# Preview: Coming Soon 


# Features:
- Set all blip info from the config
- Set qb-target zones from config
    - On / Off Duty
    - Registers
    - Stashes
    - Trays
    - Sinks
    - Food, Drinks, Coffee, Alcohol Locations
- Auto On / Off Duty PolyZone option in the config
- Set all target icons and titles from the config
- Set all stash and tray max slots & max weight from the config
- Set progressbar times from the config
- All items are automatically made into useable items with customizeable effect lengths and strengths
    - Set effects for alcohol
    - Set effects for coffee
    - Set how much hunger and thirst items add for every item from the config
- Set ps-ui circle values for making items in the config
- Set food, drink, coffee, alcohol recipes from the config + amount required
- Set emote for every item when they are being made + when they are used
- Set custom times to use each item


# How to Use:
- Modify the config to you liking before starting the script 

# Install 

- Add this job to your `qb-core > shared > jobs.lua`, they will automatically be made useable in this script

		    ['noodle'] = {
        label = 'Noodle Exchange',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Part Time',
                payment = 75
            },
            ['2'] = {
                name = 'Full Time',
                payment = 100
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 125
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 150
            },
        },
    },

- Add these items to your `qb-core > shared > items.lua`, they will automatically be made useable in this script

 		--- NOODLE EXCHANGE
		-- Drinks
 		['mcdbluefrozen'] 				   	= {['name'] = 'mcdbluefrozen', 			  	['label'] = 'Blue Slushi', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'mcdbluefrozen.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Blue Slushi'},
 		['mcdcokefrozen'] 				   	= {['name'] = 'mcdcokefrozen', 			  	['label'] = 'Coke Sushi', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'mcdcokefrozen.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Coke Slushi'},
 		['mcdredfrozen'] 					 = {['name'] = 'mcdredfrozen', 			  	['label'] = 'Dr Pepper Slushi', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'mcdredfrozen.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Dr Pepper Slushi},
 		["mcddrpepper"] 					 ={["name"] = "mcddrpepper", 	    		["label"] = "Dr Pepper", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "mcddrpepper.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Dr Pepper"},
 		["mcdorangefanta"] 					 ={["name"] = "mcdorangefanta", 	    	["label"] = "Orange Fanta", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "mcdorangefanta.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Orange Fanta"},
 		["mcdsprite"] 						 ={["name"] = "mcdsprite", 	    			["label"] = "Sprite", 						["weight"] = 1000, 		["type"] = "item", 		["image"] = "mcdsprite.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sprite"},

		-- Food 
 		['butterednoodles'] 			 = {['name'] = 'butterednoodles', 			  	['label'] = 'Butter Noodles', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'butterednoodles.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Buttery Noods'},
 		['japanesepannoodles'] 			 = {['name'] = 'japanesepannoodles', 			['label'] = 'Japanese Pan Noodles', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'japanesepannoodles.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Jap Noods'},
 		['spicykoreanbeefnoodles'] 		 = {['name'] = 'spicykoreanbeefnoodles', 		['label'] = 'Spicy Korean Beef Noodles', 	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'spicykoreanbeefnoodles.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Spiccccccy Beeeeef Noods'},
 		["noodlebowl"] 					 ={["name"] = "noodlebowl", 	    			["label"] = "Noodle Bowl", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "noodlebowl.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bowl of noods"},
		["ramen"] 						 ={["name"] = "ramen", 	    					["label"] = "Ramen", 						["weight"] = 1000, 		["type"] = "item", 		["image"] = "ramen.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Reamen Noodles Mmmmm"},
	
    
 	  	 -- Poison Stuff (optional)
		['pmcdbluefrozen'] 				 = {['name'] = 'pmcdbluefrozen', 			['label'] = 'Blue Slushi', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'mcdbluefrozen.png', 		['unique'] = false, 	['useable'] = 		true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Blue Slushii'},
		['poison'] 			 			 = {['name'] = 'poison', 			  	['label'] = 'Poison', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'poison.png', 		['unique'] = false, 	['useable'] = false, 		['shouldClose'] = true,	   ['combinable'] = {accept = {'mcdbluefrozen'}, reward = 'pmcdbluefrozen', anim = {['dict'] = 							'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Adding Poison', ['timeOut'] = 5000,}},  		 ['description'] = 'Will kill people with this '},


- Add these items to your `qb-doorlock > configs > noodle.lua`, this is for the doorlock. 

		-- created by ZKLS

		Config.DoorList['noodle-1'] = {
 		   doorType = 'double',
  		  distance = 3,
		    authorizedJobs = { ['noodle'] = 0 },
		    items = { ['masterkey'] = 1 },
		    doors = {
		        {objName = -564814338, objYaw = 30.000001907349, objCoords = vec3(-1231.075317, -285.682312, 37.941742)},
		        {objName = -564814338, objYaw = 210.00001525879, objCoords = vec3(-1229.304932, -284.786285, 37.941742)}
		    },
		    doorRate = 1.0,
		    doorLabel = 'Noodle Exchange',
		    locked = true,
		}


- ONE MORE OPTIONAL FEATURE WOULD BE TO ADD THIS TO JIMS CONSUMABLES CONFIG 

		-- Noodle Exchange 
		--Drink
		["mcdbluefrozen"] = { 		emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { thirst = math.random(20,30), }},
		["mcdcokefrozen"] = { 		emote = "drink", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(20,30), }},
		["mcdredfrozen"] = { 	emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(20,30), }},
		["mcddrpepper"] = { 	emote = "drink", 			canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(20,30), }},
		["mcdorangefanta"] = { 	emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", stats = { effect = "stamina", time = 10000, thirst = math.random(20,30), }},
		["mcdsprite"] = { 	emote = "drink", 			canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drug", stats = { thirst = math.random(20,30), }},
		--Food
		
		["butterednoodles"] = { 		emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["japanesepannoodles"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["spicykoreanbeefnoodles"] = { 	emote = "egobar", 		canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["noodlebowl"] = { 			emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},
		["ramen"] = { 			emote = "sandwich", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(20,30), }},


		--Poison Stuff 
		["pmcdbluefrozen"] = { 	emote = "drink", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = -200, armor = -200, type = "drink", stats = { thirst = math.random(10,20), screen = "trevor", canOD = true }},



# Dependencies:
- qb-target
- qb-menu

#### Credits:
**Original v1.0 Write:** xThrasherrr#6666 & Redline Studios


[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/thrasherrr)
