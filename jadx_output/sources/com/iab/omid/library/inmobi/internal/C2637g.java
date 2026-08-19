package com.iab.omid.library.inmobi.internal;

import android.content.Context;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.g */
/* JADX INFO: loaded from: classes6.dex */
public class C2637g {

    /* JADX INFO: renamed from: b */
    private static C2637g f644b = new C2637g();

    /* JADX INFO: renamed from: a */
    private Context f645a;

    private C2637g() {
    }

    /* JADX INFO: renamed from: b */
    public static C2637g m616b() {
        return f644b;
    }

    /* JADX INFO: renamed from: a */
    public Context m617a() {
        return this.f645a;
    }

    /* JADX INFO: renamed from: a */
    public void m618a(Context context) {
        this.f645a = context != null ? context.getApplicationContext() : null;
    }
}
