package org.bouncycastle.math.p042ec.endo;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class GLVTypeAParameters {

    /* JADX INFO: renamed from: i */
    protected final BigInteger f4547i;
    protected final BigInteger lambda;
    protected final ScalarSplitParameters splitParams;

    public GLVTypeAParameters(BigInteger bigInteger, BigInteger bigInteger2, ScalarSplitParameters scalarSplitParameters) {
        this.f4547i = bigInteger;
        this.lambda = bigInteger2;
        this.splitParams = scalarSplitParameters;
    }

    public BigInteger getI() {
        return this.f4547i;
    }

    public BigInteger getLambda() {
        return this.lambda;
    }

    public ScalarSplitParameters getSplitParams() {
        return this.splitParams;
    }
}
