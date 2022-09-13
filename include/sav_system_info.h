#ifndef POKEHEARTGOLD_SAV_SYSTEM_INFO_H
#define POKEHEARTGOLD_SAV_SYSTEM_INFO_H

#include <nitro/rtc/ARM9/api.h>
#include "save.h"

typedef struct SYSINFO_RTC {
    BOOL initialized;
    RTCDate date;
    RTCTime time;
    s32 days_since_nitro_epoch;
    s64 seconds_since_nitro_epoch;
    s64 seconds_at_game_clear;
    u32 unk34;
} SYSINFO_RTC;

typedef struct SYSINFO {
    s64 rtc_offset;
    u8 mac_address[6];
    u8 birth_month;
    u8 birth_day;
    SYSINFO_RTC rtc_info;
    u8 unk48;
    void* unk4C;
    u8 unk50[0xC];
} SYSINFO;

u32 Sav2_SysInfo_sizeof(void);
void Sav2_SysInfo_init(SYSINFO* sys_info);
SYSINFO* Sav2_SysInfo_get(SAVEDATA* savedata);
SYSINFO_RTC* Sav2_SysInfo_RTC_get(SAVEDATA* savedata);
void Sav2_SysInfo_InitFromSystem(SYSINFO* sys_info);
BOOL Sav2_SysInfo_MacAddressIsMine(SYSINFO* sys_info);
BOOL Sav2_SysInfo_RTCOffsetIsMine(SYSINFO* sys_info);
u8 Sav2_SysInfo_GetBirthMonth(SYSINFO* sys_info);
u8 Sav2_SysInfo_GetBirthDay(SYSINFO* sys_info);
u8 Sav2_SysInfo_GetField48(SYSINFO* sys_info);
void Sav2_SysInfo_SetField48(SYSINFO* sys_info, u8);
void* Sav2_SysInfo_GetField4C(SYSINFO* sys_info);
void Sav2_SysInfo_SetField4C(SYSINFO* sys_info, void*);
void Sav2_SysInfo_RTC_init(SYSINFO_RTC* rtc_info);
BOOL sub_02028E1C(SYSINFO_RTC* rtc_info);
void Sav2_SysInfo_RTC_SubField34(SYSINFO_RTC* rtc_info, u32);
void SysInfoRTC_HandleContinueOnNewConsole(SYSINFO_RTC* rtc_info);

#endif
