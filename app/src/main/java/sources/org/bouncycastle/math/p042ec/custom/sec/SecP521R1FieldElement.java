package org.bouncycastle.math.p042ec.custom.sec;

import com.itextpdf.p017io.codec.TIFFConstants;
import java.math.BigInteger;
import org.bouncycastle.math.p042ec.ECFieldElement;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
public class SecP521R1FieldElement extends ECFieldElement.AbstractFp {

    /* JADX INFO: renamed from: Q */
    public static final BigInteger f4536Q = new BigInteger(1, Hex.decodeStrict("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));

    /* JADX INFO: renamed from: x */
    protected int[] f4537x;

    public SecP521R1FieldElement() {
        this.f4537x = Nat.create(17);
    }

    public SecP521R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f4536Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
        }
        this.f4537x = SecP521R1Field.fromBigInteger(bigInteger);
    }

    protected SecP521R1FieldElement(int[] iArr) {
        this.f4537x = iArr;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.add(this.f4537x, ((SecP521R1FieldElement) eCFieldElement).f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.addOne(this.f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.inv(((SecP521R1FieldElement) eCFieldElement).f4537x, iArrCreate);
        SecP521R1Field.multiply(iArrCreate, this.f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SecP521R1FieldElement) {
            return Nat.m2873eq(17, this.f4537x, ((SecP521R1FieldElement) obj).f4537x);
        }
        return false;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public String getFieldName() {
        return "SecP521R1Field";
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public int getFieldSize() {
        return f4536Q.bitLength();
    }

    public int hashCode() {
        return f4536Q.hashCode() ^ Arrays.hashCode(this.f4537x, 0, 17);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement invert() {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.inv(this.f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public boolean isOne() {
        return Nat.isOne(17, this.f4537x);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public boolean isZero() {
        return Nat.isZero(17, this.f4537x);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.multiply(this.f4537x, ((SecP521R1FieldElement) eCFieldElement).f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement negate() {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.negate(this.f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f4537x;
        if (Nat.isZero(17, iArr) || Nat.isOne(17, iArr)) {
            return this;
        }
        int[] iArrCreate = Nat.create(17);
        int[] iArrCreate2 = Nat.create(17);
        SecP521R1Field.squareN(iArr, TIFFConstants.TIFFTAG_JPEGQTABLES, iArrCreate);
        SecP521R1Field.square(iArrCreate, iArrCreate2);
        if (Nat.m2873eq(17, iArr, iArrCreate2)) {
            return new SecP521R1FieldElement(iArrCreate);
        }
        return null;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement square() {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.square(this.f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] iArrCreate = Nat.create(17);
        SecP521R1Field.subtract(this.f4537x, ((SecP521R1FieldElement) eCFieldElement).f4537x, iArrCreate);
        return new SecP521R1FieldElement(iArrCreate);
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public boolean testBitZero() {
        return Nat.getBit(this.f4537x, 0) == 1;
    }

    @Override // org.bouncycastle.math.p042ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat.toBigInteger(17, this.f4537x);
    }
}
