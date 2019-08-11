RedsHouse2F_Object:
	db $a ; border block

	db 1 ; warps
	warp 7, 1, 2, REDS_HOUSE_1F

	db 0 ; signs

	db 1 ; objects
	object SPRITE_LORELEI ,  3,  4, WALK, DOWN, 1 ; person

	; warp-to
	warp_to 7, 1, REDS_HOUSE_2F_WIDTH
