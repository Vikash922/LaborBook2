package com.razorpay;

/* JADX INFO: loaded from: classes5.dex */
public class RzpPluginCompatibilityResponse {
    private String __l1_;
    private boolean l$1_I$l$;

    RzpPluginCompatibilityResponse(boolean z, String str) {
        this.l$1_I$l$ = z;
        this.__l1_ = str;
    }

    public boolean isCompatible() {
        return this.l$1_I$l$;
    }

    public String getErrorMessage() {
        String str = this.__l1_;
        return str == null ? "" : str;
    }
}
