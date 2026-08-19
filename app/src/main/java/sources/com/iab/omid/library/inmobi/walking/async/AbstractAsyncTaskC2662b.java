package com.iab.omid.library.inmobi.walking.async;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.async.b */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractAsyncTaskC2662b extends AsyncTask<Object, Void, String> {

    /* JADX INFO: renamed from: a */
    private a f719a;

    /* JADX INFO: renamed from: b */
    protected final b f720b;

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.async.b$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void mo783a(AbstractAsyncTaskC2662b abstractAsyncTaskC2662b);
    }

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.async.b$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        JSONObject mo784a();

        /* JADX INFO: renamed from: a */
        void mo785a(JSONObject jSONObject);
    }

    public AbstractAsyncTaskC2662b(b bVar) {
        this.f720b = bVar;
    }

    /* JADX INFO: renamed from: a */
    public void m780a(a aVar) {
        this.f719a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        a aVar = this.f719a;
        if (aVar != null) {
            aVar.mo783a(this);
        }
    }

    /* JADX INFO: renamed from: a */
    public void m782a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
