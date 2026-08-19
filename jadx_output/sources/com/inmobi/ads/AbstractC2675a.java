package com.inmobi.ads;

import com.inmobi.ads.InMobiBanner;

/* JADX INFO: renamed from: com.inmobi.ads.a */
/* JADX INFO: loaded from: classes6.dex */
public abstract /* synthetic */ class AbstractC2675a {

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ int[] f779a;

    static {
        int[] iArr = new int[InMobiBanner.AnimationType.values().length];
        try {
            iArr[InMobiBanner.AnimationType.ANIMATION_ALPHA.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[InMobiBanner.AnimationType.ROTATE_HORIZONTAL_AXIS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[InMobiBanner.AnimationType.ROTATE_VERTICAL_AXIS.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        f779a = iArr;
    }
}
