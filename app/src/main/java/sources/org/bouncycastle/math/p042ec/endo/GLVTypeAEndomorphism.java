package org.bouncycastle.math.p042ec.endo;

import java.math.BigInteger;
import org.bouncycastle.math.p042ec.ECCurve;
import org.bouncycastle.math.p042ec.ECPointMap;
import org.bouncycastle.math.p042ec.ScaleYNegateXPointMap;

/* JADX INFO: loaded from: classes5.dex */
public class GLVTypeAEndomorphism implements GLVEndomorphism {
    protected final GLVTypeAParameters parameters;
    protected final ECPointMap pointMap;

    public GLVTypeAEndomorphism(ECCurve eCCurve, GLVTypeAParameters gLVTypeAParameters) {
        this.parameters = gLVTypeAParameters;
        this.pointMap = new ScaleYNegateXPointMap(eCCurve.fromBigInteger(gLVTypeAParameters.getI()));
    }

    @Override // org.bouncycastle.math.p042ec.endo.GLVEndomorphism
    public BigInteger[] decomposeScalar(BigInteger bigInteger) {
        return EndoUtil.decomposeScalar(this.parameters.getSplitParams(), bigInteger);
    }

    @Override // org.bouncycastle.math.p042ec.endo.ECEndomorphism
    public ECPointMap getPointMap() {
        return this.pointMap;
    }

    @Override // org.bouncycastle.math.p042ec.endo.ECEndomorphism
    public boolean hasEfficientPointMap() {
        return true;
    }
}
