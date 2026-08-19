package com.inmobi.media;

import androidx.webkit.Profile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Sa implements InterfaceC0545w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ya f242a;

    public Sa(Ya ya) {
        this.f242a = ya;
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void a() {
        InterfaceC0298f5 interfaceC0298f5 = this.f242a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "onAdScreenDisplayFailed");
        }
        this.f242a.getListener().c();
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void b(Object obj) {
        InterfaceC0298f5 interfaceC0298f5 = this.f242a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "onAdScreenDismissed");
        }
        if (Intrinsics.areEqual(Profile.DEFAULT_PROFILE_NAME, this.f242a.getViewState())) {
            this.f242a.setAndUpdateViewState("Hidden");
        }
        this.f242a.w();
    }

    @Override // com.inmobi.media.InterfaceC0545w
    public final void a(Object obj) {
        InterfaceC0298f5 interfaceC0298f5 = this.f242a.i;
        if (interfaceC0298f5 != null) {
            String str = Ya.P0;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
            ((C0314g5) interfaceC0298f5).a(str, "onAdScreenDisplayed");
        }
        Ya ya = this.f242a;
        if (ya.b == 0) {
            ya.G = false;
        }
        ya.getListener().e(this.f242a);
    }
}
