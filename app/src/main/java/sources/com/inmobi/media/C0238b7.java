package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0238b7 extends BroadcastReceiver implements R6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f311a;
    public final /* synthetic */ C0300f7 b;

    public C0238b7(C0300f7 c0300f7, String jsCallbackNamespace) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        this.b = c0300f7;
        this.f311a = jsCallbackNamespace;
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
        AbstractC0576y2.a(contextD, this, new IntentFilter("android.intent.action.HEADSET_PLUG"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual("android.intent.action.HEADSET_PLUG", intent.getAction())) {
            int intExtra = intent.getIntExtra("state", 0);
            InterfaceC0298f5 interfaceC0298f5 = this.b.b;
            if (interfaceC0298f5 != null) {
                ((C0314g5) interfaceC0298f5).a("MraidMediaProcessor", "Headphone plugged state changed: " + intExtra);
            }
            C0300f7 c0300f7 = this.b;
            String str = this.f311a;
            boolean z = 1 == intExtra;
            InterfaceC0298f5 interfaceC0298f52 = c0300f7.b;
            if (interfaceC0298f52 != null) {
                ((C0314g5) interfaceC0298f52).c("MraidMediaProcessor", "fireHeadphonePluggedEvent");
            }
            Ya ya = c0300f7.f349a;
            if (ya != null) {
                ya.a(str, "fireHeadphonePluggedEvent(" + z + ");");
            }
        }
    }
}
