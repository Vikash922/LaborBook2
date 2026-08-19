package com.inmobi.media;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
import org.json.JSONObject;
import org.objectweb.asm.Opcodes;

/* JADX INFO: renamed from: com.inmobi.media.hc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0338hc extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0338hc f377a = new C0338hc();

    public C0338hc() {
        super(1);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        C0233b2 it = (C0233b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f310a;
        if (i != 1 && i != 2) {
            switch (i) {
                case Opcodes.FCMPG /* 150 */:
                    C0475qc c0475qc = C0353ic.i;
                    if (c0475qc != null) {
                        Map map = it.c;
                        Object obj2 = map != null ? map.get("data") : null;
                        C0329h3 c0329h3 = obj2 instanceof C0329h3 ? (C0329h3) obj2 : null;
                        c0475qc.a("CrashEventOccurred", c0329h3);
                        if (c0329h3 != null && Intrinsics.areEqual(new JSONObject(c0329h3.a()).optString("name", ""), "OutOfMemoryError")) {
                            StackTraceElement[] stackTraceElementArr = c0329h3.g;
                            if (stackTraceElementArr == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("stackTrace");
                                stackTraceElementArr = null;
                            }
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            E3 e3 = E3.f104a;
                            linkedHashMap.put("manufacturer", e3.l());
                            linkedHashMap.put("modelName", e3.n());
                            linkedHashMap.put("osVersion", e3.s());
                            B3 b3A = e3.a();
                            linkedHashMap.put("maxHeapSize", Long.valueOf(b3A.f79a));
                            linkedHashMap.put("freeHeapSize", Long.valueOf(b3A.b));
                            linkedHashMap.put("currentHeapSize", Long.valueOf(b3A.c));
                            linkedHashMap.put("activeThreads", Integer.valueOf(Thread.activeCount()));
                            Set<Thread> setKeySet = Thread.getAllStackTraces().keySet();
                            ArrayList arrayList = new ArrayList();
                            for (Object obj3 : setKeySet) {
                                String name = ((Thread) obj3).getName();
                                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                                if (StringsKt.contains$default((CharSequence) name, (CharSequence) "TIM-", false, 2, (Object) null)) {
                                    arrayList.add(obj3);
                                }
                            }
                            linkedHashMap.put("inmobiThreadCount", Integer.valueOf(arrayList.size()));
                            linkedHashMap.put("isSdkInvolved", Boolean.valueOf(Xc.b(stackTraceElementArr)));
                            C0353ic.b("OutOfMemoryEvent", linkedHashMap, EnumC0415mc.f426a);
                        }
                    }
                    break;
                case Opcodes.DCMPL /* 151 */:
                    C0475qc c0475qc2 = C0353ic.i;
                    if (c0475qc2 != null) {
                        Map map2 = it.c;
                        Object obj4 = map2 != null ? map2.get("data") : null;
                        zd zdVar = obj4 instanceof zd ? (zd) obj4 : null;
                        if (zdVar != null && Xc.a(zdVar) && !E3.f104a.z()) {
                            c0475qc2.a("MainThreadBlockedEvent", zdVar);
                        }
                    }
                    break;
                case Opcodes.DCMPG /* 152 */:
                    C0475qc c0475qc3 = C0353ic.i;
                    if (c0475qc3 != null) {
                        Map map3 = it.c;
                        Object obj5 = map3 != null ? map3.get("data") : null;
                        c0475qc3.a(obj5 instanceof C0232b1 ? (C0232b1) obj5 : null);
                    }
                    break;
                default:
                    C0353ic c0353ic = C0353ic.f388a;
                    break;
            }
        } else {
            C0353ic.d.set(false);
            C0313g4 c0313g4 = C0353ic.f;
            if (c0313g4 != null) {
                ScheduledExecutorService scheduledExecutorService = c0313g4.h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c0313g4.h = null;
                c0313g4.e.set(false);
                c0313g4.f.set(true);
                c0313g4.g.clear();
                c0313g4.i = null;
            }
            C0353ic.f = null;
            C0353ic.i = null;
            Kb.f().a(C0353ic.h);
        }
        return Unit.INSTANCE;
    }
}
