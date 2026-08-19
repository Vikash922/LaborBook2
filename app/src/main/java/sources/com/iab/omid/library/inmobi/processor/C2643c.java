package com.iab.omid.library.inmobi.processor;

import android.view.View;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.internal.C2633c;
import com.iab.omid.library.inmobi.processor.InterfaceC2641a;
import com.iab.omid.library.inmobi.utils.C2650c;
import com.iab.omid.library.inmobi.utils.C2652e;
import com.iab.omid.library.inmobi.utils.C2655h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.processor.c */
/* JADX INFO: loaded from: classes6.dex */
public class C2643c implements InterfaceC2641a {

    /* JADX INFO: renamed from: a */
    private final InterfaceC2641a f663a;

    public C2643c(InterfaceC2641a interfaceC2641a) {
        this.f663a = interfaceC2641a;
    }

    /* JADX INFO: renamed from: a */
    ArrayList<View> m654a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        C2633c c2633cM590c = C2633c.m590c();
        if (c2633cM590c != null) {
            Collection<C2623a> collectionM591a = c2633cM590c.m591a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionM591a.size() * 2) + 3);
            Iterator<C2623a> it = collectionM591a.iterator();
            while (it.hasNext()) {
                View viewM549c = it.next().m549c();
                if (viewM549c != null && C2655h.m739g(viewM549c) && (rootView = viewM549c.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fM736d = C2655h.m736d(rootView);
                    int size = arrayList.size();
                    while (size > 0 && C2655h.m736d(arrayList.get(size - 1)) > fM736d) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.inmobi.processor.InterfaceC2641a
    /* JADX INFO: renamed from: a */
    public JSONObject mo649a(View view) {
        JSONObject jSONObjectM692a = C2650c.m692a(0, 0, 0, 0);
        C2650c.m694a(jSONObjectM692a, C2652e.m715a());
        return jSONObjectM692a;
    }

    @Override // com.iab.omid.library.inmobi.processor.InterfaceC2641a
    /* JADX INFO: renamed from: a */
    public void mo650a(View view, JSONObject jSONObject, InterfaceC2641a.a aVar, boolean z, boolean z2) {
        Iterator<View> it = m654a().iterator();
        while (it.hasNext()) {
            aVar.mo651a(it.next(), this.f663a, jSONObject, z2);
        }
    }
}
