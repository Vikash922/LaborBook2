package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.p7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0455p7 implements InterfaceC0545w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0511t7 f455a;

    public C0455p7(C0511t7 c0511t7) {
        this.f455a = c0511t7;
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void a() {
        Intrinsics.checkNotNullExpressionValue(this.f455a.m, "access$getTAG$p(...)");
        O0 o0 = this.f455a.w;
        if (o0 != null) {
            o0.c();
        }
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void b(Object obj) {
        O0 o0 = this.f455a.w;
        if (o0 != null) {
            o0.b();
        }
        InterfaceC0298f5 interfaceC0298f5 = this.f455a.j;
        if (interfaceC0298f5 != null) {
            ((C0314g5) interfaceC0298f5).a();
        }
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void a(Object obj) {
        O0 o0;
        if (this.f455a.f() == null || (o0 = this.f455a.w) == null) {
            return;
        }
        o0.d();
    }
}
