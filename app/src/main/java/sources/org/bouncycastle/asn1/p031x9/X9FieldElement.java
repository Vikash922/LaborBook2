package org.bouncycastle.asn1.p031x9;

import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.math.p042ec.ECFieldElement;

/* JADX INFO: loaded from: classes5.dex */
public class X9FieldElement extends ASN1Object {
    private static X9IntegerConverter converter = new X9IntegerConverter();

    /* JADX INFO: renamed from: f */
    protected ECFieldElement f3858f;

    public X9FieldElement(ECFieldElement eCFieldElement) {
        this.f3858f = eCFieldElement;
    }

    public ECFieldElement getValue() {
        return this.f3858f;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DEROctetString(converter.integerToBytes(this.f3858f.toBigInteger(), converter.getByteLength(this.f3858f)));
    }
}
