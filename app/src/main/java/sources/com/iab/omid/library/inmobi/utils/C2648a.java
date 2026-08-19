package com.iab.omid.library.inmobi.utils;

import android.app.UiModeManager;
import android.content.Context;
import com.iab.omid.library.inmobi.adsession.DeviceCategory;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.a */
/* JADX INFO: loaded from: classes6.dex */
public final class C2648a {

    /* JADX INFO: renamed from: a */
    private static UiModeManager f682a;

    /* JADX INFO: renamed from: a */
    public static DeviceCategory m684a() {
        UiModeManager uiModeManager = f682a;
        if (uiModeManager == null) {
            return DeviceCategory.OTHER;
        }
        int currentModeType = uiModeManager.getCurrentModeType();
        return currentModeType != 1 ? currentModeType != 4 ? DeviceCategory.OTHER : DeviceCategory.CTV : DeviceCategory.MOBILE;
    }

    /* JADX INFO: renamed from: a */
    public static void m685a(Context context) {
        if (context != null) {
            f682a = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
