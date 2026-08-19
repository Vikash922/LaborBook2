package org.bouncycastle.math.p042ec.custom.sec;

import org.bouncycastle.math.p042ec.ECConstants;
import org.bouncycastle.math.p042ec.ECCurve;
import org.bouncycastle.math.p042ec.ECFieldElement;
import org.bouncycastle.math.p042ec.ECPoint;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat576;

/* JADX INFO: loaded from: classes5.dex */
public class SecT571R1Point extends ECPoint.AbstractF2m {
    SecT571R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    SecT571R1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        SecT571FieldElement secT571FieldElement;
        SecT571FieldElement secT571FieldElement2;
        SecT571FieldElement secT571FieldElement3;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SecT571FieldElement secT571FieldElement4 = (SecT571FieldElement) this.f4463x;
        SecT571FieldElement secT571FieldElement5 = (SecT571FieldElement) eCPoint.getRawXCoord();
        if (secT571FieldElement4.isZero()) {
            return secT571FieldElement5.isZero() ? curve.getInfinity() : eCPoint.add(this);
        }
        SecT571FieldElement secT571FieldElement6 = (SecT571FieldElement) this.f4464y;
        SecT571FieldElement secT571FieldElement7 = (SecT571FieldElement) this.f4465zs[0];
        SecT571FieldElement secT571FieldElement8 = (SecT571FieldElement) eCPoint.getRawYCoord();
        SecT571FieldElement secT571FieldElement9 = (SecT571FieldElement) eCPoint.getZCoord(0);
        long[] jArrCreate64 = Nat576.create64();
        long[] jArrCreate642 = Nat576.create64();
        long[] jArrCreate643 = Nat576.create64();
        long[] jArrCreate644 = Nat576.create64();
        long[] jArrPrecompMultiplicand = secT571FieldElement7.isOne() ? null : SecT571Field.precompMultiplicand(secT571FieldElement7.f4546x);
        if (jArrPrecompMultiplicand == null) {
            jArr = secT571FieldElement5.f4546x;
            jArr2 = secT571FieldElement8.f4546x;
        } else {
            SecT571Field.multiplyPrecomp(secT571FieldElement5.f4546x, jArrPrecompMultiplicand, jArrCreate642);
            SecT571Field.multiplyPrecomp(secT571FieldElement8.f4546x, jArrPrecompMultiplicand, jArrCreate644);
            jArr = jArrCreate642;
            jArr2 = jArrCreate644;
        }
        long[] jArrPrecompMultiplicand2 = secT571FieldElement9.isOne() ? null : SecT571Field.precompMultiplicand(secT571FieldElement9.f4546x);
        long[] jArr4 = secT571FieldElement4.f4546x;
        if (jArrPrecompMultiplicand2 == null) {
            jArr3 = secT571FieldElement6.f4546x;
        } else {
            SecT571Field.multiplyPrecomp(jArr4, jArrPrecompMultiplicand2, jArrCreate64);
            SecT571Field.multiplyPrecomp(secT571FieldElement6.f4546x, jArrPrecompMultiplicand2, jArrCreate643);
            jArr4 = jArrCreate64;
            jArr3 = jArrCreate643;
        }
        SecT571Field.add(jArr3, jArr2, jArrCreate643);
        SecT571Field.add(jArr4, jArr, jArrCreate644);
        if (Nat576.isZero64(jArrCreate644)) {
            return Nat576.isZero64(jArrCreate643) ? twice() : curve.getInfinity();
        }
        if (secT571FieldElement5.isZero()) {
            ECPoint eCPointNormalize = normalize();
            SecT571FieldElement secT571FieldElement10 = (SecT571FieldElement) eCPointNormalize.getXCoord();
            ECFieldElement yCoord = eCPointNormalize.getYCoord();
            ECFieldElement eCFieldElementDivide = yCoord.add(secT571FieldElement8).divide(secT571FieldElement10);
            secT571FieldElement = (SecT571FieldElement) eCFieldElementDivide.square().add(eCFieldElementDivide).add(secT571FieldElement10).addOne();
            if (secT571FieldElement.isZero()) {
                return new SecT571R1Point(curve, secT571FieldElement, SecT571R1Curve.SecT571R1_B_SQRT);
            }
            secT571FieldElement2 = (SecT571FieldElement) eCFieldElementDivide.multiply(secT571FieldElement10.add(secT571FieldElement)).add(secT571FieldElement).add(yCoord).divide(secT571FieldElement).add(secT571FieldElement);
            secT571FieldElement3 = (SecT571FieldElement) curve.fromBigInteger(ECConstants.ONE);
        } else {
            SecT571Field.square(jArrCreate644, jArrCreate644);
            long[] jArrPrecompMultiplicand3 = SecT571Field.precompMultiplicand(jArrCreate643);
            SecT571Field.multiplyPrecomp(jArr4, jArrPrecompMultiplicand3, jArrCreate64);
            SecT571Field.multiplyPrecomp(jArr, jArrPrecompMultiplicand3, jArrCreate642);
            SecT571FieldElement secT571FieldElement11 = new SecT571FieldElement(jArrCreate64);
            SecT571Field.multiply(jArrCreate64, jArrCreate642, secT571FieldElement11.f4546x);
            if (secT571FieldElement11.isZero()) {
                return new SecT571R1Point(curve, secT571FieldElement11, SecT571R1Curve.SecT571R1_B_SQRT);
            }
            SecT571FieldElement secT571FieldElement12 = new SecT571FieldElement(jArrCreate643);
            SecT571Field.multiplyPrecomp(jArrCreate644, jArrPrecompMultiplicand3, secT571FieldElement12.f4546x);
            if (jArrPrecompMultiplicand2 != null) {
                SecT571Field.multiplyPrecomp(secT571FieldElement12.f4546x, jArrPrecompMultiplicand2, secT571FieldElement12.f4546x);
            }
            long[] jArrCreateExt64 = Nat576.createExt64();
            SecT571Field.add(jArrCreate642, jArrCreate644, jArrCreate644);
            SecT571Field.squareAddToExt(jArrCreate644, jArrCreateExt64);
            SecT571Field.add(secT571FieldElement6.f4546x, secT571FieldElement7.f4546x, jArrCreate644);
            SecT571Field.multiplyAddToExt(jArrCreate644, secT571FieldElement12.f4546x, jArrCreateExt64);
            SecT571FieldElement secT571FieldElement13 = new SecT571FieldElement(jArrCreate644);
            SecT571Field.reduce(jArrCreateExt64, secT571FieldElement13.f4546x);
            if (jArrPrecompMultiplicand != null) {
                SecT571Field.multiplyPrecomp(secT571FieldElement12.f4546x, jArrPrecompMultiplicand, secT571FieldElement12.f4546x);
            }
            secT571FieldElement = secT571FieldElement11;
            secT571FieldElement2 = secT571FieldElement13;
            secT571FieldElement3 = secT571FieldElement12;
        }
        return new SecT571R1Point(curve, secT571FieldElement, secT571FieldElement2, new ECFieldElement[]{secT571FieldElement3});
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    protected ECPoint detach() {
        return new SecT571R1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    protected boolean getCompressionYTilde() {
        ECFieldElement rawXCoord = getRawXCoord();
        return (rawXCoord.isZero() || getRawYCoord().testBitZero() == rawXCoord.testBitZero()) ? false : true;
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECFieldElement getYCoord() {
        ECFieldElement eCFieldElement = this.f4463x;
        ECFieldElement eCFieldElement2 = this.f4464y;
        if (isInfinity() || eCFieldElement.isZero()) {
            return eCFieldElement2;
        }
        ECFieldElement eCFieldElementMultiply = eCFieldElement2.add(eCFieldElement).multiply(eCFieldElement);
        ECFieldElement eCFieldElement3 = this.f4465zs[0];
        return !eCFieldElement3.isOne() ? eCFieldElementMultiply.divide(eCFieldElement3) : eCFieldElementMultiply;
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint negate() {
        if (isInfinity()) {
            return this;
        }
        ECFieldElement eCFieldElement = this.f4463x;
        if (eCFieldElement.isZero()) {
            return this;
        }
        ECFieldElement eCFieldElement2 = this.f4464y;
        ECFieldElement eCFieldElement3 = this.f4465zs[0];
        return new SecT571R1Point(this.curve, eCFieldElement, eCFieldElement2.add(eCFieldElement3), new ECFieldElement[]{eCFieldElement3});
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint twice() {
        long[] jArr;
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SecT571FieldElement secT571FieldElement = (SecT571FieldElement) this.f4463x;
        if (secT571FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecT571FieldElement secT571FieldElement2 = (SecT571FieldElement) this.f4464y;
        SecT571FieldElement secT571FieldElement3 = (SecT571FieldElement) this.f4465zs[0];
        long[] jArrCreate64 = Nat576.create64();
        long[] jArrCreate642 = Nat576.create64();
        long[] jArrPrecompMultiplicand = secT571FieldElement3.isOne() ? null : SecT571Field.precompMultiplicand(secT571FieldElement3.f4546x);
        long[] jArr2 = secT571FieldElement2.f4546x;
        if (jArrPrecompMultiplicand == null) {
            jArr = secT571FieldElement3.f4546x;
        } else {
            SecT571Field.multiplyPrecomp(jArr2, jArrPrecompMultiplicand, jArrCreate64);
            SecT571Field.square(secT571FieldElement3.f4546x, jArrCreate642);
            jArr2 = jArrCreate64;
            jArr = jArrCreate642;
        }
        long[] jArrCreate643 = Nat576.create64();
        SecT571Field.square(secT571FieldElement2.f4546x, jArrCreate643);
        SecT571Field.addBothTo(jArr2, jArr, jArrCreate643);
        if (Nat576.isZero64(jArrCreate643)) {
            return new SecT571R1Point(curve, new SecT571FieldElement(jArrCreate643), SecT571R1Curve.SecT571R1_B_SQRT);
        }
        long[] jArrCreateExt64 = Nat576.createExt64();
        SecT571Field.multiplyAddToExt(jArrCreate643, jArr2, jArrCreateExt64);
        SecT571FieldElement secT571FieldElement4 = new SecT571FieldElement(jArrCreate64);
        SecT571Field.square(jArrCreate643, secT571FieldElement4.f4546x);
        SecT571FieldElement secT571FieldElement5 = new SecT571FieldElement(jArrCreate643);
        if (jArrPrecompMultiplicand != null) {
            SecT571Field.multiply(secT571FieldElement5.f4546x, jArr, secT571FieldElement5.f4546x);
        }
        long[] jArr3 = secT571FieldElement.f4546x;
        if (jArrPrecompMultiplicand != null) {
            SecT571Field.multiplyPrecomp(jArr3, jArrPrecompMultiplicand, jArrCreate642);
            jArr3 = jArrCreate642;
        }
        SecT571Field.squareAddToExt(jArr3, jArrCreateExt64);
        SecT571Field.reduce(jArrCreateExt64, jArrCreate642);
        SecT571Field.addBothTo(secT571FieldElement4.f4546x, secT571FieldElement5.f4546x, jArrCreate642);
        return new SecT571R1Point(curve, secT571FieldElement4, new SecT571FieldElement(jArrCreate642), new ECFieldElement[]{secT571FieldElement5});
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return twice();
        }
        ECCurve curve = getCurve();
        SecT571FieldElement secT571FieldElement = (SecT571FieldElement) this.f4463x;
        if (secT571FieldElement.isZero()) {
            return eCPoint;
        }
        SecT571FieldElement secT571FieldElement2 = (SecT571FieldElement) eCPoint.getRawXCoord();
        SecT571FieldElement secT571FieldElement3 = (SecT571FieldElement) eCPoint.getZCoord(0);
        if (secT571FieldElement2.isZero() || !secT571FieldElement3.isOne()) {
            return twice().add(eCPoint);
        }
        SecT571FieldElement secT571FieldElement4 = (SecT571FieldElement) this.f4464y;
        SecT571FieldElement secT571FieldElement5 = (SecT571FieldElement) this.f4465zs[0];
        SecT571FieldElement secT571FieldElement6 = (SecT571FieldElement) eCPoint.getRawYCoord();
        long[] jArrCreate64 = Nat576.create64();
        long[] jArrCreate642 = Nat576.create64();
        long[] jArrCreate643 = Nat576.create64();
        long[] jArrCreate644 = Nat576.create64();
        SecT571Field.square(secT571FieldElement.f4546x, jArrCreate64);
        SecT571Field.square(secT571FieldElement4.f4546x, jArrCreate642);
        SecT571Field.square(secT571FieldElement5.f4546x, jArrCreate643);
        SecT571Field.multiply(secT571FieldElement4.f4546x, secT571FieldElement5.f4546x, jArrCreate644);
        SecT571Field.addBothTo(jArrCreate643, jArrCreate642, jArrCreate644);
        long[] jArrPrecompMultiplicand = SecT571Field.precompMultiplicand(jArrCreate643);
        SecT571Field.multiplyPrecomp(secT571FieldElement6.f4546x, jArrPrecompMultiplicand, jArrCreate643);
        SecT571Field.add(jArrCreate643, jArrCreate642, jArrCreate643);
        long[] jArrCreateExt64 = Nat576.createExt64();
        SecT571Field.multiplyAddToExt(jArrCreate643, jArrCreate644, jArrCreateExt64);
        SecT571Field.multiplyPrecompAddToExt(jArrCreate64, jArrPrecompMultiplicand, jArrCreateExt64);
        SecT571Field.reduce(jArrCreateExt64, jArrCreate643);
        SecT571Field.multiplyPrecomp(secT571FieldElement2.f4546x, jArrPrecompMultiplicand, jArrCreate64);
        SecT571Field.add(jArrCreate64, jArrCreate644, jArrCreate642);
        SecT571Field.square(jArrCreate642, jArrCreate642);
        if (Nat576.isZero64(jArrCreate642)) {
            return Nat576.isZero64(jArrCreate643) ? eCPoint.twice() : curve.getInfinity();
        }
        if (Nat576.isZero64(jArrCreate643)) {
            return new SecT571R1Point(curve, new SecT571FieldElement(jArrCreate643), SecT571R1Curve.SecT571R1_B_SQRT);
        }
        SecT571FieldElement secT571FieldElement7 = new SecT571FieldElement();
        SecT571Field.square(jArrCreate643, secT571FieldElement7.f4546x);
        SecT571Field.multiply(secT571FieldElement7.f4546x, jArrCreate64, secT571FieldElement7.f4546x);
        SecT571FieldElement secT571FieldElement8 = new SecT571FieldElement(jArrCreate64);
        SecT571Field.multiply(jArrCreate643, jArrCreate642, secT571FieldElement8.f4546x);
        SecT571Field.multiplyPrecomp(secT571FieldElement8.f4546x, jArrPrecompMultiplicand, secT571FieldElement8.f4546x);
        SecT571FieldElement secT571FieldElement9 = new SecT571FieldElement(jArrCreate642);
        SecT571Field.add(jArrCreate643, jArrCreate642, secT571FieldElement9.f4546x);
        SecT571Field.square(secT571FieldElement9.f4546x, secT571FieldElement9.f4546x);
        Nat.zero64(18, jArrCreateExt64);
        SecT571Field.multiplyAddToExt(secT571FieldElement9.f4546x, jArrCreate644, jArrCreateExt64);
        SecT571Field.addOne(secT571FieldElement6.f4546x, jArrCreate644);
        SecT571Field.multiplyAddToExt(jArrCreate644, secT571FieldElement8.f4546x, jArrCreateExt64);
        SecT571Field.reduce(jArrCreateExt64, secT571FieldElement9.f4546x);
        return new SecT571R1Point(curve, secT571FieldElement7, secT571FieldElement9, new ECFieldElement[]{secT571FieldElement8});
    }
}
