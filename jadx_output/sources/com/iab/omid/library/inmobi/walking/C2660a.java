package com.iab.omid.library.inmobi.walking;

import android.view.View;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.internal.C2633c;
import com.iab.omid.library.inmobi.internal.C2635e;
import com.iab.omid.library.inmobi.utils.C2655h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.a */
/* JADX INFO: loaded from: classes6.dex */
public class C2660a {

    /* JADX INFO: renamed from: a */
    private final HashMap<View, String> f704a = new HashMap<>();

    /* JADX INFO: renamed from: b */
    private final HashMap<View, a> f705b = new HashMap<>();

    /* JADX INFO: renamed from: c */
    private final HashMap<String, View> f706c = new HashMap<>();

    /* JADX INFO: renamed from: d */
    private final HashSet<View> f707d = new HashSet<>();

    /* JADX INFO: renamed from: e */
    private final HashSet<String> f708e = new HashSet<>();

    /* JADX INFO: renamed from: f */
    private final HashSet<String> f709f = new HashSet<>();

    /* JADX INFO: renamed from: g */
    private final HashMap<String, String> f710g = new HashMap<>();

    /* JADX INFO: renamed from: h */
    private final HashSet<String> f711h = new HashSet<>();

    /* JADX INFO: renamed from: i */
    private final Map<View, Boolean> f712i = new WeakHashMap();

    /* JADX INFO: renamed from: j */
    private boolean f713j;

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.a$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        private final C2635e f714a;

        /* JADX INFO: renamed from: b */
        private final ArrayList<String> f715b = new ArrayList<>();

        public a(C2635e c2635e, String str) {
            this.f714a = c2635e;
            m778a(str);
        }

        /* JADX INFO: renamed from: a */
        public C2635e m777a() {
            return this.f714a;
        }

        /* JADX INFO: renamed from: a */
        public void m778a(String str) {
            this.f715b.add(str);
        }

        /* JADX INFO: renamed from: b */
        public ArrayList<String> m779b() {
            return this.f715b;
        }
    }

    /* JADX INFO: renamed from: a */
    private Boolean m761a(View view) {
        if (view.hasWindowFocus()) {
            this.f712i.remove(view);
            return Boolean.FALSE;
        }
        if (this.f712i.containsKey(view)) {
            return this.f712i.get(view);
        }
        Map<View, Boolean> map = this.f712i;
        Boolean bool = Boolean.FALSE;
        map.put(view, bool);
        return bool;
    }

    /* JADX INFO: renamed from: a */
    private String m762a(View view, boolean z) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (m761a(view).booleanValue() && !z) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strM733a = C2655h.m733a(view);
            if (strM733a != null) {
                return strM733a;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f707d.addAll(hashSet);
        return null;
    }

    /* JADX INFO: renamed from: a */
    private void m763a(C2623a c2623a) {
        Iterator<C2635e> it = c2623a.m550d().iterator();
        while (it.hasNext()) {
            m764a(it.next(), c2623a);
        }
    }

    /* JADX INFO: renamed from: a */
    private void m764a(C2635e c2635e, C2623a c2623a) {
        View view = c2635e.m607c().get();
        if (view == null) {
            return;
        }
        a aVar = this.f705b.get(view);
        if (aVar != null) {
            aVar.m778a(c2623a.getAdSessionId());
        } else {
            this.f705b.put(view, new a(c2635e, c2623a.getAdSessionId()));
        }
    }

    /* JADX INFO: renamed from: a */
    public View m765a(String str) {
        return this.f706c.get(str);
    }

    /* JADX INFO: renamed from: a */
    public void m766a() {
        this.f704a.clear();
        this.f705b.clear();
        this.f706c.clear();
        this.f707d.clear();
        this.f708e.clear();
        this.f709f.clear();
        this.f710g.clear();
        this.f713j = false;
        this.f711h.clear();
    }

    /* JADX INFO: renamed from: b */
    public a m767b(View view) {
        a aVar = this.f705b.get(view);
        if (aVar != null) {
            this.f705b.remove(view);
        }
        return aVar;
    }

    /* JADX INFO: renamed from: b */
    public String m768b(String str) {
        return this.f710g.get(str);
    }

    /* JADX INFO: renamed from: b */
    public HashSet<String> m769b() {
        return this.f709f;
    }

    /* JADX INFO: renamed from: c */
    public String m770c(View view) {
        if (this.f704a.size() == 0) {
            return null;
        }
        String str = this.f704a.get(view);
        if (str != null) {
            this.f704a.remove(view);
        }
        return str;
    }

    /* JADX INFO: renamed from: c */
    public HashSet<String> m771c() {
        return this.f708e;
    }

    /* JADX INFO: renamed from: c */
    public boolean m772c(String str) {
        return this.f711h.contains(str);
    }

    /* JADX INFO: renamed from: d */
    public EnumC2668c m773d(View view) {
        return this.f707d.contains(view) ? EnumC2668c.PARENT_VIEW : this.f713j ? EnumC2668c.OBSTRUCTION_VIEW : EnumC2668c.UNDERLYING_VIEW;
    }

    /* JADX INFO: renamed from: d */
    public void m774d() {
        this.f713j = true;
    }

    /* JADX INFO: renamed from: e */
    public void m775e() {
        C2633c c2633cM590c = C2633c.m590c();
        if (c2633cM590c != null) {
            for (C2623a c2623a : c2633cM590c.m591a()) {
                View viewM549c = c2623a.m549c();
                if (c2623a.m552f()) {
                    String adSessionId = c2623a.getAdSessionId();
                    if (viewM549c != null) {
                        boolean zM737e = C2655h.m737e(viewM549c);
                        if (zM737e) {
                            this.f711h.add(adSessionId);
                        }
                        String strM762a = m762a(viewM549c, zM737e);
                        if (strM762a == null) {
                            this.f708e.add(adSessionId);
                            this.f704a.put(viewM549c, adSessionId);
                            m763a(c2623a);
                        } else if (strM762a != "noWindowFocus") {
                            this.f709f.add(adSessionId);
                            this.f706c.put(adSessionId, viewM549c);
                            this.f710g.put(adSessionId, strM762a);
                        }
                    } else {
                        this.f709f.add(adSessionId);
                        this.f710g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public boolean m776e(View view) {
        if (!this.f712i.containsKey(view)) {
            return true;
        }
        this.f712i.put(view, Boolean.TRUE);
        return false;
    }
}
