package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.ga, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0321ga {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f362a = 0;
    public int b = 0;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0321ga)) {
            return false;
        }
        C0321ga c0321ga = (C0321ga) obj;
        return this.f362a == c0321ga.f362a && this.b == c0321ga.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.f362a) * 31);
    }

    public final String toString() {
        return "PurchaseData(noOfInAppPurchases=" + this.f362a + ", noOfSubscriptions=" + this.b + ')';
    }
}
