package com.razorpay;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpiTurbo.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000f\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0002\b\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0001J\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0001J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0014\u001a\u00020\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0015\u001a\u00020\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0016\u001a\u00020\u00102\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\u0010J\u0018\u0010\u0017\u001a\u00020\u00102\b\u0010\u0007\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0013\u001a\u00020\u0010R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m2722d2 = {"Lcom/razorpay/UpiTurbo$InnerTpv;", "", "(Lcom/razorpay/UpiTurbo;)V", "customerId", "", "customerMobile", "orderId", "tpvBankAccount", "getCustomerId", "getCustomerId$customui_release", "linkNewUpiAccount", "", "callback", "linkNewUpiAccountWithUI", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setActivity", "Lcom/razorpay/TPVInterface;", "activity", "Landroid/app/Activity;", "tpvInterface", "setCustomerId", "setCustomerMobile", "setOrderId", "setTpvBankAccount", "customui_release"}, m2723k = 1, m2724mv = {1, 6, 0}, m2726xi = 48)
public final class UpiTurbo$$sS$$__s$S$ {
    private String $sS$$__s$S$;
    private String _Ssss$;
    private Object __S_s;
    private String s$SSss;
    final /* synthetic */ UpiTurbo this$0;

    public UpiTurbo$$sS$$__s$S$(UpiTurbo upiTurbo) {
        this.this$0 = upiTurbo;
    }

    public final TPVInterface setOrderId(String orderId, TPVInterface tpvInterface) {
        Intrinsics.checkNotNullParameter(tpvInterface, "tpvInterface");
        if (this.this$0.$sS$$__s$S$()) {
            this.$sS$$__s$S$ = orderId;
            return tpvInterface;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final TPVInterface setCustomerId(String customerId, TPVInterface tpvInterface) {
        Intrinsics.checkNotNullParameter(tpvInterface, "tpvInterface");
        if (this.this$0.$sS$$__s$S$()) {
            this.s$SSss = customerId;
            return tpvInterface;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    /* JADX INFO: renamed from: getCustomerId$customui_release, reason: from getter */
    public final String getS$SSss() {
        return this.s$SSss;
    }

    public final TPVInterface setCustomerMobile(String customerMobile, TPVInterface tpvInterface) {
        Intrinsics.checkNotNullParameter(tpvInterface, "tpvInterface");
        if (this.this$0.$sS$$__s$S$()) {
            this._Ssss$ = customerMobile;
            return tpvInterface;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final TPVInterface setTpvBankAccount(Object tpvBankAccount, TPVInterface tpvInterface) {
        Intrinsics.checkNotNullParameter(tpvInterface, "tpvInterface");
        if (this.this$0.$sS$$__s$S$()) {
            this.__S_s = tpvBankAccount;
            return tpvInterface;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final TPVInterface setActivity(Activity activity, TPVInterface tpvInterface) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(tpvInterface, "tpvInterface");
        if (this.this$0.$sS$$__s$S$()) {
            return tpvInterface;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void linkNewUpiAccount(Object callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.this$0.$sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.this$0.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            RzpTurboExternalPlugin rzpTurboExternalPlugin2 = rzpTurboExternalPlugin;
            Activity activity = this.this$0.$sS$$__s$S$;
            String str = this._Ssss$;
            if (str == null) {
                str = "";
            }
            String str2 = this.$sS$$__s$S$;
            Object obj = this.__S_s;
            String str3 = this.s$SSss;
            if (str3 == null) {
                str3 = "";
            }
            rzpTurboExternalPlugin2.linkNewTPVUpiAccount(activity, str, str2, obj, str3, callback);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }

    public final void linkNewUpiAccountWithUI(Object listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.this$0.$sS$$__s$S$()) {
            RzpTurboExternalPlugin rzpTurboExternalPlugin = this.this$0.s$SSss;
            if (rzpTurboExternalPlugin == null) {
                Intrinsics.throwUninitializedPropertyAccessException("razorpayTurbo");
                rzpTurboExternalPlugin = null;
            }
            RzpTurboExternalPlugin rzpTurboExternalPlugin2 = rzpTurboExternalPlugin;
            Activity activity = this.this$0.$sS$$__s$S$;
            String str = this._Ssss$;
            if (str == null) {
                str = "";
            }
            String str2 = this.$sS$$__s$S$;
            Object obj = this.__S_s;
            String str3 = this.s$SSss;
            if (str3 == null) {
                str3 = "";
            }
            rzpTurboExternalPlugin2.linkNewTPVUpiAccount(activity, str, str2, obj, str3, listener);
            return;
        }
        throw new RuntimeException("Razorpay UPI-Turbo Wrapper Plugin not integrated. ");
    }
}
