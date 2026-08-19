package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.P9 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2922P9 {
    /* JADX INFO: renamed from: a */
    public static final boolean m1519a(Context context, String permission) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        if (context == null) {
            return false;
        }
        try {
            return context.checkCallingOrSelfPermission(permission) == 0;
        } catch (Exception unused) {
            return false;
        }
    }
}
