package org.bouncycastle.pqc.crypto.mceliece;

import org.bouncycastle.pqc.math.linearalgebra.GF2Matrix;

/* JADX INFO: loaded from: classes6.dex */
public class McEliecePublicKeyParameters extends McElieceKeyParameters {

    /* JADX INFO: renamed from: g */
    private GF2Matrix f4678g;

    /* JADX INFO: renamed from: n */
    private int f4679n;

    /* JADX INFO: renamed from: t */
    private int f4680t;

    public McEliecePublicKeyParameters(int i, int i2, GF2Matrix gF2Matrix) {
        super(false, null);
        this.f4679n = i;
        this.f4680t = i2;
        this.f4678g = new GF2Matrix(gF2Matrix);
    }

    public GF2Matrix getG() {
        return this.f4678g;
    }

    public int getK() {
        return this.f4678g.getNumRows();
    }

    public int getN() {
        return this.f4679n;
    }

    public int getT() {
        return this.f4680t;
    }
}
