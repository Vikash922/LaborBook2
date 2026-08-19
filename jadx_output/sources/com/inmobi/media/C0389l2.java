package com.inmobi.media;

import android.os.Message;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.l2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0389l2 implements InterfaceC0465q2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HandlerC0405m2 f408a;

    public C0389l2(HandlerC0405m2 handlerC0405m2) {
        this.f408a = handlerC0405m2;
    }

    @Override // com.inmobi.media.InterfaceC0465q2
    public final void a(C0343i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        HandlerC0405m2 handlerC0405m2 = this.f408a;
        handlerC0405m2.getClass();
        Message messageObtain = Message.obtain();
        messageObtain.what = 4;
        messageObtain.obj = click;
        handlerC0405m2.sendMessage(messageObtain);
    }

    @Override // com.inmobi.media.InterfaceC0465q2
    public final void a(C0343i2 click, EnumC0250c4 errorCode) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        InterfaceC0298f5 interfaceC0298f5 = this.f408a.f419a;
        if (interfaceC0298f5 != null) {
            String strF = C0520u2.f();
            ((C0314g5) interfaceC0298f5).b(strF, AbstractC0363j6.a(strF, "access$getTAG$p(...)", "Pinging click (").append(click.b).append(") via WebView failed ...").toString());
        }
        C0520u2.c(C0520u2.f496a, click);
        this.f408a.b(click);
    }
}
