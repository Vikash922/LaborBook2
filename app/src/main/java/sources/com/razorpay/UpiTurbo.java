package com.razorpay;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.razorpay.RzpTurboExternalPlugin;
import java.util.HashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: UpiTurbo.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b%\u0018\u00002\u00020\u0001:\u0001=B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\b\u0010\u001b\u001a\u00020\rH\u0002J\b\u0010\u001c\u001a\u00020\u0017H\u0007J\u0016\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u001f\u001a\u00020\u0017J\u0016\u0010 \u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\n\u0010!\u001a\u0004\u0018\u00010\tH\u0016J&\u0010\"\u001a\u00020\u00172\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J&\u0010$\u001a\u00020\u00172\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J\u000e\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0019J\u0010\u0010'\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0019H\u0016J&\u0010'\u001a\u00020\u00172\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0019H\u0016J0\u0010(\u001a\u00020\u00172\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u00192\b\u0010\b\u001a\u0004\u0018\u00010\tJ&\u0010)\u001a\u00020\u00172\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010*\u001a\u00020\u0017J\u0018\u0010+\u001a\u00020\u00172\b\b\u0002\u0010,\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0019J\u000e\u0010-\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010.\u001a\u00020\u0017J\u001e\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u00101\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u000e\u00102\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0012\u00103\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u000e\u00104\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u0012\u00104\u001a\u00020\u00012\b\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0016J\u000e\u00105\u001a\u00020\u00172\u0006\u00106\u001a\u00020\rJ\u0012\u00107\u001a\u00020\u00012\b\u00108\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u00109\u001a\u00020\u00012\b\u0010:\u001a\u0004\u0018\u00010\u0019H\u0016J\u0016\u0010;\u001a\u00020\u00172\u0006\u0010<\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0019R\u0011\u0010\u0005\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, m2722d2 = {"Lcom/razorpay/UpiTurbo;", "Lcom/razorpay/TPVInterface;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "TPV", "getTPV", "()Lcom/razorpay/TPVInterface;", "color", "", "customerId", "customerMobile", "isPluginIntegrated", "", "pluginCompatibilityResponse", "Lcom/razorpay/RzpPluginCompatibilityResponse;", "razorpayTurbo", "Lcom/razorpay/RzpTurboExternalPlugin;", "razorpayTurboPlugin", "Lcom/razorpay/RzpPlugin;", "tpv", "Lcom/razorpay/UpiTurbo$InnerTpv;", "changeUpiPin", "", "upiAccount", "", "callback", "checkForPlugin", "clearSession", "delink", "upiAcOrLinkedBankAc", "destroy", "getBalance", "getCustomerId", "getLinkedBankAccounts", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "getLinkedUpiAccounts", "initialize", "sessionDelegate", "linkNewUpiAccount", "linkNewUpiAccountWithUI", "manageUpiAccounts", "onPermissionsRequestResult", "prefetchAndLinkUpiAccounts", "linkAccountsWithUPIPinNotSet", "prefetchAndLinkUpiAccountsWithUI", "releaseActivityReference", "resetUpiPin", "card", "setActivity", "setColor", "setCustomerId", "setCustomerMobile", "setFeeBearer", "feeBearer", "setOrderId", "orderId", "setTpvBankAccount", "tpvBankAccount", "setUpiPinWithUI", "bankAccount", "InnerTpv", "customui_release"}, m2723k = 1, m2724mv = {1, 6, 0}, m2726xi = 48)
public final class UpiTurbo implements TPVInterface {
    private final UpiTurbo$$sS$$__s$S$ $S$_ss_;
    private final Activity $sS$$__s$S$;
    private final TPVInterface $s_$$s$_ss;
    private String _SS$$$$s;
    private RzpPlugin _Ssss$;
    private RzpPluginCompatibilityResponse __$$__s_$;
    private boolean __S_s;
    private RzpTurboExternalPlugin s$SSss;
    private String s$S_SsS$SS;
    private String sS$$$ss_;

    public UpiTurbo(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.$sS$$__s$S$ = activity;
        this.$S$_ss_ = new UpiTurbo$$sS$$__s$S$(this);
        this.$s_$$s$_ss = this;
    }

    /* JADX INFO: renamed from: getTPV, reason: from getter */
    public final TPVInterface get$s_$$s$_ss() {
        return this.$s_$$s$_ss;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean $sS$$__s$S$() {
        Class<?> clsLoadClass;
        Class<?> clsLoadClass2;
        if (this.__S_s) {
            return true;
        }
        HashMap<String, String> plugins = BaseUtils.getAllPluginsFromManifest(this.$sS$$__s$S$.getApplicationContext());
        Intrinsics.checkNotNullExpressionValue(plugins, "plugins");
        for (Map.Entry<String, String> entry : plugins.entrySet()) {
            String key = entry.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "it.key");
            RzpPluginCompatibilityResponse rzpPluginCompatibilityResponse = null;
            if (StringsKt.contains$default((CharSequence) key, (CharSequence) "upi_turbo", false, 2, (Object) null)) {
                ClassLoader classLoader = RzpTurboExternalPlugin.class.getClassLoader();
                Object objNewInstance = (classLoader == null || (clsLoadClass2 = classLoader.loadClass(entry.getValue())) == null) ? null : clsLoadClass2.newInstance();
                if (objNewInstance != null) {
                    this.s$SSss = (RzpTurboExternalPlugin) objNewInstance;
                    ClassLoader classLoader2 = RzpPlugin.class.getClassLoader();
                    Object objNewInstance2 = (classLoader2 == null || (clsLoadClass = classLoader2.loadClass(entry.getValue())) == null) ? null : clsLoadClass.newInstance();
                    if (objNewInstance2 != null) {
                        RzpPlugin rzpPlugin = (RzpPlugin) objNewInstance2;
                        this._Ssss$ = rzpPlugin;
                        if (rzpPlugin == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("razorpayTurboPlugin");
                            rzpPlugin = null;
                        }
                        RzpPluginCompatibilityResponse rzpPluginCompatibilityResponseIsCompatible = rzpPlugin.isCompatible("custom", __$$__s_$.VERSION_CODE, __$$__s_$.VERSION_NAME);
                        Intrinsics.checkNotNullExpressionValue(rzpPluginCompatibilityResponseIsCompatible, "razorpayTurboPlugin.isCo…ON_NAME\n                )");
                        this.__$$__s_$ = rzpPluginCompatibilityResponseIsCompatible;
                        if (rzpPluginCompatibilityResponseIsCompatible == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pluginCompatibilityResponse");
                            rzpPluginCompatibilityResponseIsCompatible = null;
                        }
                        if (!rzpPluginCompatibilityResponseIsCompatible.isCompatible()) {
                            RzpPluginCompatibilityResponse rzpPluginCompatibilityResponse2 = this.__$$__s_$;
                            if (rzpPluginCompatibilityResponse2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pluginCompatibilityResponse");
                            } else {
                                rzpPluginCompatibilityResponse = rzpPluginCompatibilityResponse2;
                            }
                            throw new RuntimeException(rzpPluginCompatibilityResponse.getErrorMessage());
                        }
                        this.__S_s = true;
                        return true;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type com.razorpay.RzpPlugin");
                }
                throw new NullPointerException("null cannot be cast to non-null type com.razorpay.RzpTurboExternalPlugin");
            }
        }
        return false;
    }

    public static /* synthetic */ void getLinkedUpiAccounts$default(UpiTurbo upiTurbo, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        upiTurbo.getLinkedUpiAccounts(str, str2, obj);
    }

    public final void getLinkedUpiAccounts(String customerMobile, String customerId, Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.getLinkedUpiAccounts(this.$sS$$__s$S$, customerMobile, customerId, listener);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public static /* synthetic */ void linkNewUpiAccount$default(UpiTurbo upiTurbo, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        upiTurbo.linkNewUpiAccount(str, str2, obj);
    }

    public final void linkNewUpiAccount(String customerMobile, String customerId, Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.linkNewUpiAccount(this.$sS$$__s$S$, customerMobile, customerId, listener, null);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void initialize(Object sessionDelegate) {
        Intrinsics.checkNotNullParameter(sessionDelegate, "sessionDelegate");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.initialize(this.$sS$$__s$S$, sessionDelegate, this._SS$$$$s, this.sS$$$ss_);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    @Deprecated(message = "This method is deprecated, as it is only intended for internal testing purposes.")
    public final void clearSession() {
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.clearSession();
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public static /* synthetic */ void linkNewUpiAccountWithUI$default(UpiTurbo upiTurbo, String str, String str2, Object obj, String str3, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        upiTurbo.linkNewUpiAccountWithUI(str, str2, obj, str3);
    }

    public final void linkNewUpiAccountWithUI(String customerMobile, String customerId, Object listener, String color) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.linkNewUpiAccount(this.$sS$$__s$S$, customerMobile, customerId, listener, color);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public static /* synthetic */ void manageUpiAccounts$default(UpiTurbo upiTurbo, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        upiTurbo.manageUpiAccounts(str, str2, obj);
    }

    public final void manageUpiAccounts(String customerMobile, String customerId, Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.manageUpiAccountsCustom(this.$sS$$__s$S$, customerMobile, customerId, listener);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated");
    }

    public final void onPermissionsRequestResult() {
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.onPermissionsRequestResult();
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void destroy() {
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.destroy();
            UpiTurboUtilities.INSTANCE.destroyUiData();
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void releaseActivityReference() {
        RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
        if (rzpTurboExternalPlugin != null) {
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.releaseActivityReference();
        }
        UpiTurboUtilities.INSTANCE.releaseUiActivityReference();
    }

    public final void getBalance(Object upiAccount, Object callback) {
        Intrinsics.checkNotNullParameter(upiAccount, "upiAccount");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.getBalance(upiAccount, callback);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void changeUpiPin(Object upiAccount, Object callback) {
        Intrinsics.checkNotNullParameter(upiAccount, "upiAccount");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.changeUpiPin(upiAccount, callback);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void resetUpiPin(Object card, Object upiAccount, Object callback) {
        Intrinsics.checkNotNullParameter(card, "card");
        Intrinsics.checkNotNullParameter(upiAccount, "upiAccount");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.resetUpiPin(card, upiAccount, callback);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void delink(Object upiAcOrLinkedBankAc, Object callback) {
        Intrinsics.checkNotNullParameter(upiAcOrLinkedBankAc, "upiAcOrLinkedBankAc");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.delink(upiAcOrLinkedBankAc, callback);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void setFeeBearer(boolean feeBearer) {
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.setFeeBearer(feeBearer);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    @Override // com.razorpay.TPVInterface
    public final UpiTurbo setCustomerMobile(String customerMobile) {
        Intrinsics.checkNotNullParameter(customerMobile, "customerMobile");
        if ($sS$$__s$S$()) {
            this._SS$$$$s = customerMobile;
            return this;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    @Override // com.razorpay.TPVInterface
    public final UpiTurbo setCustomerId(String customerId) {
        Intrinsics.checkNotNullParameter(customerId, "customerId");
        if ($sS$$__s$S$()) {
            this.sS$$$ss_ = customerId;
            return this;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final UpiTurbo setColor(String color) {
        Intrinsics.checkNotNullParameter(color, "color");
        if ($sS$$__s$S$()) {
            this.s$S_SsS$SS = color;
            return this;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void prefetchAndLinkUpiAccountsWithUI(Object listener) {
        RzpTurboExternalPlugin rzpTurboExternalPlugin;
        String str;
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin2 = this.s$SSss;
            if (rzpTurboExternalPlugin2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            } else {
                rzpTurboExternalPlugin = rzpTurboExternalPlugin2;
            }
            Activity activity = this.$sS$$__s$S$;
            String str2 = this._SS$$$$s;
            String str3 = this.sS$$$ss_;
            String str4 = this.s$S_SsS$SS;
            if (str4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("color");
                str = null;
            } else {
                str = str4;
            }
            RzpTurboExternalPlugin.DefaultImpls.prefetchAndLinkNewUpiAccount$default(rzpTurboExternalPlugin, activity, str2, str3, listener, str, false, 32, null);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public static /* synthetic */ void prefetchAndLinkUpiAccounts$default(UpiTurbo upiTurbo, boolean z, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            z = false;
        }
        upiTurbo.prefetchAndLinkUpiAccounts(z, obj);
    }

    public final void prefetchAndLinkUpiAccounts(boolean linkAccountsWithUPIPinNotSet, Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.prefetchAndLinkNewUpiAccount(this.$sS$$__s$S$, this._SS$$$$s, this.sS$$$ss_, listener, null, linkAccountsWithUPIPinNotSet);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void setUpiPinWithUI(Object bankAccount, Object listener) {
        Intrinsics.checkNotNullParameter(bankAccount, "bankAccount");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.setUpiPinWithUI(bankAccount, listener);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public static /* synthetic */ void getLinkedBankAccounts$default(UpiTurbo upiTurbo, String str, String str2, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        upiTurbo.getLinkedBankAccounts(str, str2, obj);
    }

    public final void getLinkedBankAccounts(String customerMobile, String customerId, Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if ($sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            rzpTurboExternalPlugin.getLinkedBankAccounts(this.$sS$$__s$S$, customerMobile, customerId, listener);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    @Override // com.razorpay.TPVInterface
    public TPVInterface setCustomerId(String customerId) {
        return this.$S$_ss_.setCustomerId(customerId, this);
    }

    @Override // com.razorpay.TPVInterface
    public TPVInterface setCustomerMobile(String customerMobile) {
        return this.$S$_ss_.setCustomerMobile(customerMobile, this);
    }

    @Override // com.razorpay.TPVInterface
    public TPVInterface setOrderId(String orderId) {
        return this.$S$_ss_.setOrderId(orderId, this);
    }

    @Override // com.razorpay.TPVInterface
    public TPVInterface setTpvBankAccount(Object tpvBankAccount) {
        return this.$S$_ss_.setTpvBankAccount(tpvBankAccount, this);
    }

    @Override // com.razorpay.TPVInterface
    public TPVInterface setActivity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return this.$S$_ss_.setActivity(activity, this);
    }

    @Override // com.razorpay.TPVInterface
    public String getCustomerId() {
        return this.$S$_ss_.getCustomerId$customui_release();
    }

    @Override // com.razorpay.TPVInterface
    public void linkNewUpiAccount(Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.$S$_ss_.linkNewUpiAccount(listener);
    }

    @Override // com.razorpay.TPVInterface
    public void linkNewUpiAccountWithUI(Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.$S$_ss_.linkNewUpiAccountWithUI(listener);
    }
}
