package com.razorpay;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;

/* JADX INFO: compiled from: UpiTurbo.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001H&J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001H&J\u0010\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH&J\u0012\u0010\u000b\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0003H&J\u0012\u0010\r\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H&J\u0012\u0010\u000f\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H&J\u0012\u0010\u0011\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H&¨\u0006\u0013"}, m2722d2 = {"Lcom/razorpay/TPVInterface;", "", "getCustomerId", "", "linkNewUpiAccount", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "linkNewUpiAccountWithUI", "setActivity", "activity", "Landroid/app/Activity;", "setCustomerId", "customerId", "setCustomerMobile", "customerMobile", "setOrderId", "orderId", "setTpvBankAccount", "tpvBankAccount", "customui_release"}, m2723k = 1, m2724mv = {1, 6, 0}, m2726xi = 48)
public interface TPVInterface {
    String getCustomerId();

    void linkNewUpiAccount(Object listener);

    void linkNewUpiAccountWithUI(Object listener);

    TPVInterface setActivity(Activity activity);

    TPVInterface setCustomerId(String customerId);

    TPVInterface setCustomerMobile(String customerMobile);

    TPVInterface setOrderId(String orderId);

    TPVInterface setTpvBankAccount(Object tpvBankAccount);
}
