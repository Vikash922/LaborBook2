package com.iab.omid.library.inmobi.processor;

import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.processor.InterfaceC2641a;
import com.iab.omid.library.inmobi.utils.C2650c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.processor.d */
/* JADX INFO: loaded from: classes6.dex */
public class C2644d implements InterfaceC2641a {

    /* JADX INFO: renamed from: a */
    private final int[] f664a = new int[2];

    /* JADX INFO: renamed from: a */
    private void m655a(ViewGroup viewGroup, JSONObject jSONObject, InterfaceC2641a.a aVar, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            aVar.mo651a(viewGroup.getChildAt(i), this, jSONObject, z);
        }
    }

    /* JADX INFO: renamed from: b */
    private void m656b(ViewGroup viewGroup, JSONObject jSONObject, InterfaceC2641a.a aVar, boolean z) {
        HashMap map = new HashMap();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            ArrayList arrayList = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(Float.valueOf(childAt.getZ()), arrayList);
            }
            arrayList.add(childAt);
        }
        ArrayList arrayList2 = new ArrayList(map.keySet());
        Collections.sort(arrayList2);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((ArrayList) map.get((Float) it.next())).iterator();
            while (it2.hasNext()) {
                aVar.mo651a((View) it2.next(), this, jSONObject, z);
            }
        }
    }

    @Override // com.iab.omid.library.inmobi.processor.InterfaceC2641a
    /* JADX INFO: renamed from: a */
    public JSONObject mo649a(View view) {
        if (view == null) {
            return C2650c.m692a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f664a);
        int[] iArr = this.f664a;
        return C2650c.m692a(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.inmobi.processor.InterfaceC2641a
    /* JADX INFO: renamed from: a */
    public void mo650a(View view, JSONObject jSONObject, InterfaceC2641a.a aVar, boolean z, boolean z2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (z) {
                m656b(viewGroup, jSONObject, aVar, z2);
            } else {
                m655a(viewGroup, jSONObject, aVar, z2);
            }
        }
    }
}
