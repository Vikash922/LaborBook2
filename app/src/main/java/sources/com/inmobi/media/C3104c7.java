package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.c7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3104c7 extends BroadcastReceiver implements InterfaceC2947R6 {

    /* JADX INFO: renamed from: a */
    public final String f1945a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3149f7 f1946b;

    public C3104c7(C3149f7 c3149f7, String jsCallbackNamespace) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        this.f1946b = c3149f7;
        this.f1945a = jsCallbackNamespace;
    }

    @Override // com.inmobi.media.InterfaceC2947R6
    /* JADX INFO: renamed from: a */
    public final void mo1761a() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        contextM1254d.unregisterReceiver(this);
    }

    @Override // com.inmobi.media.InterfaceC2947R6
    /* JADX INFO: renamed from: b */
    public final void mo1762b() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d == null) {
            return;
        }
        AbstractC3429y2.m2603a(contextM1254d, this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual("android.media.RINGER_MODE_CHANGED", intent.getAction())) {
            int intExtra = intent.getIntExtra("android.media.EXTRA_RINGER_MODE", 2);
            InterfaceC3147f5 interfaceC3147f5 = this.f1946b.f2063b;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("MraidMediaProcessor", "Ringer mode action changed: " + intExtra);
            }
            C3149f7 c3149f7 = this.f1946b;
            String str = this.f1945a;
            boolean z = 2 != intExtra;
            InterfaceC3147f5 interfaceC3147f52 = c3149f7.f2063b;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c("MraidMediaProcessor", "fireDeviceMuteChangeEvent");
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = c3149f7.f2062a;
            if (gestureDetectorOnGestureListenerC3049Ya != null) {
                gestureDetectorOnGestureListenerC3049Ya.m1953a(str, "fireDeviceMuteChangeEvent(" + z + ");");
            }
        }
    }
}
