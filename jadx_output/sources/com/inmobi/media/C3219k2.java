package com.inmobi.media;

import android.os.Message;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.k2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3219k2 implements InterfaceC3309q2 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ HandlerC3249m2 f2252a;

    public C3219k2(HandlerC3249m2 handlerC3249m2) {
        this.f2252a = handlerC3249m2;
    }

    @Override // com.inmobi.media.InterfaceC3309q2
    /* JADX INFO: renamed from: a */
    public final void mo2274a(C3189i2 click) {
        Intrinsics.checkNotNullParameter(click, "click");
        HandlerC3249m2 handlerC3249m2 = this.f2252a;
        handlerC3249m2.getClass();
        Message messageObtain = Message.obtain();
        messageObtain.what = 4;
        messageObtain.obj = click;
        handlerC3249m2.sendMessage(messageObtain);
    }

    @Override // com.inmobi.media.InterfaceC3309q2
    /* JADX INFO: renamed from: a */
    public final void mo2275a(C3189i2 click, EnumC3101c4 errorCode) {
        Intrinsics.checkNotNullParameter(click, "click");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        InterfaceC3147f5 interfaceC3147f5 = this.f2252a.f2311a;
        if (interfaceC3147f5 != null) {
            String strM2479f = C3369u2.m2479f();
            ((C3162g5) interfaceC3147f5).m2151b(strM2479f, AbstractC3208j6.m2261a(strM2479f, "access$getTAG$p(...)", "Pinging click (").append(click.f2169b).append(") via HTTP failed ...").toString());
        }
        C3369u2.m2475c(C3369u2.f2627a, click);
        this.f2252a.m2293b(click);
    }
}
