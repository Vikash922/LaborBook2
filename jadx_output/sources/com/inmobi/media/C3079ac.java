package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ac */
/* JADX INFO: loaded from: classes6.dex */
public final class C3079ac extends BroadcastReceiver {
    /* JADX INFO: renamed from: a */
    public static final void m2029a(Intent intent, Context context) {
        Intrinsics.checkNotNullParameter(intent, "$intent");
        Intrinsics.checkNotNullParameter(context, "$context");
        C3109cc.m2054a(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.ac$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3079ac.m2029a(intent, context);
            }
        });
    }
}
