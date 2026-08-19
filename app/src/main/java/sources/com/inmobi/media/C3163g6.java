package com.inmobi.media;

import com.google.android.gms.measurement.AppMeasurement;
import com.inmobi.commons.core.configs.CrashConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.g6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3163g6 implements InterfaceC2907O9 {

    /* JADX INFO: renamed from: a */
    public CrashConfig f2099a;

    /* JADX INFO: renamed from: b */
    public C3161g4 f2100b;

    /* JADX INFO: renamed from: c */
    public final C3432y5 f2101c;

    /* JADX INFO: renamed from: d */
    public final C3148f6 f2102d;

    public C3163g6(CrashConfig crashConfig) {
        Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
        this.f2099a = crashConfig;
        this.f2101c = new C3432y5(crashConfig);
        this.f2102d = new C3148f6(this);
    }

    /* JADX INFO: renamed from: a */
    public final void m2159a(C3417x5 c3417x5) {
        C3387v5 c3387v5M968c = AbstractC2744Db.m968c();
        long eventTTL = this.f2099a.getEventTTL();
        c3387v5M968c.getClass();
        c3387v5M968c.m1752a("ts<?", new String[]{String.valueOf(System.currentTimeMillis() - (eventTTL * ((long) 1000)))});
        Intrinsics.checkNotNullExpressionValue("e4", "TAG");
        C3387v5 c3387v5M968c2 = AbstractC2744Db.m968c();
        c3387v5M968c2.getClass();
        int iM1750a = (AbstractC2942R1.m1750a((AbstractC2942R1) c3387v5M968c2) + 1) - this.f2099a.getMaxEventsToPersist();
        if (iM1750a > 0) {
            AbstractC2744Db.m968c().m2093a(iM1750a);
        }
        AbstractC2744Db.m968c().m1753a(c3417x5);
    }

    /* JADX INFO: renamed from: b */
    public final void m2161b(C3417x5 incident) {
        Intrinsics.checkNotNullParameter(incident, "incident");
        if (AbstractC3037Xc.m1916a(incident)) {
            CrashConfig.ANRConfig aNRConfig = this.f2099a.getAnr();
            if ((incident instanceof C3083b1) && C2751E3.f962a.m1040z() && aNRConfig.getAppExitReason().getUseForReporting() && this.f2101c.f2759d.m1122a()) {
                Intrinsics.checkNotNullParameter("ANREvent", "<set-?>");
                incident.f1525a = "ANREvent";
                m2159a(incident);
            } else if ((incident instanceof C3455zd) && aNRConfig.getWatchdog().getUseForReporting() && this.f2101c.f2758c.m1122a()) {
                m2159a(incident);
            } else {
                if (!(incident instanceof C3175h3)) {
                    return;
                }
                if (this.f2099a.getCrashConfig().getEnabled() && this.f2101c.f2756a.m1122a()) {
                    m2159a(incident);
                }
            }
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.g6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3163g6.m2157b(this.f$0);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC3037Xc.f1652a.execute(runnable);
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2162c() {
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.g6$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3163g6.m2155a(this.f$0);
            }
        };
        ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        AbstractC3037Xc.f1652a.execute(runnable);
        C2849Kb.m1256f().m2215a(new int[]{2, 1, Opcodes.DCMPG, Opcodes.FCMPG, Opcodes.DCMPL}, this.f2102d);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2155a(C3163g6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f2100b = new C3161g4(AbstractC2744Db.m968c(), this$0, this$0.f2099a.getEventConfig(), null);
        C3387v5 c3387v5M968c = AbstractC2744Db.m968c();
        c3387v5M968c.getClass();
        if (AbstractC2942R1.m1750a((AbstractC2942R1) c3387v5M968c) > 0) {
            this$0.m2160b();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2158a(final C3114d2 incident) {
        Intrinsics.checkNotNullParameter(incident, "incident");
        if (this.f2099a.getCatchConfig().getEnabled() && this.f2101c.f2757b.m1122a()) {
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.g6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3163g6.m2156a(this.f$0, incident);
                }
            };
            ScheduledExecutorService scheduledExecutorService = AbstractC3037Xc.f1652a;
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC3037Xc.f1652a.execute(runnable);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m2156a(C3163g6 this$0, C3114d2 incident) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(incident, "$incident");
        this$0.m2159a((C3417x5) incident);
        this$0.m2160b();
    }

    @Override // com.inmobi.media.InterfaceC2907O9
    /* JADX INFO: renamed from: a */
    public final C3146f4 mo1420a() {
        int iM2314a;
        String string;
        int iM1032p = C2751E3.f962a.m1032p();
        int i = 1;
        if (iM1032p == 0 || iM1032p != 1) {
            iM2314a = this.f2099a.getMobileConfig().m2314a();
        } else {
            iM2314a = this.f2099a.getWifiConfig().m2314a();
        }
        ArrayList<C3417x5> arrayListM2096b = AbstractC2744Db.m968c().m2096b(iM2314a);
        if (arrayListM2096b.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayListM2096b.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((C3417x5) it.next()).f1527c));
        }
        try {
            HashMap map = new HashMap(C2751E3.f962a.m1018a(false));
            map.put("im-accid", C2849Kb.m1248b());
            map.put("version", "2.0.0");
            map.put("component", AppMeasurement.CRASH_ORIGIN);
            map.put("mk-version", C2864Lb.m1313a());
            map.putAll(C3098c1.f1909e);
            map.put("tp", C2864Lb.m1318d());
            String strM1320f = C2864Lb.m1320f();
            if (strM1320f == null) {
                strM1320f = "";
            }
            map.put("tpVer", strM1320f);
            JSONObject jSONObject = new JSONObject(map);
            JSONArray jSONArray = new JSONArray();
            for (C3417x5 c3417x5 : arrayListM2096b) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("eventId", c3417x5.f2741e);
                jSONObject2.put("eventType", c3417x5.f1525a);
                String strM1776a = c3417x5.m1776a();
                int length = strM1776a.length() - i;
                int i2 = 0;
                boolean z = false;
                while (i2 <= length) {
                    boolean z2 = Intrinsics.compare((int) strM1776a.charAt(!z ? i2 : length), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i2++;
                    } else {
                        z = true;
                    }
                }
                if (strM1776a.subSequence(i2, length + 1).toString().length() > 0) {
                    jSONObject2.put("crash_report", c3417x5.m1776a());
                }
                jSONObject2.put("ts", c3417x5.f1526b);
                jSONArray.put(jSONObject2);
                i = 1;
            }
            jSONObject.put(AppMeasurement.CRASH_ORIGIN, jSONArray);
            string = jSONObject.toString();
        } catch (JSONException unused) {
            string = null;
        }
        if (string != null) {
            return new C3146f4(arrayList, string);
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static final void m2157b(C3163g6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m2160b();
    }

    /* JADX INFO: renamed from: b */
    public final void m2160b() {
        Unit unit;
        C3116d4 eventConfig = this.f2099a.getEventConfig();
        eventConfig.f1995k = this.f2099a.getUrl();
        C3161g4 c3161g4 = this.f2100b;
        if (c3161g4 != null) {
            Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
            c3161g4.f2096i = eventConfig;
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            this.f2100b = new C3161g4(AbstractC2744Db.m968c(), this, eventConfig, null);
        }
        C3161g4 c3161g42 = this.f2100b;
        if (c3161g42 != null) {
            C3116d4 c3116d4 = c3161g42.f2096i;
            if (c3161g42.f2093f.get() || c3116d4 == null) {
                return;
            }
            c3161g42.m2144a(c3116d4.f1987c, false);
        }
    }
}
