package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.h6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC0332h6 {
    public static final EnumC0332h6 d;
    public static final EnumC0332h6 e;
    public static final EnumC0332h6 f;
    public static final EnumC0332h6 g;
    public static final EnumC0332h6 h;
    public static final EnumC0332h6 i;
    public static final EnumC0332h6 j;
    public static final /* synthetic */ EnumC0332h6[] k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f371a;
    public final String b;
    public final int c;

    static {
        EnumC0332h6 enumC0332h6 = new EnumC0332h6("LPClickStart", 0, "clickStartCalled", "sdk_click_detected", 0);
        d = enumC0332h6;
        EnumC0332h6 enumC0332h62 = new EnumC0332h6("LPStartFailed", 1, "landingsStartFailed", "valid_click_failed", 1);
        e = enumC0332h62;
        EnumC0332h6 enumC0332h63 = new EnumC0332h6("LPStartSuccess", 2, "landingsStartSuccess", "browser_open_success", 2);
        f = enumC0332h63;
        EnumC0332h6 enumC0332h64 = new EnumC0332h6("LPBrowserOpenFailed", 3, "browserOpenFailed", "browser_open_failed", 2);
        g = enumC0332h64;
        EnumC0332h6 enumC0332h65 = new EnumC0332h6("LPPageStart", 4, "landingsPageStarted", "on_page_started", 3);
        h = enumC0332h65;
        EnumC0332h6 enumC0332h66 = new EnumC0332h6("LPCompleteSuccess", 5, "landingsCompleteSuccess", "landing_success", 4);
        i = enumC0332h66;
        EnumC0332h6 enumC0332h67 = new EnumC0332h6("LPCompleteFailed", 6, "landingsCompleteFailed", "landing_failed", 4);
        j = enumC0332h67;
        EnumC0332h6[] enumC0332h6Arr = {enumC0332h6, enumC0332h62, enumC0332h63, enumC0332h64, enumC0332h65, enumC0332h66, enumC0332h67};
        k = enumC0332h6Arr;
        EnumEntriesKt.enumEntries(enumC0332h6Arr);
    }

    public EnumC0332h6(String str, int i2, String str2, String str3, int i3) {
        this.f371a = str2;
        this.b = str3;
        this.c = i3;
    }

    public static EnumC0332h6 valueOf(String str) {
        return (EnumC0332h6) Enum.valueOf(EnumC0332h6.class, str);
    }

    public static EnumC0332h6[] values() {
        return (EnumC0332h6[]) k.clone();
    }
}
