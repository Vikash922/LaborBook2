package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.q4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0467q4 {
    public static final boolean a(String str) {
        return str == null || StringsKt.trim((CharSequence) str).toString().length() == 0 || !(StringsKt.startsWith$default(str, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(str, "https://", false, 2, (Object) null));
    }

    public static final void a(Thread thread, String name) {
        Intrinsics.checkNotNullParameter(thread, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            thread.start();
        } catch (InternalError e) {
            e.toString();
        }
    }
}
