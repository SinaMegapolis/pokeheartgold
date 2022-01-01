#include "constants/scrcmd.h"
#include "fielddata/script/scr_seq/event_T26PC0101.h"
#include "msgdata/msg/msg_0607_T26PC0101.h"
	.include "asm/macros/script.inc"

	.rodata

	scrdef scr_seq_T26PC0101_000
	scrdef scr_seq_T26PC0101_001
	scrdef scr_seq_T26PC0101_002
	scrdef scr_seq_T26PC0101_003
	scrdef scr_seq_T26PC0101_004
	scrdef_end

scr_seq_T26PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T26PC0101_004:
	checktrainerflag TRAINER_BEAUTY_CHARLOTTE
	gotoif TRUE, _00E6
	comparevartovalue VAR_TEMP_x4007, 77
	gotoif eq, _00C4
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg msg_0607_T26PC0101_00003
	setvar VAR_TEMP_x4007, 77
	scrcmd_386 VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 2
	gotoif ne, _0068
	apply_movement obj_T26PC0101_gswoman2, _00FC
	goto _007D

_0068:
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif ne, _007D
	apply_movement obj_T26PC0101_gswoman2, _0104
_007D:
	wait_movement
	npc_msg msg_0607_T26PC0101_00004
_0082:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x800C
	touchscreen_menu_show
	comparevartovalue VAR_SPECIAL_x800C, 1
	gotoif eq, _00D5
	npc_msg msg_0607_T26PC0101_00005
	closemsg
	trainer_battle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	check_battle_won VAR_SPECIAL_x800C
	comparevartovalue VAR_SPECIAL_x800C, 0
	gotoif eq, _00E0
	settrainerflag TRAINER_BEAUTY_CHARLOTTE
	npc_msg msg_0607_T26PC0101_00006
	waitbutton
	closemsg
	releaseall
	end

_00C4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0607_T26PC0101_00008
	goto _0082

_00D5:
	npc_msg msg_0607_T26PC0101_00007
	waitbutton
	closemsg
	releaseall
	end

_00E0:
	white_out
	releaseall
	end

_00E6:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0607_T26PC0101_00006
	waitbutton
	closemsg
	releaseall
	end
	.byte 0x00, 0x00, 0x00

_00FC:
	step 35, 1
	step_end

_0104:
	step 33, 1
	step_end
scr_seq_T26PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0607_T26PC0101_00000
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T26PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0607_T26PC0101_00001
	waitbutton
	closemsg
	releaseall
	end

scr_seq_T26PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg msg_0607_T26PC0101_00002
	waitbutton
	closemsg
	releaseall
	end
	.balign 4, 0
