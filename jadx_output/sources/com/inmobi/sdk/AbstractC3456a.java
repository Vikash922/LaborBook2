package com.inmobi.sdk;

import com.inmobi.sdk.InMobiSdk;

/* JADX INFO: renamed from: com.inmobi.sdk.a */
/* JADX INFO: loaded from: classes6.dex */
public abstract /* synthetic */ class AbstractC3456a {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f2818a;

    static {
        int[] iArr = new int[InMobiSdk.LogLevel.values().length];
        try {
            iArr[InMobiSdk.LogLevel.NONE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[InMobiSdk.LogLevel.ERROR.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[InMobiSdk.LogLevel.DEBUG.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        f2818a = iArr;
    }
}
