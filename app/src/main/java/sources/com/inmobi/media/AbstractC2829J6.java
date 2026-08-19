package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.J6 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC2829J6 {
    /* JADX INFO: renamed from: a */
    public static void m1193a(C2728Ca c2728Ca) {
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC2844K6.f1163a;
        Objects.toString(c2728Ca);
        if (c2728Ca == null) {
            return;
        }
        try {
            for (WeakReference weakReference : AbstractC2844K6.f1163a) {
                if (weakReference.get() == null || Intrinsics.areEqual(weakReference.get(), c2728Ca)) {
                    AbstractC2844K6.f1163a.remove(weakReference);
                }
            }
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}
