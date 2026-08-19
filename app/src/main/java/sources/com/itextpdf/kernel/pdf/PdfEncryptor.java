package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.actions.contexts.IMetaInfo;
import java.io.IOException;
import java.io.OutputStream;
import java.security.PrivateKey;
import java.util.Map;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.RecipientInformation;
import org.bouncycastle.cms.jcajce.JceKeyTransEnvelopedRecipient;

/* JADX INFO: loaded from: classes6.dex */
public final class PdfEncryptor {
    private IMetaInfo metaInfo;
    private EncryptionProperties properties;

    public static boolean isAssemblyAllowed(int i) {
        return (i & 1024) == 1024;
    }

    public static boolean isCopyAllowed(int i) {
        return (i & 16) == 16;
    }

    public static boolean isDegradedPrintingAllowed(int i) {
        return (i & 4) == 4;
    }

    public static boolean isFillInAllowed(int i) {
        return (i & 256) == 256;
    }

    public static boolean isModifyAnnotationsAllowed(int i) {
        return (i & 32) == 32;
    }

    public static boolean isModifyContentsAllowed(int i) {
        return (i & 8) == 8;
    }

    public static boolean isPrintingAllowed(int i) {
        return (i & EncryptionConstants.ALLOW_PRINTING) == 2052;
    }

    public static boolean isScreenReadersAllowed(int i) {
        return (i & 512) == 512;
    }

    public static void encrypt(PdfReader pdfReader, OutputStream outputStream, EncryptionProperties encryptionProperties, Map<String, String> map) {
        new PdfEncryptor().setEncryptionProperties(encryptionProperties).encrypt(pdfReader, outputStream, map);
    }

    public static void encrypt(PdfReader pdfReader, OutputStream outputStream, EncryptionProperties encryptionProperties) {
        encrypt(pdfReader, outputStream, encryptionProperties, null);
    }

    public static String getPermissionsVerbose(int i) {
        StringBuilder sb = new StringBuilder("Allowed:");
        if ((i & EncryptionConstants.ALLOW_PRINTING) == 2052) {
            sb.append(" Printing");
        }
        if ((i & 8) == 8) {
            sb.append(" Modify contents");
        }
        if ((i & 16) == 16) {
            sb.append(" Copy");
        }
        if ((i & 32) == 32) {
            sb.append(" Modify annotations");
        }
        if ((i & 256) == 256) {
            sb.append(" Fill in");
        }
        if ((i & 512) == 512) {
            sb.append(" Screen readers");
        }
        if ((i & 1024) == 1024) {
            sb.append(" Assembly");
        }
        if ((i & 4) == 4) {
            sb.append(" Degraded printing");
        }
        return sb.toString();
    }

    public static byte[] getContent(RecipientInformation recipientInformation, PrivateKey privateKey, String str) throws CMSException {
        return recipientInformation.getContent(new JceKeyTransEnvelopedRecipient(privateKey).setProvider(str));
    }

    public PdfEncryptor setEventCountingMetaInfo(IMetaInfo iMetaInfo) {
        this.metaInfo = iMetaInfo;
        return this;
    }

    public PdfEncryptor setEncryptionProperties(EncryptionProperties encryptionProperties) {
        this.properties = encryptionProperties;
        return this;
    }

    public void encrypt(PdfReader pdfReader, OutputStream outputStream, Map<String, String> map) {
        WriterProperties writerProperties = new WriterProperties();
        writerProperties.encryptionProperties = this.properties;
        StampingProperties stampingProperties = new StampingProperties();
        stampingProperties.setEventCountingMetaInfo(this.metaInfo);
        try {
            PdfWriter pdfWriter = new PdfWriter(outputStream, writerProperties);
            try {
                PdfDocument pdfDocument = new PdfDocument(pdfReader, pdfWriter, stampingProperties);
                try {
                    pdfDocument.getDocumentInfo().setMoreInfo(map);
                    pdfDocument.close();
                    pdfWriter.close();
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public void encrypt(PdfReader pdfReader, OutputStream outputStream) {
        encrypt(pdfReader, outputStream, (Map<String, String>) null);
    }
}
