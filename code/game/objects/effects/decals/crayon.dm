/obj/effect/decal/cleanable/crayon
	name = "rune"
	desc = "A rune drawn in crayon."
	icon = 'icons/obj/rune.dmi'
	plane = DIRTY_PLANE
	layer = DIRTY_LAYER
	anchored = TRUE

<<<<<<< HEAD
/obj/effect/decal/cleanable/crayon/New(location,main = "#FFFFFF",shade = "#000000",var/type = "rune")
	..()
	loc = location

=======
/obj/effect/decal/cleanable/crayon/Initialize(var/ml, main = "#FFFFFF",shade = "#000000",var/type = "rune")
	. = ..(ml, 0) // mapload, age
>>>>>>> a2c68d9a8df... Sheet storage has different caps per type. (#9029)
	name = type
	desc = "A [type] drawn in crayon."

	switch(type)
		if("rune")
			type = "rune[rand(1,6)]"
		if("graffiti")
			type = pick("amyjon","face","matt","revolution","engie","guy","end","dwarf","uboa")

	var/icon/mainOverlay = new/icon('icons/effects/crayondecal.dmi',"[type]",2.1)
	var/icon/shadeOverlay = new/icon('icons/effects/crayondecal.dmi',"[type]s",2.1)

	mainOverlay.Blend(main,ICON_ADD)
	shadeOverlay.Blend(shade,ICON_ADD)

	add_overlay(mainOverlay)
	add_overlay(shadeOverlay)

	add_hiddenprint(usr)
