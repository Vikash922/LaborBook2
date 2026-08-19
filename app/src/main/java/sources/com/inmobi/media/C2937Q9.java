package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.squareup.picasso.Picasso;
import java.lang.ref.WeakReference;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.Q9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2937Q9 implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        WeakReference weakReferenceM1767a;
        Intrinsics.checkNotNullParameter(activity, "activity");
        synchronized (C2950R9.f1505c) {
            if (C2950R9.f1504b != null && (weakReferenceM1767a = C2950R9.m1767a(C2950R9.f1503a, activity)) != null) {
                activity.getApplication().unregisterActivityLifecycleCallbacks(this);
                C2950R9.f1506d.remove(weakReferenceM1767a);
                if (C2950R9.f1506d.isEmpty()) {
                    Intrinsics.checkNotNullExpressionValue(C2950R9.m1771d(), "access$getTAG$p(...)");
                    Objects.toString(C2950R9.f1504b);
                    Picasso picasso = C2950R9.f1504b;
                    if (picasso != null) {
                        picasso.shutdown();
                    }
                    C2950R9.f1504b = null;
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }
}
