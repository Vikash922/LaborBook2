package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.d6 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3118d6 {
    /* JADX INFO: renamed from: a */
    public static C3133e6 m2058a(Context context, String fileKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileKey, "fileKey");
        Intrinsics.checkNotNullParameter(fileKey, "fileKey");
        String str = "com.im.keyValueStore." + fileKey;
        C3133e6 c3133e6 = (C3133e6) C3133e6.f2044b.get(str);
        if (c3133e6 != null) {
            return c3133e6;
        }
        C3133e6 c3133e62 = new C3133e6(context, str);
        C3133e6 c3133e63 = (C3133e6) C3133e6.f2044b.putIfAbsent(str, c3133e62);
        return c3133e63 != null ? c3133e63 : c3133e62;
    }
}
