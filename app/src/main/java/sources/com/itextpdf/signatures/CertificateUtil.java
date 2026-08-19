package com.itextpdf.signatures;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URL;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;

/* JADX INFO: loaded from: classes6.dex */
public class CertificateUtil {
    public static CRL getCRL(X509Certificate x509Certificate) throws IOException, CertificateException, CRLException {
        return getCRL(getCRLURL(x509Certificate));
    }

    public static String getCRLURL(X509Certificate x509Certificate) {
        ASN1Primitive extensionValue;
        try {
            extensionValue = getExtensionValue(x509Certificate, Extension.cRLDistributionPoints.getId());
        } catch (IOException unused) {
            extensionValue = null;
        }
        if (extensionValue == null) {
            return null;
        }
        for (DistributionPoint distributionPoint : CRLDistPoint.getInstance(extensionValue).getDistributionPoints()) {
            DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
            if (distributionPoint2.getType() == 0) {
                for (GeneralName generalName : ((GeneralNames) distributionPoint2.getName()).getNames()) {
                    if (generalName.getTagNo() == 6) {
                        return DERIA5String.getInstance((ASN1TaggedObject) generalName.toASN1Primitive(), false).getString();
                    }
                }
            }
        }
        return null;
    }

    public static CRL getCRL(String str) throws IOException, CertificateException, CRLException {
        if (str == null) {
            return null;
        }
        return SignUtils.parseCrlFromStream(FirebasePerfUrlConnection.openStream(new URL(str)));
    }

    public static String getOCSPURL(X509Certificate x509Certificate) {
        try {
            ASN1Primitive extensionValue = getExtensionValue(x509Certificate, Extension.authorityInfoAccess.getId());
            if (extensionValue == null) {
                return null;
            }
            ASN1Sequence aSN1Sequence = (ASN1Sequence) extensionValue;
            for (int i = 0; i < aSN1Sequence.size(); i++) {
                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(i);
                if (aSN1Sequence2.size() == 2 && (aSN1Sequence2.getObjectAt(0) instanceof ASN1ObjectIdentifier) && SecurityIDs.ID_OCSP.equals(((ASN1ObjectIdentifier) aSN1Sequence2.getObjectAt(0)).getId())) {
                    String stringFromGeneralName = getStringFromGeneralName((ASN1Primitive) aSN1Sequence2.getObjectAt(1));
                    return stringFromGeneralName == null ? "" : stringFromGeneralName;
                }
            }
        } catch (IOException unused) {
        }
        return null;
    }

    public static String getTSAURL(X509Certificate x509Certificate) {
        byte[] extensionValueByOid = SignUtils.getExtensionValueByOid(x509Certificate, SecurityIDs.ID_TSA);
        if (extensionValueByOid == null) {
            return null;
        }
        try {
            return getStringFromGeneralName(ASN1Sequence.getInstance(ASN1Primitive.fromByteArray(((DEROctetString) ASN1Primitive.fromByteArray(extensionValueByOid)).getOctets())).getObjectAt(1).toASN1Primitive());
        } catch (IOException unused) {
            return null;
        }
    }

    private static ASN1Primitive getExtensionValue(X509Certificate x509Certificate, String str) throws IOException {
        byte[] extensionValueByOid = SignUtils.getExtensionValueByOid(x509Certificate, str);
        if (extensionValueByOid == null) {
            return null;
        }
        return new ASN1InputStream(new ByteArrayInputStream(((ASN1OctetString) new ASN1InputStream(new ByteArrayInputStream(extensionValueByOid)).readObject()).getOctets())).readObject();
    }

    private static String getStringFromGeneralName(ASN1Primitive aSN1Primitive) throws IOException {
        return new String(ASN1OctetString.getInstance((ASN1TaggedObject) aSN1Primitive, false).getOctets(), "ISO-8859-1");
    }
}
