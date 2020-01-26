//Cargo
/datum/job/merchant
	title = "Chief Executive Officer"
	flag = MERCHANT
	department = DEPARTMENT_LSS
	head_position = 1
	department_flag = LSS | COMMAND
	faction = MAP_FACTION
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Nadezhda Council"
	selection_color = "#b3a68c"
	wage = WAGE_NONE	//Guild merchant draws a salary from the guild account
	also_known_languages = list(LANGUAGE_CYRILLIC = 80, LANGUAGE_SERBIAN = 100, LANGUAGE_JIVE = 80)
	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_merchant, access_mining,
		access_heads, access_mining_station, access_RC_announce, access_keycard_auth, access_sec_doors,
		access_eva, access_external_airlocks
	)
	ideal_character_age = 40
	minimum_character_age = 30

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_COG = 20,
		STAT_MEC = 15,
		STAT_VIG = 10
	)
	description = "You are the head of the local branch of the Lonestar Shipping Solutions and the coordinator of its affairs.<br>\
A staunch entrepreneur, you are motivated by profit, for the company and especially for yourself. You are here firstly to make as much money as you can and secondly to keep the crew supplied. You can order things at cargo using company funds, these will not magically replenish so you will run out of money quickly if you don't charge. Take payments by card or cash and deposit them into the guild account to enable more purchases.<br>\
<br>\
The guild also operates all the vendors on the ship, every credit paid into them goes to your guild account. Naturally operating is a two way street, you are expected, when necessary, to refill those vendors. Or send a technician to do it<br>\
<br>\
You do not recieve a salary, but the company funds are yours to use. You may pay yourself as much as you like from that account, take the funds and use them for any purpose.<br>\
<br>\
Things to bear in mind:<br>\
	-Nobody has a right to free stuff. You are well within your rights to charge for anything you distribute and you won't make a penny if you don't.<br>\
	-The colony has few laws on contraband. If someone wants something and they can afford it, you get it for them. Don't try to play moral guardian and don't ask questions. You are not responsible for whatever they do with your products.<br>\
	-Loyalty is a priceless resource, yet cheap to maintain. Don't screw over your staff working under you. <br>\
	-Charity is a tool. Used correctly, it can do wonders for your public image.  A few gifts spread around makes for good returning customers"

	duties = "Keep the crew supplied with anything they might need, at a healthy profit to you of course.<br>\
Buy up valueable items from scavengers and make a profit reselling them.<br>\
Deploy your mining staff to harvest matter and materials.<br>\
Counsel the council on directing the colony towards profitable opportunities."

	loyalties = "As the CEO, your first loyalty is to money. You should be unscrupulous, willing to sell anything to anyone if they can pay your prices. Direct the colony towards profitable endeavours and press the council to make choices that will be financially lucrative.<br>\
Your second loyalty is to the colony. Ensure it retains good relations with company like the other factions and don't embarass it. This means limiting your price gouging to only moderate levels. If you make an enemy of everyone, it may prove a costly mistake"

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

	outfit_type = /decl/hierarchy/outfit/job/cargo/merchant

	perks = list(/datum/perk/timeismoney)

/obj/landmark/join/start/merchant
	name = "Chief Executive Officer"
	icon_state = "player-beige-officer"
	join_tag = /datum/job/merchant



/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Executive Officer"
	selection_color = "#c3b9a6"
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_SERBIAN = 5, LANGUAGE_JIVE = 80)
	wage = WAGE_LABOUR_DUMB
	outfit_type = /decl/hierarchy/outfit/job/cargo/cargo_tech

	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining,
		access_mining_station
	)

	stat_modifiers = list(
		STAT_ROB = 10,
		STAT_TGH = 10,
		STAT_VIG = 10,
	)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/scanner,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)


	description = "You are a low ranking member of the Lonestar Shipping Solutions working as a cargo technician and junior salesmen apprenticing to the CEO.  You may one day take over his position. You are equal parts scavenger, loader, shopkeeper and salesman. Remember the companies core role here. To keep everyone supplied with everything they could need and to profit from this endeavour<br>\
<br>\
Your main duties are to keep the local company branch operational and profitable. To that end you should look out for all of the following tasks:"

	duties = "	-Delivering goods to persons or departments that ordered them<br>\
	-Staffing the front desk, taking payments and orders, buying up items from scavengers that come to sell things.<br>\
	-Visiting departments to take orders in person, ask if there's anything they need, and try to sell them unusual items that may aid their efforts.<br>\
	-Providing lesser services. Busted lights? Broken vendors? The guild can be there to help, for a small fee.<br>\
	-In quieter times, head into maintenance areas and scavenge for useful goods to resell."

	loyalties = "Your first loyalty is to yourself and survival. This colony is mostly just a paycheck to you.<br>\
		Your second loyalty is to the CEO, he ensures you're well paid and respected, in a universe where workers are often treated as interchangeable parts."

/obj/landmark/join/start/cargo_tech
	name = "Cargo Technician"
	icon_state = "player-beige"
	join_tag = /datum/job/cargo_tech

/datum/job/mining
	title = "Lonestar Miner"
	flag = MINER
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Executive Officer"
	selection_color = "#c3b9a6"
	wage = WAGE_LABOUR_HAZARD //The miners union is stubborn
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_SERBIAN = 5, LANGUAGE_JIVE = 80)

	outfit_type = /decl/hierarchy/outfit/job/cargo/mining

	description = "You are an professional miner, working in resource procurement for the local branch of the Lonestar.<br>\
Your primary responsibility is to down the access elevator to the deep tunnels and dig up as much ore as you can. The outpost contains all the facilities to process that ore too and allows you to deliver refined materials ready for use.<br>\
<br>\
All the stuff you dig up goes to the cargo department and from then on it's the CEO or cargo tech's responsibility to sell it to other departments. <br>\
<br>\
Character Expectations:<br>\
	Miners should be tough and physically strong. Unafraid to get their hands dirty.<br>\
	You should be competent in a heavy suit and in operating heavy machinery."


	duties = "Dig up ores and minerals, process them into useable material."

	loyalties = "	Your first loyalty is to yourself and survival. This colony is mostly just a paycheck to you.<br>\
	Your second loyalty is to the CEO, he ensures you're well paid and respected, in a universe where workers are often treated as interchangeable parts.	"

	access = list(
		access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining,
		access_mining_station
	)


	stat_modifiers = list(
		STAT_ROB = 15,
		STAT_TGH = 15,
		STAT_VIG = 15,
		STAT_MEC = 15
	)

	software_on_spawn = list(///datum/computer_file/program/supply,
							 ///datum/computer_file/program/deck_management,
							 /datum/computer_file/program/wordprocessor,
							 /datum/computer_file/program/reports)

/obj/landmark/join/start/mining
	name = "Lonestar Miner"
	icon_state = "player-beige"
	join_tag = /datum/job/mining
