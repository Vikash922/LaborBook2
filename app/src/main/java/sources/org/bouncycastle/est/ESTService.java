package org.bouncycastle.est;

import com.google.common.net.HttpHeaders;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.itextpdf.styledxmlparser.resolver.resource.ResourceResolver;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.cert.X509CRLHolder;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cmc.CMCException;
import org.bouncycastle.cmc.SimplePKIResponse;
import org.bouncycastle.operator.ContentSigner;
import org.bouncycastle.pkcs.PKCS10CertificationRequest;
import org.bouncycastle.pkcs.PKCS10CertificationRequestBuilder;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;
import org.bouncycastle.util.encoders.Base64;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public class ESTService {
    protected static final String CACERTS = "/cacerts";
    protected static final String CSRATTRS = "/csrattrs";
    protected static final String FULLCMC = "/fullcmc";
    protected static final String SERVERGEN = "/serverkeygen";
    protected static final String SIMPLE_ENROLL = "/simpleenroll";
    protected static final String SIMPLE_REENROLL = "/simplereenroll";
    protected static final Set<String> illegalParts;
    private static final Pattern pathInValid;
    private final ESTClientProvider clientProvider;
    private final String server;

    static {
        HashSet hashSet = new HashSet();
        illegalParts = hashSet;
        hashSet.add(CACERTS.substring(1));
        hashSet.add(SIMPLE_ENROLL.substring(1));
        hashSet.add(SIMPLE_REENROLL.substring(1));
        hashSet.add(FULLCMC.substring(1));
        hashSet.add(SERVERGEN.substring(1));
        hashSet.add(CSRATTRS.substring(1));
        pathInValid = Pattern.compile("^[0-9a-zA-Z_\\-.~!$&'()*+,;:=]+");
    }

    ESTService(String str, String str2, ESTClientProvider eSTClientProvider) {
        StringBuilder sbAppend;
        String strVerifyLabel;
        String strVerifyServer = verifyServer(str);
        if (str2 != null) {
            strVerifyLabel = verifyLabel(str2);
            sbAppend = new StringBuilder("https://").append(strVerifyServer).append("/.well-known/est/");
        } else {
            sbAppend = new StringBuilder("https://").append(strVerifyServer);
            strVerifyLabel = "/.well-known/est";
        }
        this.server = sbAppend.append(strVerifyLabel).toString();
        this.clientProvider = eSTClientProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String annotateRequest(byte[] bArr) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        int length = 0;
        do {
            int i = length + 48;
            if (i < bArr.length) {
                printWriter.print(Base64.toBase64String(bArr, length, 48));
                length = i;
            } else {
                printWriter.print(Base64.toBase64String(bArr, length, bArr.length - length));
                length = bArr.length;
            }
            printWriter.print('\n');
        } while (length < bArr.length);
        printWriter.flush();
        return stringWriter.toString();
    }

    public static X509CertificateHolder[] storeToArray(Store<X509CertificateHolder> store) {
        return storeToArray(store, null);
    }

    public static X509CertificateHolder[] storeToArray(Store<X509CertificateHolder> store, Selector<X509CertificateHolder> selector) {
        Collection<X509CertificateHolder> matches = store.getMatches(selector);
        return (X509CertificateHolder[]) matches.toArray(new X509CertificateHolder[matches.size()]);
    }

    private String verifyLabel(String str) {
        while (str.endsWith(RemoteSettings.FORWARD_SLASH_STRING) && str.length() > 0) {
            str = str.substring(0, str.length() - 1);
        }
        while (str.startsWith(RemoteSettings.FORWARD_SLASH_STRING) && str.length() > 0) {
            str = str.substring(1);
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("Label set but after trimming '/' is not zero length string.");
        }
        if (!pathInValid.matcher(str).matches()) {
            throw new IllegalArgumentException("Server path " + str + " contains invalid characters");
        }
        if (illegalParts.contains(str)) {
            throw new IllegalArgumentException("Label " + str + " is a reserved path segment.");
        }
        return str;
    }

    private String verifyServer(String str) {
        while (str.endsWith(RemoteSettings.FORWARD_SLASH_STRING) && str.length() > 0) {
            try {
                str = str.substring(0, str.length() - 1);
            } catch (Exception e) {
                if (e instanceof IllegalArgumentException) {
                    throw ((IllegalArgumentException) e);
                }
                throw new IllegalArgumentException("Scheme and host is invalid: " + e.getMessage(), e);
            }
        }
        if (str.contains("://")) {
            throw new IllegalArgumentException("Server contains scheme, must only be <dnsname/ipaddress>:port, https:// will be added arbitrarily.");
        }
        URL url = new URL("https://" + str);
        if (url.getPath().length() != 0 && !url.getPath().equals(RemoteSettings.FORWARD_SLASH_STRING)) {
            throw new IllegalArgumentException("Server contains path, must only be <dnsname/ipaddress>:port, a path of '/.well-known/est/<label>' will be added arbitrarily.");
        }
        return str;
    }

    public CACertsResponse getCACerts() throws ESTException {
        Store<X509CertificateHolder> store;
        Store<X509CRLHolder> store2;
        Store<X509CRLHolder> cRLs;
        Store<X509CertificateHolder> certificates;
        ESTResponse eSTResponse = null;
        try {
            URL url = new URL(this.server + CACERTS);
            ESTClient eSTClientMakeClient = this.clientProvider.makeClient();
            ESTRequest eSTRequestBuild = new ESTRequestBuilder("GET", url).withClient(eSTClientMakeClient).build();
            ESTResponse eSTResponseDoRequest = eSTClientMakeClient.doRequest(eSTRequestBuild);
            try {
                if (eSTResponseDoRequest.getStatusCode() == 200) {
                    String firstValue = eSTResponseDoRequest.getHeaders().getFirstValue(HttpHeaders.CONTENT_TYPE);
                    if (firstValue == null || !firstValue.startsWith("application/pkcs7-mime")) {
                        throw new ESTException("Response : " + url.toString() + "Expecting application/pkcs7-mime " + (firstValue != null ? " got " + firstValue : " but was not present."), null, eSTResponseDoRequest.getStatusCode(), eSTResponseDoRequest.getInputStream());
                    }
                    try {
                        if (eSTResponseDoRequest.getContentLength() == null || eSTResponseDoRequest.getContentLength().longValue() <= 0) {
                            cRLs = null;
                            certificates = null;
                        } else {
                            SimplePKIResponse simplePKIResponse = new SimplePKIResponse(ContentInfo.getInstance((ASN1Sequence) new ASN1InputStream(eSTResponseDoRequest.getInputStream()).readObject()));
                            certificates = simplePKIResponse.getCertificates();
                            cRLs = simplePKIResponse.getCRLs();
                        }
                        store2 = cRLs;
                        store = certificates;
                    } catch (Throwable th) {
                        throw new ESTException("Decoding CACerts: " + url.toString() + StringUtils.SPACE + th.getMessage(), th, eSTResponseDoRequest.getStatusCode(), eSTResponseDoRequest.getInputStream());
                    }
                } else {
                    if (eSTResponseDoRequest.getStatusCode() != 204) {
                        throw new ESTException("Get CACerts: " + url.toString(), null, eSTResponseDoRequest.getStatusCode(), eSTResponseDoRequest.getInputStream());
                    }
                    store = null;
                    store2 = null;
                }
                CACertsResponse cACertsResponse = new CACertsResponse(store, store2, eSTRequestBuild, eSTResponseDoRequest.getSource(), this.clientProvider.isTrusted());
                if (eSTResponseDoRequest != null) {
                    try {
                        eSTResponseDoRequest.close();
                        e = null;
                    } catch (Exception e) {
                        e = e;
                    }
                } else {
                    e = null;
                }
                if (e == null) {
                    return cACertsResponse;
                }
                if (e instanceof ESTException) {
                    throw ((ESTException) e);
                }
                throw new ESTException("Get CACerts: " + url.toString(), e, eSTResponseDoRequest.getStatusCode(), null);
            } catch (Throwable th2) {
                th = th2;
                eSTResponse = eSTResponseDoRequest;
                try {
                    if (th instanceof ESTException) {
                        throw th;
                    }
                    throw new ESTException(th.getMessage(), th);
                } catch (Throwable th3) {
                    if (eSTResponse != null) {
                        try {
                            eSTResponse.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.est.CSRRequestResponse getCSRAttributes() throws org.bouncycastle.est.ESTException {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.est.ESTService.getCSRAttributes():org.bouncycastle.est.CSRRequestResponse");
    }

    protected EnrollmentResponse handleEnrollResponse(ESTResponse eSTResponse) throws IOException {
        long time;
        ESTRequest originalRequest = eSTResponse.getOriginalRequest();
        if (eSTResponse.getStatusCode() != 202) {
            if (eSTResponse.getStatusCode() != 200) {
                throw new ESTException("Simple Enroll: " + originalRequest.getURL().toString(), null, eSTResponse.getStatusCode(), eSTResponse.getInputStream());
            }
            try {
                return new EnrollmentResponse(new SimplePKIResponse(ContentInfo.getInstance(new ASN1InputStream(eSTResponse.getInputStream()).readObject())).getCertificates(), -1L, null, eSTResponse.getSource());
            } catch (CMCException e) {
                throw new ESTException(e.getMessage(), e.getCause());
            }
        }
        String header = eSTResponse.getHeader(HttpHeaders.RETRY_AFTER);
        if (header == null) {
            throw new ESTException("Got Status 202 but not Retry-After header from: " + originalRequest.getURL().toString());
        }
        try {
            try {
                time = System.currentTimeMillis() + (Long.parseLong(header) * 1000);
            } catch (Exception e2) {
                throw new ESTException("Unable to parse Retry-After header:" + originalRequest.getURL().toString() + StringUtils.SPACE + e2.getMessage(), null, eSTResponse.getStatusCode(), eSTResponse.getInputStream());
            }
        } catch (NumberFormatException unused) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            time = simpleDateFormat.parse(header).getTime();
        }
        return new EnrollmentResponse(null, time, originalRequest, eSTResponse.getSource());
    }

    public EnrollmentResponse simpleEnroll(EnrollmentResponse enrollmentResponse) throws Exception {
        if (!this.clientProvider.isTrusted()) {
            throw new IllegalStateException("No trust anchors.");
        }
        ESTResponse eSTResponseDoRequest = null;
        try {
            ESTClient eSTClientMakeClient = this.clientProvider.makeClient();
            eSTResponseDoRequest = eSTClientMakeClient.doRequest(new ESTRequestBuilder(enrollmentResponse.getRequestToRetry()).withClient(eSTClientMakeClient).build());
            return handleEnrollResponse(eSTResponseDoRequest);
        } catch (Throwable th) {
            try {
                if (th instanceof ESTException) {
                    throw th;
                }
                throw new ESTException(th.getMessage(), th);
            } finally {
                if (eSTResponseDoRequest != null) {
                    eSTResponseDoRequest.close();
                }
            }
        }
    }

    public EnrollmentResponse simpleEnroll(boolean z, PKCS10CertificationRequest pKCS10CertificationRequest, ESTAuth eSTAuth) throws IOException {
        if (!this.clientProvider.isTrusted()) {
            throw new IllegalStateException("No trust anchors.");
        }
        ESTResponse eSTResponseDoRequest = null;
        try {
            byte[] bytes = annotateRequest(pKCS10CertificationRequest.getEncoded()).getBytes();
            URL url = new URL(this.server + (z ? SIMPLE_REENROLL : SIMPLE_ENROLL));
            ESTClient eSTClientMakeClient = this.clientProvider.makeClient();
            ESTRequestBuilder eSTRequestBuilderWithClient = new ESTRequestBuilder("POST", url).withData(bytes).withClient(eSTClientMakeClient);
            eSTRequestBuilderWithClient.addHeader(HttpHeaders.CONTENT_TYPE, "application/pkcs10");
            eSTRequestBuilderWithClient.addHeader(HttpHeaders.CONTENT_LENGTH, "" + bytes.length);
            eSTRequestBuilderWithClient.addHeader("Content-Transfer-Encoding", ResourceResolver.BASE64_IDENTIFIER);
            if (eSTAuth != null) {
                eSTAuth.applyAuth(eSTRequestBuilderWithClient);
            }
            eSTResponseDoRequest = eSTClientMakeClient.doRequest(eSTRequestBuilderWithClient.build());
            return handleEnrollResponse(eSTResponseDoRequest);
        } catch (Throwable th) {
            try {
                if (th instanceof ESTException) {
                    throw th;
                }
                throw new ESTException(th.getMessage(), th);
            } finally {
                if (eSTResponseDoRequest != null) {
                    eSTResponseDoRequest.close();
                }
            }
        }
    }

    public EnrollmentResponse simpleEnrollPoP(boolean z, final PKCS10CertificationRequestBuilder pKCS10CertificationRequestBuilder, final ContentSigner contentSigner, ESTAuth eSTAuth) throws IOException {
        if (!this.clientProvider.isTrusted()) {
            throw new IllegalStateException("No trust anchors.");
        }
        ESTResponse eSTResponseDoRequest = null;
        try {
            URL url = new URL(this.server + (z ? SIMPLE_REENROLL : SIMPLE_ENROLL));
            ESTClient eSTClientMakeClient = this.clientProvider.makeClient();
            ESTRequestBuilder eSTRequestBuilderWithConnectionListener = new ESTRequestBuilder("POST", url).withClient(eSTClientMakeClient).withConnectionListener(new ESTSourceConnectionListener() { // from class: org.bouncycastle.est.ESTService.1
                @Override // org.bouncycastle.est.ESTSourceConnectionListener
                public ESTRequest onConnection(Source source, ESTRequest eSTRequest) throws IOException {
                    if (source instanceof TLSUniqueProvider) {
                        TLSUniqueProvider tLSUniqueProvider = (TLSUniqueProvider) source;
                        if (tLSUniqueProvider.isTLSUniqueAvailable()) {
                            PKCS10CertificationRequestBuilder pKCS10CertificationRequestBuilder2 = new PKCS10CertificationRequestBuilder(pKCS10CertificationRequestBuilder);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            pKCS10CertificationRequestBuilder2.setAttribute(PKCSObjectIdentifiers.pkcs_9_at_challengePassword, new DERPrintableString(Base64.toBase64String(tLSUniqueProvider.getTLSUnique())));
                            byteArrayOutputStream.write(ESTService.this.annotateRequest(pKCS10CertificationRequestBuilder2.build(contentSigner).getEncoded()).getBytes());
                            byteArrayOutputStream.flush();
                            ESTRequestBuilder eSTRequestBuilderWithData = new ESTRequestBuilder(eSTRequest).withData(byteArrayOutputStream.toByteArray());
                            eSTRequestBuilderWithData.setHeader(HttpHeaders.CONTENT_TYPE, "application/pkcs10");
                            eSTRequestBuilderWithData.setHeader("Content-Transfer-Encoding", ResourceResolver.BASE64_IDENTIFIER);
                            eSTRequestBuilderWithData.setHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(byteArrayOutputStream.size()));
                            return eSTRequestBuilderWithData.build();
                        }
                    }
                    throw new IOException("Source does not supply TLS unique.");
                }
            });
            if (eSTAuth != null) {
                eSTAuth.applyAuth(eSTRequestBuilderWithConnectionListener);
            }
            eSTResponseDoRequest = eSTClientMakeClient.doRequest(eSTRequestBuilderWithConnectionListener.build());
            return handleEnrollResponse(eSTResponseDoRequest);
        } catch (Throwable th) {
            try {
                if (th instanceof ESTException) {
                    throw th;
                }
                throw new ESTException(th.getMessage(), th);
            } finally {
                if (eSTResponseDoRequest != null) {
                    eSTResponseDoRequest.close();
                }
            }
        }
    }
}
