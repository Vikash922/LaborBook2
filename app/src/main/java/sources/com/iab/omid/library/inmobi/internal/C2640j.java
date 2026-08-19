package com.iab.omid.library.inmobi.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.iab.omid.library.inmobi.adsession.C2623a;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.j */
/* JADX INFO: loaded from: classes6.dex */
public class C2640j {

    /* JADX INFO: renamed from: d */
    private static C2640j f656d = new C2640j();

    /* JADX INFO: renamed from: a */
    private WeakReference<Context> f657a;

    /* JADX INFO: renamed from: b */
    private boolean f658b = false;

    /* JADX INFO: renamed from: c */
    private boolean f659c = false;

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.j$a */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C2640j c2640j;
            boolean z;
            boolean z2;
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                c2640j = C2640j.this;
                z = c2640j.f659c;
                z2 = true;
            } else {
                if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                    return;
                }
                c2640j = C2640j.this;
                z = c2640j.f659c;
                z2 = false;
            }
            c2640j.m648a(z2, z);
            C2640j.this.f658b = z2;
        }
    }

    /* JADX INFO: renamed from: b */
    public static C2640j m645b() {
        return f656d;
    }

    /* JADX INFO: renamed from: a */
    public void m646a() {
        Context context = this.f657a.get();
        if (context == null) {
            return;
        }
        boolean zIsDeviceLocked = ((KeyguardManager) context.getSystemService("keyguard")).isDeviceLocked();
        m648a(this.f658b, zIsDeviceLocked);
        this.f659c = zIsDeviceLocked;
    }

    /* JADX INFO: renamed from: a */
    public void m647a(Context context) {
        if (context == null) {
            return;
        }
        this.f657a = new WeakReference<>(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new a(), intentFilter);
    }

    /* JADX INFO: renamed from: a */
    public void m648a(boolean z, boolean z2) {
        if ((z2 || z) == (this.f659c || this.f658b)) {
            return;
        }
        Iterator<C2623a> it = C2633c.m590c().m593b().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().m674b(z2 || z);
        }
    }
}
