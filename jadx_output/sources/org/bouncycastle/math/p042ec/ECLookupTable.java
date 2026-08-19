package org.bouncycastle.math.p042ec;

/* JADX INFO: loaded from: classes5.dex */
public interface ECLookupTable {
    int getSize();

    ECPoint lookup(int i);

    ECPoint lookupVar(int i);
}
