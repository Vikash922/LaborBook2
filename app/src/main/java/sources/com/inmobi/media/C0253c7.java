package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.c7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0253c7 extends BroadcastReceiver implements R6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f320a;
    public final /* synthetic */ C0300f7 b;

    public C0253c7(C0300f7 c0300f7, String jsCallbackNamespace) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        this.b = c0300f7;
        this.f320a = jsCallbackNamespace;
    }

    @Override // com.inmobi.media.R6
    public final void a() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        contextD.unregisterReceiver(this);
    }

    @Override // com.inmobi.media.R6
    public final void b() {
        Context contextD = Kb.d();
        if (contextD == null) {
            return;
        }
        AbstractC0576y2.a(contextD, this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual("android.media.RINGER_MODE_CHANGED", intent.getAction())) {
            int intExtra = intent.getIntExtra("android.media.EXTRA_RINGER_MODE", 2);
            InterfaceC0298f5 interfaceC0298f5 = this.b.b;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("MraidMediaProcessor", "Ringer mode action changed: " + intExtra);
            }
            C0300f7 c0300f7 = this.b;
            String str = this.f320a;
            boolean z = 2 != intExtra;
            InterfaceC0298f5 interfaceC0298f52 = c0300f7.b;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c("MraidMediaProcessor", "fireDeviceMuteChangeEvent");
            }
            Ya ya = c0300f7.f349a;
            if (ya != null) {
                ya.a(str, "fireDeviceMuteChangeEvent(" + z + ");");
            }
        }
    }
}
