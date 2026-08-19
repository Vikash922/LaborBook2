package org.bouncycastle.oer.its;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;

/* JADX INFO: loaded from: classes3.dex */
public class EccP384CurvePoint extends EccCurvePoint {
    public static final int compressedY0 = 2;
    public static final int compressedY1 = 3;
    public static final int fill = 1;
    public static final int uncompressedP384 = 4;
    public static final int xOnly = 0;
    private final int choice;
    private final ASN1Encodable value;

    public static class Builder {
        private int choice;
        private ASN1Encodable value;

        /* JADX INFO: Access modifiers changed from: private */
        public EccP384CurvePoint createEccP384CurvePoint() {
            return new EccP384CurvePoint(this.choice, this.value);
        }

        public EccP384CurvePoint createCompressedY0(BigInteger bigInteger) {
            this.choice = 2;
            throw new IllegalStateException("not fully implemented.");
        }

        public EccP384CurvePoint createCompressedY1(BigInteger bigInteger) {
            this.choice = 3;
            throw new IllegalStateException("not fully implemented.");
        }

        public EccP384CurvePoint createFill() {
            this.choice = 1;
            this.value = DERNull.INSTANCE;
            return createEccP384CurvePoint();
        }

        public EccP384CurvePoint createUncompressedP384(BigInteger bigInteger, BigInteger bigInteger2) {
            this.choice = 4;
            this.value = new DERSequence(new ASN1Encodable[]{new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger)), new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger2))});
            return createEccP384CurvePoint();
        }

        public EccP384CurvePoint createXOnly(BigInteger bigInteger) {
            this.choice = 0;
            this.value = new DEROctetString(BigIntegers.asUnsignedByteArray(bigInteger));
            return createEccP384CurvePoint();
        }

        Builder setChoice(int i) {
            this.choice = i;
            return this;
        }

        Builder setValue(ASN1Encodable aSN1Encodable) {
            this.value = aSN1Encodable;
            return this;
        }
    }

    public EccP384CurvePoint(int i, ASN1Encodable aSN1Encodable) {
        this.choice = i;
        this.value = aSN1Encodable;
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.bouncycastle.oer.its.EccP384CurvePoint getInstance(java.lang.Object r3) {
        /*
            boolean r0 = r3 instanceof org.bouncycastle.oer.its.EccP384CurvePoint
            if (r0 == 0) goto L7
            org.bouncycastle.oer.its.EccP384CurvePoint r3 = (org.bouncycastle.oer.its.EccP384CurvePoint) r3
            return r3
        L7:
            org.bouncycastle.asn1.ASN1TaggedObject r3 = org.bouncycastle.asn1.ASN1TaggedObject.getInstance(r3)
            int r0 = r3.getTagNo()
            if (r0 == 0) goto L49
            r1 = 1
            if (r0 == r1) goto L40
            r1 = 2
            if (r0 == r1) goto L49
            r1 = 3
            if (r0 == r1) goto L49
            r1 = 4
            if (r0 != r1) goto L26
            org.bouncycastle.asn1.ASN1Primitive r0 = r3.getObject()
            org.bouncycastle.asn1.ASN1Sequence r0 = org.bouncycastle.asn1.ASN1Sequence.getInstance(r0)
            goto L51
        L26:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "unknown tag "
            r1.<init>(r2)
            int r3 = r3.getTagNo()
            java.lang.StringBuilder r3 = r1.append(r3)
            java.lang.String r3 = r3.toString()
            r0.<init>(r3)
            throw r0
        L40:
            org.bouncycastle.asn1.ASN1Primitive r0 = r3.getObject()
            org.bouncycastle.asn1.ASN1Null r0 = org.bouncycastle.asn1.ASN1Null.getInstance(r0)
            goto L51
        L49:
            org.bouncycastle.asn1.ASN1Primitive r0 = r3.getObject()
            org.bouncycastle.asn1.ASN1OctetString r0 = org.bouncycastle.asn1.ASN1OctetString.getInstance(r0)
        L51:
            org.bouncycastle.oer.its.EccP384CurvePoint$Builder r1 = new org.bouncycastle.oer.its.EccP384CurvePoint$Builder
            r1.<init>()
            int r3 = r3.getTagNo()
            org.bouncycastle.oer.its.EccP384CurvePoint$Builder r3 = r1.setChoice(r3)
            org.bouncycastle.oer.its.EccP384CurvePoint$Builder r3 = r3.setValue(r0)
            org.bouncycastle.oer.its.EccP384CurvePoint r3 = org.bouncycastle.oer.its.EccP384CurvePoint.Builder.access$000(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.oer.its.EccP384CurvePoint.getInstance(java.lang.Object):org.bouncycastle.oer.its.EccP384CurvePoint");
    }

    public int getChoice() {
        return this.choice;
    }

    @Override // org.bouncycastle.oer.its.EccCurvePoint
    public byte[] getEncodedPoint() {
        byte[] bArr;
        int i = this.choice;
        if (i == 0) {
            throw new IllegalStateException("x Only not implemented");
        }
        if (i == 2) {
            byte[] octets = DEROctetString.getInstance(this.value).getOctets();
            bArr = new byte[octets.length + 1];
            bArr[0] = 2;
            System.arraycopy(octets, 0, bArr, 1, octets.length);
        } else {
            if (i != 3) {
                if (i != 4) {
                    throw new IllegalStateException("unknown point choice");
                }
                ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(this.value);
                return Arrays.concatenate(new byte[]{4}, DEROctetString.getInstance(aSN1Sequence.getObjectAt(0)).getOctets(), DEROctetString.getInstance(aSN1Sequence.getObjectAt(1)).getOctets());
            }
            byte[] octets2 = DEROctetString.getInstance(this.value).getOctets();
            bArr = new byte[octets2.length + 1];
            bArr[0] = 3;
            System.arraycopy(octets2, 0, bArr, 1, octets2.length);
        }
        return bArr;
    }

    public ASN1Encodable getValue() {
        return this.value;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERTaggedObject(this.choice, this.value);
    }
}
