package com.amplitude.android.utilities;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import com.amplitude.common.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidNetworkConnectivityChecker.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\bH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m2722d2 = {"Lcom/amplitude/android/utilities/AndroidNetworkConnectivityChecker;", "", "context", "Landroid/content/Context;", "logger", "Lcom/amplitude/common/Logger;", "(Landroid/content/Context;Lcom/amplitude/common/Logger;)V", "hasPermission", "", "isMarshmallowAndAbove", "isMarshmallowAndAbove$android_release", "()Z", "setMarshmallowAndAbove$android_release", "(Z)V", "permission", "", "isConnected", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AndroidNetworkConnectivityChecker {
    private static final String ACCESS_NETWORK_STATE = "android.permission.ACCESS_NETWORK_STATE";
    private final Context context;
    private final boolean hasPermission;
    private boolean isMarshmallowAndAbove;
    private final Logger logger;

    public AndroidNetworkConnectivityChecker(Context context, Logger logger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.context = context;
        this.logger = logger;
        this.isMarshmallowAndAbove = true;
        boolean zHasPermission = hasPermission(context, ACCESS_NETWORK_STATE);
        this.hasPermission = zHasPermission;
        if (zHasPermission) {
            return;
        }
        logger.warn("No ACCESS_NETWORK_STATE permission, offline mode is not supported. To enable, add <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" /> to your AndroidManifest.xml. Learn more at https://www.docs.developers.amplitude.com/data/sdks/android-kotlin/#offline-mode");
    }

    /* JADX INFO: renamed from: isMarshmallowAndAbove$android_release, reason: from getter */
    public final boolean getIsMarshmallowAndAbove() {
        return this.isMarshmallowAndAbove;
    }

    public final void setMarshmallowAndAbove$android_release(boolean z) {
        this.isMarshmallowAndAbove = z;
    }

    public final boolean isConnected() {
        NetworkCapabilities networkCapabilities;
        if (!this.hasPermission) {
            return true;
        }
        Object systemService = this.context.getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            if (this.isMarshmallowAndAbove) {
                ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                    return false;
                }
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0);
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        this.logger.debug("Service is not an instance of ConnectivityManager. Offline mode is not supported");
        return true;
    }

    private final boolean hasPermission(Context context, String permission) {
        return context.checkCallingOrSelfPermission(permission) == 0;
    }
}
