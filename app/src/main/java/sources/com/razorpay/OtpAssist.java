package com.razorpay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OtpAssist.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0006\u0010\u0019\u001a\u00020\u000eJ\u0006\u0010\u001a\u001a\u00020\u000eJ\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dJ\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001f"}, m2722d2 = {"Lcom/razorpay/OtpAssist;", "", "()V", "SMS_CONSENT_REQUEST", "", "getSMS_CONSENT_REQUEST", "()I", "rzpEdgeExternalPlugin", "Lcom/razorpay/RzpEdgeExternalPlugin;", "checkAndInitializePlugin", "", "activity", "Landroid/app/Activity;", "checkForPlugin", "", "context", "Landroid/content/Context;", "initRazorpayOtpAssist", "apiKey", "", "onActivityResultReceived", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onPageFinished", "reset", "startSmsListener", "webView", "Landroid/webkit/WebView;", "otpListener", "customui_release"}, m2723k = 1, m2724mv = {1, 6, 0}, m2726xi = 48)
public final class OtpAssist {
    private RzpEdgeExternalPlugin $sS$$__s$S$;
    private final int s$SSss = 990;

    /* JADX INFO: renamed from: getSMS_CONSENT_REQUEST, reason: from getter */
    public final int getS$SSss() {
        return this.s$SSss;
    }

    private final void $sS$$__s$S$(Context context) {
        Class<?> clsLoadClass;
        HashMap<String, String> allPluginsFromManifest = BaseUtils.getAllPluginsFromManifest(context);
        if (allPluginsFromManifest != null) {
            for (Map.Entry<String, String> entry : allPluginsFromManifest.entrySet()) {
                if (Intrinsics.areEqual(entry.getKey(), "com.razorpay.plugin.edge")) {
                    ClassLoader classLoader = RzpEdgeExternalPlugin.class.getClassLoader();
                    Object objNewInstance = (classLoader == null || (clsLoadClass = classLoader.loadClass(entry.getValue())) == null) ? null : clsLoadClass.newInstance();
                    if (objNewInstance == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.razorpay.RzpEdgeExternalPlugin");
                    }
                    this.$sS$$__s$S$ = (RzpEdgeExternalPlugin) objNewInstance;
                }
            }
        }
    }

    public final void initRazorpayOtpAssist(Activity activity, String apiKey) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        if ($sS$$__s$S$(activity)) {
            RzpEdgeExternalPlugin rzpEdgeExternalPlugin = this.$sS$$__s$S$;
            if (rzpEdgeExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rzpEdgeExternalPlugin");
                rzpEdgeExternalPlugin = null;
            }
            String localOrderId = AnalyticsUtil.getLocalOrderId();
            Intrinsics.checkNotNullExpressionValue(localOrderId, "getLocalOrderId()");
            rzpEdgeExternalPlugin.initEdge(activity, apiKey, localOrderId);
        }
    }

    public final void startSmsListener(Object otpListener) {
        Intrinsics.checkNotNullParameter(otpListener, "otpListener");
        RzpEdgeExternalPlugin rzpEdgeExternalPlugin = this.$sS$$__s$S$;
        if (rzpEdgeExternalPlugin != null) {
            if (rzpEdgeExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rzpEdgeExternalPlugin");
                rzpEdgeExternalPlugin = null;
            }
            rzpEdgeExternalPlugin.startSmsListener(otpListener);
        }
    }

    public final void startSmsListener(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        RzpEdgeExternalPlugin rzpEdgeExternalPlugin = this.$sS$$__s$S$;
        if (rzpEdgeExternalPlugin != null) {
            if (rzpEdgeExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rzpEdgeExternalPlugin");
                rzpEdgeExternalPlugin = null;
            }
            rzpEdgeExternalPlugin.startSmsListener(webView);
        }
    }

    public final void onActivityResultReceived(int requestCode, int resultCode, Intent data) {
        RzpEdgeExternalPlugin rzpEdgeExternalPlugin = this.$sS$$__s$S$;
        if (rzpEdgeExternalPlugin != null) {
            if (rzpEdgeExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rzpEdgeExternalPlugin");
                rzpEdgeExternalPlugin = null;
            }
            rzpEdgeExternalPlugin.onActivityResultReceived(requestCode, resultCode, data);
        }
    }

    private final boolean $sS$$__s$S$(Activity activity) {
        if (this.$sS$$__s$S$ != null) {
            return true;
        }
        $sS$$__s$S$((Context) activity);
        return this.$sS$$__s$S$ != null;
    }

    public final void onPageFinished() {
        RzpEdgeExternalPlugin rzpEdgeExternalPlugin = this.$sS$$__s$S$;
        if (rzpEdgeExternalPlugin != null) {
            if (rzpEdgeExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rzpEdgeExternalPlugin");
                rzpEdgeExternalPlugin = null;
            }
            rzpEdgeExternalPlugin.onPageFinished();
        }
    }

    public final void reset() {
        RzpEdgeExternalPlugin rzpEdgeExternalPlugin = this.$sS$$__s$S$;
        if (rzpEdgeExternalPlugin != null) {
            if (rzpEdgeExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rzpEdgeExternalPlugin");
                rzpEdgeExternalPlugin = null;
            }
            rzpEdgeExternalPlugin.reset();
        }
    }
}
