MugshotLOAD_1::
	coord hl, 0, 6 ; Where the textbox surrounding the mugshot will be placed
	ld b, 4 ; how tall
	ld c, 4 ; how wide
	call TextBoxBorder
	call DisableLCD ; this is neeeded, otherwise, you'll end up with a corrupted graphic
	ret	
	
MugshotLOAD_2::
	call EnableLCD
	coord hl, 1, 7 ; where the Mugshot itself will be placed
	ld a, $C0
	ld de, SCREEN_WIDTH
	ld c, 4 ; how many tiles until it needs to loop
.MugTileLoop
	ld b, $4
	push hl
.MugTileRowLoop ; place tiles for one row
	ld [hli], a
	inc a
	dec b
	jr nz, .MugTileRowLoop
	pop hl
	add hl, de
	dec c
	jr nz, .MugTileLoop	
	ret	
	
;Now For the Major Characters, should you choose to use this code

QMMugshot::
	call MugshotLOAD_1
	call LoadQMMugshot
	call MugshotLOAD_2
	ret