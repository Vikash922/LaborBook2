package com.itextpdf.signatures;

import com.itextpdf.commons.utils.Base64;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.esf.OtherHashAlgAndValue;
import org.bouncycastle.asn1.esf.SigPolicyQualifierInfo;
import org.bouncycastle.asn1.esf.SignaturePolicyId;
import org.bouncycastle.asn1.esf.SignaturePolicyIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;

/* JADX INFO: loaded from: classes6.dex */
public class SignaturePolicyInfo {
    private String policyDigestAlgorithm;
    private byte[] policyHash;
    private String policyIdentifier;
    private String policyUri;

    public SignaturePolicyInfo(String str, byte[] bArr, String str2, String str3) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Policy identifier cannot be null");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("Policy hash cannot be null");
        }
        if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("Policy digest algorithm cannot be null");
        }
        this.policyIdentifier = str;
        this.policyHash = bArr;
        this.policyDigestAlgorithm = str2;
        this.policyUri = str3;
    }

    public SignaturePolicyInfo(String str, String str2, String str3, String str4) {
        this(str, str2 != null ? Base64.decode(str2) : null, str3, str4);
    }

    public String getPolicyIdentifier() {
        return this.policyIdentifier;
    }

    public byte[] getPolicyHash() {
        return this.policyHash;
    }

    public String getPolicyDigestAlgorithm() {
        return this.policyDigestAlgorithm;
    }

    public String getPolicyUri() {
        return this.policyUri;
    }

    SignaturePolicyIdentifier toSignaturePolicyIdentifier() {
        String allowedDigest = DigestAlgorithms.getAllowedDigest(this.policyDigestAlgorithm);
        if (allowedDigest == null || allowedDigest.length() == 0) {
            throw new IllegalArgumentException("Invalid policy hash algorithm");
        }
        String str = this.policyUri;
        return new SignaturePolicyIdentifier(new SignaturePolicyId(ASN1ObjectIdentifier.getInstance(new ASN1ObjectIdentifier(this.policyIdentifier.replace("urn:oid:", ""))), new OtherHashAlgAndValue(new AlgorithmIdentifier(new ASN1ObjectIdentifier(allowedDigest)), new DEROctetString(this.policyHash)), SignUtils.createSigPolicyQualifiers((str == null || str.length() <= 0) ? null : new SigPolicyQualifierInfo(PKCSObjectIdentifiers.id_spq_ets_uri, new DERIA5String(this.policyUri)))));
    }
}
