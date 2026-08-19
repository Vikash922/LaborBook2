package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.q4 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3311q4 {
    /* JADX INFO: renamed from: a */
    public static final boolean m2353a(String str) {
        return str == null || StringsKt.trim((CharSequence) str).toString().length() == 0 || !(StringsKt.startsWith$default(str, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(str, "https://", false, 2, (Object) null));
    }

    /* JADX INFO: renamed from: a */
    public static final void m2352a(Thread thread, String name) {
        Intrinsics.checkNotNullParameter(thread, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            thread.start();
        } catch (InternalError e) {
            e.toString();
        }
    }
}
