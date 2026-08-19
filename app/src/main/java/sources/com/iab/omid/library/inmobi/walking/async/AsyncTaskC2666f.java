package com.iab.omid.library.inmobi.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.internal.C2633c;
import com.iab.omid.library.inmobi.utils.C2650c;
import com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.async.f */
/* JADX INFO: loaded from: classes6.dex */
public class AsyncTaskC2666f extends AbstractAsyncTaskC2661a {
    public AsyncTaskC2666f(AbstractAsyncTaskC2662b.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: renamed from: b */
    private void m791b(String str) {
        C2633c c2633cM590c = C2633c.m590c();
        if (c2633cM590c != null) {
            for (C2623a c2623a : c2633cM590c.m593b()) {
                if (this.f716c.contains(c2623a.getAdSessionId())) {
                    c2623a.getAdSessionStatePublisher().m673b(str, this.f718e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        if (C2650c.m711h(this.f717d, this.f720b.mo784a())) {
            return null;
        }
        this.f720b.mo785a(this.f717d);
        return this.f717d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            m791b(str);
        }
        super.onPostExecute(str);
    }
}
