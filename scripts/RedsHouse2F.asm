RedsHouse2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RedsHouse2F_ScriptPointers
	ld a, [wRedsHouse2FCurScript]
	jp CallFunctionInTable

RedsHouse2F_ScriptPointers:
	dw RedsHouse2FScript0
	dw RedsHouse2FScript1

RedsHouse2FScript0:
	xor a
	ld [hJoyHeld], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, 1
	ld [wRedsHouse2FCurScript], a
	ret

RedsHouse2FScript1:
	ret

RedsHouse2F_TextPointers:
	dw RedsHouse2FMugtest

RedsHouse2FMugtest:
	TX_ASM
	farcall QMMugshot
	ld c, 30
	call DelayFrames
	ld hl, RedTechist
	call PrintText
	jp TextScriptEnd 

RedTechist::
	TX_FAR _RedsHouse2FText1
	db "@"	

