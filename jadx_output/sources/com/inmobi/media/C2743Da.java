package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONException;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.Da */
/* JADX INFO: loaded from: classes6.dex */
public final class C2743Da extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public static final C2743Da f947a = new C2743Da();

    public C2743Da() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        C3084b2 it = (C3084b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f1872a;
        if (i != 1 && i != 2) {
            switch (i) {
                case Opcodes.FCMPG /* 150 */:
                case Opcodes.DCMPL /* 151 */:
                case Opcodes.DCMPG /* 152 */:
                    Map map = it.f1874c;
                    if (map != null && map.containsKey("data")) {
                        Object obj2 = it.f1874c.get("data");
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent");
                        C3417x5 incident = (C3417x5) obj2;
                        EnumC2709B6 enumC2709B6 = C2758Ea.f1001a;
                        Intrinsics.checkNotNullParameter(incident, "incident");
                        boolean z = incident instanceof C3175h3;
                        if (z || (incident instanceof C3455zd)) {
                            for (C3393vb c3393vb : AbstractC3207j5.m2257a()) {
                                EnumC2709B6 logLevel = EnumC2709B6.f853c;
                                String message = "TYPE - " + incident.f1525a + ", TIMESTAMP - " + incident.f1526b + ", PAYLOAD - " + incident.m1776a();
                                c3393vb.getClass();
                                Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                                Intrinsics.checkNotNullParameter("LOGGER CRASH", "tag");
                                Intrinsics.checkNotNullParameter(message, "message");
                                c3393vb.f2689a.m928a(logLevel, "LOGGER CRASH", message);
                                if (z) {
                                    c3393vb.f2689a.m929b();
                                }
                            }
                        } else if (C2758Ea.f1005e.getAnr().getAppExitReason().getReportToLogs() && (incident instanceof C3083b1)) {
                            new C2753E5(C2758Ea.f1005e.getAnr().getAppExitReason().getIncompleteLogThresholdTime()).m1042a(incident.f1525a, incident.m1776a(), ((C3083b1) incident).f1870g, incident.f1526b);
                        }
                    }
                    break;
            }
        } else {
            EnumC2709B6 enumC2709B62 = C2758Ea.f1001a;
            for (C3393vb c3393vb2 : AbstractC3207j5.m2257a()) {
                EnumC2709B6 logLevel2 = EnumC2709B6.f853c;
                String message2 = "SYSTEM SHUTDOWN RECEIVED - " + i;
                c3393vb2.getClass();
                Intrinsics.checkNotNullParameter(logLevel2, "logLevel");
                Intrinsics.checkNotNullParameter("LOGGER CRASH", "tag");
                Intrinsics.checkNotNullParameter(message2, "message");
                c3393vb2.f2689a.m928a(logLevel2, "LOGGER CRASH", message2);
                c3393vb2.f2689a.m929b();
            }
            AtomicBoolean atomicBoolean = C2758Ea.f1003c;
            atomicBoolean.set(false);
            C3179h7 c3179h7M1256f = C2849Kb.m1256f();
            C2743Da c2743Da = C2758Ea.f1007g;
            c3179h7M1256f.m2214a(c2743Da);
            C2758Ea.f1002b = null;
            EnumC2709B6 enumC2709B63 = C2758Ea.f1001a;
            atomicBoolean.set(false);
            C2849Kb.m1256f().m2214a(c2743Da);
            C2758Ea.f1002b = null;
        }
        return Unit.INSTANCE;
    }
}
