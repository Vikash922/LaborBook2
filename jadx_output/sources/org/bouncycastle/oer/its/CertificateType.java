package org.bouncycastle.oer.its;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Enumerated;

/* JADX INFO: loaded from: classes3.dex */
public class CertificateType extends ASN1Enumerated {
    public static final CertificateType Explicit = new CertificateType(0);
    public static final CertificateType Implicit = new CertificateType(1);

    protected CertificateType(int i) {
        super(i);
    }

    public static CertificateType getInstance(Object obj) {
        if (obj instanceof CertificateType) {
            return (CertificateType) obj;
        }
        BigInteger value = ASN1Enumerated.getInstance(obj).getValue();
        int iIntValue = value.intValue();
        if (iIntValue == 0) {
            return Explicit;
        }
        if (iIntValue == 1) {
            return Implicit;
        }
        throw new IllegalArgumentException("unaccounted enum value " + value);
    }
}
