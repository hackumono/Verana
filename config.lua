    bindOnlyGlobalAddress = true
    accountManager = false
    namelockManager = false
	newPlayerChooseVoc = false
	newPlayerSpawnPosX = 32369
	newPlayerSpawnPosY = 32241
	newPlayerSpawnPosZ = 7
	newPlayerTownId = 1
	newPlayerLevel = 8
	newPlayerMagicLevel = 0
	generateAccountNumber = false

	useFragHandler = true
	redSkullLength = 1 * 24 * 60 * 60
	blackSkullLength = 2 * 24 * 60 * 60
	dailyFragsToRedSkull = 10
	weeklyFragsToRedSkull = 50
	monthlyFragsToRedSkull = 150
	dailyFragsToBlackSkull = dailyFragsToRedSkull
	weeklyFragsToBlackSkull = weeklyFragsToRedSkull
	monthlyFragsToBlackSkull = monthlyFragsToRedSkull
	dailyFragsToBanishment = weeklyFragsToRedSkull
	weeklyFragsToBanishment = monthlyFragsToRedSkull
	monthlyFragsToBanishment = monthlyFragsToRedSkull
	blackSkulledDeathHealth = 40
	blackSkulledDeathMana = 0
	useBlackSkull = false
	advancedFragList = true

	notationsToBan = 3
	warningsToFinalBan = 12
	warningsToDeletion = 25
	banLength = 1 * 24 * 60 * 60
	killsBanLength = 1 * 24 * 60 * 60
	finalBanLength = 7 * 24 * 60 * 60
	ipBanishmentLength = 3 * 24 * 60 * 60
	broadcastBanishments = true
	maxViolationCommentSize = 200
	violationNameReportActionType = 2
	autoBanishUnknownBytes = false

	worldType = "open"
	protectionLevel = 30
	paralyzeDelay = 1400
	pvpTileIgnoreLevelAndVocationProtection = true
	pzLocked = 60 * 1000
	huntingDuration = 60 * 1000
	criticalHitChance = 7
	criticalHitMultiplier = 1
	displayCriticalHitNotify = false
	removeWeaponAmmunition = true
	removeWeaponCharges = true
	removeRuneCharges = true
	whiteSkullTime = 5 * 60 * 1000
	noDamageToSameLookfeet = false
	showHealingDamage = true
	showHealingDamageForMonsters = true
	fieldOwnershipDuration = 5 * 1000
	stopAttackingAtExit = false
	loginProtectionPeriod = 10 * 1000
	deathLostPercent = 15
	stairhopDelay = 2 * 1000
	pushCreatureDelay = 500
	deathContainerId = 1987
	gainExperienceColor = 215
	addManaSpentInPvPZone = true
	squareColor = 0
	allowFightback = true
	fistBaseAttack = 7

	worldId = 0
	ip = "verana.sytes.net"
	loginPort = 7171
	gamePort = 7172
	loginTries = 10
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = 1000
	motd = "Welcome to Verana-Global!" 
	displayOnOrOffAtCharlist = false
	onePlayerOnlinePerAccount = false
	allowClones = false
	serverName = "Verana"
	statusTimeout = 5 * 60 * 1000
	replaceKickOnLogin = true
	forceSlowConnectionsToDisconnect = true
	loginOnlyWithLoginServer = false
	premiumPlayerSkipWaitList = false

	sqlType = "mysql"
	sqlHost = "localhost"
	sqlPort = 3306
	sqlUser = "phpmyadmin"
	sqlPass = "rok223@@"
	sqlDatabase = "verana"
	sqlFile = "Helysia.s3db"
	sqlKeepAlive = 0
	mysqlReadTimeout = 10
	mysqlWriteTimeout = 10
	encryptionType = "sha1"

	deathListEnabled = true
	deathListRequiredTime = 1 * 60 * 1000
	deathAssistCount = 19
	maxDeathRecords = 5

	ingameGuildManagement = false
	levelToFormGuild = 8
	premiumDaysToFormGuild = 1
	guildNameMinLength = 4
	guildNameMaxLength = 20

	highscoreDisplayPlayers = 15
	updateHighscoresAfterMinutes = 60

	buyableAndSellableHouses = true
	houseNeedPremium = true
	bedsRequirePremium = true
	levelToBuyHouse = 100
	housesPerAccount = 1
	houseRentAsPrice = true
	housePriceAsRent = false
	housePriceEachSquare = 1000
	houseRentPeriod = "weekly"
	houseCleanOld = 0
	guildHalls = false

	timeBetweenActions = 200
	timeBetweenExActions = 1000
	hotkeyAimbotEnabled = true

	mapName = "Nastia.otbm"
	mapAuthor = "Tylik"
	randomizeTiles = true
	storeTrash = true
	cleanProtectedZones = true
	mailboxDisabledTowns = ""

	defaultPriority = "high"
	niceLevel = 5
	coresUsed = "-1"

	startupDatabaseOptimization = true
	updatePremiumStateAtStartup = true
	confirmOutdatedVersion = false

	formulaLevel = 5.0
	formulaMagic = 1.0
	bufferMutedOnSpellFailure = false
	spellNameInsteadOfWords = false
	emoteSpells = true

	allowChangeOutfit = true
	allowChangeColors = true
	allowChangeAddons = true
	disableOutfitsForPrivilegedPlayers = false
	addonsOnlyPremium = false

	dataDirectory = "data/"
	logsDirectory = "data/logs/"
	bankSystem = true
	displaySkillLevelOnAdvance = false
	promptExceptionTracerErrorBox = true
	maximumDoorLevel = 500
	maxMessageBuffer = 4

	separateVipListPerCharacter = false
	vipListDefaultLimit = 100
	vipListDefaultPremiumLimit = 100

	saveGlobalStorage = true
	useHouseDataStorage = true
	storePlayerDirection = false

	checkCorpseOwner = true
	monsterLootMessage = 3
	monsterLootMessageType = 25

	ghostModeInvisibleEffect = false
	ghostModeSpellEffects = true

	idleWarningTime = 9999999999999
	idleKickTime = 99999999999999
	reportsExpirationAfterReads = 1
	playerQueryDeepness = 2
	tileLimit = 7
	protectionTileLimit = 7
	houseTileLimit = 7

	freePremium = true
	premiumForPromotion = true

	blessings = true
	blessingOnlyPremium = true
	blessingReductionBase = 30
	blessingReductionDecrement = 5
	eachBlessReduction = 17

	experienceStages = true
	rateExperience = 500.0
	rateExperienceFromPlayers = 3
	rateSkill = 10
	rateMagic = 5
	rateLoot = 1.5
	rateSpawn = 3

	rateMonsterHealth = 1.0
	rateMonsterMana = 1.0
	rateMonsterAttack = 1.0
	rateMonsterDefense = 1.0

	minLevelThresholdForKilledPlayer = 0.9
	maxLevelThresholdForKilledPlayer = 1.1

	rateStaminaLoss = 1
	rateStaminaGain = 4
	rateStaminaThresholdGain = 12
	staminaRatingLimitTop = 40 * 60
	staminaRatingLimitBottom = 14 * 60
	staminaLootLimit = 14 * 60
	rateStaminaAboveNormal = 1.5
	rateStaminaUnderNormal = 0.5
	staminaThresholdOnlyPremium = false

	experienceShareRadiusX = 30
	experienceShareRadiusY = 30
	experienceShareRadiusZ = 1
	experienceShareLevelDifference = 2 / 3
	extraPartyExperienceLimit = 20
	extraPartyExperiencePercent = 5
	experienceShareActivity = 2 * 60 * 1000

	globalSaveEnabled = false
	globalSaveHour = 8
	globalSaveMinute = 0
	shutdownAtGlobalSave = false
	cleanMapAtGlobalSave = true

	deSpawnRange = 3
	deSpawnRadius = 50

	maxPlayerSummons = 2
	teleportAllSummons = false
	teleportPlayerSummons = false

	statusPort = 7171
	ownerName = "Verana"
	ownerEmail = ""
	url = ""
	location = "Chicago"
	displayGamemastersWithOnlineCommand = false
	
	sendAfk = false

	displayPlayersLogging = true
	prefixChannelLogs = ""
	runFile = ""
	outputLog = ""
	truncateLogsOnStartup = false

	managerPort = 7171
	managerLogs = false
	managerPassword = ""
	managerLocalhostOnly = false
	managerConnectionsLimit = 1

	adminPort = 7171
	adminLogs = true
	adminPassword = ""
	adminLocalhostOnly = true
	adminConnectionsLimit = 1
	adminRequireLogin = true
	adminEncryption = ""
	adminEncryptionData = ""
