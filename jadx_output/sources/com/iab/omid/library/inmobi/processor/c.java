package com.iab.omid.library.inmobi.processor;

import android.view.View;
import com.iab.omid.library.inmobi.processor.a;
import com.iab.omid.library.inmobi.utils.e;
import com.iab.omid.library.inmobi.utils.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f36a;

    public c(a aVar) {
        this.f36a = aVar;
    }

    ArrayList<View> a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.inmobi.internal.c cVarC = com.iab.omid.library.inmobi.internal.c.c();
        if (cVarC != null) {
            Collection<com.iab.omid.library.inmobi.adsession.a> collectionA = cVarC.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator<com.iab.omid.library.inmobi.adsession.a> it = collectionA.iterator();
            while (it.hasNext()) {
                View viewC = it.next().c();
                if (viewC != null && h.g(viewC) && (rootView = viewC.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fD = h.d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && h.d(arrayList.get(size - 1)) > fD) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.inmobi.processor.a
    public JSONObject a(View view) {
        JSONObject jSONObjectA = com.iab.omid.library.inmobi.utils.c.a(0, 0, 0, 0);
        com.iab.omid.library.inmobi.utils.c.a(jSONObjectA, e.a());
        return jSONObjectA;
    }

    @Override // com.iab.omid.library.inmobi.processor.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0057a interfaceC0057a, boolean z, boolean z2) {
        Iterator<View> it = a().iterator();
        while (it.hasNext()) {
            interfaceC0057a.a(it.next(), this.f36a, jSONObject, z2);
        }
    }
}
