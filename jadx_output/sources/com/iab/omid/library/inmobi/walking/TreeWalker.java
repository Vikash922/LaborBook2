package com.iab.omid.library.inmobi.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.internal.C2633c;
import com.iab.omid.library.inmobi.internal.C2640j;
import com.iab.omid.library.inmobi.processor.C2642b;
import com.iab.omid.library.inmobi.processor.InterfaceC2641a;
import com.iab.omid.library.inmobi.utils.C2650c;
import com.iab.omid.library.inmobi.utils.C2653f;
import com.iab.omid.library.inmobi.utils.C2655h;
import com.iab.omid.library.inmobi.walking.C2660a;
import com.iab.omid.library.inmobi.walking.async.C2663c;
import com.iab.omid.library.inmobi.weakreference.C2669a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class TreeWalker implements InterfaceC2641a.a {

    /* JADX INFO: renamed from: i */
    private static TreeWalker f690i = new TreeWalker();

    /* JADX INFO: renamed from: j */
    private static Handler f691j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: k */
    private static Handler f692k = null;

    /* JADX INFO: renamed from: l */
    private static final Runnable f693l = new RunnableC2658b();

    /* JADX INFO: renamed from: m */
    private static final Runnable f694m = new RunnableC2659c();

    /* JADX INFO: renamed from: b */
    private int f696b;

    /* JADX INFO: renamed from: h */
    private long f702h;

    /* JADX INFO: renamed from: a */
    private List<TreeWalkerTimeLogger> f695a = new ArrayList();

    /* JADX INFO: renamed from: c */
    private boolean f697c = false;

    /* JADX INFO: renamed from: d */
    private final List<C2669a> f698d = new ArrayList();

    /* JADX INFO: renamed from: f */
    private C2660a f700f = new C2660a();

    /* JADX INFO: renamed from: e */
    private C2642b f699e = new C2642b();

    /* JADX INFO: renamed from: g */
    private C2667b f701g = new C2667b(new C2663c());

    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.TreeWalker$a */
    class RunnableC2657a implements Runnable {
        RunnableC2657a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f701g.m794b();
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.TreeWalker$b */
    class RunnableC2658b implements Runnable {
        RunnableC2658b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().m756l();
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.TreeWalker$c */
    class RunnableC2659c implements Runnable {
        RunnableC2659c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f692k != null) {
                TreeWalker.f692k.post(TreeWalker.f693l);
                TreeWalker.f692k.postDelayed(TreeWalker.f694m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    /* JADX INFO: renamed from: a */
    private void m744a(long j) {
        if (this.f695a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f695a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f696b, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f696b, j);
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    private void m745a(View view, InterfaceC2641a interfaceC2641a, JSONObject jSONObject, EnumC2668c enumC2668c, boolean z) {
        interfaceC2641a.mo650a(view, jSONObject, this, enumC2668c == EnumC2668c.PARENT_VIEW, z);
    }

    /* JADX INFO: renamed from: a */
    private void m746a(String str, View view, JSONObject jSONObject) {
        InterfaceC2641a interfaceC2641aM653b = this.f699e.m653b();
        String strM768b = this.f700f.m768b(str);
        if (strM768b != null) {
            JSONObject jSONObjectMo649a = interfaceC2641aM653b.mo649a(view);
            C2650c.m697a(jSONObjectMo649a, str);
            C2650c.m704b(jSONObjectMo649a, strM768b);
            C2650c.m699a(jSONObject, jSONObjectMo649a);
        }
    }

    /* JADX INFO: renamed from: a */
    private boolean m747a(View view, JSONObject jSONObject) {
        C2660a.a aVarM767b = this.f700f.m767b(view);
        if (aVarM767b == null) {
            return false;
        }
        C2650c.m695a(jSONObject, aVarM767b);
        return true;
    }

    /* JADX INFO: renamed from: b */
    private boolean m750b(View view, JSONObject jSONObject) {
        String strM770c = this.f700f.m770c(view);
        if (strM770c == null) {
            return false;
        }
        C2650c.m697a(jSONObject, strM770c);
        C2650c.m696a(jSONObject, Boolean.valueOf(this.f700f.m776e(view)));
        C2650c.m703b(jSONObject, Boolean.valueOf(this.f700f.m772c(strM770c)));
        this.f700f.m774d();
        return true;
    }

    /* JADX INFO: renamed from: d */
    private void m752d() {
        m744a(C2653f.m718b() - this.f702h);
    }

    /* JADX INFO: renamed from: e */
    private void m753e() {
        this.f696b = 0;
        this.f698d.clear();
        this.f697c = false;
        Iterator<C2623a> it = C2633c.m590c().m591a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().m551e()) {
                this.f697c = true;
                break;
            }
        }
        this.f702h = C2653f.m718b();
    }

    public static TreeWalker getInstance() {
        return f690i;
    }

    /* JADX INFO: renamed from: i */
    private void m754i() {
        if (f692k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f692k = handler;
            handler.post(f693l);
            f692k.postDelayed(f694m, 200L);
        }
    }

    /* JADX INFO: renamed from: k */
    private void m755k() {
        Handler handler = f692k;
        if (handler != null) {
            handler.removeCallbacks(f694m);
            f692k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l */
    public void m756l() {
        m753e();
        m757f();
        m752d();
        C2640j.m645b().m646a();
    }

    @Override // com.iab.omid.library.inmobi.processor.InterfaceC2641a.a
    /* JADX INFO: renamed from: a */
    public void mo651a(View view, InterfaceC2641a interfaceC2641a, JSONObject jSONObject, boolean z) {
        EnumC2668c enumC2668cM773d;
        if (C2655h.m738f(view) && (enumC2668cM773d = this.f700f.m773d(view)) != EnumC2668c.UNDERLYING_VIEW) {
            JSONObject jSONObjectMo649a = interfaceC2641a.mo649a(view);
            C2650c.m699a(jSONObject, jSONObjectMo649a);
            if (!m750b(view, jSONObjectMo649a)) {
                boolean z2 = z || m747a(view, jSONObjectMo649a);
                if (this.f697c && enumC2668cM773d == EnumC2668c.OBSTRUCTION_VIEW && !z2) {
                    this.f698d.add(new C2669a(view));
                }
                m745a(view, interfaceC2641a, jSONObjectMo649a, enumC2668cM773d, z2);
            }
            this.f696b++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f695a.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f695a.add(treeWalkerTimeLogger);
    }

    /* JADX INFO: renamed from: f */
    void m757f() {
        this.f700f.m775e();
        long jM718b = C2653f.m718b();
        InterfaceC2641a interfaceC2641aM652a = this.f699e.m652a();
        if (this.f700f.m769b().size() > 0) {
            for (String str : this.f700f.m769b()) {
                JSONObject jSONObjectMo649a = interfaceC2641aM652a.mo649a(null);
                m746a(str, this.f700f.m765a(str), jSONObjectMo649a);
                C2650c.m702b(jSONObjectMo649a);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(str);
                this.f701g.m793a(jSONObjectMo649a, hashSet, jM718b);
            }
        }
        if (this.f700f.m771c().size() > 0) {
            JSONObject jSONObjectMo649a2 = interfaceC2641aM652a.mo649a(null);
            m745a(null, interfaceC2641aM652a, jSONObjectMo649a2, EnumC2668c.PARENT_VIEW, false);
            C2650c.m702b(jSONObjectMo649a2);
            this.f701g.m795b(jSONObjectMo649a2, this.f700f.m771c(), jM718b);
            if (this.f697c) {
                Iterator<C2623a> it = C2633c.m590c().m591a().iterator();
                while (it.hasNext()) {
                    it.next().m547a(this.f698d);
                }
            }
        } else {
            this.f701g.m794b();
        }
        this.f700f.m766a();
    }

    /* JADX INFO: renamed from: g */
    public void m758g() {
        m755k();
    }

    /* JADX INFO: renamed from: h */
    public void m759h() {
        m754i();
    }

    /* JADX INFO: renamed from: j */
    public void m760j() {
        m758g();
        this.f695a.clear();
        f691j.post(new RunnableC2657a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f695a.contains(treeWalkerTimeLogger)) {
            this.f695a.remove(treeWalkerTimeLogger);
        }
    }
}
