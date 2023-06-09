
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.75 -- sell for 75% of the original price

cfg.garage_types = {
  ["Fisher's Boat"] = {
    _config = {vtype="boat",blipid=427,blipcolor=28,permissions={"fisher.vehicle"}},
    ["suntrap"] = {"Fisher's boat",0, "Your favorite boat!"}
  },
  
  ["High End"]  = {  -- 150k price cap
    _config = {vtype="car",blipid=50,blipcolor=4},
	["gtr"] = {"GTR Nismo",15000, ""},
	["hondacivictr"] = {"Honda Civic Type R",16000, ""},
	["focus2003"] = {"Ford Focus",7000, ""},
    ["fx50s"] = {"Infinity Fx50s",16000, ""}
  },
  ["Bicycles"]  = {  -- bikes
    _config = {vtype="car",blipid=376,blipcolor=2},
    
  },

  ["Mid Range"] = { -- 75k price cap
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["p207"] = {"Peugeot 207", 3000, ""},
    ["camry18"] = {"Toyota Camry", 6000, ""},
    ["sentinel"] = {"Audi S5", 6000, ""},
    ["audis8om"] = {"Audi S8", 8000, ""},
	["urban"] = {"Lada Niva",3000, ""},
	["kuruma"] = {"Lancer Evo",6000, ""},
	["gl63"] = {"Mercedes GL63",35000, ""},
	["elegy"] = {"Skyline GTR",16000, ""}
  },

  ["Exotic Cars"] = {
    _config = {vtype="car",blipid=50,blipcolor=5},
    ["c5rs6"] = {"Audi RS4 Avant",50000, ""},
    ["rs6pd600"] = {"Audi RS6",63000, ""},
    ["sq72016"] = {"Audi SQ7",108000, ""}, 
    ["e46"] = {"BMW M3 E46",35000, ""},
    ["bmwm4"] = {"BMW M4 Drift",40000, ""},
    ["16m5"] = {"BMW M5",35000, ""},
    ["e60"] = {"BMW M5 E60",30000, ""},
    ["m516"] = {"BMW M5 Coupe",45000, ""},
    ["x5e53"] = {"BMW X5",90000, ""},
    ["x6m"] = {"BMW X6",140000, ""},
    ["veln"] = {"Hundai Veln",20000, ""},
    ["lada"] = {"Lada Tuning",7000, "Not free yet"},
	["18performante"] = {"Lamborghini Huracan",340000,""},
    ["cls2015"] = {"Mercedes-Benz CLS 2015",130000,""},
    ["s500w222"] = {"Mercedes-Benz S500",30000, ""},
    ["g65amg"] = {"Mercedes-Benz G65",180000, ""},
    ["gl63"] = {"Mercedes GL63",700000, ""},
    ["c63vip"] = {"Mercedes C63 VIP",90000, ""},
    ["w222wald"] = {"Mercedes WALD",86000, ""},
    ["patrold"] = {"Nissan Patrol Off-Road",16000, ""}, -- ofroad
    ["pcs18"] = {"Porsche Cayenne",75000, ""},
    ["panamera18"] = {"Porsche Panamera Turbo",114000, ""},
	["aperta"] = {"Ferarri Aperta",400000,""},
    ["f430s"] = {"Ferrary F430s",300000, ""},
    ["mst"] = {"Ford Mustang Shelby",34000, ""},
    ["eleanor"] = {"Ford Mustang Shelby GT500",31000, ""},
    ["rrst"] = {"Range Rover", 120000, ""},
    --["wraith"] = {"Rolls Royce", 800000, ""},
    ["exor"] = {"Chevrolet Camaro Tuning",100000, ""},
    ["ySbrImpS11"] = {"Subaru Impreza",20000, ""},
    ["sultanrs"] = {"Sultan RS",18000, ""},
    ["teslax"] = {"Telsa Model X",300000, ""},
    ["amarok"] = {"Volkswagen Amarok",46000, ""},
    ["passat"] = {"Volkswagen Passat",34000, ""}
	
  },

  ["sportsclassics"] = {
    _config = {vtype="car",blipid=50,blipcolor=5},
	["renault16"] = {"Renault Retro",3500, ""}
  },

  ["new additions"] = {
    _config = {vtype="car",blipid=50,blipcolor=5}
  },

  ["Starter Vehicles"] = {  -- 15k price cap
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["2011mazda2"] = {"Mazda 2",500, ""},
    ["2108"] = {"LADA Спутник",300, ""},
    ["gx460"] = {"Lexus GX460",4000, ""}
  },
  ["Formula"] = {  --formula 1
    _config = {vtype="car",blipid=546,blipcolor=5},
    ["r15"] = {"Formula 1",1000000, "You can use this car only here(Airport)"}
  },

  ["Off Road"] = {
    _config = {vtype="car",blipid=50,blipcolor=4},
	["urban"] = {"Lada Niva",7000, ""},
	["patrold"] = {"Nissan Patrol Off-Road",5000, ""},
    ["brawler"] = {"Brawler",10000, ""},
    ["dubsta3"] = {"Bubsta 6x6",100000, ""},
    ["rebel2"] = {"Rebel",15000, ""},
	["fordh"] = {"Ford H",15000, ""},
	["raptor2017"] = {"Ford Velociraptor",350000, ""},
    ["sandking"] = {"Sandking",10000, ""},
	["sandkinghd"] = {"Sandking Monster Truck",550000, ""},
    ["trophytruck"] = {"The Liberator",75000, ""},
	["monster"] = {"The Liberator Monster",500000, ""},
    ["bifta"] = {"Bifta",1000, ""}, -- atvs start here
    ["blazer"] = {"Blazer",1200, ""},
    ["dune"] = {"Dune Buggy",8000, ""}
  },

  ["Low End"]  = {  -- 30k price cap
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["dukes"] = {"Dukes",0, ""}
  },

  ["vans"] = {
    _config = {vtype="car",blipid=50,blipcolor=4}
  },

  ["sedans"] = {
    _config = {vtype="car",blipid=50,blipcolor=4}
  },

  ["Motorcycles"] = {
    _config = {vtype="bike",blipid=226,blipcolor=4},
	["trr"] = {"KTM Duke",5400, ""},
    ["AKUMA"] = {"Akuma",9000, ""},
    ["bagger"] = {"Bagger",7000, ""},
    ["bati"] = {"Bati 801",10000, ""},
    ["bati2"] = {"Bati 801RR",10000, ""},
    ["bf400"] = {"BF400",6000, ""},
	["lectro"] = {"BMW R75 Bobber",10000, ""},
    ["carbonrs"] = {"Carbon RS",11000, ""},
    ["cliffhanger"] = {"Cliffhanger",13000, ""},
	["f131"] = {"Confederate F131 Hellcat",45000, ""},
    ["double"] = {"Double T",9000, ""},
    ["enduro"] = {"Enduro",6000, ""},
    ["faggio2"] = {"Faggio",1000, ""},
    ["gargoyle"] = {"Gargoyle",10000, ""},
    ["hakuchou"] = {"Hakuchou",20000, ""},
	["daemon"] = {"Harley Knucklehead",20000, ""},
    ["hexer"] = {"Hexer",15000, ""},
    ["innovation"] = {"Innovation",20000, ""},
    ["nemesis"] = {"Nemesis",12000, ""},
    ["pcj"] = {"PCJ-600",7000, ""},
    ["ruffian"] = {"Ruffian",7000, ""},
    ["sanchez"] = {"Sanchez",3000, ""},
    ["sovereign"] = {"Sovereign",1000, ""}, -- looking for replacement
    ["thrust"] = {"Thrust",12000, ""},
    ["vader"] = {"Vader",7000, ""},
    ["vindicator"] = {"Vindicator",12000,""}
  },
 ----------   
  ["House Garage"] = {  -- tui ne go gledai
    _config = {vtype="car",blipid=357,blipcolor=69},
	  ["2011mazda2"] = {"Mazda 2",500, ""},
    ["a3quattro"] = {"Audi A3 2",4000, ""},
    ["2108"] = {"LADA Спутник",300, ""},
    ["gx460"] = {"Lexus GX460",4000, ""},
    ["panto"] = {"Panto", 200, ""},
	
    ["giulia"] = {"Alfa Romeo Giulia",30000, ""},
    ["stelvio"] = {"Alfa Romeo Stelvio",35000, ""},
    ["c5rs6"] = {"Audi RS4 Avant",50000, ""},
    ["rs6pd600"] = {"Audi RS6",63000, ""},
    ["r8ppi"] = {"Audi R8",80000, ""},
    ["sq72016"] = {"Audi SQ7",108000, ""}, 
    ["s4a"] = {"Audi S4",17000, ""},
    ["e46"] = {"BMW M3 E46",35000, ""},
    ["bmwm4"] = {"BMW M4 Drift",40000, ""},
    ["16m5"] = {"BMW M5",35000, ""},
    ["e60"] = {"BMW M5 E60",30000, ""},
    ["m516"] = {"BMW M5 Coupe",45000, ""},
    ["x5e53"] = {"BMW X5",90000, ""},
    ["x6m"] = {"BMW X6",140000, ""},
    ["17m760i"] = {"BMW 760 I",35000, ""},
    ["q30"] = {"Infinity Q30",35000, ""},
    ["66fastback"] = {"Fastback Drag",14000, "10 - (less numner better car"},
    ["fpace"] = {"Jaguar F-pace",80000, ""},
    ["veln"] = {"Hundai Veln",20000, ""},
    ["p1lm"] = {"MClaren P1",500000, ""},
    ["kia"] = {"Kia",14000, ""},
    ["lada"] = {"Lada Tuning",7000, "Not free yet"},
    ["urus"] = {"Lamborghini Urus",130000, ""},
	["18performante"] = {"Lamborghini Huracan",340000,""},
    ["alfieri"] = {"Maserati Alfieri",70000, ""},
    ["cls2015"] = {"Mercedes-Benz CLS 2015",130000,""},
    ["s500w222"] = {"Mercedes-Benz S500",30000, ""},
    ["g65amg"] = {"Mercedes-Benz G65",180000, ""},
    ["gl63"] = {"Mercedes GL63",700000, ""},
    ["c63vip"] = {"Mercedes C63 VIP",90000, ""},
    ["macla"] = {"Mercedes CLA",85000, ""},
    ["w222wald"] = {"Mercedes WALD",86000, ""},
    ["370z"] = {"Nissan Nismo 370z",45000, ""},
    ["patrold"] = {"Nissan Patrol Off-Road",16000, ""},
    ["pcs18"] = {"Porsche Cayenne",75000, ""},
    ["panamera18"] = {"Porsche Panamera Turbo",114000, ""},
	["aperta"] = {"Ferarri Aperta",400000,""},
    ["f430s"] = {"Ferrary F430s",300000, ""},
    ["mst"] = {"Ford Mustang Shelby",34000, ""},
    ["eleanor"] = {"Ford Mustang Shelby GT500",31000, ""},
    ["rrst"] = {"Range Rover", 120000, ""},
    ["wraith"] = {"Rolls Royce", 800000, ""},
    ["exor"] = {"Chevrolet Camaro Tuning",100000, ""},
    ["ySbrImpS11"] = {"Subaru Impreza",20000, ""},
    ["sultanrs"] = {"Sultan RS",18000, ""},
    ["teslax"] = {"Telsa Model X",300000, ""},
    ["amarok"] = {"Volkswagen Amarok",46000, ""},
    ["passat"] = {"Volkswagen Passat",34000, ""},

    ["urban"] = {"Lada Niva",7000, ""},
	["patrold"] = {"Nissan Patrol Off-Road",5000, ""},
    ["brawler"] = {"Brawler",10000, ""},
    ["dubsta3"] = {"Bubsta 6x6",100000, ""},
    ["rebel2"] = {"Rebel",15000, ""},
	["fordh"] = {"Ford H",15000, ""},
	["raptor2017"] = {"Ford Velociraptor",350000, ""},
    ["sandking"] = {"Sandking",10000, ""},
	["sandkinghd"] = {"Sandking Monster Truck",550000, ""},
    ["trophytruck"] = {"The Liberator",75000, ""},
	["monster"] = {"The Liberator Monster",500000, ""},
    ["bifta"] = {"Bifta",1000, ""}, -- atvs start here
    ["blazer"] = {"Blazer",1200, ""},
    ["dune"] = {"Dune Buggy",8000, ""},

    ["trr"] = {"KTM Duke",5400, ""},
    ["AKUMA"] = {"Akuma",9000, ""},
    ["bagger"] = {"Bagger",7000, ""},
    ["bati"] = {"Bati 801",10000, ""},
    ["bati2"] = {"Bati 801RR",10000, ""},
    ["bf400"] = {"BF400",6000, ""},
	["lectro"] = {"BMW R75 Bobber",10000, ""},
    ["carbonrs"] = {"Carbon RS",11000, ""},
    ["cliffhanger"] = {"Cliffhanger",13000, ""},
	["f131"] = {"Confederate F131 Hellcat",45000, ""},
    ["double"] = {"Double T",9000, ""},
    ["enduro"] = {"Enduro",6000, ""},
    ["faggio2"] = {"Faggio",1000, ""},
    ["gargoyle"] = {"Gargoyle",10000, ""},
    ["hakuchou"] = {"Hakuchou",20000, ""},
	["daemon"] = {"Harley Knucklehead",20000, ""},
    ["hexer"] = {"Hexer",15000, ""},
    ["innovation"] = {"Innovation",20000, ""},
    ["nemesis"] = {"Nemesis",12000, ""},
    ["pcj"] = {"PCJ-600",7000, ""},
    ["ruffian"] = {"Ruffian",7000, ""},
    ["sanchez"] = {"Sanchez",3000, ""},
    ["sovereign"] = {"Sovereign",1000, ""}, -- looking for replacement
    ["thrust"] = {"Thrust",12000, ""},
    ["vader"] = {"Vader",7000, ""},
    ["vindicator"] = {"Vindicator",12000,""}
  },
  
  ["police"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"police.vehicle"}},
    ["polgs350"] = {"Police Lexus",0, "police"},
    ["policebee"] = {"Police Turtle",0, "police"},
    ["policegt350r"] = {"Police Mustang GT",0, "police"},
    ["police"] = {"Police Cruiser",0, "police"},
    ["polchiron"] = {"Bugatti Chiron",0, "police"},
    ["police2"] = {"Dodge Sheriff",0, "police"},
    ["police66"] = {"Police FORD SUV",0, "police"},
    ["police6"] = {"Police K9",0, "police"},
    ["sheriff3"] = {"Sheriff",0, "police"},
    ["sheriff2"] = {"Sheriff SUV",0, "police"},
    ["sheriff"] = {"2015 Sheriff",0, "police"},
    ["riot"] = {"SWAT",0, "police"},
    ["flatbed"] = {"Tow Truck",0, "police"},
	  ["fbi"] = {"Unmarked",0, "police"}
  },
  ["Cadet"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"Cadet.vehicle"}},
	  ["polgs350"] = {"Police Lexus",0, "police"},
    ["policebee"] = {"Police Turtle",0, "police"}
  },
  ["Bounty"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"Bounty.vehicle"}},
    ["fbi"] = {"Unmarked",0, "police"}
  },
  ["emergency"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"emergency.vehicle"}},
    ["vtp1"] = {"Линейка",0, "emergency"},
    ["vlcc"] = {"Bani4arka",0, "emergency"},
    ["vlcg"] = {"Dacia Duster",0, "emergency"},
	["emsford"] = {"Ford",4000, "emergency"},
	["firetruk"] = {"firetruk",0, "emergency"}
  },
  ["Police Helicopters"] = {
    _config = {vtype="car",blipid=43,blipcolor=38,radius=5.1,permissions={"police.vehicle"}},
    ["polmav"] = {"Maverick",0, "emergency"}
  },
   ["EMS Helicopters"] = {
    _config = {vtype="car",blipid=43,blipcolor=1,radius=5.1,permissions={"emergency.vehicle"}},
    ["supervolito2"] = {"EMS",0, "emergency"}
  },
   ["Mafia Garage"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"mafia.vehicle"}},
	["infernus"] = {"Infernus", 0, ""}, -- THIS IS JUST AN EXAMPLE , ADD MORE IF YOU WANT.
	["wraith"] = {"Rolls Royce", 0, ""}, -- THIS IS JUST AN EXAMPLE , ADD MORE IF YOU WANT.
	--["g65amg"] = {"Mercedes G65 AMG", 0, ""}, -- THIS IS JUST AN EXAMPLE , ADD MORE IF YOU WANT.
	--["s500w222"] = {"Mercedes S500 W222", 0, ""}, -- THIS IS JUST AN EXAMPLE , ADD MORE IF YOU WANT.
  },
  ["Pilotla"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"pilot.vehicle"}},
    ["jet"] = {"Boeing 747",0, "jet"}
  },
  ["Pilotsa"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"pilot.vehicle"}},
     ["mammatus"] = {"Small Cargo",0, "mammatus"}
  },
  ["airP"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"air.vehicle"}},
    ["vestra"] = {"Plane",0, "vestra"}
  },
  ["airH"] = {
    _config = {vtype="plane",blipid=43,blipcolor=30,permissions={"air.vehicle"}},
     ["volatus"] = {"Helicopter",0, "volatus"}
  }, 
  ["uber"] = {
    _config = {vtype="car",blipid=50,blipcolor=81,permissions={"uber.vehicle"}},
    ["taxi2"] = {"Yellow Taxi",0, "taxi2"}
  },
  ["UPS"] = {
    _config = {vtype="car",blipid=85,blipcolor=81,permissions={"ups.vehicle"}},
    ["boxville4"] = {"Delivery",0, "boxville4"}
  },
  ["Lawyer"] = {
    _config = {vtype="car",blipid=50,blipcolor=7,permissions={"Lawyer.vehicle"}},
    ["panto"] = {"Panto", 0, "panto"}
  },
  ["delivery"] = {
    _config = {vtype="bike",blipid=85,blipcolor=31,permissions={"delivery.vehicle"}},
    ["vwcaddy"] = {"Food Panda Car",0, "vwcaddy"}
  },
  -- ["santa"] = {
    -- _config = {vtype="bike",blipid=85,blipcolor=31,permissions={"santa.vehicle"}},
    -- ["hydra"] = {"Santa's Sled",0, "hydra"}
  -- },  
  ["repair"] = {
    _config = {vtype="car",blipid=50,blipcolor=31,permissions={"repair.vehicle"}},
    ["towtruck2"] = {"towtruck2",0, "towtruck2"},
	["utillitruck3"] = {"Utility Truck",0, "utillitruck3"}
  },
  ["bankdriver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"bankdriver.vehicle"}},
    ["stockade"] = {"stockade",0, "stockade"}
  },
  ["Trash Collector"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"trash.vehicle"}},
    ["trash"] = {"Truck",0, "trash"}
  },
  ["Medical Driver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"medical.vehicle"}},
    ["pony2"] = {"Medical Weed Van",0, "pony2"}
  }
  
  
}

-- {garage_type,x,y,z}
cfg.garages = {
  {"Formula",-1296.1520996094,-2306.330078125,14.086814880372},
  {"Starter Vehicles",141.66270446777,-1081.8083496094,29.192489624023},
  {"Starter Vehicles",-276.82424926758,-997.55938720704,25.100440979004},  --obshtina
  {"Starter Vehicles",1204.0343017578,-612.62298583984,65.971549987792},  -- new spqwn
  --{"new additions",853.93768310547,-2093.705078125,30.243104934692},
  {"Low End",1208.6527099609,-1262.5780029297,35.226768493652},
  {"Off Road",1777.6678466797,3335.7856445313,41.171855926514},
  {"High End",-361.62393188477,-132.71321105957,38.680068969727},
  {"Mid Range",717.70239257813,-1088.8958740234,22.360628128052},
  {"Exotic Cars",-59.240558624268,-1109.544921875,26.435819625854},
  {"Mid Range",1181.6231689453,2650.830078125,37.821151733398},
  {"sportsclassics",112.275, 6619.83, 31.8154},
  {"Motorcycles",-205.789, -1308.02, 31.2916},
  {"Motorcycles",-72.587715148926,-1121.0576171875,25.801111221314},
  {"police",451.2121887207,-1018.2822875977,28.495378494263},	-- jobs garage
  {"Cadet",451.2121887207,-1018.2822875977,28.495378494263}, --- cadet garage
  {"police",477.99038696289,-1020.9154663086,28.011201858521},
  {"Bounty",512.07818603516,-3052.1579589844,6.0687308311462},  
  {"police",1868.5435791016,3696.0295410156,33.5693359375},  -- sandy shores
  {"police",-476.92425537109,6026.9951171875,31.340547561646},  -- paleto
  {"emergency",358.91650390625, -607.78515625, 28.6820983886719}, -- main
  {"emergency",1833.3223876953,3661.3088378906,33.875843048096}, -- sandy shores
  {"emergency",-255.98040771484,6346.1127929688,32.426189422607}, -- paleto
  {"uber",907.38049316406,-175.86546325684,74.130157470703}, -- jobs garage
  {"Lawyer",-1900.7344970703,-560.89245605469,11.802397727966},-- jobs garage
  {"delivery",971.19134521484,-1019.8579711914,40.931499481202},   -- jobs garage  --food panda
  {"delivery",-45.379055023194,-1082.5317382812,26.700212478638},   -- jobs garage  --food panda
  {"repair",401.42602539063,-1631.7053222656,29.291942596436},   -- jobs garage
  {"bankdriver",222.68756103516,222.95631408691,105.41331481934},   -- jobs garage
  {"House Garage",-638.08142089844,56.500617980957,43.794803619385},  -- house garage
  {"House Garage",-1457.4909667969,-500.61614990234,32.202766418457},
  {"House Garage",-25.273494720459,-1434.4365234375,30.653142929077},
  {"House Garage",-1191.1796875,-1494.337890625,4.379668712616}, --fixed
  {"House Garage",-872.43200683594,-370.17984008789,38.360645294189},
  {"House Garage",-354.92651367188,6222.3588867188,31.488939285278},
  {"House Garage",-819.40551757813,183.72904968262,72.136161804199},
  {"House Garage",15.016004562378,547.76171875,176.14279174805},
  {"UPS",69.852645874023,117.0472946167,79.126907348633},
  {"House Garage",1977.1169433594,3827.2368164063,32.373237609863},
  {"House Garage",2480.5893554688,4953.958984375,45.026481628418},
  {"House Garage",15.016004562378,547.76171875,176.14279174805},
  {"House Garage",-1415.1351318359,-956.41815185547,7.2369647026062},
  {"House Garage",497.44073486328,-1702.4410400391,29.400140762329},
  {"House Garage",684.44097900391,-719.58734130859,25.884830474854},
  {"House Garage",1230.9146728516,-2678.0639648438,2.7148849964142},
  {"House Garage",-796.00256347656,304.55578613281,85.700416564941},
  {"House Garage",-259.08013916016,-680.39465332031,32.830478668213},
  {"House Garage",-72.769035339355,495.79925537109,144.10296630859},
  {"House Garage",-121.71002960205,509.85540771484,142.5652923584},
  {"House Garage",-188.32077026367,502.87573242188,134.23774719238},
  {"House Garage",131.78851318359,568.10815429688,183.4107208252},
  {"House Garage",1366.5837402344,1147.4722900391,113.41327667236 },
  {"House Garage",-36.333103179932,-674.09722900391,32.33805847168},
  {"Mafia Garage",1409.9451904297,3620.3876953125,34.894344329834},
  {"House Garage",1274.7135009766,-1732.7083740234,52.04536819458},
  {"House Garage",34.516819000244,6604.0004882813,32.449085235596},
  {"House Garage",-555.20428466797,664.56500244141,145.16401672363},
  {"Police Helicopters",449.30340576172,-981.24963378906,43.69165802002}, -- Main PD
  {"Police Helicopters",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"Police Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay
  {"EMS Helicopters",449.30340576172,-981.24963378906,43.69165802002}, -- Main PD
  {"EMS Helicopters",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"EMS Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay  
  {"Fisher's Boat",1508.8854980469,3908.5732421875,30.031631469727},
  {"Medical Driver",-319.82263183594,-942.8408203125,31.080617904663},
  {"Pilotsa",-901.70129394531,-3293.984375,13.944430351257},
  {"Pilotsa",2128.9069824219,4806.134765625,41.168750762939},
  {"Pilotsa",1734.9053955078,3297.9689941406,41.223503112793},
  {"airP",2128.9069824219,4806.134765625,41.168750762939},
  {"airH",-745.14343261719,-1468.5361328125,5.0005240440369},
  {"airP",1734.9053955078,3297.9689941406,41.223503112793},
  -- {"Santa",-1345.333984375,-2692.7885742188,13.944937705994}  
  {"Trash Collector",768.86297607422,-1410.4896240234,26.502605438232}
 
  
  
 ---1155.4564208984,-1520.1595458984,4.3468327522278
  
  --{"planes",1640, 3236, 40.4},
  --{"planes",2123, 4805, 41.19},
  --{"planes",-1348, -2230, 13.9},
  --{"helicopters",-1233, -2269, 13.9},
  --{"helicopters",-745, -1468, 5},
  --{"boats",-849.5, -1368.64, 1.6},
  --{"boats",1538, 3902, 30.35}
}

return cfg
