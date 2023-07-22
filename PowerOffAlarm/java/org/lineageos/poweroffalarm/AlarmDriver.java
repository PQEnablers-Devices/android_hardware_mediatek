/*
 * SPDX-FileCopyrightText: 2023 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package org.lineageos.poweroffalarm;

public class AlarmDriver implements Driver {

    static {
        System.loadLibrary("jni_poweroffalarm");
    }

    public native void set(long time);
    public native void cancel();
    public native long getRtcTimeOptional();
    public native boolean isSupported();

}
