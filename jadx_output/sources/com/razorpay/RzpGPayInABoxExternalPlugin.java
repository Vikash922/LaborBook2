package com.razorpay;

import android.content.Context;
import com.laborbook.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;

/* JADX INFO: compiled from: RzpGPayInABoxExternalPlugin.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\n"}, m2722d2 = {"Lcom/razorpay/RzpGPayInABoxExternalPlugin;", "", "getPaymentMethods", "", "context", "Landroid/content/Context;", ConstantEventAttributes.AMOUNT, "", "initializePaymentMethods", "", "core_release"}, m2723k = 1, m2724mv = {1, 6, 0}, m2726xi = 48)
public interface RzpGPayInABoxExternalPlugin {
    String getPaymentMethods(Context context, double amount);

    void initializePaymentMethods(Context context);
}
