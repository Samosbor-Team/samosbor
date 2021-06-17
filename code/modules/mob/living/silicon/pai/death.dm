/mob/living/silicon/pai/death(gibbed, deathmessage, show_dead_message)
	if(card)
		card.removePersonality()
		if(gibbed)
			src.loc = get_turf(card)
			qdel(card)
		else
			close_up()
	if(mind)
		qdel(mind)
	..(gibbed, deathmessage, "You have suffered a critical system failure, and are dead.")
	ghostize()
	qdel(src)