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

/* JADX INFO: renamed from: com.inmobi.media.g6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0315g6 implements O9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CrashConfig f358a;
    public C0313g4 b;
    public final C0579y5 c;
    public final C0299f6 d;

    public C0315g6(CrashConfig crashConfig) {
        Intrinsics.checkNotNullParameter(crashConfig, "crashConfig");
        this.f358a = crashConfig;
        this.c = new C0579y5(crashConfig);
        this.d = new C0299f6(this);
    }

    public final void a(C0565x5 c0565x5) {
        C0537v5 c0537v5C = Db.c();
        long eventTTL = this.f358a.getEventTTL();
        c0537v5C.getClass();
        c0537v5C.a("ts<?", new String[]{String.valueOf(System.currentTimeMillis() - (eventTTL * ((long) 1000)))});
        Intrinsics.checkNotNullExpressionValue("e4", "TAG");
        C0537v5 c0537v5C2 = Db.c();
        c0537v5C2.getClass();
        int iA = (R1.a((R1) c0537v5C2) + 1) - this.f358a.getMaxEventsToPersist();
        if (iA > 0) {
            Db.c().a(iA);
        }
        Db.c().a(c0565x5);
    }

    public final void b(C0565x5 incident) {
        Intrinsics.checkNotNullParameter(incident, "incident");
        if (Xc.a(incident)) {
            CrashConfig.ANRConfig aNRConfig = this.f358a.getAnr();
            if ((incident instanceof C0232b1) && E3.f104a.z() && aNRConfig.getAppExitReason().getUseForReporting() && this.c.d.a()) {
                Intrinsics.checkNotNullParameter("ANREvent", "<set-?>");
                incident.f238a = "ANREvent";
                a(incident);
            } else if ((incident instanceof zd) && aNRConfig.getWatchdog().getUseForReporting() && this.c.c.a()) {
                a(incident);
            } else {
                if (!(incident instanceof C0329h3)) {
                    return;
                }
                if (this.f358a.getCrashConfig().getEnabled() && this.c.f532a.a()) {
                    a(incident);
                }
            }
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.g6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C0315g6.b(this.f$0);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            Xc.f282a.execute(runnable);
        }
    }

    public final void c() {
        Runnable runnable = new Runnable() { // from class: com.inmobi.media.g6$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C0315g6.a(this.f$0);
            }
        };
        ScheduledExecutorService scheduledExecutorService = Xc.f282a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Xc.f282a.execute(runnable);
        Kb.f().a(new int[]{2, 1, Opcodes.DCMPG, Opcodes.FCMPG, Opcodes.DCMPL}, this.d);
    }

    public static final void a(C0315g6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b = new C0313g4(Db.c(), this$0, this$0.f358a.getEventConfig(), null);
        C0537v5 c0537v5C = Db.c();
        c0537v5C.getClass();
        if (R1.a((R1) c0537v5C) > 0) {
            this$0.b();
        }
    }

    public final void a(final C0264d2 incident) {
        Intrinsics.checkNotNullParameter(incident, "incident");
        if (this.f358a.getCatchConfig().getEnabled() && this.c.b.a()) {
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.g6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C0315g6.a(this.f$0, incident);
                }
            };
            ScheduledExecutorService scheduledExecutorService = Xc.f282a;
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            Xc.f282a.execute(runnable);
        }
    }

    public static final void a(C0315g6 this$0, C0264d2 incident) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(incident, "$incident");
        this$0.a((C0565x5) incident);
        this$0.b();
    }

    @Override // com.inmobi.media.O9
    public final C0297f4 a() {
        int iA;
        String string;
        int iP = E3.f104a.p();
        int i = 1;
        if (iP == 0 || iP != 1) {
            iA = this.f358a.getMobileConfig().a();
        } else {
            iA = this.f358a.getWifiConfig().a();
        }
        ArrayList<C0565x5> arrayListB = Db.c().b(iA);
        if (arrayListB.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayListB.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((C0565x5) it.next()).c));
        }
        try {
            HashMap map = new HashMap(E3.f104a.a(false));
            map.put("im-accid", Kb.b());
            map.put("version", "2.0.0");
            map.put("component", AppMeasurement.CRASH_ORIGIN);
            map.put("mk-version", Lb.a());
            map.putAll(C0247c1.e);
            map.put("tp", Lb.d());
            String strF = Lb.f();
            if (strF == null) {
                strF = "";
            }
            map.put("tpVer", strF);
            JSONObject jSONObject = new JSONObject(map);
            JSONArray jSONArray = new JSONArray();
            for (C0565x5 c0565x5 : arrayListB) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("eventId", c0565x5.e);
                jSONObject2.put("eventType", c0565x5.f238a);
                String strA = c0565x5.a();
                int length = strA.length() - i;
                int i2 = 0;
                boolean z = false;
                while (i2 <= length) {
                    boolean z2 = Intrinsics.compare((int) strA.charAt(!z ? i2 : length), 32) <= 0;
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
                if (strA.subSequence(i2, length + 1).toString().length() > 0) {
                    jSONObject2.put("crash_report", c0565x5.a());
                }
                jSONObject2.put("ts", c0565x5.b);
                jSONArray.put(jSONObject2);
                i = 1;
            }
            jSONObject.put(AppMeasurement.CRASH_ORIGIN, jSONArray);
            string = jSONObject.toString();
        } catch (JSONException unused) {
            string = null;
        }
        if (string != null) {
            return new C0297f4(arrayList, string);
        }
        return null;
    }

    public static final void b(C0315g6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b();
    }

    public final void b() {
        Unit unit;
        C0266d4 eventConfig = this.f358a.getEventConfig();
        eventConfig.k = this.f358a.getUrl();
        C0313g4 c0313g4 = this.b;
        if (c0313g4 != null) {
            Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
            c0313g4.i = eventConfig;
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            this.b = new C0313g4(Db.c(), this, eventConfig, null);
        }
        C0313g4 c0313g42 = this.b;
        if (c0313g42 != null) {
            C0266d4 c0266d4 = c0313g42.i;
            if (c0313g42.f.get() || c0266d4 == null) {
                return;
            }
            c0313g42.a(c0266d4.c, false);
        }
    }
}
