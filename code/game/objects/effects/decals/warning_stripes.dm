/obj/effect/decal/warning_stripes
	icon = 'icons/effects/warning_stripes.dmi'
	layer = 6

/obj/effect/decal/warning_stripes/New()
	. = ..()
	var/turf/T=get_turf(src)
	var/image/I=image(icon, icon_state = icon_state, dir = dir)
	I.color=color
	I.plane = ABOVE_TURF_PLANE
	I.layer = DECAL_LAYER
	T.overlays += I
	qdel(src)
