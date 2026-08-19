package com.itextpdf.signatures;

import java.net.MalformedURLException;
import java.net.URL;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CrlClientOnline implements ICrlClient {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) CrlClientOnline.class);
    protected List<URL> urls = new ArrayList();

    public CrlClientOnline() {
    }

    public CrlClientOnline(String... strArr) {
        for (String str : strArr) {
            addUrl(str);
        }
    }

    public CrlClientOnline(URL... urlArr) {
        for (URL url : urlArr) {
            addUrl(url);
        }
    }

    public CrlClientOnline(Certificate[] certificateArr) {
        for (Certificate certificate : certificateArr) {
            X509Certificate x509Certificate = (X509Certificate) certificate;
            LOGGER.info("Checking certificate: " + x509Certificate.getSubjectDN());
            String crlurl = CertificateUtil.getCRLURL(x509Certificate);
            if (crlurl != null) {
                addUrl(crlurl);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0036 A[Catch: Exception -> 0x0032, TryCatch #1 {Exception -> 0x0032, blocks: (B:10:0x002d, B:14:0x0036, B:15:0x004f, B:16:0x0056), top: B:33:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f A[Catch: Exception -> 0x0032, TryCatch #1 {Exception -> 0x0032, blocks: (B:10:0x002d, B:14:0x0036, B:15:0x004f, B:16:0x0056), top: B:33:0x002d }] */
    @Override // com.itextpdf.signatures.ICrlClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<byte[]> getEncoded(java.security.cert.X509Certificate r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.signatures.CrlClientOnline.getEncoded(java.security.cert.X509Certificate, java.lang.String):java.util.Collection");
    }

    protected void addUrl(String str) {
        try {
            addUrl(new URL(str));
        } catch (MalformedURLException unused) {
            LOGGER.info("Skipped CRL url (malformed): " + str);
        }
    }

    protected void addUrl(URL url) {
        if (this.urls.contains(url)) {
            LOGGER.info("Skipped CRL url (duplicate): " + url);
        } else {
            this.urls.add(url);
            LOGGER.info("Added CRL url: " + url);
        }
    }

    public int getUrlsSize() {
        return this.urls.size();
    }
}
