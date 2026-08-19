package org.bouncycastle.pqc.asn1;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class ParSet extends ASN1Object {

    /* JADX INFO: renamed from: h */
    private int[] f4596h;

    /* JADX INFO: renamed from: k */
    private int[] f4597k;

    /* JADX INFO: renamed from: t */
    private int f4598t;

    /* JADX INFO: renamed from: w */
    private int[] f4599w;

    public ParSet(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        this.f4598t = i;
        this.f4596h = iArr;
        this.f4599w = iArr2;
        this.f4597k = iArr3;
    }

    private ParSet(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 4) {
            throw new IllegalArgumentException("sie of seqOfParams = " + aSN1Sequence.size());
        }
        this.f4598t = checkBigIntegerInIntRangeAndPositive(aSN1Sequence.getObjectAt(0));
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(2);
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        if (aSN1Sequence2.size() != this.f4598t || aSN1Sequence3.size() != this.f4598t || aSN1Sequence4.size() != this.f4598t) {
            throw new IllegalArgumentException("invalid size of sequences");
        }
        this.f4596h = new int[aSN1Sequence2.size()];
        this.f4599w = new int[aSN1Sequence3.size()];
        this.f4597k = new int[aSN1Sequence4.size()];
        for (int i = 0; i < this.f4598t; i++) {
            this.f4596h[i] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence2.getObjectAt(i));
            this.f4599w[i] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence3.getObjectAt(i));
            this.f4597k[i] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence4.getObjectAt(i));
        }
    }

    private static int checkBigIntegerInIntRangeAndPositive(ASN1Encodable aSN1Encodable) {
        int iIntValueExact = ((ASN1Integer) aSN1Encodable).intValueExact();
        if (iIntValueExact > 0) {
            return iIntValueExact;
        }
        throw new IllegalArgumentException("BigInteger not in Range: " + iIntValueExact);
    }

    public static ParSet getInstance(Object obj) {
        if (obj instanceof ParSet) {
            return (ParSet) obj;
        }
        if (obj != null) {
            return new ParSet(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int[] getH() {
        return Arrays.clone(this.f4596h);
    }

    public int[] getK() {
        return Arrays.clone(this.f4597k);
    }

    public int getT() {
        return this.f4598t;
    }

    public int[] getW() {
        return Arrays.clone(this.f4599w);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        for (int i = 0; i < this.f4596h.length; i++) {
            aSN1EncodableVector.add(new ASN1Integer(this.f4596h[i]));
            aSN1EncodableVector2.add(new ASN1Integer(this.f4599w[i]));
            aSN1EncodableVector3.add(new ASN1Integer(this.f4597k[i]));
        }
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        aSN1EncodableVector4.add(new ASN1Integer(this.f4598t));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector2));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector3));
        return new DERSequence(aSN1EncodableVector4);
    }
}
