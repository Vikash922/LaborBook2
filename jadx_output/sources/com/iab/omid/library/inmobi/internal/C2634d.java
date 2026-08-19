package com.iab.omid.library.inmobi.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.d */
/* JADX INFO: loaded from: classes6.dex */
public class C2634d implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a */
    private boolean f635a;

    /* JADX INFO: renamed from: b */
    protected boolean f636b;

    /* JADX INFO: renamed from: c */
    private a f637c;

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.d$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void mo584a(boolean z);
    }

    /* JADX INFO: renamed from: a */
    private void m597a(boolean z) {
        if (this.f636b != z) {
            this.f636b = z;
            if (this.f635a) {
                mo588b(z);
                a aVar = this.f637c;
                if (aVar != null) {
                    aVar.mo584a(z);
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    private boolean m598a() {
        return m601b().importance == 100 || mo589d();
    }

    /* JADX INFO: renamed from: a */
    public void m599a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m600a(a aVar) {
        this.f637c = aVar;
    }

    /* JADX INFO: renamed from: b */
    ActivityManager.RunningAppProcessInfo m601b() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    /* JADX INFO: renamed from: b */
    protected void mo588b(boolean z) {
    }

    /* JADX INFO: renamed from: c */
    public boolean m602c() {
        return this.f636b;
    }

    /* JADX INFO: renamed from: d */
    protected boolean mo589d() {
        return false;
    }

    /* JADX INFO: renamed from: e */
    public void m603e() {
        this.f635a = true;
        boolean zM598a = m598a();
        this.f636b = zM598a;
        mo588b(zM598a);
    }

    /* JADX INFO: renamed from: f */
    public void m604f() {
        this.f635a = false;
        this.f637c = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        m597a(true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        m597a(m598a());
    }
}
