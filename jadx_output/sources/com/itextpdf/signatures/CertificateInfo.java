package com.itextpdf.signatures;

import androidx.exifinterface.media.ExifInterface;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.svg.SvgConstants;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;

/* JADX INFO: loaded from: classes6.dex */
public class CertificateInfo {

    public static class X500Name {

        /* JADX INFO: renamed from: C */
        public static final ASN1ObjectIdentifier f3278C;

        /* JADX INFO: renamed from: CN */
        public static final ASN1ObjectIdentifier f3279CN;

        /* JADX INFO: renamed from: DC */
        public static final ASN1ObjectIdentifier f3280DC;
        public static final Map<ASN1ObjectIdentifier, String> DefaultSymbols;

        /* JADX INFO: renamed from: E */
        public static final ASN1ObjectIdentifier f3281E;
        public static final ASN1ObjectIdentifier EmailAddress;
        public static final ASN1ObjectIdentifier GENERATION;
        public static final ASN1ObjectIdentifier GIVENNAME;
        public static final ASN1ObjectIdentifier INITIALS;

        /* JADX INFO: renamed from: L */
        public static final ASN1ObjectIdentifier f3282L;

        /* JADX INFO: renamed from: O */
        public static final ASN1ObjectIdentifier f3283O;

        /* JADX INFO: renamed from: OU */
        public static final ASN1ObjectIdentifier f3284OU;

        /* JADX INFO: renamed from: SN */
        public static final ASN1ObjectIdentifier f3285SN;

        /* JADX INFO: renamed from: ST */
        public static final ASN1ObjectIdentifier f3286ST;
        public static final ASN1ObjectIdentifier SURNAME;

        /* JADX INFO: renamed from: T */
        public static final ASN1ObjectIdentifier f3287T;
        public static final ASN1ObjectIdentifier UID;
        public static final ASN1ObjectIdentifier UNIQUE_IDENTIFIER;
        public Map<String, List<String>> values = new HashMap();

        static {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("2.5.4.6");
            f3278C = aSN1ObjectIdentifier;
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier("2.5.4.10");
            f3283O = aSN1ObjectIdentifier2;
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = new ASN1ObjectIdentifier("2.5.4.11");
            f3284OU = aSN1ObjectIdentifier3;
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = new ASN1ObjectIdentifier("2.5.4.12");
            f3287T = aSN1ObjectIdentifier4;
            ASN1ObjectIdentifier aSN1ObjectIdentifier5 = new ASN1ObjectIdentifier("2.5.4.3");
            f3279CN = aSN1ObjectIdentifier5;
            ASN1ObjectIdentifier aSN1ObjectIdentifier6 = new ASN1ObjectIdentifier("2.5.4.5");
            f3285SN = aSN1ObjectIdentifier6;
            ASN1ObjectIdentifier aSN1ObjectIdentifier7 = new ASN1ObjectIdentifier("2.5.4.7");
            f3282L = aSN1ObjectIdentifier7;
            ASN1ObjectIdentifier aSN1ObjectIdentifier8 = new ASN1ObjectIdentifier("2.5.4.8");
            f3286ST = aSN1ObjectIdentifier8;
            ASN1ObjectIdentifier aSN1ObjectIdentifier9 = new ASN1ObjectIdentifier("2.5.4.4");
            SURNAME = aSN1ObjectIdentifier9;
            ASN1ObjectIdentifier aSN1ObjectIdentifier10 = new ASN1ObjectIdentifier("2.5.4.42");
            GIVENNAME = aSN1ObjectIdentifier10;
            ASN1ObjectIdentifier aSN1ObjectIdentifier11 = new ASN1ObjectIdentifier("2.5.4.43");
            INITIALS = aSN1ObjectIdentifier11;
            ASN1ObjectIdentifier aSN1ObjectIdentifier12 = new ASN1ObjectIdentifier("2.5.4.44");
            GENERATION = aSN1ObjectIdentifier12;
            UNIQUE_IDENTIFIER = new ASN1ObjectIdentifier("2.5.4.45");
            ASN1ObjectIdentifier aSN1ObjectIdentifier13 = new ASN1ObjectIdentifier("1.2.840.113549.1.9.1");
            EmailAddress = aSN1ObjectIdentifier13;
            f3281E = aSN1ObjectIdentifier13;
            ASN1ObjectIdentifier aSN1ObjectIdentifier14 = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
            f3280DC = aSN1ObjectIdentifier14;
            ASN1ObjectIdentifier aSN1ObjectIdentifier15 = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
            UID = aSN1ObjectIdentifier15;
            HashMap map = new HashMap();
            DefaultSymbols = map;
            map.put(aSN1ObjectIdentifier, SvgConstants.Attributes.PATH_DATA_CURVE_TO);
            map.put(aSN1ObjectIdentifier2, "O");
            map.put(aSN1ObjectIdentifier4, "T");
            map.put(aSN1ObjectIdentifier3, "OU");
            map.put(aSN1ObjectIdentifier5, "CN");
            map.put(aSN1ObjectIdentifier7, "L");
            map.put(aSN1ObjectIdentifier8, "ST");
            map.put(aSN1ObjectIdentifier6, "SN");
            map.put(aSN1ObjectIdentifier13, ExifInterface.LONGITUDE_EAST);
            map.put(aSN1ObjectIdentifier14, "DC");
            map.put(aSN1ObjectIdentifier15, "UID");
            map.put(aSN1ObjectIdentifier9, "SURNAME");
            map.put(aSN1ObjectIdentifier10, "GIVENNAME");
            map.put(aSN1ObjectIdentifier11, "INITIALS");
            map.put(aSN1ObjectIdentifier12, "GENERATION");
        }

        public X500Name(ASN1Sequence aSN1Sequence) {
            Enumeration objects = aSN1Sequence.getObjects();
            while (objects.hasMoreElements()) {
                ASN1Set aSN1Set = (ASN1Set) objects.nextElement();
                for (int i = 0; i < aSN1Set.size(); i++) {
                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Set.getObjectAt(i);
                    String str = DefaultSymbols.get((ASN1ObjectIdentifier) aSN1Sequence2.getObjectAt(0));
                    if (str != null) {
                        List<String> arrayList = this.values.get(str);
                        if (arrayList == null) {
                            arrayList = new ArrayList<>();
                            this.values.put(str, arrayList);
                        }
                        arrayList.add(((ASN1String) aSN1Sequence2.getObjectAt(1)).getString());
                    }
                }
            }
        }

        public X500Name(String str) {
            X509NameTokenizer x509NameTokenizer = new X509NameTokenizer(str);
            while (x509NameTokenizer.hasMoreTokens()) {
                String strNextToken = x509NameTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException();
                }
                String upperCase = strNextToken.substring(0, iIndexOf).toUpperCase();
                String strSubstring = strNextToken.substring(iIndexOf + 1);
                List<String> arrayList = this.values.get(upperCase);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.values.put(upperCase, arrayList);
                }
                arrayList.add(strSubstring);
            }
        }

        public String getField(String str) {
            List<String> list = this.values.get(str);
            if (list == null) {
                return null;
            }
            return list.get(0);
        }

        public List<String> getFieldArray(String str) {
            return this.values.get(str);
        }

        public Map<String, List<String>> getFields() {
            return this.values;
        }

        public String toString() {
            return this.values.toString();
        }
    }

    public static class X509NameTokenizer {
        private StringBuffer buf = new StringBuffer();
        private int index = -1;
        private String oid;

        public X509NameTokenizer(String str) {
            this.oid = str;
        }

        public boolean hasMoreTokens() {
            return this.index != this.oid.length();
        }

        public String nextToken() {
            if (this.index == this.oid.length()) {
                return null;
            }
            int i = this.index + 1;
            this.buf.setLength(0);
            boolean z = false;
            boolean z2 = false;
            while (i != this.oid.length()) {
                char cCharAt = this.oid.charAt(i);
                if (cCharAt == '\"') {
                    if (z) {
                        this.buf.append(cCharAt);
                    } else {
                        z2 = !z2;
                    }
                } else if (z || z2) {
                    this.buf.append(cCharAt);
                } else {
                    if (cCharAt == '\\') {
                        z = true;
                    } else {
                        if (cCharAt == ',') {
                            break;
                        }
                        this.buf.append(cCharAt);
                    }
                    i++;
                }
                z = false;
                i++;
            }
            this.index = i;
            return this.buf.toString().trim();
        }
    }

    public static X500Name getIssuerFields(X509Certificate x509Certificate) {
        try {
            return new X500Name((ASN1Sequence) getIssuer(x509Certificate.getTBSCertificate()));
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public static ASN1Primitive getIssuer(byte[] bArr) {
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(bArr)).readObject();
            return (ASN1Primitive) aSN1Sequence.getObjectAt(aSN1Sequence.getObjectAt(0) instanceof ASN1TaggedObject ? 3 : 2);
        } catch (IOException e) {
            throw new PdfException(e);
        }
    }

    public static X500Name getSubjectFields(X509Certificate x509Certificate) {
        if (x509Certificate == null) {
            return null;
        }
        try {
            return new X500Name((ASN1Sequence) getSubject(x509Certificate.getTBSCertificate()));
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public static ASN1Primitive getSubject(byte[] bArr) {
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(bArr)).readObject();
            return (ASN1Primitive) aSN1Sequence.getObjectAt(aSN1Sequence.getObjectAt(0) instanceof ASN1TaggedObject ? 5 : 4);
        } catch (IOException e) {
            throw new PdfException(e);
        }
    }
}
