package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.ga */
/* JADX INFO: loaded from: classes6.dex */
public final class C3167ga {

    /* JADX INFO: renamed from: a */
    public int f2111a = 0;

    /* JADX INFO: renamed from: b */
    public int f2112b = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3167ga)) {
            return false;
        }
        C3167ga c3167ga = (C3167ga) obj;
        return this.f2111a == c3167ga.f2111a && this.f2112b == c3167ga.f2112b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f2112b) + (Integer.hashCode(this.f2111a) * 31);
    }

    public final String toString() {
        return "PurchaseData(noOfInAppPurchases=" + this.f2111a + ", noOfSubscriptions=" + this.f2112b + ')';
    }
}
