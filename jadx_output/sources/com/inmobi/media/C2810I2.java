package com.inmobi.media;

import android.os.Message;
import com.inmobi.commons.core.configs.Config;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.I2 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2810I2 {
    /* JADX INFO: renamed from: a */
    public static void m1162a() {
        if (C2840K2.f1152c.getAndSet(true)) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
        m1165b();
        m1161a(CommonCssConstants.ROOT, C2849Kb.m1248b(), null);
    }

    /* JADX INFO: renamed from: b */
    public static void m1165b() {
        final ArrayList arrayList = new ArrayList();
        C2870M2 c2870m2 = (C2870M2) C2840K2.f1155f.getValue();
        c2870m2.getClass();
        for (Config config : CollectionsKt.filterNotNull(AbstractC2942R1.m1751a(c2870m2, null, null, null, null, null, null, 63))) {
            ConcurrentHashMap concurrentHashMap = C2840K2.f1154e;
            LinkedHashMap linkedHashMap = C2840K2.f1150a;
            Intrinsics.checkNotNullParameter(config, "<this>");
            HashMap map = AbstractC3430y3.f2754a;
            Config config2 = (Config) concurrentHashMap.put(AbstractC3430y3.m2612b(config.getAccountId$media_release(), config.getType()), config);
            if (config2 == null || config2.getLastUpdateTimeStamp() != config.getLastUpdateTimeStamp()) {
                Intrinsics.checkNotNullParameter(config, "<this>");
                arrayList.add(AbstractC3430y3.m2612b(config.getAccountId$media_release(), config.getType()));
            }
        }
        ((HandlerC2750E2) C2840K2.f1151b.getValue()).post(new Runnable() { // from class: com.inmobi.media.I2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C2810I2.m1164a(arrayList);
            }
        });
    }

    /* JADX INFO: renamed from: a */
    public static final void m1164a(List changedConfigKeys) {
        Intrinsics.checkNotNullParameter(changedConfigKeys, "$changedConfigKeys");
        try {
            Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
            Iterator it = changedConfigKeys.iterator();
            while (it.hasNext()) {
                Config config = (Config) C2840K2.f1154e.get((String) it.next());
                if (config != null) {
                    LinkedHashMap linkedHashMap = C2840K2.f1150a;
                    m1166b(config);
                }
            }
        } catch (Exception unused) {
            Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0084  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.inmobi.commons.core.configs.Config m1161a(java.lang.String r3, java.lang.String r4, com.inmobi.media.InterfaceC2825J2 r5) {
        /*
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = com.inmobi.media.C2840K2.m1242f()
            java.lang.String r1 = "access$getTAG$cp(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.util.Objects.toString(r5)
            com.inmobi.commons.core.configs.Config r3 = com.inmobi.media.AbstractC3430y3.m2611a(r4, r3)
            if (r4 != 0) goto L1f
            java.lang.String r4 = com.inmobi.media.C2840K2.m1242f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r1)
            return r3
        L1f:
            kotlin.Lazy r4 = com.inmobi.media.C2840K2.m1240d()
            java.lang.Object r4 = r4.getValue()
            com.inmobi.media.E2 r4 = (com.inmobi.media.HandlerC2750E2) r4
            android.os.Message r4 = r4.obtainMessage()
            java.lang.String r0 = "obtainMessage(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r0)
            r0 = 0
            r4.what = r0
            com.inmobi.media.O2 r0 = new com.inmobi.media.O2
            r0.<init>(r3, r5)
            r4.obj = r0
            kotlin.Lazy r5 = com.inmobi.media.C2840K2.m1240d()
            java.lang.Object r5 = r5.getValue()
            com.inmobi.media.E2 r5 = (com.inmobi.media.HandlerC2750E2) r5
            r5.sendMessage(r4)
            java.lang.String r4 = com.inmobi.media.C2840K2.m1242f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r1)
            java.util.Objects.toString(r3)
            java.lang.String r4 = r3.getAccountId$media_release()
            if (r4 == 0) goto L84
            java.util.LinkedHashMap r5 = com.inmobi.media.C2840K2.f1150a
            java.lang.String r5 = r3.getType()
            java.lang.String r0 = com.inmobi.media.C2840K2.m1242f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.util.concurrent.ConcurrentHashMap r0 = com.inmobi.media.C2840K2.f1154e
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            java.lang.String r4 = com.inmobi.media.AbstractC3430y3.m2612b(r4, r5)
            java.lang.Object r4 = r0.get(r4)
            com.inmobi.commons.core.configs.Config r4 = (com.inmobi.commons.core.configs.Config) r4
            if (r4 == 0) goto L84
            java.lang.String r5 = com.inmobi.media.C2840K2.m1242f()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r1)
            r4.getLastUpdateTimeStamp()
            goto L85
        L84:
            r4 = 0
        L85:
            if (r4 != 0) goto L88
            goto L89
        L88:
            r3 = r4
        L89:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2810I2.m1161a(java.lang.String, java.lang.String, com.inmobi.media.J2):com.inmobi.commons.core.configs.Config");
    }

    /* JADX INFO: renamed from: a */
    public static Config m1160a(String accountId, String type) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
        ConcurrentHashMap concurrentHashMap = C2840K2.f1154e;
        Intrinsics.checkNotNullParameter(type, "<this>");
        Config config = (Config) concurrentHashMap.get(AbstractC3430y3.m2612b(accountId, type));
        Config config2 = null;
        if (config != null) {
            Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
            config.getLastUpdateTimeStamp();
        } else {
            config = null;
        }
        if (config != null) {
            return config;
        }
        C2870M2 c2870m2 = (C2870M2) C2840K2.f1155f.getValue();
        c2870m2.getClass();
        Intrinsics.checkNotNullParameter(type, "type");
        Config config3 = (Config) c2870m2.m1755b("account_id=? AND config_type=?", new String[]{accountId, type});
        if (config3 != null) {
            Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
            config3.toString();
            if (AbstractC3429y2.m2607a(config3.getAccountId$media_release()) && config3.getType().length() > 0) {
                Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
                ConcurrentHashMap concurrentHashMap2 = C2840K2.f1154e;
                LinkedHashMap linkedHashMap = C2840K2.f1150a;
                Intrinsics.checkNotNullParameter(config3, "<this>");
                concurrentHashMap2.put(AbstractC3430y3.m2612b(config3.getAccountId$media_release(), config3.getType()), config3);
                m1166b(config3);
            }
            config2 = config3;
        }
        Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
        if (config2 != null) {
            config2.getLastUpdateTimeStamp();
        }
        return config2;
    }

    /* JADX INFO: renamed from: b */
    public static void m1166b(Config config) {
        Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
        ArrayList arrayList = (ArrayList) C2840K2.f1150a.get(config);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                Object next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                if (((WeakReference) next).get() == null) {
                    it.remove();
                }
            }
        }
        ArrayList arrayList2 = (ArrayList) C2840K2.f1150a.get(config);
        if (arrayList2 != null) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                InterfaceC2825J2 interfaceC2825J2 = (InterfaceC2825J2) ((WeakReference) it2.next()).get();
                if (interfaceC2825J2 != null) {
                    Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
                    interfaceC2825J2.getClass().toString();
                    interfaceC2825J2.mo1057a(config);
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static Config m1159a(String accountId) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(CommonCssConstants.ROOT, "type");
        Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
        Config configM1160a = m1160a(accountId, CommonCssConstants.ROOT);
        return configM1160a == null ? AbstractC3430y3.m2611a(accountId, CommonCssConstants.ROOT) : configM1160a;
    }

    /* JADX INFO: renamed from: a */
    public static void m1163a(Config config) {
        Intrinsics.checkNotNullExpressionValue(C2840K2.m1242f(), "access$getTAG$cp(...)");
        Message messageObtainMessage = ((HandlerC2750E2) C2840K2.f1151b.getValue()).obtainMessage();
        Intrinsics.checkNotNullExpressionValue(messageObtainMessage, "obtainMessage(...)");
        messageObtainMessage.what = 1;
        messageObtainMessage.obj = config;
        ((HandlerC2750E2) C2840K2.f1151b.getValue()).sendMessage(messageObtainMessage);
    }
}
