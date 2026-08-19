package com.iab.omid.library.inmobi.internal;

import android.view.View;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.inmobi.weakreference.C2669a;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.internal.e */
/* JADX INFO: loaded from: classes6.dex */
public class C2635e {

    /* JADX INFO: renamed from: a */
    private final C2669a f638a;

    /* JADX INFO: renamed from: b */
    private final String f639b;

    /* JADX INFO: renamed from: c */
    private final FriendlyObstructionPurpose f640c;

    /* JADX INFO: renamed from: d */
    private final String f641d;

    public C2635e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f638a = new C2669a(view);
        this.f639b = view.getClass().getCanonicalName();
        this.f640c = friendlyObstructionPurpose;
        this.f641d = str;
    }

    /* JADX INFO: renamed from: a */
    public String m605a() {
        return this.f641d;
    }

    /* JADX INFO: renamed from: b */
    public FriendlyObstructionPurpose m606b() {
        return this.f640c;
    }

    /* JADX INFO: renamed from: c */
    public C2669a m607c() {
        return this.f638a;
    }

    /* JADX INFO: renamed from: d */
    public String m608d() {
        return this.f639b;
    }
}
