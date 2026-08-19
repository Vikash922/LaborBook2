package com.inmobi.media;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.h1 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3173h1 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a */
    public final HandlerC3143f1 f2120a;

    /* JADX INFO: renamed from: b */
    public WeakReference f2121b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Context f2122c;

    public C3173h1(Context context) {
        this.f2122c = context;
        Looper mainLooper = Looper.getMainLooper();
        Intrinsics.checkNotNullExpressionValue(mainLooper, "getMainLooper(...)");
        this.f2120a = new HandlerC3143f1(mainLooper);
    }

    /* JADX INFO: renamed from: a */
    public static final void m2209a(Context context, C3173h1 this$0) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (C3188i1.m2237a(C3188i1.f2165a, context) || this$0.f2121b != null) {
            return;
        }
        this$0.f2120a.sendEmptyMessageDelayed(1001, 3000L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.f2121b;
        if (!Intrinsics.areEqual(weakReference != null ? (Activity) weakReference.get() : null, activity)) {
            this.f2121b = new WeakReference(activity);
        }
        this.f2120a.removeMessages(1001);
        this.f2120a.sendEmptyMessage(1002);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.f2121b;
        if (!Intrinsics.areEqual(weakReference != null ? (Activity) weakReference.get() : null, activity)) {
            this.f2121b = new WeakReference(activity);
        }
        this.f2120a.removeMessages(1001);
        this.f2120a.sendEmptyMessage(1002);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference weakReference = this.f2121b;
        if (Intrinsics.areEqual(weakReference != null ? (Activity) weakReference.get() : null, activity)) {
            this.f2120a.sendEmptyMessageDelayed(1001, 3000L);
        } else if (this.f2121b == null) {
            final Context context = this.f2122c;
            C2849Kb.m1246a(new Runnable() { // from class: com.inmobi.media.h1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3173h1.m2209a(context, this);
                }
            });
        }
    }
}
