/obj/structure/closet/secure_closet/personal/scientist
	name = "soteria scientist's locker"
	req_access = list(access_rd)
	access_occupy = list(access_tox_storage)
	icon_state = "science"

/obj/structure/closet/secure_closet/personal/scientist/populate_contents()
	if(prob(50))
		new /obj/item/weapon/storage/backpack/purple/scientist(src)
	else
		new /obj/item/weapon/storage/backpack/satchel/purple/scientist(src)
	new /obj/item/clothing/under/rank/scientist(src)
	//new /obj/item/clothing/suit/labcoat/science(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat(src)
	new /obj/item/clothing/shoes/jackboots(src)
	new /obj/item/device/radio/headset/headset_sci(src)
	new /obj/item/weapon/tank/air(src)
	new /obj/item/clothing/mask/gas(src)

/obj/structure/closet/secure_closet/reinforced/RD
	name = "soteria research overseer's locker"
	req_access = list(access_rd)
	icon_state = "rd"

/obj/structure/closet/secure_closet/reinforced/RD/populate_contents()
	new /obj/item/weapon/storage/backpack/satchel/leather/withwallet(src)
	new /obj/item/clothing/suit/bio_suit/scientist(src)
	new /obj/item/clothing/head/bio_hood/scientist(src)
	new /obj/item/clothing/under/rank/expedition_overseer(src)
	new /obj/item/clothing/suit/storage/toggle/labcoat(src)
	new /obj/item/clothing/shoes/color(src)
	new /obj/item/clothing/shoes/leather(src)
	new /obj/item/clothing/gloves/latex(src)
	new /obj/item/device/radio/headset/heads/rd(src)
	new /obj/item/weapon/tank/air(src)
	new /obj/item/clothing/mask/gas(src)
	new /obj/item/device/flash(src)
