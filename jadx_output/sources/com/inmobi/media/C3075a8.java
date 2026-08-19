package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3075a8 implements InterfaceC2786G8 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3120d8 f1847a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C2726C8 f1848b;

    public C3075a8(C3120d8 c3120d8, C2726C8 c2726c8) {
        this.f1847a = c3120d8;
        this.f1848b = c2726c8;
    }

    /* JADX INFO: renamed from: a */
    public final void m2017a(byte b) {
        C3359t7 c3359t7 = this.f1847a.f2001b;
        if (c3359t7.f2594t || !(c3359t7 instanceof C2696A8) || b == 4) {
            return;
        }
        try {
            if (b == 0) {
                AbstractC3245ld abstractC3245ld = ((C2696A8) c3359t7).f2590p;
                if (abstractC3245ld != null) {
                    abstractC3245ld.mo958a((byte) 5);
                }
            } else if (b == 1) {
                ((C2696A8) c3359t7).m854g(this.f1848b);
            } else if (b == 2) {
                ((C2696A8) c3359t7).m853f(this.f1848b);
            } else if (b == 3) {
                ((C2696A8) c3359t7).m855h(this.f1848b);
            } else if (b != 5) {
            } else {
                ((C2696A8) c3359t7).m851d(this.f1848b);
            }
        } catch (Exception e) {
            C3120d8 c3120d8 = this.f1847a;
            InterfaceC3147f5 interfaceC3147f5 = c3120d8.f2005f;
            if (interfaceC3147f5 != null) {
                String str = c3120d8.f2006g;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C3162g5) interfaceC3147f5).m2151b(str, AbstractC2761Ed.m1111a(e, new StringBuilder("SDK encountered unexpected error in handling (").append((int) b).append(") event; ")));
            }
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}
