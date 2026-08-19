package com.inmobi.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ac, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0228ac extends BroadcastReceiver {
    public static final void a(Intent intent, Context context) {
        Intrinsics.checkNotNullParameter(intent, "$intent");
        Intrinsics.checkNotNullParameter(context, "$context");
        C0259cc.a(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        Kb.a(new Runnable() { // from class: com.inmobi.media.ac$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C0228ac.a(intent, context);
            }
        });
    }
}
