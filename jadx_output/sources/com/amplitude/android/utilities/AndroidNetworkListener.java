package com.amplitude.android.utilities;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidNetworkListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0012B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006J\b\u0010\u000e\u001a\u00020\fH\u0002J\b\u0010\u000f\u001a\u00020\fH\u0003J\u0006\u0010\u0010\u001a\u00020\fJ\u0006\u0010\u0011\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m2722d2 = {"Lcom/amplitude/android/utilities/AndroidNetworkListener;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "networkCallback", "Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;", "networkCallbackForHigherApiLevels", "Landroid/net/ConnectivityManager$NetworkCallback;", "networkCallbackForLowerApiLevels", "Landroid/content/BroadcastReceiver;", "setNetworkChangeCallback", "", "callback", "setupBroadcastReceiver", "setupNetworkCallback", "startListening", "stopListening", "NetworkChangeCallback", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AndroidNetworkListener {
    private final Context context;
    private NetworkChangeCallback networkCallback;
    private ConnectivityManager.NetworkCallback networkCallbackForHigherApiLevels;
    private BroadcastReceiver networkCallbackForLowerApiLevels;

    /* JADX INFO: compiled from: AndroidNetworkListener.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/android/utilities/AndroidNetworkListener$NetworkChangeCallback;", "", "onNetworkAvailable", "", "onNetworkUnavailable", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public interface NetworkChangeCallback {
        void onNetworkAvailable();

        void onNetworkUnavailable();
    }

    public AndroidNetworkListener(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final void setNetworkChangeCallback(NetworkChangeCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.networkCallback = callback;
    }

    public final void startListening() {
        setupNetworkCallback();
    }

    private final void setupNetworkCallback() {
        Object systemService = this.context.getSystemService("connectivity");
        if (systemService == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.net.ConnectivityManager");
        }
        NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).build();
        ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.amplitude.android.utilities.AndroidNetworkListener.setupNetworkCallback.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                Intrinsics.checkNotNullParameter(network, "network");
                NetworkChangeCallback networkChangeCallback = AndroidNetworkListener.this.networkCallback;
                if (networkChangeCallback == null) {
                    return;
                }
                networkChangeCallback.onNetworkAvailable();
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                Intrinsics.checkNotNullParameter(network, "network");
                NetworkChangeCallback networkChangeCallback = AndroidNetworkListener.this.networkCallback;
                if (networkChangeCallback == null) {
                    return;
                }
                networkChangeCallback.onNetworkUnavailable();
            }
        };
        this.networkCallbackForHigherApiLevels = networkCallback;
        Intrinsics.checkNotNull(networkCallback);
        ((ConnectivityManager) systemService).registerNetworkCallback(networkRequestBuild, networkCallback);
    }

    private final void setupBroadcastReceiver() {
        this.networkCallbackForLowerApiLevels = new BroadcastReceiver() { // from class: com.amplitude.android.utilities.AndroidNetworkListener.setupBroadcastReceiver.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(intent, "intent");
                if (Intrinsics.areEqual("android.net.conn.CONNECTIVITY_CHANGE", intent.getAction())) {
                    Object systemService = context.getSystemService("connectivity");
                    if (systemService == null) {
                        throw new NullPointerException("null cannot be cast to non-null type android.net.ConnectivityManager");
                    }
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                    if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
                        NetworkChangeCallback networkChangeCallback = AndroidNetworkListener.this.networkCallback;
                        if (networkChangeCallback == null) {
                            return;
                        }
                        networkChangeCallback.onNetworkAvailable();
                        return;
                    }
                    NetworkChangeCallback networkChangeCallback2 = AndroidNetworkListener.this.networkCallback;
                    if (networkChangeCallback2 == null) {
                        return;
                    }
                    networkChangeCallback2.onNetworkUnavailable();
                }
            }
        };
        this.context.registerReceiver(this.networkCallbackForLowerApiLevels, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public final void stopListening() {
        try {
            Object systemService = this.context.getSystemService("connectivity");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.net.ConnectivityManager");
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            ConnectivityManager.NetworkCallback networkCallback = this.networkCallbackForHigherApiLevels;
            if (networkCallback == null) {
                return;
            }
            connectivityManager.unregisterNetworkCallback(networkCallback);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
    }
}
