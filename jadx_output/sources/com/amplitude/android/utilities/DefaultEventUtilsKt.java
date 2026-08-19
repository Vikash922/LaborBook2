package com.amplitude.android.utilities;

import android.content.pm.PackageInfo;
import android.os.Build;
import kotlin.Metadata;

/* JADX INFO: compiled from: DefaultEventUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0004\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002¨\u0006\u0003"}, m2722d2 = {"getVersionCode", "", "Landroid/content/pm/PackageInfo;", "android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class DefaultEventUtilsKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Number getVersionCode(PackageInfo packageInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Long.valueOf(packageInfo.getLongVersionCode());
        }
        return Integer.valueOf(packageInfo.versionCode);
    }
}
