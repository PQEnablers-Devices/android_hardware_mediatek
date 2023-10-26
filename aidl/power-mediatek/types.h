/*
 * SPDX-FileCopyrightText: 2023 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#pragma once

#define POWERHAL_LIB_NAME "libpowerhal.so"

#define MTKPOWER_HINT_LAUNCH 11
#define MTKPOWER_HINT_APP_TOUCH 25
#define MTKPOWER_HINT_UX_SCROLLING 43

#define USINSEC 1000000L
#define NSINUS 1000L

typedef struct libpowerhal_t {
    void* perfLib;
    void (*Init)(int32_t);
    void (*LockRel)(int32_t);
    void (*UserScnDisableAll)(void);
    void (*UserScnRestoreAll)(void);
    int32_t (*CusLockHint)(int32_t, int32_t, __pid_t);
} libpowerhal_t;
