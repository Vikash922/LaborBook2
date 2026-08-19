package com.amplitude.android.plugins;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.amplitude.android.Configuration;
import com.amplitude.android.utilities.DefaultEventUtils;
import com.amplitude.core.Amplitude;
import com.amplitude.core.platform.Plugin;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidLifecyclePlugin.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010#\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010%\u001a\u00020\u001a2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006'"}, m2722d2 = {"Lcom/amplitude/android/plugins/AndroidLifecyclePlugin;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Lcom/amplitude/core/platform/Plugin;", "()V", "amplitude", "Lcom/amplitude/core/Amplitude;", "getAmplitude", "()Lcom/amplitude/core/Amplitude;", "setAmplitude", "(Lcom/amplitude/core/Amplitude;)V", "androidAmplitude", "Lcom/amplitude/android/Amplitude;", "androidConfiguration", "Lcom/amplitude/android/Configuration;", "hasTrackedApplicationLifecycleEvents", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isFirstLaunch", "numberOfActivities", "Ljava/util/concurrent/atomic/AtomicInteger;", "packageInfo", "Landroid/content/pm/PackageInfo;", "type", "Lcom/amplitude/core/platform/Plugin$Type;", "getType", "()Lcom/amplitude/core/platform/Plugin$Type;", "onActivityCreated", "", "activity", "Landroid/app/Activity;", "bundle", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "onActivityStarted", "onActivityStopped", "setup", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AndroidLifecyclePlugin implements Application.ActivityLifecycleCallbacks, Plugin {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public Amplitude amplitude;
    private com.amplitude.android.Amplitude androidAmplitude;
    private Configuration androidConfiguration;
    private PackageInfo packageInfo;
    private final Plugin.Type type = Plugin.Type.Utility;
    private final AtomicBoolean hasTrackedApplicationLifecycleEvents = new AtomicBoolean(false);
    private final AtomicInteger numberOfActivities = new AtomicInteger(1);
    private final AtomicBoolean isFirstLaunch = new AtomicBoolean(false);

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
    }

    @Override // com.amplitude.core.platform.Plugin
    public Plugin.Type getType() {
        return this.type;
    }

    @Override // com.amplitude.core.platform.Plugin
    public Amplitude getAmplitude() {
        Amplitude amplitude = this.amplitude;
        if (amplitude != null) {
            return amplitude;
        }
        Intrinsics.throwUninitializedPropertyAccessException("amplitude");
        return null;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setAmplitude(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "<set-?>");
        this.amplitude = amplitude;
    }

    @Override // com.amplitude.core.platform.Plugin
    public void setup(Amplitude amplitude) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        super.setup(amplitude);
        this.androidAmplitude = (com.amplitude.android.Amplitude) amplitude;
        Configuration configuration = (Configuration) amplitude.getConfiguration();
        this.androidConfiguration = configuration;
        if (configuration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("androidConfiguration");
            configuration = null;
        }
        Application application = (Application) configuration.getContext();
        PackageManager packageManager = application.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "application.packageManager");
        try {
            packageInfo = packageManager.getPackageInfo(application.getPackageName(), 0);
            Intrinsics.checkNotNullExpressionValue(packageInfo, "{\n            packageMan…packageName, 0)\n        }");
        } catch (PackageManager.NameNotFoundException unused) {
            amplitude.getLogger().error(Intrinsics.stringPlus("Cannot find package with application.packageName: ", application.getPackageName()));
            packageInfo = new PackageInfo();
        }
        this.packageInfo = packageInfo;
        application.registerActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        com.amplitude.android.Amplitude amplitude = null;
        if (!this.hasTrackedApplicationLifecycleEvents.getAndSet(true)) {
            Configuration configuration = this.androidConfiguration;
            if (configuration == null) {
                Intrinsics.throwUninitializedPropertyAccessException("androidConfiguration");
                configuration = null;
            }
            if (configuration.getDefaultTracking().getAppLifecycles()) {
                this.numberOfActivities.set(0);
                this.isFirstLaunch.set(true);
                com.amplitude.android.Amplitude amplitude2 = this.androidAmplitude;
                if (amplitude2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("androidAmplitude");
                    amplitude2 = null;
                }
                DefaultEventUtils defaultEventUtils = new DefaultEventUtils(amplitude2);
                PackageInfo packageInfo = this.packageInfo;
                if (packageInfo == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("packageInfo");
                    packageInfo = null;
                }
                defaultEventUtils.trackAppUpdatedInstalledEvent(packageInfo);
            }
        }
        Configuration configuration2 = this.androidConfiguration;
        if (configuration2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("androidConfiguration");
            configuration2 = null;
        }
        if (configuration2.getDefaultTracking().getDeepLinks()) {
            com.amplitude.android.Amplitude amplitude3 = this.androidAmplitude;
            if (amplitude3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("androidAmplitude");
            } else {
                amplitude = amplitude3;
            }
            new DefaultEventUtils(amplitude).trackDeepLinkOpenedEvent(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Configuration configuration = this.androidConfiguration;
        com.amplitude.android.Amplitude amplitude = null;
        if (configuration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("androidConfiguration");
            configuration = null;
        }
        if (configuration.getDefaultTracking().getScreenViews()) {
            com.amplitude.android.Amplitude amplitude2 = this.androidAmplitude;
            if (amplitude2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("androidAmplitude");
            } else {
                amplitude = amplitude2;
            }
            new DefaultEventUtils(amplitude).trackScreenViewedEvent(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        com.amplitude.android.Amplitude amplitude = this.androidAmplitude;
        PackageInfo packageInfo = null;
        if (amplitude == null) {
            Intrinsics.throwUninitializedPropertyAccessException("androidAmplitude");
            amplitude = null;
        }
        amplitude.onEnterForeground(INSTANCE.getCurrentTimeMillis());
        Configuration configuration = this.androidConfiguration;
        if (configuration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("androidConfiguration");
            configuration = null;
        }
        if (configuration.getDefaultTracking().getAppLifecycles() && this.numberOfActivities.incrementAndGet() == 1) {
            boolean z = !this.isFirstLaunch.getAndSet(false);
            com.amplitude.android.Amplitude amplitude2 = this.androidAmplitude;
            if (amplitude2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("androidAmplitude");
                amplitude2 = null;
            }
            DefaultEventUtils defaultEventUtils = new DefaultEventUtils(amplitude2);
            PackageInfo packageInfo2 = this.packageInfo;
            if (packageInfo2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("packageInfo");
            } else {
                packageInfo = packageInfo2;
            }
            defaultEventUtils.trackAppOpenedEvent(packageInfo, z);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        com.amplitude.android.Amplitude amplitude = this.androidAmplitude;
        if (amplitude == null) {
            Intrinsics.throwUninitializedPropertyAccessException("androidAmplitude");
            amplitude = null;
        }
        amplitude.onExitForeground(INSTANCE.getCurrentTimeMillis());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Configuration configuration = this.androidConfiguration;
        com.amplitude.android.Amplitude amplitude = null;
        if (configuration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("androidConfiguration");
            configuration = null;
        }
        if (configuration.getDefaultTracking().getAppLifecycles() && this.numberOfActivities.decrementAndGet() == 0) {
            com.amplitude.android.Amplitude amplitude2 = this.androidAmplitude;
            if (amplitude2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("androidAmplitude");
            } else {
                amplitude = amplitude2;
            }
            new DefaultEventUtils(amplitude).trackAppBackgroundedEvent();
        }
    }

    /* JADX INFO: compiled from: AndroidLifecyclePlugin.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m2722d2 = {"Lcom/amplitude/android/plugins/AndroidLifecyclePlugin$Companion;", "", "()V", "getCurrentTimeMillis", "", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final long getCurrentTimeMillis() {
            return System.currentTimeMillis();
        }
    }
}
