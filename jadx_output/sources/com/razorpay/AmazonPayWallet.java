package com.razorpay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: AmazonPayWallet.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0002J(\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\bJ&\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$J&\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$J\u001e\u0010%\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u0001J\u001e\u0010(\u001a\u00020\f2\u0006\u0010)\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000¨\u0006+"}, m2722d2 = {"Lcom/razorpay/AmazonPayWallet;", "", "()V", "razorpayAmazonpayWalletExternalPlugin", "Lcom/razorpay/RazorpayAmazonpayExternalPlugin;", "razorpayAmazonpayWalletRzpPlugin", "Lcom/razorpay/RzpPlugin;", "getPaymentMetadata", "", "activity", "Landroid/app/Activity;", "initiate", "", "context", "Landroid/content/Context;", "className", "apiKey", "isAmazonDomainUrl", "", "url", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "payload", "Lorg/json/JSONObject;", "setDataForPolling", "payment_id", "shouldOverrideUrlLoading", "webview", "Landroid/webkit/WebView;", "resourceRequest", "Landroid/webkit/WebResourceRequest;", "internalCallback", "Lcom/razorpay/RzpInternalCallback;", "startAuthorization", "customerId", "authCodeCallback", "startTransaction", "paymentUrl", "Companion", "customui_release"}, m2723k = 1, m2724mv = {1, 6, 0}, m2726xi = 48)
public final class AmazonPayWallet {
    public static final AmazonPayWallet$$sS$$__s$S$ Companion = new AmazonPayWallet$$sS$$__s$S$(null);
    public static final int LAUNCH_CODE_AMAZON_AUTH = 9898;
    public static final int LAUNCH_CODE_AMAZON_REDIRECT = 9899;
    private RzpPlugin $sS$$__s$S$;
    private RazorpayAmazonpayExternalPlugin s$SSss;

    public final void initiate(Context context, String className, String apiKey) {
        Class<?> clsLoadClass;
        Constructor<?> declaredConstructor;
        Class<?> clsLoadClass2;
        Constructor<?> declaredConstructor2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        ClassLoader classLoader = RazorpayAmazonpayExternalPlugin.class.getClassLoader();
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = null;
        Object objNewInstance = (classLoader == null || (clsLoadClass2 = classLoader.loadClass(className)) == null || (declaredConstructor2 = clsLoadClass2.getDeclaredConstructor(new Class[0])) == null) ? null : declaredConstructor2.newInstance(new Object[0]);
        if (objNewInstance != null) {
            this.s$SSss = (RazorpayAmazonpayExternalPlugin) objNewInstance;
            ClassLoader classLoader2 = RzpPlugin.class.getClassLoader();
            Object objNewInstance2 = (classLoader2 == null || (clsLoadClass = classLoader2.loadClass(className)) == null || (declaredConstructor = clsLoadClass.getDeclaredConstructor(new Class[0])) == null) ? null : declaredConstructor.newInstance(new Object[0]);
            if (objNewInstance2 != null) {
                this.$sS$$__s$S$ = (RzpPlugin) objNewInstance2;
                RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin2 = this.s$SSss;
                if (razorpayAmazonpayExternalPlugin2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
                } else {
                    razorpayAmazonpayExternalPlugin = razorpayAmazonpayExternalPlugin2;
                }
                razorpayAmazonpayExternalPlugin.initialize(context, apiKey);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type com.razorpay.RzpPlugin");
        }
        throw new NullPointerException("null cannot be cast to non-null type com.razorpay.RazorpayAmazonpayExternalPlugin");
    }

    public final void startAuthorization(Activity activity, String customerId, Object authCodeCallback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(customerId, "customerId");
        Intrinsics.checkNotNullParameter(authCodeCallback, "authCodeCallback");
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = this.s$SSss;
        if (razorpayAmazonpayExternalPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
            razorpayAmazonpayExternalPlugin = null;
        }
        razorpayAmazonpayExternalPlugin.startAuthorization(customerId, activity, authCodeCallback);
    }

    public final void startTransaction(String paymentUrl, Activity activity, RzpInternalCallback internalCallback) {
        Intrinsics.checkNotNullParameter(paymentUrl, "paymentUrl");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(internalCallback, "internalCallback");
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = this.s$SSss;
        if (razorpayAmazonpayExternalPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
            razorpayAmazonpayExternalPlugin = null;
        }
        razorpayAmazonpayExternalPlugin.startTransaction(paymentUrl, activity, internalCallback);
    }

    public final void onActivityResult(int requestCode, int resultCode, Intent data, JSONObject payload) {
        Intrinsics.checkNotNullParameter(payload, "payload");
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = this.s$SSss;
        if (razorpayAmazonpayExternalPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
            razorpayAmazonpayExternalPlugin = null;
        }
        razorpayAmazonpayExternalPlugin.onActivityResult(requestCode, resultCode, data, payload);
    }

    private final boolean $sS$$__s$S$(String str) {
        ArrayList<String> domains = C$sS$$__s$S$.getInstance().getAmazonDomainUrlList();
        ArrayList<String> arrayList = domains;
        if (arrayList == null || arrayList.isEmpty()) {
            String str2 = str;
            if (StringsKt.contains$default((CharSequence) str2, (CharSequence) "amazon.in", false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str2, (CharSequence) "amazonpay.amazon.in", false, 2, (Object) null)) {
                return true;
            }
        } else {
            Intrinsics.checkNotNullExpressionValue(domains, "domains");
            ArrayList<String> arrayList2 = domains;
            if (!(arrayList2 instanceof Collection) || !arrayList2.isEmpty()) {
                for (String domain : arrayList2) {
                    Intrinsics.checkNotNullExpressionValue(domain, "domain");
                    if (StringsKt.contains$default((CharSequence) str, (CharSequence) domain, false, 2, (Object) null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String url, Activity activity, RzpInternalCallback internalCallback) {
        Intrinsics.checkNotNullParameter(webview, "webview");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(internalCallback, "internalCallback");
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = this.s$SSss;
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin2 = null;
        if (razorpayAmazonpayExternalPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
            razorpayAmazonpayExternalPlugin = null;
        }
        razorpayAmazonpayExternalPlugin.shouldOverrideUrlLoading(webview, url);
        if (!$sS$$__s$S$(url)) {
            return false;
        }
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin3 = this.s$SSss;
        if (razorpayAmazonpayExternalPlugin3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
        } else {
            razorpayAmazonpayExternalPlugin2 = razorpayAmazonpayExternalPlugin3;
        }
        razorpayAmazonpayExternalPlugin2.startTransaction(url, activity, internalCallback);
        return true;
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, WebResourceRequest resourceRequest, Activity activity, RzpInternalCallback internalCallback) {
        Intrinsics.checkNotNullParameter(webview, "webview");
        Intrinsics.checkNotNullParameter(resourceRequest, "resourceRequest");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(internalCallback, "internalCallback");
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = this.s$SSss;
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin2 = null;
        if (razorpayAmazonpayExternalPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
            razorpayAmazonpayExternalPlugin = null;
        }
        razorpayAmazonpayExternalPlugin.shouldOverrideUrlLoading(webview, resourceRequest);
        String string = resourceRequest.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "resourceRequest.url.toString()");
        if (!$sS$$__s$S$(string)) {
            return false;
        }
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin3 = this.s$SSss;
        if (razorpayAmazonpayExternalPlugin3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
        } else {
            razorpayAmazonpayExternalPlugin2 = razorpayAmazonpayExternalPlugin3;
        }
        String string2 = resourceRequest.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "resourceRequest.url.toString()");
        razorpayAmazonpayExternalPlugin2.startTransaction(string2, activity, internalCallback);
        return true;
    }

    public final void setDataForPolling(String apiKey, String payment_id) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(payment_id, "payment_id");
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = this.s$SSss;
        if (razorpayAmazonpayExternalPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
            razorpayAmazonpayExternalPlugin = null;
        }
        razorpayAmazonpayExternalPlugin.setDataForPolling(apiKey, payment_id);
    }

    public final String getPaymentMetadata(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        RazorpayAmazonpayExternalPlugin razorpayAmazonpayExternalPlugin = this.s$SSss;
        if (razorpayAmazonpayExternalPlugin == null) {
            Intrinsics.throwUninitializedPropertyAccessException("razorpayAmazonpayWalletExternalPlugin");
            razorpayAmazonpayExternalPlugin = null;
        }
        return razorpayAmazonpayExternalPlugin.getPaymentMetadata(activity);
    }
}
