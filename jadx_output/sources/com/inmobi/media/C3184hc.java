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

/* JADX INFO: renamed from: com.inmobi.media.hc */
/* JADX INFO: loaded from: classes6.dex */
public final class C3184hc extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a */
    public static final C3184hc f2152a = new C3184hc();

    public C3184hc() {
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
        C3084b2 it = (C3084b2) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = it.f1872a;
        if (i != 1 && i != 2) {
            switch (i) {
                case Opcodes.FCMPG /* 150 */:
                    C3319qc c3319qc = C3199ic.f2201i;
                    if (c3319qc != null) {
                        Map map = it.f1874c;
                        Object obj2 = map != null ? map.get("data") : null;
                        C3175h3 c3175h3 = obj2 instanceof C3175h3 ? (C3175h3) obj2 : null;
                        c3319qc.m2358a("CrashEventOccurred", c3175h3);
                        if (c3175h3 != null && Intrinsics.areEqual(new JSONObject(c3175h3.m1776a()).optString("name", ""), "OutOfMemoryError")) {
                            StackTraceElement[] stackTraceElementArr = c3175h3.f2132g;
                            if (stackTraceElementArr == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("stackTrace");
                                stackTraceElementArr = null;
                            }
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            C2751E3 c2751e3 = C2751E3.f962a;
                            linkedHashMap.put("manufacturer", c2751e3.m1029l());
                            linkedHashMap.put("modelName", c2751e3.m1031n());
                            linkedHashMap.put("osVersion", c2751e3.m1033s());
                            C2706B3 c2706b3M1016a = c2751e3.m1016a();
                            linkedHashMap.put("maxHeapSize", Long.valueOf(c2706b3M1016a.f846a));
                            linkedHashMap.put("freeHeapSize", Long.valueOf(c2706b3M1016a.f847b));
                            linkedHashMap.put("currentHeapSize", Long.valueOf(c2706b3M1016a.f848c));
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
                            linkedHashMap.put("isSdkInvolved", Boolean.valueOf(AbstractC3037Xc.m1918b(stackTraceElementArr)));
                            C3199ic.m2248b("OutOfMemoryEvent", linkedHashMap, EnumC3259mc.f2349a);
                        }
                    }
                    break;
                case Opcodes.DCMPL /* 151 */:
                    C3319qc c3319qc2 = C3199ic.f2201i;
                    if (c3319qc2 != null) {
                        Map map2 = it.f1874c;
                        Object obj4 = map2 != null ? map2.get("data") : null;
                        C3455zd c3455zd = obj4 instanceof C3455zd ? (C3455zd) obj4 : null;
                        if (c3455zd != null && AbstractC3037Xc.m1916a(c3455zd) && !C2751E3.f962a.m1040z()) {
                            c3319qc2.m2358a("MainThreadBlockedEvent", c3455zd);
                        }
                    }
                    break;
                case Opcodes.DCMPG /* 152 */:
                    C3319qc c3319qc3 = C3199ic.f2201i;
                    if (c3319qc3 != null) {
                        Map map3 = it.f1874c;
                        Object obj5 = map3 != null ? map3.get("data") : null;
                        c3319qc3.m2357a(obj5 instanceof C3083b1 ? (C3083b1) obj5 : null);
                    }
                    break;
                default:
                    C3199ic c3199ic = C3199ic.f2193a;
                    break;
            }
        } else {
            C3199ic.f2196d.set(false);
            C3161g4 c3161g4 = C3199ic.f2198f;
            if (c3161g4 != null) {
                ScheduledExecutorService scheduledExecutorService = c3161g4.f2095h;
                if (scheduledExecutorService != null) {
                    scheduledExecutorService.shutdownNow();
                }
                c3161g4.f2095h = null;
                c3161g4.f2092e.set(false);
                c3161g4.f2093f.set(true);
                c3161g4.f2094g.clear();
                c3161g4.f2096i = null;
            }
            C3199ic.f2198f = null;
            C3199ic.f2201i = null;
            C2849Kb.m1256f().m2214a(C3199ic.f2200h);
        }
        return Unit.INSTANCE;
    }
}
