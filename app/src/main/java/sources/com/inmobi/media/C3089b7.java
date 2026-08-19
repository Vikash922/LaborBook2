package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.b7 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3089b7 extends BroadcastReceiver implements InterfaceC2947R6 {

    /* JADX INFO: renamed from: a */
    public final String f1883a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3149f7 f1884b;

    public C3089b7(C3149f7 c3149f7, String jsCallbackNamespace) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        this.f1884b = c3149f7;
        this.f1883a = jsCallbackNamespace;
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
        AbstractC3429y2.m2603a(contextM1254d, this, new IntentFilter("android.intent.action.HEADSET_PLUG"));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (Intrinsics.areEqual("android.intent.action.HEADSET_PLUG", intent.getAction())) {
            int intExtra = intent.getIntExtra("state", 0);
            InterfaceC3147f5 interfaceC3147f5 = this.f1884b.f2063b;
            if (interfaceC3147f5 != null) {
                ((C3162g5) interfaceC3147f5).m2147a("MraidMediaProcessor", "Headphone plugged state changed: " + intExtra);
            }
            C3149f7 c3149f7 = this.f1884b;
            String str = this.f1883a;
            boolean z = 1 == intExtra;
            InterfaceC3147f5 interfaceC3147f52 = c3149f7.f2063b;
            if (interfaceC3147f52 != null) {
                ((C3162g5) interfaceC3147f52).m2152c("MraidMediaProcessor", "fireHeadphonePluggedEvent");
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = c3149f7.f2062a;
            if (gestureDetectorOnGestureListenerC3049Ya != null) {
                gestureDetectorOnGestureListenerC3049Ya.m1953a(str, "fireHeadphonePluggedEvent(" + z + ");");
            }
        }
    }
}
