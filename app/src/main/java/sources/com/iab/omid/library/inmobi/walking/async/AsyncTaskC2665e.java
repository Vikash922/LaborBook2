package com.iab.omid.library.inmobi.walking.async;

import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.internal.C2633c;
import com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.async.e */
/* JADX INFO: loaded from: classes6.dex */
public class AsyncTaskC2665e extends AbstractAsyncTaskC2661a {
    public AsyncTaskC2665e(AbstractAsyncTaskC2662b.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: renamed from: b */
    private void m789b(String str) {
        C2633c c2633cM590c = C2633c.m590c();
        if (c2633cM590c != null) {
            for (C2623a c2623a : c2633cM590c.m593b()) {
                if (this.f716c.contains(c2623a.getAdSessionId())) {
                    c2623a.getAdSessionStatePublisher().m667a(str, this.f718e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        return this.f717d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(String str) {
        m789b(str);
        super.onPostExecute(str);
    }
}
