package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.d6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0268d6 {
    public static C0284e6 a(Context context, String fileKey) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileKey, "fileKey");
        Intrinsics.checkNotNullParameter(fileKey, "fileKey");
        String str = "com.im.keyValueStore." + fileKey;
        C0284e6 c0284e6 = (C0284e6) C0284e6.b.get(str);
        if (c0284e6 != null) {
            return c0284e6;
        }
        C0284e6 c0284e62 = new C0284e6(context, str);
        C0284e6 c0284e63 = (C0284e6) C0284e6.b.putIfAbsent(str, c0284e62);
        return c0284e63 != null ? c0284e63 : c0284e62;
    }
}
