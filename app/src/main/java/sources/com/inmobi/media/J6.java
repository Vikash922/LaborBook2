package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class J6 {
    public static void a(Ca ca) {
        CopyOnWriteArrayList copyOnWriteArrayList = K6.f158a;
        Objects.toString(ca);
        if (ca == null) {
            return;
        }
        try {
            for (WeakReference weakReference : K6.f158a) {
                if (weakReference.get() == null || Intrinsics.areEqual(weakReference.get(), ca)) {
                    K6.f158a.remove(weakReference);
                }
            }
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}
