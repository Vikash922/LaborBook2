package org.bouncycastle.math.p042ec;

import java.math.BigInteger;
import java.util.Random;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Integers;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ECFieldElement implements ECConstants {

    public static abstract class AbstractF2m extends ECFieldElement {
        public ECFieldElement halfTrace() {
            int fieldSize = getFieldSize();
            if ((fieldSize & 1) == 0) {
                throw new IllegalStateException("Half-trace only defined for odd m");
            }
            int i = (fieldSize + 1) >>> 1;
            int iNumberOfLeadingZeros = 31 - Integers.numberOfLeadingZeros(i);
            ECFieldElement eCFieldElementAdd = this;
            int i2 = 1;
            while (iNumberOfLeadingZeros > 0) {
                eCFieldElementAdd = eCFieldElementAdd.squarePow(i2 << 1).add(eCFieldElementAdd);
                iNumberOfLeadingZeros--;
                i2 = i >>> iNumberOfLeadingZeros;
                if ((i2 & 1) != 0) {
                    eCFieldElementAdd = eCFieldElementAdd.squarePow(2).add(this);
                }
            }
            return eCFieldElementAdd;
        }

        public boolean hasFastTrace() {
            return false;
        }

        public int trace() {
            int fieldSize = getFieldSize();
            int iNumberOfLeadingZeros = 31 - Integers.numberOfLeadingZeros(fieldSize);
            ECFieldElement eCFieldElementAdd = this;
            int i = 1;
            while (iNumberOfLeadingZeros > 0) {
                eCFieldElementAdd = eCFieldElementAdd.squarePow(i).add(eCFieldElementAdd);
                iNumberOfLeadingZeros--;
                i = fieldSize >>> iNumberOfLeadingZeros;
                if ((i & 1) != 0) {
                    eCFieldElementAdd = eCFieldElementAdd.square().add(this);
                }
            }
            if (eCFieldElementAdd.isZero()) {
                return 0;
            }
            if (eCFieldElementAdd.isOne()) {
                return 1;
            }
            throw new IllegalStateException("Internal error in trace calculation");
        }
    }

    public static abstract class AbstractFp extends ECFieldElement {
    }

    public static class F2m extends AbstractF2m {
        public static final int GNB = 1;
        public static final int PPB = 3;
        public static final int TPB = 2;

        /* JADX INFO: renamed from: ks */
        private int[] f4457ks;

        /* JADX INFO: renamed from: m */
        private int f4458m;
        private int representation;

        /* JADX INFO: renamed from: x */
        LongArray f4459x;

        F2m(int i, int i2, int i3, int i4, BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > i) {
                throw new IllegalArgumentException("x value invalid in F2m field element");
            }
            if (i3 == 0 && i4 == 0) {
                this.representation = 2;
                this.f4457ks = new int[]{i2};
            } else {
                if (i3 >= i4) {
                    throw new IllegalArgumentException("k2 must be smaller than k3");
                }
                if (i3 <= 0) {
                    throw new IllegalArgumentException("k2 must be larger than 0");
                }
                this.representation = 3;
                this.f4457ks = new int[]{i2, i3, i4};
            }
            this.f4458m = i;
            this.f4459x = new LongArray(bigInteger);
        }

        F2m(int i, int[] iArr, LongArray longArray) {
            this.f4458m = i;
            this.representation = iArr.length == 1 ? 2 : 3;
            this.f4457ks = iArr;
            this.f4459x = longArray;
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement add(ECFieldElement eCFieldElement) {
            LongArray longArray = (LongArray) this.f4459x.clone();
            longArray.addShiftedByWords(((F2m) eCFieldElement).f4459x, 0);
            return new F2m(this.f4458m, this.f4457ks, longArray);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement addOne() {
            return new F2m(this.f4458m, this.f4457ks, this.f4459x.addOne());
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public int bitLength() {
            return this.f4459x.degree();
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement divide(ECFieldElement eCFieldElement) {
            return multiply(eCFieldElement.invert());
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof F2m)) {
                return false;
            }
            F2m f2m = (F2m) obj;
            return this.f4458m == f2m.f4458m && this.representation == f2m.representation && Arrays.areEqual(this.f4457ks, f2m.f4457ks) && this.f4459x.equals(f2m.f4459x);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public String getFieldName() {
            return "F2m";
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public int getFieldSize() {
            return this.f4458m;
        }

        public int getK1() {
            return this.f4457ks[0];
        }

        public int getK2() {
            int[] iArr = this.f4457ks;
            if (iArr.length >= 2) {
                return iArr[1];
            }
            return 0;
        }

        public int getK3() {
            int[] iArr = this.f4457ks;
            if (iArr.length >= 3) {
                return iArr[2];
            }
            return 0;
        }

        public int getM() {
            return this.f4458m;
        }

        public int getRepresentation() {
            return this.representation;
        }

        public int hashCode() {
            return (this.f4459x.hashCode() ^ this.f4458m) ^ Arrays.hashCode(this.f4457ks);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement invert() {
            int i = this.f4458m;
            int[] iArr = this.f4457ks;
            return new F2m(i, iArr, this.f4459x.modInverse(i, iArr));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public boolean isOne() {
            return this.f4459x.isOne();
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public boolean isZero() {
            return this.f4459x.isZero();
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement multiply(ECFieldElement eCFieldElement) {
            int i = this.f4458m;
            int[] iArr = this.f4457ks;
            return new F2m(i, iArr, this.f4459x.modMultiply(((F2m) eCFieldElement).f4459x, i, iArr));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            return multiplyPlusProduct(eCFieldElement, eCFieldElement2, eCFieldElement3);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            LongArray longArray = this.f4459x;
            LongArray longArray2 = ((F2m) eCFieldElement).f4459x;
            LongArray longArray3 = ((F2m) eCFieldElement2).f4459x;
            LongArray longArray4 = ((F2m) eCFieldElement3).f4459x;
            LongArray longArrayMultiply = longArray.multiply(longArray2, this.f4458m, this.f4457ks);
            LongArray longArrayMultiply2 = longArray3.multiply(longArray4, this.f4458m, this.f4457ks);
            if (longArrayMultiply == longArray || longArrayMultiply == longArray2) {
                longArrayMultiply = (LongArray) longArrayMultiply.clone();
            }
            longArrayMultiply.addShiftedByWords(longArrayMultiply2, 0);
            longArrayMultiply.reduce(this.f4458m, this.f4457ks);
            return new F2m(this.f4458m, this.f4457ks, longArrayMultiply);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement negate() {
            return this;
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement sqrt() {
            return (this.f4459x.isZero() || this.f4459x.isOne()) ? this : squarePow(this.f4458m - 1);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement square() {
            int i = this.f4458m;
            int[] iArr = this.f4457ks;
            return new F2m(i, iArr, this.f4459x.modSquare(i, iArr));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            return squarePlusProduct(eCFieldElement, eCFieldElement2);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            LongArray longArray = this.f4459x;
            LongArray longArray2 = ((F2m) eCFieldElement).f4459x;
            LongArray longArray3 = ((F2m) eCFieldElement2).f4459x;
            LongArray longArraySquare = longArray.square(this.f4458m, this.f4457ks);
            LongArray longArrayMultiply = longArray2.multiply(longArray3, this.f4458m, this.f4457ks);
            if (longArraySquare == longArray) {
                longArraySquare = (LongArray) longArraySquare.clone();
            }
            longArraySquare.addShiftedByWords(longArrayMultiply, 0);
            longArraySquare.reduce(this.f4458m, this.f4457ks);
            return new F2m(this.f4458m, this.f4457ks, longArraySquare);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement squarePow(int i) {
            if (i < 1) {
                return this;
            }
            int i2 = this.f4458m;
            int[] iArr = this.f4457ks;
            return new F2m(i2, iArr, this.f4459x.modSquareN(i, i2, iArr));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement subtract(ECFieldElement eCFieldElement) {
            return add(eCFieldElement);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public boolean testBitZero() {
            return this.f4459x.testBitZero();
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public BigInteger toBigInteger() {
            return this.f4459x.toBigInteger();
        }
    }

    /* JADX INFO: renamed from: org.bouncycastle.math.ec.ECFieldElement$Fp */
    public static class C4652Fp extends AbstractFp {

        /* JADX INFO: renamed from: q */
        BigInteger f4460q;

        /* JADX INFO: renamed from: r */
        BigInteger f4461r;

        /* JADX INFO: renamed from: x */
        BigInteger f4462x;

        C4652Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                throw new IllegalArgumentException("x value invalid in Fp field element");
            }
            this.f4460q = bigInteger;
            this.f4461r = bigInteger2;
            this.f4462x = bigInteger3;
        }

        static BigInteger calculateResidue(BigInteger bigInteger) {
            int iBitLength = bigInteger.bitLength();
            if (iBitLength < 96 || bigInteger.shiftRight(iBitLength - 64).longValue() != -1) {
                return null;
            }
            return ONE.shiftLeft(iBitLength).subtract(bigInteger);
        }

        private ECFieldElement checkSqrt(ECFieldElement eCFieldElement) {
            if (eCFieldElement.square().equals(this)) {
                return eCFieldElement;
            }
            return null;
        }

        private BigInteger[] lucasSequence(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            int iBitLength = bigInteger3.bitLength();
            int lowestSetBit = bigInteger3.getLowestSetBit();
            BigInteger bigIntegerModReduce = ECConstants.ONE;
            BigInteger bigIntegerModReduce2 = ECConstants.TWO;
            BigInteger bigIntegerModMult = ECConstants.ONE;
            BigInteger bigIntegerModMult2 = ECConstants.ONE;
            BigInteger bigIntegerModReduce3 = bigInteger;
            for (int i = iBitLength - 1; i >= lowestSetBit + 1; i--) {
                bigIntegerModMult = modMult(bigIntegerModMult, bigIntegerModMult2);
                if (bigInteger3.testBit(i)) {
                    bigIntegerModMult2 = modMult(bigIntegerModMult, bigInteger2);
                    bigIntegerModReduce = modMult(bigIntegerModReduce, bigIntegerModReduce3);
                    bigIntegerModReduce2 = modReduce(bigIntegerModReduce3.multiply(bigIntegerModReduce2).subtract(bigInteger.multiply(bigIntegerModMult)));
                    bigIntegerModReduce3 = modReduce(bigIntegerModReduce3.multiply(bigIntegerModReduce3).subtract(bigIntegerModMult2.shiftLeft(1)));
                } else {
                    bigIntegerModReduce = modReduce(bigIntegerModReduce.multiply(bigIntegerModReduce2).subtract(bigIntegerModMult));
                    BigInteger bigIntegerModReduce4 = modReduce(bigIntegerModReduce3.multiply(bigIntegerModReduce2).subtract(bigInteger.multiply(bigIntegerModMult)));
                    bigIntegerModReduce2 = modReduce(bigIntegerModReduce2.multiply(bigIntegerModReduce2).subtract(bigIntegerModMult.shiftLeft(1)));
                    bigIntegerModReduce3 = bigIntegerModReduce4;
                    bigIntegerModMult2 = bigIntegerModMult;
                }
            }
            BigInteger bigIntegerModMult3 = modMult(bigIntegerModMult, bigIntegerModMult2);
            BigInteger bigIntegerModMult4 = modMult(bigIntegerModMult3, bigInteger2);
            BigInteger bigIntegerModReduce5 = modReduce(bigIntegerModReduce.multiply(bigIntegerModReduce2).subtract(bigIntegerModMult3));
            BigInteger bigIntegerModReduce6 = modReduce(bigIntegerModReduce3.multiply(bigIntegerModReduce2).subtract(bigInteger.multiply(bigIntegerModMult3)));
            BigInteger bigIntegerModMult5 = modMult(bigIntegerModMult3, bigIntegerModMult4);
            for (int i2 = 1; i2 <= lowestSetBit; i2++) {
                bigIntegerModReduce5 = modMult(bigIntegerModReduce5, bigIntegerModReduce6);
                bigIntegerModReduce6 = modReduce(bigIntegerModReduce6.multiply(bigIntegerModReduce6).subtract(bigIntegerModMult5.shiftLeft(1)));
                bigIntegerModMult5 = modMult(bigIntegerModMult5, bigIntegerModMult5);
            }
            return new BigInteger[]{bigIntegerModReduce5, bigIntegerModReduce6};
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement add(ECFieldElement eCFieldElement) {
            return new C4652Fp(this.f4460q, this.f4461r, modAdd(this.f4462x, eCFieldElement.toBigInteger()));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement addOne() {
            BigInteger bigIntegerAdd = this.f4462x.add(ECConstants.ONE);
            if (bigIntegerAdd.compareTo(this.f4460q) == 0) {
                bigIntegerAdd = ECConstants.ZERO;
            }
            return new C4652Fp(this.f4460q, this.f4461r, bigIntegerAdd);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement divide(ECFieldElement eCFieldElement) {
            return new C4652Fp(this.f4460q, this.f4461r, modMult(this.f4462x, modInverse(eCFieldElement.toBigInteger())));
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C4652Fp)) {
                return false;
            }
            C4652Fp c4652Fp = (C4652Fp) obj;
            return this.f4460q.equals(c4652Fp.f4460q) && this.f4462x.equals(c4652Fp.f4462x);
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public String getFieldName() {
            return "Fp";
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public int getFieldSize() {
            return this.f4460q.bitLength();
        }

        public BigInteger getQ() {
            return this.f4460q;
        }

        public int hashCode() {
            return this.f4460q.hashCode() ^ this.f4462x.hashCode();
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement invert() {
            return new C4652Fp(this.f4460q, this.f4461r, modInverse(this.f4462x));
        }

        protected BigInteger modAdd(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger bigIntegerAdd = bigInteger.add(bigInteger2);
            return bigIntegerAdd.compareTo(this.f4460q) >= 0 ? bigIntegerAdd.subtract(this.f4460q) : bigIntegerAdd;
        }

        protected BigInteger modDouble(BigInteger bigInteger) {
            BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(1);
            return bigIntegerShiftLeft.compareTo(this.f4460q) >= 0 ? bigIntegerShiftLeft.subtract(this.f4460q) : bigIntegerShiftLeft;
        }

        protected BigInteger modHalf(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.f4460q.add(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }

        protected BigInteger modHalfAbs(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.f4460q.subtract(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }

        protected BigInteger modInverse(BigInteger bigInteger) {
            return BigIntegers.modOddInverse(this.f4460q, bigInteger);
        }

        protected BigInteger modMult(BigInteger bigInteger, BigInteger bigInteger2) {
            return modReduce(bigInteger.multiply(bigInteger2));
        }

        protected BigInteger modReduce(BigInteger bigInteger) {
            if (this.f4461r == null) {
                return bigInteger.mod(this.f4460q);
            }
            boolean z = bigInteger.signum() < 0;
            if (z) {
                bigInteger = bigInteger.abs();
            }
            int iBitLength = this.f4460q.bitLength();
            boolean zEquals = this.f4461r.equals(ECConstants.ONE);
            while (bigInteger.bitLength() > iBitLength + 1) {
                BigInteger bigIntegerShiftRight = bigInteger.shiftRight(iBitLength);
                BigInteger bigIntegerSubtract = bigInteger.subtract(bigIntegerShiftRight.shiftLeft(iBitLength));
                if (!zEquals) {
                    bigIntegerShiftRight = bigIntegerShiftRight.multiply(this.f4461r);
                }
                bigInteger = bigIntegerShiftRight.add(bigIntegerSubtract);
            }
            while (bigInteger.compareTo(this.f4460q) >= 0) {
                bigInteger = bigInteger.subtract(this.f4460q);
            }
            return (!z || bigInteger.signum() == 0) ? bigInteger : this.f4460q.subtract(bigInteger);
        }

        protected BigInteger modSubtract(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger2);
            return bigIntegerSubtract.signum() < 0 ? bigIntegerSubtract.add(this.f4460q) : bigIntegerSubtract;
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement multiply(ECFieldElement eCFieldElement) {
            return new C4652Fp(this.f4460q, this.f4461r, modMult(this.f4462x, eCFieldElement.toBigInteger()));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            BigInteger bigInteger = this.f4462x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            BigInteger bigInteger4 = eCFieldElement3.toBigInteger();
            return new C4652Fp(this.f4460q, this.f4461r, modReduce(bigInteger.multiply(bigInteger2).subtract(bigInteger3.multiply(bigInteger4))));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            BigInteger bigInteger = this.f4462x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            BigInteger bigInteger4 = eCFieldElement3.toBigInteger();
            return new C4652Fp(this.f4460q, this.f4461r, modReduce(bigInteger.multiply(bigInteger2).add(bigInteger3.multiply(bigInteger4))));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement negate() {
            if (this.f4462x.signum() == 0) {
                return this;
            }
            BigInteger bigInteger = this.f4460q;
            return new C4652Fp(bigInteger, this.f4461r, bigInteger.subtract(this.f4462x));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement sqrt() {
            if (isZero() || isOne()) {
                return this;
            }
            if (!this.f4460q.testBit(0)) {
                throw new RuntimeException("not done yet");
            }
            if (this.f4460q.testBit(1)) {
                BigInteger bigIntegerAdd = this.f4460q.shiftRight(2).add(ECConstants.ONE);
                BigInteger bigInteger = this.f4460q;
                return checkSqrt(new C4652Fp(bigInteger, this.f4461r, this.f4462x.modPow(bigIntegerAdd, bigInteger)));
            }
            if (this.f4460q.testBit(2)) {
                BigInteger bigIntegerModPow = this.f4462x.modPow(this.f4460q.shiftRight(3), this.f4460q);
                BigInteger bigIntegerModMult = modMult(bigIntegerModPow, this.f4462x);
                if (modMult(bigIntegerModMult, bigIntegerModPow).equals(ECConstants.ONE)) {
                    return checkSqrt(new C4652Fp(this.f4460q, this.f4461r, bigIntegerModMult));
                }
                return checkSqrt(new C4652Fp(this.f4460q, this.f4461r, modMult(bigIntegerModMult, ECConstants.TWO.modPow(this.f4460q.shiftRight(2), this.f4460q))));
            }
            BigInteger bigIntegerShiftRight = this.f4460q.shiftRight(1);
            if (!this.f4462x.modPow(bigIntegerShiftRight, this.f4460q).equals(ECConstants.ONE)) {
                return null;
            }
            BigInteger bigInteger2 = this.f4462x;
            BigInteger bigIntegerModDouble = modDouble(modDouble(bigInteger2));
            BigInteger bigIntegerAdd2 = bigIntegerShiftRight.add(ECConstants.ONE);
            BigInteger bigIntegerSubtract = this.f4460q.subtract(ECConstants.ONE);
            Random random = new Random();
            while (true) {
                BigInteger bigInteger3 = new BigInteger(this.f4460q.bitLength(), random);
                if (bigInteger3.compareTo(this.f4460q) < 0 && modReduce(bigInteger3.multiply(bigInteger3).subtract(bigIntegerModDouble)).modPow(bigIntegerShiftRight, this.f4460q).equals(bigIntegerSubtract)) {
                    BigInteger[] bigIntegerArrLucasSequence = lucasSequence(bigInteger3, bigInteger2, bigIntegerAdd2);
                    BigInteger bigInteger4 = bigIntegerArrLucasSequence[0];
                    BigInteger bigInteger5 = bigIntegerArrLucasSequence[1];
                    if (modMult(bigInteger5, bigInteger5).equals(bigIntegerModDouble)) {
                        return new C4652Fp(this.f4460q, this.f4461r, modHalfAbs(bigInteger5));
                    }
                    if (!bigInteger4.equals(ECConstants.ONE) && !bigInteger4.equals(bigIntegerSubtract)) {
                        return null;
                    }
                }
            }
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement square() {
            BigInteger bigInteger = this.f4460q;
            BigInteger bigInteger2 = this.f4461r;
            BigInteger bigInteger3 = this.f4462x;
            return new C4652Fp(bigInteger, bigInteger2, modMult(bigInteger3, bigInteger3));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            BigInteger bigInteger = this.f4462x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            return new C4652Fp(this.f4460q, this.f4461r, modReduce(bigInteger.multiply(bigInteger).subtract(bigInteger2.multiply(bigInteger3))));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            BigInteger bigInteger = this.f4462x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            return new C4652Fp(this.f4460q, this.f4461r, modReduce(bigInteger.multiply(bigInteger).add(bigInteger2.multiply(bigInteger3))));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public ECFieldElement subtract(ECFieldElement eCFieldElement) {
            return new C4652Fp(this.f4460q, this.f4461r, modSubtract(this.f4462x, eCFieldElement.toBigInteger()));
        }

        @Override // org.bouncycastle.math.p042ec.ECFieldElement
        public BigInteger toBigInteger() {
            return this.f4462x;
        }
    }

    public abstract ECFieldElement add(ECFieldElement eCFieldElement);

    public abstract ECFieldElement addOne();

    public int bitLength() {
        return toBigInteger().bitLength();
    }

    public abstract ECFieldElement divide(ECFieldElement eCFieldElement);

    public byte[] getEncoded() {
        return BigIntegers.asUnsignedByteArray((getFieldSize() + 7) / 8, toBigInteger());
    }

    public abstract String getFieldName();

    public abstract int getFieldSize();

    public abstract ECFieldElement invert();

    public boolean isOne() {
        return bitLength() == 1;
    }

    public boolean isZero() {
        return toBigInteger().signum() == 0;
    }

    public abstract ECFieldElement multiply(ECFieldElement eCFieldElement);

    public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiply(eCFieldElement).subtract(eCFieldElement2.multiply(eCFieldElement3));
    }

    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiply(eCFieldElement).add(eCFieldElement2.multiply(eCFieldElement3));
    }

    public abstract ECFieldElement negate();

    public abstract ECFieldElement sqrt();

    public abstract ECFieldElement square();

    public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return square().subtract(eCFieldElement.multiply(eCFieldElement2));
    }

    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return square().add(eCFieldElement.multiply(eCFieldElement2));
    }

    public ECFieldElement squarePow(int i) {
        ECFieldElement eCFieldElementSquare = this;
        for (int i2 = 0; i2 < i; i2++) {
            eCFieldElementSquare = eCFieldElementSquare.square();
        }
        return eCFieldElementSquare;
    }

    public abstract ECFieldElement subtract(ECFieldElement eCFieldElement);

    public boolean testBitZero() {
        return toBigInteger().testBit(0);
    }

    public abstract BigInteger toBigInteger();

    public String toString() {
        return toBigInteger().toString(16);
    }
}
