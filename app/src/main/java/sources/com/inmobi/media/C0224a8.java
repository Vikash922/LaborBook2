package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.a8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0224a8 implements G8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0270d8 f306a;
    public final /* synthetic */ C8 b;

    public C0224a8(C0270d8 c0270d8, C8 c8) {
        this.f306a = c0270d8;
        this.b = c8;
    }

    public final void a(byte b) {
        C0511t7 c0511t7 = this.f306a.b;
        if (c0511t7.t || !(c0511t7 instanceof A8) || b == 4) {
            return;
        }
        try {
            if (b == 0) {
                AbstractC0401ld abstractC0401ld = ((A8) c0511t7).p;
                if (abstractC0401ld != null) {
                    abstractC0401ld.a((byte) 5);
                }
            } else if (b == 1) {
                ((A8) c0511t7).g(this.b);
            } else if (b == 2) {
                ((A8) c0511t7).f(this.b);
            } else if (b == 3) {
                ((A8) c0511t7).h(this.b);
            } else if (b != 5) {
            } else {
                ((A8) c0511t7).d(this.b);
            }
        } catch (Exception e) {
            C0270d8 c0270d8 = this.f306a;
            InterfaceC0298f5 interfaceC0298f5 = c0270d8.f;
            if (interfaceC0298f5 != null) {
                String str = c0270d8.g;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((C0314g5) interfaceC0298f5).b(str, Ed.a(e, new StringBuilder("SDK encountered unexpected error in handling (").append((int) b).append(") event; ")));
            }
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}
