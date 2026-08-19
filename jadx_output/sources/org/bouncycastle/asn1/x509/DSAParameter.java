package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;

/* JADX INFO: loaded from: classes5.dex */
public class DSAParameter extends ASN1Object {

    /* JADX INFO: renamed from: g */
    ASN1Integer f3829g;

    /* JADX INFO: renamed from: p */
    ASN1Integer f3830p;

    /* JADX INFO: renamed from: q */
    ASN1Integer f3831q;

    public DSAParameter(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f3830p = new ASN1Integer(bigInteger);
        this.f3831q = new ASN1Integer(bigInteger2);
        this.f3829g = new ASN1Integer(bigInteger3);
    }

    private DSAParameter(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f3830p = ASN1Integer.getInstance(objects.nextElement());
        this.f3831q = ASN1Integer.getInstance(objects.nextElement());
        this.f3829g = ASN1Integer.getInstance(objects.nextElement());
    }

    public static DSAParameter getInstance(Object obj) {
        if (obj instanceof DSAParameter) {
            return (DSAParameter) obj;
        }
        if (obj != null) {
            return new DSAParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DSAParameter getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getG() {
        return this.f3829g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f3830p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f3831q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(3);
        aSN1EncodableVector.add(this.f3830p);
        aSN1EncodableVector.add(this.f3831q);
        aSN1EncodableVector.add(this.f3829g);
        return new DERSequence(aSN1EncodableVector);
    }
}
