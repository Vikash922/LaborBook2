package com.itextpdf.kernel.pdf.filespec;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDate;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.collection.PdfCollectionItem;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.util.UrlUtil;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class PdfFileSpec extends PdfObjectWrapper<PdfObject> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    protected PdfFileSpec(PdfObject pdfObject) {
        super(pdfObject);
    }

    public static PdfFileSpec wrapFileSpecObject(PdfObject pdfObject) {
        if (pdfObject == null) {
            return null;
        }
        if (pdfObject.isString()) {
            return new PdfStringFS((PdfString) pdfObject);
        }
        if (pdfObject.isDictionary()) {
            return new PdfDictionaryFS((PdfDictionary) pdfObject);
        }
        return null;
    }

    public static PdfFileSpec createExternalFileSpec(PdfDocument pdfDocument, String str, PdfName pdfName) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Type, PdfName.Filespec);
        pdfDictionary.put(PdfName.f3004F, new PdfString(str));
        pdfDictionary.put(PdfName.f3085UF, new PdfString(str, PdfEncodings.UNICODE_BIG));
        if (pdfName != null) {
            pdfDictionary.put(PdfName.AFRelationship, pdfName);
        } else {
            pdfDictionary.put(PdfName.AFRelationship, PdfName.Unspecified);
        }
        return (PdfFileSpec) new PdfFileSpec(pdfDictionary).makeIndirect(pdfDocument);
    }

    public static PdfFileSpec createExternalFileSpec(PdfDocument pdfDocument, String str) {
        return createExternalFileSpec(pdfDocument, str, null);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, byte[] bArr, String str, String str2, PdfName pdfName, PdfDictionary pdfDictionary, PdfName pdfName2) {
        PdfStream pdfStream = (PdfStream) new PdfStream(bArr).makeIndirect(pdfDocument);
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        if (pdfDictionary != null) {
            pdfDictionary2.mergeDifferent(pdfDictionary);
        }
        if (!pdfDictionary2.containsKey(PdfName.ModDate)) {
            pdfDictionary2.put(PdfName.ModDate, new PdfDate().getPdfObject());
        }
        if (bArr != null) {
            pdfDictionary2.put(PdfName.Size, new PdfNumber(pdfStream.getBytes().length));
        }
        pdfStream.put(PdfName.Params, pdfDictionary2);
        return createEmbeddedFileSpec(pdfDocument, pdfStream, str, str2, pdfName, pdfName2);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, byte[] bArr, String str, String str2, PdfDictionary pdfDictionary, PdfName pdfName) {
        return createEmbeddedFileSpec(pdfDocument, bArr, str, str2, (PdfName) null, pdfDictionary, pdfName);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, byte[] bArr, String str, PdfDictionary pdfDictionary, PdfName pdfName) {
        return createEmbeddedFileSpec(pdfDocument, bArr, (String) null, str, (PdfName) null, pdfDictionary, pdfName);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, byte[] bArr, String str, PdfName pdfName) {
        return createEmbeddedFileSpec(pdfDocument, bArr, (String) null, str, (PdfName) null, (PdfDictionary) null, pdfName);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, byte[] bArr, String str, String str2, PdfName pdfName) {
        return createEmbeddedFileSpec(pdfDocument, bArr, str, str2, (PdfName) null, (PdfDictionary) null, pdfName);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, String str, String str2, String str3, PdfName pdfName, PdfDictionary pdfDictionary, PdfName pdfName2) throws IOException {
        PdfStream pdfStream = new PdfStream(pdfDocument, FirebasePerfUrlConnection.openStream(UrlUtil.toURL(str)));
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        if (pdfDictionary != null) {
            pdfDictionary2.mergeDifferent(pdfDictionary);
        }
        if (!pdfDictionary2.containsKey(PdfName.ModDate)) {
            pdfDictionary2.put(PdfName.ModDate, new PdfDate().getPdfObject());
        }
        pdfStream.put(PdfName.Params, pdfDictionary2);
        return createEmbeddedFileSpec(pdfDocument, pdfStream, str2, str3, pdfName, pdfName2);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, String str, String str2, String str3, PdfName pdfName, PdfName pdfName2) throws IOException {
        return createEmbeddedFileSpec(pdfDocument, str, str2, str3, pdfName, (PdfDictionary) null, pdfName2);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, String str, String str2, String str3, PdfName pdfName) throws IOException {
        return createEmbeddedFileSpec(pdfDocument, str, str2, str3, (PdfName) null, (PdfDictionary) null, pdfName);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, String str, String str2, PdfName pdfName) throws IOException {
        return createEmbeddedFileSpec(pdfDocument, str, (String) null, str2, (PdfName) null, (PdfDictionary) null, pdfName);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, InputStream inputStream, String str, String str2, PdfName pdfName, PdfDictionary pdfDictionary, PdfName pdfName2) {
        PdfStream pdfStream = new PdfStream(pdfDocument, inputStream);
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        if (pdfDictionary != null) {
            pdfDictionary2.mergeDifferent(pdfDictionary);
        }
        if (!pdfDictionary2.containsKey(PdfName.ModDate)) {
            pdfDictionary2.put(PdfName.ModDate, new PdfDate().getPdfObject());
        }
        pdfStream.put(PdfName.Params, pdfDictionary2);
        return createEmbeddedFileSpec(pdfDocument, pdfStream, str, str2, pdfName, pdfName2);
    }

    public static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, InputStream inputStream, String str, String str2, PdfName pdfName, PdfName pdfName2) {
        return createEmbeddedFileSpec(pdfDocument, inputStream, str, str2, pdfName, (PdfDictionary) null, pdfName2);
    }

    private static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, PdfStream pdfStream, String str, String str2, PdfName pdfName, PdfName pdfName2) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfStream.put(PdfName.Type, PdfName.EmbeddedFile);
        if (pdfName2 != null) {
            pdfDictionary.put(PdfName.AFRelationship, pdfName2);
        } else {
            pdfDictionary.put(PdfName.AFRelationship, PdfName.Unspecified);
        }
        if (pdfName != null) {
            pdfStream.put(PdfName.Subtype, pdfName);
        } else {
            pdfStream.put(PdfName.Subtype, PdfName.ApplicationOctetStream);
        }
        if (str != null) {
            pdfDictionary.put(PdfName.Desc, new PdfString(str));
        }
        pdfDictionary.put(PdfName.Type, PdfName.Filespec);
        pdfDictionary.put(PdfName.f3004F, new PdfString(str2));
        pdfDictionary.put(PdfName.f3085UF, new PdfString(str2, PdfEncodings.UNICODE_BIG));
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.f3004F, pdfStream);
        pdfDictionary2.put(PdfName.f3085UF, pdfStream);
        pdfDictionary.put(PdfName.f3001EF, pdfDictionary2);
        pdfDocument.markStreamAsEmbeddedFile(pdfStream);
        return (PdfFileSpec) new PdfFileSpec(pdfDictionary).makeIndirect(pdfDocument);
    }

    private static PdfFileSpec createEmbeddedFileSpec(PdfDocument pdfDocument, PdfStream pdfStream, String str, String str2, PdfName pdfName) {
        return createEmbeddedFileSpec(pdfDocument, pdfStream, str, str2, (PdfName) null, pdfName);
    }

    public PdfFileSpec setFileIdentifier(PdfArray pdfArray) {
        return put(PdfName.f3021ID, pdfArray);
    }

    public PdfArray getFileIdentifier() {
        return ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f3021ID);
    }

    public PdfFileSpec setVolatile(PdfBoolean pdfBoolean) {
        return put(PdfName.Volatile, pdfBoolean);
    }

    public PdfBoolean isVolatile() {
        return ((PdfDictionary) getPdfObject()).getAsBoolean(PdfName.Volatile);
    }

    public PdfFileSpec setCollectionItem(PdfCollectionItem pdfCollectionItem) {
        return put(PdfName.f2985CI, pdfCollectionItem.getPdfObject());
    }

    public PdfFileSpec setThumbnailImage(PdfImageXObject pdfImageXObject) {
        return put(PdfName.Thumb, pdfImageXObject.getPdfObject());
    }

    public PdfImageXObject getThumbnailImage() {
        PdfStream asStream = ((PdfDictionary) getPdfObject()).getAsStream(PdfName.Thumb);
        if (asStream != null) {
            return new PdfImageXObject(asStream);
        }
        return null;
    }

    public PdfFileSpec put(PdfName pdfName, PdfObject pdfObject) {
        ((PdfDictionary) getPdfObject()).put(pdfName, pdfObject);
        setModified();
        return this;
    }
}
