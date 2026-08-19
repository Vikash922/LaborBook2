package org.bouncycastle.math.p042ec.custom.djb;

import org.bouncycastle.math.p042ec.ECCurve;
import org.bouncycastle.math.p042ec.ECFieldElement;
import org.bouncycastle.math.p042ec.ECPoint;
import org.bouncycastle.math.raw.Nat256;

/* JADX INFO: loaded from: classes5.dex */
public class Curve25519Point extends ECPoint.AbstractFp {
    Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
    }

    Curve25519Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        if (this == eCPoint) {
            return twice();
        }
        ECCurve curve = getCurve();
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.f4463x;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f4464y;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.f4465zs[0];
        Curve25519FieldElement curve25519FieldElement4 = (Curve25519FieldElement) eCPoint.getXCoord();
        Curve25519FieldElement curve25519FieldElement5 = (Curve25519FieldElement) eCPoint.getYCoord();
        Curve25519FieldElement curve25519FieldElement6 = (Curve25519FieldElement) eCPoint.getZCoord(0);
        int[] iArrCreateExt = Nat256.createExt();
        int[] iArrCreate = Nat256.create();
        int[] iArrCreate2 = Nat256.create();
        int[] iArrCreate3 = Nat256.create();
        boolean zIsOne = curve25519FieldElement3.isOne();
        if (zIsOne) {
            iArr = curve25519FieldElement4.f4473x;
            iArr2 = curve25519FieldElement5.f4473x;
        } else {
            Curve25519Field.square(curve25519FieldElement3.f4473x, iArrCreate2);
            Curve25519Field.multiply(iArrCreate2, curve25519FieldElement4.f4473x, iArrCreate);
            Curve25519Field.multiply(iArrCreate2, curve25519FieldElement3.f4473x, iArrCreate2);
            Curve25519Field.multiply(iArrCreate2, curve25519FieldElement5.f4473x, iArrCreate2);
            iArr = iArrCreate;
            iArr2 = iArrCreate2;
        }
        boolean zIsOne2 = curve25519FieldElement6.isOne();
        if (zIsOne2) {
            iArr3 = curve25519FieldElement.f4473x;
            iArr4 = curve25519FieldElement2.f4473x;
        } else {
            Curve25519Field.square(curve25519FieldElement6.f4473x, iArrCreate3);
            Curve25519Field.multiply(iArrCreate3, curve25519FieldElement.f4473x, iArrCreateExt);
            Curve25519Field.multiply(iArrCreate3, curve25519FieldElement6.f4473x, iArrCreate3);
            Curve25519Field.multiply(iArrCreate3, curve25519FieldElement2.f4473x, iArrCreate3);
            iArr3 = iArrCreateExt;
            iArr4 = iArrCreate3;
        }
        int[] iArrCreate4 = Nat256.create();
        Curve25519Field.subtract(iArr3, iArr, iArrCreate4);
        Curve25519Field.subtract(iArr4, iArr2, iArrCreate);
        if (Nat256.isZero(iArrCreate4)) {
            return Nat256.isZero(iArrCreate) ? twice() : curve.getInfinity();
        }
        int[] iArrCreate5 = Nat256.create();
        Curve25519Field.square(iArrCreate4, iArrCreate5);
        int[] iArrCreate6 = Nat256.create();
        Curve25519Field.multiply(iArrCreate5, iArrCreate4, iArrCreate6);
        Curve25519Field.multiply(iArrCreate5, iArr3, iArrCreate2);
        Curve25519Field.negate(iArrCreate6, iArrCreate6);
        Nat256.mul(iArr4, iArrCreate6, iArrCreateExt);
        Curve25519Field.reduce27(Nat256.addBothTo(iArrCreate2, iArrCreate2, iArrCreate6), iArrCreate6);
        Curve25519FieldElement curve25519FieldElement7 = new Curve25519FieldElement(iArrCreate3);
        Curve25519Field.square(iArrCreate, curve25519FieldElement7.f4473x);
        Curve25519Field.subtract(curve25519FieldElement7.f4473x, iArrCreate6, curve25519FieldElement7.f4473x);
        Curve25519FieldElement curve25519FieldElement8 = new Curve25519FieldElement(iArrCreate6);
        Curve25519Field.subtract(iArrCreate2, curve25519FieldElement7.f4473x, curve25519FieldElement8.f4473x);
        Curve25519Field.multiplyAddToExt(curve25519FieldElement8.f4473x, iArrCreate, iArrCreateExt);
        Curve25519Field.reduce(iArrCreateExt, curve25519FieldElement8.f4473x);
        Curve25519FieldElement curve25519FieldElement9 = new Curve25519FieldElement(iArrCreate4);
        if (!zIsOne) {
            Curve25519Field.multiply(curve25519FieldElement9.f4473x, curve25519FieldElement3.f4473x, curve25519FieldElement9.f4473x);
        }
        if (!zIsOne2) {
            Curve25519Field.multiply(curve25519FieldElement9.f4473x, curve25519FieldElement6.f4473x, curve25519FieldElement9.f4473x);
        }
        if (!zIsOne || !zIsOne2) {
            iArrCreate5 = null;
        }
        return new Curve25519Point(curve, curve25519FieldElement7, curve25519FieldElement8, new ECFieldElement[]{curve25519FieldElement9, calculateJacobianModifiedW(curve25519FieldElement9, iArrCreate5)});
    }

    protected Curve25519FieldElement calculateJacobianModifiedW(Curve25519FieldElement curve25519FieldElement, int[] iArr) {
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) getCurve().getA();
        if (curve25519FieldElement.isOne()) {
            return curve25519FieldElement2;
        }
        Curve25519FieldElement curve25519FieldElement3 = new Curve25519FieldElement();
        if (iArr == null) {
            iArr = curve25519FieldElement3.f4473x;
            Curve25519Field.square(curve25519FieldElement.f4473x, iArr);
        }
        Curve25519Field.square(iArr, curve25519FieldElement3.f4473x);
        Curve25519Field.multiply(curve25519FieldElement3.f4473x, curve25519FieldElement2.f4473x, curve25519FieldElement3.f4473x);
        return curve25519FieldElement3;
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    protected ECPoint detach() {
        return new Curve25519Point(null, getAffineXCoord(), getAffineYCoord());
    }

    protected Curve25519FieldElement getJacobianModifiedW() {
        Curve25519FieldElement curve25519FieldElement = (Curve25519FieldElement) this.f4465zs[1];
        if (curve25519FieldElement != null) {
            return curve25519FieldElement;
        }
        ECFieldElement[] eCFieldElementArr = this.f4465zs;
        Curve25519FieldElement curve25519FieldElementCalculateJacobianModifiedW = calculateJacobianModifiedW((Curve25519FieldElement) this.f4465zs[0], null);
        eCFieldElementArr[1] = curve25519FieldElementCalculateJacobianModifiedW;
        return curve25519FieldElementCalculateJacobianModifiedW;
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECFieldElement getZCoord(int i) {
        return i == 1 ? getJacobianModifiedW() : super.getZCoord(i);
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new Curve25519Point(getCurve(), this.f4463x, this.f4464y.negate(), this.f4465zs);
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f4464y.isZero()) ? this : twiceJacobianModified(false).add(this);
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        return this.f4464y.isZero() ? getCurve().getInfinity() : twiceJacobianModified(true);
    }

    protected Curve25519Point twiceJacobianModified(boolean z) {
        Curve25519FieldElement curve25519FieldElement;
        Curve25519FieldElement curve25519FieldElement2 = (Curve25519FieldElement) this.f4463x;
        Curve25519FieldElement curve25519FieldElement3 = (Curve25519FieldElement) this.f4464y;
        Curve25519FieldElement curve25519FieldElement4 = (Curve25519FieldElement) this.f4465zs[0];
        Curve25519FieldElement jacobianModifiedW = getJacobianModifiedW();
        int[] iArrCreate = Nat256.create();
        Curve25519Field.square(curve25519FieldElement2.f4473x, iArrCreate);
        Curve25519Field.reduce27(Nat256.addBothTo(iArrCreate, iArrCreate, iArrCreate) + Nat256.addTo(jacobianModifiedW.f4473x, iArrCreate), iArrCreate);
        int[] iArrCreate2 = Nat256.create();
        Curve25519Field.twice(curve25519FieldElement3.f4473x, iArrCreate2);
        int[] iArrCreate3 = Nat256.create();
        Curve25519Field.multiply(iArrCreate2, curve25519FieldElement3.f4473x, iArrCreate3);
        int[] iArrCreate4 = Nat256.create();
        Curve25519Field.multiply(iArrCreate3, curve25519FieldElement2.f4473x, iArrCreate4);
        Curve25519Field.twice(iArrCreate4, iArrCreate4);
        int[] iArrCreate5 = Nat256.create();
        Curve25519Field.square(iArrCreate3, iArrCreate5);
        Curve25519Field.twice(iArrCreate5, iArrCreate5);
        Curve25519FieldElement curve25519FieldElement5 = new Curve25519FieldElement(iArrCreate3);
        Curve25519Field.square(iArrCreate, curve25519FieldElement5.f4473x);
        Curve25519Field.subtract(curve25519FieldElement5.f4473x, iArrCreate4, curve25519FieldElement5.f4473x);
        Curve25519Field.subtract(curve25519FieldElement5.f4473x, iArrCreate4, curve25519FieldElement5.f4473x);
        Curve25519FieldElement curve25519FieldElement6 = new Curve25519FieldElement(iArrCreate4);
        Curve25519Field.subtract(iArrCreate4, curve25519FieldElement5.f4473x, curve25519FieldElement6.f4473x);
        Curve25519Field.multiply(curve25519FieldElement6.f4473x, iArrCreate, curve25519FieldElement6.f4473x);
        Curve25519Field.subtract(curve25519FieldElement6.f4473x, iArrCreate5, curve25519FieldElement6.f4473x);
        Curve25519FieldElement curve25519FieldElement7 = new Curve25519FieldElement(iArrCreate2);
        if (!Nat256.isOne(curve25519FieldElement4.f4473x)) {
            Curve25519Field.multiply(curve25519FieldElement7.f4473x, curve25519FieldElement4.f4473x, curve25519FieldElement7.f4473x);
        }
        if (z) {
            curve25519FieldElement = new Curve25519FieldElement(iArrCreate5);
            Curve25519Field.multiply(curve25519FieldElement.f4473x, jacobianModifiedW.f4473x, curve25519FieldElement.f4473x);
            Curve25519Field.twice(curve25519FieldElement.f4473x, curve25519FieldElement.f4473x);
        } else {
            curve25519FieldElement = null;
        }
        return new Curve25519Point(getCurve(), curve25519FieldElement5, curve25519FieldElement6, new ECFieldElement[]{curve25519FieldElement7, curve25519FieldElement});
    }

    @Override // org.bouncycastle.math.p042ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f4464y.isZero() ? eCPoint : twiceJacobianModified(false).add(eCPoint);
    }
}
