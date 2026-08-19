package com.inmobi.media;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.h6 */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC3178h6 {

    /* JADX INFO: renamed from: d */
    public static final EnumC3178h6 f2135d;

    /* JADX INFO: renamed from: e */
    public static final EnumC3178h6 f2136e;

    /* JADX INFO: renamed from: f */
    public static final EnumC3178h6 f2137f;

    /* JADX INFO: renamed from: g */
    public static final EnumC3178h6 f2138g;

    /* JADX INFO: renamed from: h */
    public static final EnumC3178h6 f2139h;

    /* JADX INFO: renamed from: i */
    public static final EnumC3178h6 f2140i;

    /* JADX INFO: renamed from: j */
    public static final EnumC3178h6 f2141j;

    /* JADX INFO: renamed from: k */
    public static final /* synthetic */ EnumC3178h6[] f2142k;

    /* JADX INFO: renamed from: a */
    public final String f2143a;

    /* JADX INFO: renamed from: b */
    public final String f2144b;

    /* JADX INFO: renamed from: c */
    public final int f2145c;

    static {
        EnumC3178h6 enumC3178h6 = new EnumC3178h6("LPClickStart", 0, "clickStartCalled", "sdk_click_detected", 0);
        f2135d = enumC3178h6;
        EnumC3178h6 enumC3178h62 = new EnumC3178h6("LPStartFailed", 1, "landingsStartFailed", "valid_click_failed", 1);
        f2136e = enumC3178h62;
        EnumC3178h6 enumC3178h63 = new EnumC3178h6("LPStartSuccess", 2, "landingsStartSuccess", "browser_open_success", 2);
        f2137f = enumC3178h63;
        EnumC3178h6 enumC3178h64 = new EnumC3178h6("LPBrowserOpenFailed", 3, "browserOpenFailed", "browser_open_failed", 2);
        f2138g = enumC3178h64;
        EnumC3178h6 enumC3178h65 = new EnumC3178h6("LPPageStart", 4, "landingsPageStarted", "on_page_started", 3);
        f2139h = enumC3178h65;
        EnumC3178h6 enumC3178h66 = new EnumC3178h6("LPCompleteSuccess", 5, "landingsCompleteSuccess", "landing_success", 4);
        f2140i = enumC3178h66;
        EnumC3178h6 enumC3178h67 = new EnumC3178h6("LPCompleteFailed", 6, "landingsCompleteFailed", "landing_failed", 4);
        f2141j = enumC3178h67;
        EnumC3178h6[] enumC3178h6Arr = {enumC3178h6, enumC3178h62, enumC3178h63, enumC3178h64, enumC3178h65, enumC3178h66, enumC3178h67};
        f2142k = enumC3178h6Arr;
        EnumEntriesKt.enumEntries(enumC3178h6Arr);
    }

    public EnumC3178h6(String str, int i, String str2, String str3, int i2) {
        this.f2143a = str2;
        this.f2144b = str3;
        this.f2145c = i2;
    }

    public static EnumC3178h6 valueOf(String str) {
        return (EnumC3178h6) Enum.valueOf(EnumC3178h6.class, str);
    }

    public static EnumC3178h6[] values() {
        return (EnumC3178h6[]) f2142k.clone();
    }
}
