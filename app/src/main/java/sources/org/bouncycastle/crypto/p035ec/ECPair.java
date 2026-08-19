package org.bouncycastle.crypto.p035ec;

import org.bouncycastle.math.p042ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public class ECPair {

    /* JADX INFO: renamed from: x */
    private final ECPoint f4059x;

    /* JADX INFO: renamed from: y */
    private final ECPoint f4060y;

    public ECPair(ECPoint eCPoint, ECPoint eCPoint2) {
        this.f4059x = eCPoint;
        this.f4060y = eCPoint2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ECPair) {
            return equals((ECPair) obj);
        }
        return false;
    }

    public boolean equals(ECPair eCPair) {
        return eCPair.getX().equals(getX()) && eCPair.getY().equals(getY());
    }

    public ECPoint getX() {
        return this.f4059x;
    }

    public ECPoint getY() {
        return this.f4060y;
    }

    public int hashCode() {
        return this.f4059x.hashCode() + (this.f4060y.hashCode() * 37);
    }
}
