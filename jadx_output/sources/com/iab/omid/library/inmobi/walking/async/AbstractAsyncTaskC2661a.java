package com.iab.omid.library.inmobi.walking.async;

import com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.async.a */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractAsyncTaskC2661a extends AbstractAsyncTaskC2662b {

    /* JADX INFO: renamed from: c */
    protected final HashSet<String> f716c;

    /* JADX INFO: renamed from: d */
    protected final JSONObject f717d;

    /* JADX INFO: renamed from: e */
    protected final long f718e;

    public AbstractAsyncTaskC2661a(AbstractAsyncTaskC2662b.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar);
        this.f716c = new HashSet<>(hashSet);
        this.f717d = jSONObject;
        this.f718e = j;
    }
}
