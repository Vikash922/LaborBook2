package com.inmobi.media;

import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONException;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
public final class Da extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Da f100a = new Da();

    public Da() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws JSONException {
        C0233b2 it = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f310a;
        if (i != 1 && i != 2) {
            switch (i) {
                case Opcodes.FCMPG /* 150 */:
                case Opcodes.DCMPL /* 151 */:
                case Opcodes.DCMPG /* 152 */:
                    Map map = it.c;
                    if (map != null && map.containsKey("data")) {
                        Object obj2 = it.c.get("data");
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent");
                        C0565x5 incident = (C0565x5) obj2;
                        B6 b6 = Ea.f109a;
                        Intrinsics.checkNotNullParameter(incident, "incident");
                        boolean z = incident instanceof C0329h3;
                        if (z || (incident instanceof zd)) {
                            for (C0543vb c0543vb : AbstractC0362j5.a()) {
                                B6 logLevel = B6.c;
                                String message = "TYPE - " + incident.f238a + ", TIMESTAMP - " + incident.b + ", PAYLOAD - " + incident.a();
                                c0543vb.getClass();
                                Intrinsics.checkNotNullParameter(logLevel, "logLevel");
                                Intrinsics.checkNotNullParameter("LOGGER CRASH", "tag");
                                Intrinsics.checkNotNullParameter(message, "message");
                                c0543vb.f508a.a(logLevel, "LOGGER CRASH", message);
                                if (z) {
                                    c0543vb.f508a.b();
                                }
                            }
                        } else if (Ea.e.getAnr().getAppExitReason().getReportToLogs() && (incident instanceof C0232b1)) {
                            new E5(Ea.e.getAnr().getAppExitReason().getIncompleteLogThresholdTime()).a(incident.f238a, incident.a(), ((C0232b1) incident).g, incident.b);
                        }
                    }
                    break;
            }
        } else {
            B6 b62 = Ea.f109a;
            for (C0543vb c0543vb2 : AbstractC0362j5.a()) {
                B6 logLevel2 = B6.c;
                String message2 = "SYSTEM SHUTDOWN RECEIVED - " + i;
                c0543vb2.getClass();
                Intrinsics.checkNotNullParameter(logLevel2, "logLevel");
                Intrinsics.checkNotNullParameter("LOGGER CRASH", "tag");
                Intrinsics.checkNotNullParameter(message2, "message");
                c0543vb2.f508a.a(logLevel2, "LOGGER CRASH", message2);
                c0543vb2.f508a.b();
            }
            AtomicBoolean atomicBoolean = Ea.c;
            atomicBoolean.set(false);
            C0333h7 c0333h7F = Kb.f();
            Da da = Ea.g;
            c0333h7F.a(da);
            Ea.b = null;
            B6 b63 = Ea.f109a;
            atomicBoolean.set(false);
            Kb.f().a(da);
            Ea.b = null;
        }
        return Unit.INSTANCE;
    }
}
