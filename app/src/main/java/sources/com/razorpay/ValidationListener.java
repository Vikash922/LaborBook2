package com.razorpay;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface ValidationListener {
    void onValidationError(Map<String, String> map);

    void onValidationSuccess();
}
