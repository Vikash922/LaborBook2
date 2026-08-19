package com.inmobi.media;

import android.app.Application;
import android.content.Context;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.i1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3188i1 {

    /* JADX INFO: renamed from: a */
    public static final C3188i1 f2165a = new C3188i1();

    /* JADX INFO: renamed from: b */
    public static LinkedHashSet f2166b;

    /* JADX INFO: renamed from: c */
    public static boolean f2167c;

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        if (r0.importance != 100) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        return true;
     */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m2237a(com.inmobi.media.C3188i1 r2, android.content.Context r3) {
        /*
            r2.getClass()
            java.lang.String r2 = "activity"
            java.lang.Object r2 = r3.getSystemService(r2)     // Catch: java.lang.Exception -> L41
            java.lang.String r0 = "null cannot be cast to non-null type android.app.ActivityManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r0)     // Catch: java.lang.Exception -> L41
            android.app.ActivityManager r2 = (android.app.ActivityManager) r2     // Catch: java.lang.Exception -> L41
            java.util.List r2 = r2.getRunningAppProcesses()     // Catch: java.lang.Exception -> L41
            if (r2 == 0) goto L48
            boolean r0 = r2.isEmpty()     // Catch: java.lang.Exception -> L41
            if (r0 == 0) goto L1d
            goto L48
        L1d:
            java.lang.String r3 = r3.getPackageName()     // Catch: java.lang.Exception -> L41
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> L41
        L25:
            boolean r0 = r2.hasNext()     // Catch: java.lang.Exception -> L41
            if (r0 == 0) goto L48
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Exception -> L41
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Exception -> L41
            java.lang.String r1 = r0.processName     // Catch: java.lang.Exception -> L41
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Exception -> L41
            if (r1 == 0) goto L25
            int r2 = r0.importance     // Catch: java.lang.Exception -> L41
            r3 = 100
            if (r2 != r3) goto L48
            r2 = 1
            goto L49
        L41:
            java.lang.String r2 = "i1"
            java.lang.String r3 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
        L48:
            r2 = 0
        L49:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3188i1.m2237a(com.inmobi.media.i1, android.content.Context):boolean");
    }

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ String m2238b() {
        return "i1";
    }

    /* JADX INFO: renamed from: c */
    public final void m2240c() {
        f2167c = true;
    }

    /* JADX INFO: renamed from: d */
    public final void m2241d() {
        f2167c = false;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2235a(C3188i1 c3188i1, boolean z) {
        LinkedHashSet linkedHashSet;
        c3188i1.getClass();
        if (C2849Kb.m1254d() == null || (linkedHashSet = f2166b) == null) {
            return;
        }
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            try {
                ((C2967Sc) ((InterfaceC3158g1) it.next())).m1806a(z);
            } catch (Exception unused) {
                Intrinsics.checkNotNullExpressionValue("i1", "TAG");
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2239a(Context context, InterfaceC3158g1 listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (f2166b == null) {
            f2166b = new LinkedHashSet();
            Context applicationContext = context.getApplicationContext();
            Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
            if (application != null) {
                try {
                    application.registerActivityLifecycleCallbacks(new C3173h1(context));
                } catch (Throwable unused) {
                }
            }
        }
        LinkedHashSet linkedHashSet = f2166b;
        if (linkedHashSet != null) {
            linkedHashSet.add(listener);
        }
    }
}
