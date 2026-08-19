package org.bouncycastle.math.p042ec;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractECLookupTable implements ECLookupTable {
    @Override // org.bouncycastle.math.p042ec.ECLookupTable
    public ECPoint lookupVar(int i) {
        return lookup(i);
    }
}
