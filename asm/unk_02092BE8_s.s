#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "global.inc"

	.text

	.public sub_02092BE8

	.public sub_02092D80

	.public sub_02092D8C

	.public sub_02092D98

	.public sub_02092DD8

	.public sub_02092DEC

	.public sub_02092DF4

	.public sub_02092E08

	.public sub_02092E10

	.public sub_02092E14

	thumb_func_start sub_02092E34
sub_02092E34: ; 0x02092E34
	push {r3, lr}
	ldrb r3, [r0]
	lsl r2, r3, #0x1d
	lsr r2, r2, #0x1f
	bne _02092E48
	mov r2, #4
	orr r2, r3
	strb r2, [r0]
	cmp r1, #0xa
	bge _02092E52
_02092E48:
	ldr r2, [r0, #8]
	add r1, r2, r1
	str r1, [r0, #8]
	bl sub_02092E54
_02092E52:
	pop {r3, pc}
	thumb_func_end sub_02092E34

	thumb_func_start sub_02092E54
sub_02092E54: ; 0x02092E54
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl SavArray_Flags_get
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	bl Save_SafariZone_get
	add r7, r0, #0
	ldr r0, [r4, #0x38]
	bl Sav2_PlayerData_GetIGTAddr
	str r0, [sp]
	add r0, r5, #0
	bl ScriptState_GetVar4057
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	mov r5, #0
_02092E7C:
	add r1, r5, #7
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x34]
	lsr r1, r1, #0x18
	bl sub_0202F08C
	cmp r0, #0
	bne _02092F2E
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #5
	blo _02092E7C
	add r0, r7, #0
	bl sub_0202F720
	add r5, r0, #0
	cmp r6, #3
	blo _02092F2E
	cmp r5, #4
	bhs _02092F2E
	cmp r6, #3
	bne _02092EC4
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #3
	bl sub_0202F798
	cmp r0, #0
	beq _02092F2E
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl sub_02092E14
	pop {r3, r4, r5, r6, r7, pc}
_02092EC4:
	cmp r6, #6
	blo _02092F2E
	ldr r0, [r4, #0x38]
	bl Sav2_Pokedex_get
	bl Pokedex_GetNatDexFlag
	cmp r0, #0
	beq _02092F2E
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #3
	bl sub_0202F798
	cmp r0, #0
	beq _02092F2E
	cmp r0, #1
	bls _02092F04
	cmp r5, #3
	bhs _02092EF8
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #1
	bl sub_02092E14
	pop {r3, r4, r5, r6, r7, pc}
_02092EF8:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #1
	bl sub_02092E14
	pop {r3, r4, r5, r6, r7, pc}
_02092F04:
	cmp r5, #0
	bne _02092F14
	add r0, r4, #0
	mov r1, #8
	mov r2, #1
	bl sub_02092E14
	pop {r3, r4, r5, r6, r7, pc}
_02092F14:
	cmp r5, #3
	bne _02092F24
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #1
	bl sub_02092E14
	pop {r3, r4, r5, r6, r7, pc}
_02092F24:
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	bl sub_02092E14
_02092F2E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02092E54

	thumb_func_start sub_02092F30
sub_02092F30: ; 0x02092F30
	push {r4, r5, r6, lr}
	ldrb r3, [r0]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	beq _02092F62
	ldr r3, [r0, #0x14]
	mov r4, #0
	ldr r6, [r0, #0x18]
	mov r5, #0
	eor r5, r6
	eor r4, r3
	orr r4, r5
	bne _02092F50
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	pop {r4, r5, r6, pc}
_02092F50:
	sub r2, r1, r3
	bmi _02092F5E
	ldrh r1, [r0, #0x10]
	cmp r2, r1
	bgt _02092F5E
	cmp r2, #0x3b
	ble _02092F62
_02092F5E:
	bl sub_02092FA0
_02092F62:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02092F30

	thumb_func_start sub_02092F64
sub_02092F64: ; 0x02092F64
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl sub_02093010
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldrb r2, [r4]
	mov r1, #1
	bic r2, r1
	strb r2, [r4]
	ldrb r2, [r4]
	mov r1, #2
	bic r2, r1
	strb r2, [r4]
	ldrb r2, [r4]
	mov r1, #8
	bic r2, r1
	strb r2, [r4]
	mov r1, #0xff
	strb r1, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #7]
	strb r1, [r4, #0x1c]
	mov r0, #0x32
	strh r0, [r4, #0x12]
	pop {r4, pc}
	thumb_func_end sub_02092F64

	thumb_func_start sub_02092FA0
sub_02092FA0: ; 0x02092FA0
	ldr r3, _02092FA4 ; =sub_02092F64
	bx r3
	.balign 4, 0
_02092FA4: .word sub_02092F64
	thumb_func_end sub_02092FA0

	thumb_func_start sub_02092FA8
sub_02092FA8: ; 0x02092FA8
	push {r3, lr}
	ldrb r1, [r0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	beq _02092FB6
	bl sub_02092F64
_02092FB6:
	pop {r3, pc}
	thumb_func_end sub_02092FA8

	thumb_func_start sub_02092FB8
sub_02092FB8: ; 0x02092FB8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x44
	ldrb r2, [r0]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x44
	strb r1, [r0]
	cmp r2, #0
	bne _02092FFA
	ldr r0, _0209300C ; =0x00000879
	bl IsSEPlaying
	cmp r0, #0
	bne _02092FE8
	ldr r0, _0209300C ; =0x00000879
	mov r1, #0
	bl sub_02006134
	b _02092FFA
_02092FE8:
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0xf
	bhs _02092FFA
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x44
	strb r1, [r0]
_02092FFA:
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _0209300A
	mov r0, #0
	add r4, #0x44
	strb r0, [r4]
_0209300A:
	pop {r4, pc}
	.balign 4, 0
_0209300C: .word 0x00000879
	thumb_func_end sub_02092FB8

	thumb_func_start sub_02093010
sub_02093010: ; 0x02093010
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	ldrb r0, [r4]
	beq _02093044
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02093068
	add r0, r4, #0
	add r0, #0x40
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r2, #0
	ldr r0, _0209306C ; =sub_02092FB8
	add r1, r4, #0
	mvn r2, r2
	bl sub_0200E320
	str r0, [r4, #0x40]
	ldrb r1, [r4]
	mov r0, #8
	orr r0, r1
	strb r0, [r4]
	pop {r4, pc}
_02093044:
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02093068
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _02093054
	bl sub_0200E390
_02093054:
	add r0, r4, #0
	add r0, #0x40
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	ldrb r1, [r4]
	mov r0, #8
	bic r1, r0
	strb r1, [r4]
_02093068:
	pop {r4, pc}
	nop
_0209306C: .word sub_02092FB8
	thumb_func_end sub_02093010

	thumb_func_start sub_02093070
sub_02093070: ; 0x02093070
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl SaveData_GSPlayerMisc_get
	mov r1, #9
	bl GSPlayerMisc_IsGearNumberRegistered
	cmp r0, #0xff
	bne _02093088
	mov r0, #0
	pop {r4, pc}
_02093088:
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	ldr r1, _020930C0 ; =0x00000985
	bl CheckFlagInArray
	cmp r0, #0
	beq _0209309C
	mov r0, #0
	pop {r4, pc}
_0209309C:
	ldr r0, [r4, #0xc]
	bl GetStoragePCPointer
	bl PCStorage_CountEmptySpotsInAllBoxes
	cmp r0, #0
	beq _020930AE
	mov r0, #0
	pop {r4, pc}
_020930AE:
	add r0, r4, #0
	bl sub_02092DEC
	mov r1, #3
	mov r2, #1
	bl sub_02092E14
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_020930C0: .word 0x00000985
	thumb_func_end sub_02093070

	thumb_func_start sub_020930C4
sub_020930C4: ; 0x020930C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl Sav2_Pokedex_get
	bl Pokedex_CountNationalDexOwned
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl SavArray_Flags_get
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl SaveData_GSPlayerMisc_get
	mov r1, #2
	bl GSPlayerMisc_IsGearNumberRegistered
	cmp r0, #0xff
	bne _020930F0
	mov r0, #0
	pop {r4, r5, r6, pc}
_020930F0:
	add r0, r6, #0
	mov r1, #0x32
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	bne _02093102
	mov r0, #0
	pop {r4, r5, r6, pc}
_02093102:
	cmp r2, #9
	bls _02093108
	mov r2, #9
_02093108:
	ldr r1, _02093130 ; =0x00000988
	add r0, r4, #0
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl CheckFlagInArray
	cmp r0, #0
	bne _0209312C
	add r0, r5, #0
	bl sub_02092DEC
	mov r1, #4
	mov r2, #0
	bl sub_02092E14
	mov r0, #1
	pop {r4, r5, r6, pc}
_0209312C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02093130: .word 0x00000988
	thumb_func_end sub_020930C4

	thumb_func_start sub_02093134
sub_02093134: ; 0x02093134
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	ldr r1, [r4, #0xc]
	bl sub_0206D8D0
	cmp r0, #0
	bne _02093148
	mov r0, #0
	pop {r4, pc}
_02093148:
	add r0, r4, #0
	bl sub_02092DEC
	mov r1, #0
	mov r2, #1
	bl sub_02092E14
	ldr r0, [r4, #0xc]
	bl SavArray_Flags_get
	ldr r1, _02093168 ; =0x00000983
	bl SetFlagInArray
	mov r0, #1
	pop {r4, pc}
	nop
_02093168: .word 0x00000983
	thumb_func_end sub_02093134

	thumb_func_start sub_0209316C
sub_0209316C: ; 0x0209316C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl SavArray_Flags_get
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl SaveData_GSPlayerMisc_get
	mov r1, #6
	bl GSPlayerMisc_IsGearNumberRegistered
	cmp r0, #0xff
	bne _0209318C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0209318C:
	ldr r1, _020931BC ; =0x00000992
	add r0, r4, #0
	bl CheckFlagInArray
	cmp r0, #0
	beq _020931A8
	ldr r1, _020931C0 ; =0x0000099E
	add r0, r4, #0
	bl CheckFlagInArray
	cmp r0, #0
	bne _020931A8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020931A8:
	add r0, r5, #0
	bl sub_02092DEC
	mov r1, #5
	mov r2, #1
	bl sub_02092E14
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_020931BC: .word 0x00000992
_020931C0: .word 0x0000099E
	thumb_func_end sub_0209316C