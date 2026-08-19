package org.bouncycastle.math.p042ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.math.p042ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecP256R1FieldElement extends ECFieldElement.AbstractFp {

    /* JADX INFO: renamed from: Q */
    public static final BigInteger f4527Q = new BigInteger(1, Hex.decodeStrict("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));

    /* JADX INFO: renamed from: x */
    protected int[] f4528x;

    public SecP256R1FieldElement() {
        this.f4528x = Nat256.create();
    }

    public SecP256R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f4527Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.f4528x = SecP256R1Field.fromBigInteger(bigInteger);
    }

    protected SecP256R1FieldElement(int[] iArr) {
        this.f4528x = iArr;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.add(this.f4528x, ((SecP256R1FieldElement) eCFieldElement).f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.addOne(this.f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.inv(((SecP256R1FieldElement) eCFieldElement).f4528x, iArrCreate);
        SecP256R1Field.multiply(iArrCreate, this.f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP256R1FieldElement) {
            return Nat256.m2878eq(this.f4528x, ((SecP256R1FieldElement) obj).f4528x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public String getFieldName() {
        return "SecP256R1Field";
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public int getFieldSize() {
        return f4527Q.bitLength();
    }

    public int hashCode() {
        return f4527Q.hashCode() ^ Arrays.hashCode(this.f4528x, 0, 8);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement invert() {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.inv(this.f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne(this.f4528x);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero(this.f4528x);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.multiply(this.f4528x, ((SecP256R1FieldElement) eCFieldElement).f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement negate() {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.negate(this.f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f4528x;
        if (Nat256.isZero(iArr) || Nat256.isOne(iArr)) {
            return this;
        }
        int[] iArrCreate = Nat256.create();
        int[] iArrCreate2 = Nat256.create();
        SecP256R1Field.square(iArr, iArrCreate);
        SecP256R1Field.multiply(iArrCreate, iArr, iArrCreate);
        SecP256R1Field.squareN(iArrCreate, 2, iArrCreate2);
        SecP256R1Field.multiply(iArrCreate2, iArrCreate, iArrCreate2);
        SecP256R1Field.squareN(iArrCreate2, 4, iArrCreate);
        SecP256R1Field.multiply(iArrCreate, iArrCreate2, iArrCreate);
        SecP256R1Field.squareN(iArrCreate, 8, iArrCreate2);
        SecP256R1Field.multiply(iArrCreate2, iArrCreate, iArrCreate2);
        SecP256R1Field.squareN(iArrCreate2, 16, iArrCreate);
        SecP256R1Field.multiply(iArrCreate, iArrCreate2, iArrCreate);
        SecP256R1Field.squareN(iArrCreate, 32, iArrCreate);
        SecP256R1Field.multiply(iArrCreate, iArr, iArrCreate);
        SecP256R1Field.squareN(iArrCreate, 96, iArrCreate);
        SecP256R1Field.multiply(iArrCreate, iArr, iArrCreate);
        SecP256R1Field.squareN(iArrCreate, 94, iArrCreate);
        SecP256R1Field.square(iArrCreate, iArrCreate2);
        if (Nat256.m2878eq(iArr, iArrCreate2)) {
            return new SecP256R1FieldElement(iArrCreate);
        }
        return null;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement square() {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.square(this.f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat256.create();
        SecP256R1Field.subtract(this.f4528x, ((SecP256R1FieldElement) eCFieldElement).f4528x, iArrCreate);
        return new SecP256R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public boolean testBitZero() {
        return Nat256.getBit(this.f4528x, 0) == 1;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger(this.f4528x);
    }
}
