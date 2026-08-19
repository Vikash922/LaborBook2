package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.inmobi.media.F3 */
/* JADX INFO: loaded from: classes6.dex */
public final class CallableC2766F3 implements Callable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2856L3 f1017a;

    public CallableC2766F3(C2856L3 c2856l3) {
        this.f1017a = c2856l3;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f1017a) {
            C2856L3 c2856l3 = this.f1017a;
            if (c2856l3.f1198j == null) {
                return null;
            }
            while (c2856l3.f1197i > c2856l3.f1194f) {
                c2856l3.m1288d((String) ((Map.Entry) c2856l3.f1199k.entrySet().iterator().next()).getKey());
            }
            if (this.f1017a.m1282a()) {
                this.f1017a.m1287d();
                this.f1017a.f1200l = 0;
            }
            return null;
        }
    }
}
