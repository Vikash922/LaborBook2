package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes6.dex */
public final class F3 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ L3 f113a;

    public F3(L3 l3) {
        this.f113a = l3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f113a) {
            L3 l3 = this.f113a;
            if (l3.j == null) {
                return null;
            }
            while (l3.i > l3.f) {
                l3.d((String) ((Map.Entry) l3.k.entrySet().iterator().next()).getKey());
            }
            if (this.f113a.a()) {
                this.f113a.d();
                this.f113a.l = 0;
            }
            return null;
        }
    }
}
