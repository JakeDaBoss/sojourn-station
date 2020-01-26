/* Closets for specific jobs
 * Contains:
 *		Bartender
 *		Janitor
 *		Lawyer
 *		Acolyte
 */

/*
 * Bartender
 */
/obj/structure/closet/gmcloset
	name = "formal closet"
	desc = "It's a storage unit for formal clothing."
	icon_door = "black"

/obj/structure/closet/gmcloset/populate_contents()
	new /obj/item/clothing/head/tophat(src)
	new /obj/item/clothing/head/tophat(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/clothing/head/hairflower
	new /obj/item/clothing/under/rank/bartender(src)
	new /obj/item/clothing/under/rank/bartender(src)
	new /obj/item/clothing/accessory/wcoat/black(src)
	new /obj/item/clothing/accessory/wcoat/black(src)
	new /obj/item/clothing/shoes/color/black(src)
	new /obj/item/clothing/shoes/color/black(src)

/*
 * Chef
 */
/obj/structure/closet/chefcloset
	name = "chef's closet"
	desc = "It's a storage unit for foodservice garments."
	icon_door = "black"

/obj/structure/closet/chefcloset/populate_contents()
	new /obj/item/clothing/under/costume/job/waiter(src)
	new /obj/item/clothing/under/costume/job/waiter(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/weapon/storage/box/mousetraps(src)
	new /obj/item/weapon/storage/box/mousetraps(src)
	new /obj/item/clothing/under/rank/chef(src)
	new /obj/item/clothing/head/rank/chef(src)

/*
 * Janitor
 */
/obj/structure/closet/jcloset
	name = "janitorial closet"
	desc = "It's a storage unit for janitorial clothes and gear."
	icon_door = "mixed"

/obj/structure/closet/jcloset/populate_contents()
	if(prob(50))
		new /obj/item/weapon/storage/backpack/sport/purple(src)
	else
		new /obj/item/weapon/storage/backpack/satchel(src)
	new /obj/item/clothing/under/rank/janitor(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/head/soft/purple(src)
	new /obj/item/clothing/head/beret/purple(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/device/lightreplacer(src)
	new /obj/item/weapon/storage/bag/trash(src)
	new /obj/item/clothing/shoes/galoshes(src)
	new /obj/item/weapon/mop(src)
	new /obj/item/weapon/soap/nanotrasen(src)
	new /obj/item/weapon/storage/pouch/small_generic(src) // Because I feel like poor janitor gets it bad.

/obj/structure/closet/custodial
	name = "custodial closet"
	desc = "It's a storage unit for janitorial clothes and gear."
	icon_state = "custodian"

/obj/structure/closet/custodial/populate_contents()
	new /obj/item/clothing/under/rank/church(src)
	new /obj/item/weapon/storage/belt/utility/neotheology(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/suit/space/void/custodian(src)
	new /obj/item/clothing/head/soft/purple(src)
	new /obj/item/clothing/head/beret/purple(src)
	new /obj/item/device/lighting/toggleable/flashlight(src)
	new /obj/item/weapon/gun/matter/launcher/nt_sprayer(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/weapon/caution(src)
	new /obj/item/device/lightreplacer(src)
	new /obj/item/weapon/storage/bag/trash(src)
	new /obj/item/clothing/shoes/galoshes(src)
	new /obj/item/weapon/mop(src)
	new /obj/item/weapon/soap/nanotrasen(src)
	new /obj/item/weapon/storage/pouch/small_generic(src) // Because I feel like poor janitor gets it bad.
	if(prob(50))
		new /obj/item/weapon/storage/backpack/neotheology(src)
	else
		new /obj/item/weapon/storage/backpack/satchel/neotheology(src)

/obj/structure/closet/acolyte
	name = "vector closet"
	desc = "A closet for those that work with the machines of god."
	icon_state = "acolyte"

/obj/structure/closet/acolyte/populate_contents()
	new /obj/item/clothing/under/rank/acolyte(src)
	new /obj/item/weapon/storage/belt/security/neotheology(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/device/radio/headset/church(src)
	new /obj/item/clothing/gloves/thick(src)
	new /obj/item/clothing/suit/space/void/acolyte(src)
	if(prob(50))
		new /obj/item/weapon/storage/backpack/neotheology(src)
	else
		new /obj/item/weapon/storage/backpack/satchel/neotheology(src)