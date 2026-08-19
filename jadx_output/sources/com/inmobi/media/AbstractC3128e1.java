package com.inmobi.media;

import android.content.Context;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: renamed from: com.inmobi.media.e1 */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3128e1 {

    /* JADX INFO: renamed from: a */
    public static AppSetIdInfo f2038a;

    static {
        m2089b();
    }

    /* JADX INFO: renamed from: a */
    public static final void m2087a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: renamed from: b */
    public static void m2089b() {
        Context contextM1254d = C2849Kb.m1254d();
        if (contextM1254d != null && m2088a()) {
            AppSetIdClient client = AppSet.getClient(contextM1254d);
            Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
            Task<AppSetIdInfo> appSetIdInfo = client.getAppSetIdInfo();
            Intrinsics.checkNotNullExpressionValue(appSetIdInfo, "getAppSetIdInfo(...)");
            final C3113d1 c3113d1 = C3113d1.f1974a;
            appSetIdInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.inmobi.media.e1$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    AbstractC3128e1.m2087a(c3113d1, obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: a */
    public static boolean m2088a() {
        try {
            Reflection.getOrCreateKotlinClass(AppSetIdInfo.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(Task.class).getSimpleName();
            return true;
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }
}
