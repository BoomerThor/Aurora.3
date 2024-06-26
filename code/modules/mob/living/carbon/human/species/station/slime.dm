/datum/species/slime
	name = SPECIES_SLIMEPERSON
	name_plural = "slimes"
	mob_size = MOB_SMALL

	icobase = 'icons/mob/human_races/r_slime.dmi'
	deform = 'icons/mob/human_races/r_slime.dmi'

	language = null //todo?
	unarmed_types = list(/datum/unarmed_attack/slime_glomp)
	flags = NO_SCAN | NO_SLIP | NO_BREATHE | NO_EMBED
	spawn_flags = IS_RESTRICTED
	siemens_coefficient = 3 //conductive
	darksight = 3
	rarity_value = 5
	fall_mod = 0
	grab_mod = 1.5
	resist_mod = 0.25

	blood_color = "#05FF9B"
	flesh_color = "#05FFFB"

	remains_type = /obj/effect/decal/cleanable/ash
	dust_remains_type = /obj/effect/decal/cleanable/ash

	death_message = "rapidly loses cohesion, splattering across the ground..."
	death_message_range = 7

	has_organ = list(
		BP_BRAIN = /obj/item/organ/internal/brain/slime
		)

	breath_type = null
	poison_type = null

	bump_flag = SLIME
	swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags = MONKEY|SLIME|SIMPLE_ANIMAL

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest/unbreakable),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/unbreakable),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/unbreakable),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/unbreakable),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/unbreakable),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/unbreakable),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/unbreakable),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/unbreakable),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/unbreakable),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/unbreakable),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/unbreakable)
		)

/datum/species/slime/handle_death(var/mob/living/carbon/human/H)
	if(H)
		addtimer(CALLBACK(H, TYPE_PROC_REF(/mob/living/carbon/human, gib)),  1)
