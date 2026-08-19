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

/* JADX INFO: renamed from: com.inmobi.media.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0278e1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AppSetIdInfo f337a;

    static {
        b();
    }

    public static final void a(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static void b() {
        Context contextD = Kb.d();
        if (contextD != null && a()) {
            AppSetIdClient client = AppSet.getClient(contextD);
            Intrinsics.checkNotNullExpressionValue(client, "getClient(...)");
            Task<AppSetIdInfo> appSetIdInfo = client.getAppSetIdInfo();
            Intrinsics.checkNotNullExpressionValue(appSetIdInfo, "getAppSetIdInfo(...)");
            final C0263d1 c0263d1 = C0263d1.f328a;
            appSetIdInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.inmobi.media.e1$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    AbstractC0278e1.a(c0263d1, obj);
                }
            });
        }
    }

    public static boolean a() {
        try {
            Reflection.getOrCreateKotlinClass(AppSetIdInfo.class).getSimpleName();
            Reflection.getOrCreateKotlinClass(Task.class).getSimpleName();
            return true;
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }
}
