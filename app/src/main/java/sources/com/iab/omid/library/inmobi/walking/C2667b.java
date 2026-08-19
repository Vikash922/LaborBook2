package com.iab.omid.library.inmobi.walking;

import com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b;
import com.iab.omid.library.inmobi.walking.async.AsyncTaskC2664d;
import com.iab.omid.library.inmobi.walking.async.AsyncTaskC2665e;
import com.iab.omid.library.inmobi.walking.async.AsyncTaskC2666f;
import com.iab.omid.library.inmobi.walking.async.C2663c;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.b */
/* JADX INFO: loaded from: classes6.dex */
public class C2667b implements AbstractAsyncTaskC2662b.b {

    /* JADX INFO: renamed from: a */
    private JSONObject f725a;

    /* JADX INFO: renamed from: b */
    private final C2663c f726b;

    public C2667b(C2663c c2663c) {
        this.f726b = c2663c;
    }

    @Override // com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b.b
    /* JADX INFO: renamed from: a */
    public JSONObject mo784a() {
        return this.f725a;
    }

    @Override // com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b.b
    /* JADX INFO: renamed from: a */
    public void mo785a(JSONObject jSONObject) {
        this.f725a = jSONObject;
    }

    /* JADX INFO: renamed from: a */
    public void m793a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f726b.m787b(new AsyncTaskC2665e(this, hashSet, jSONObject, j));
    }

    /* JADX INFO: renamed from: b */
    public void m794b() {
        this.f726b.m787b(new AsyncTaskC2664d(this));
    }

    /* JADX INFO: renamed from: b */
    public void m795b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f726b.m787b(new AsyncTaskC2666f(this, hashSet, jSONObject, j));
    }
}
