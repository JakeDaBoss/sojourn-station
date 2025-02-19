#define CAT_NORMAL 1
#define CAT_HIDDEN 2
#define CAT_COIN   4

#define CUSTOM_VENDOMAT_MODELS list("Generic" = "generic", "Security" = "sec", "Electronics" = "cart", "Research" = "robotics", "Medical" = "med", "Engineering" = "engivend", "Engineering 2" = "engi", "Tools" = "tool", "Shady" = "sovietsoda", "Fridge" = "smartfridge", "Alcohol" = "boozeomat", "H&S" = "weapon", "Style" = "style", "Stylish Generic" = "trashvend", "Show Case" = "showcase", "Booze-o-mat" = "boozeomat", "Absolute" = "teomat", "Lonestar Power Cells" = "powermat", "Lonestar Disks" = "discomat")

/datum/wires/vending
	holder_type = /obj/machinery/vending
	wire_count = 4
	descriptions = list(
		new /datum/wire_description(VENDING_WIRE_THROW, "This wire leads to the item dispensor force controls."),
		new /datum/wire_description(VENDING_WIRE_CONTRABAND, "This wire appears connected to a reserve inventory compartment."),
		new /datum/wire_description(VENDING_WIRE_ELECTRIFY, "This wire seems to be carrying a heavy current."),
		new /datum/wire_description(VENDING_WIRE_IDSCAN, "This wire is connected to the ID scanning panel."),
	)

var/const/VENDING_WIRE_THROW = 1
var/const/VENDING_WIRE_CONTRABAND = 2
var/const/VENDING_WIRE_ELECTRIFY = 4
var/const/VENDING_WIRE_IDSCAN = 8

/datum/wires/vending/CanUse(var/mob/living/L)
	var/obj/machinery/vending/V = holder
	if(!issilicon(L))
		if(V.seconds_electrified)
			if(V.shock(L, 100))
				return 0
	if(V.panel_open)
		return 1
	return 0

/datum/wires/vending/GetInteractWindow()
	var/obj/machinery/vending/V = holder
	. += ..()
	. += "<BR>The orange light is [V.seconds_electrified ? "off" : "on"].<BR>"
	. += "The red light is [V.shoot_inventory ? "off" : "blinking"].<BR>"
	. += "The green light is [(V.categories & CAT_HIDDEN) ? "on" : "off"].<BR>"
	. += "The [V.scan_id ? "purple" : "yellow"] light is on.<BR>"

/datum/wires/vending/UpdatePulsed(var/index)
	var/obj/machinery/vending/V = holder
	switch(index)
		if(VENDING_WIRE_THROW)
			V.shoot_inventory = !V.shoot_inventory
		if(VENDING_WIRE_CONTRABAND)
			V.categories ^= CAT_HIDDEN
		if(VENDING_WIRE_ELECTRIFY)
			V.seconds_electrified = 30
		if(VENDING_WIRE_IDSCAN)
			V.scan_id = !V.scan_id

/datum/wires/vending/UpdateCut(var/index, var/mended)
	var/obj/machinery/vending/V = holder
	switch(index)
		if(VENDING_WIRE_THROW)
			V.shoot_inventory = !mended
		if(VENDING_WIRE_CONTRABAND)
			V.categories &= ~CAT_HIDDEN
		if(VENDING_WIRE_ELECTRIFY)
			if(mended)
				V.seconds_electrified = 0
			else
				V.seconds_electrified = -1
		if(VENDING_WIRE_IDSCAN)
			V.scan_id = 1
