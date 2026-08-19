package com.itextpdf.signatures;

import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.forms.fields.PdfFormField;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDate;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNull;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.ReaderProperties;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.source.IRandomAccessSource;
import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.p017io.source.RASInputStream;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.p017io.source.WindowRandomAccessSource;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class SignatureUtil {
    private PdfAcroForm acroForm;
    private PdfDocument document;
    private List<String> orderedSignatureNames;
    private Map<String, int[]> sigNames;
    private int totalRevisions;

    public SignatureUtil(PdfDocument pdfDocument) {
        this.document = pdfDocument;
        this.acroForm = PdfAcroForm.getAcroForm(pdfDocument, pdfDocument.getWriter() != null);
    }

    public PdfPKCS7 readSignatureData(String str) {
        return readSignatureData(str, null);
    }

    public PdfPKCS7 readSignatureData(String str, String str2) throws Throwable {
        PdfPKCS7 pdfPKCS7;
        PdfSignature signature = getSignature(str);
        if (signature == null) {
            return null;
        }
        try {
            PdfName subFilter = signature.getSubFilter();
            PdfString contents = signature.getContents();
            if (subFilter.equals(PdfName.Adbe_x509_rsa_sha1)) {
                PdfString asString = signature.getPdfObject().getAsString(PdfName.Cert);
                if (asString == null) {
                    asString = signature.getPdfObject().getAsArray(PdfName.Cert).getAsString(0);
                }
                pdfPKCS7 = new PdfPKCS7(PdfEncodings.convertToBytes(contents.getValue(), (String) null), asString.getValueBytes(), str2);
            } else {
                pdfPKCS7 = new PdfPKCS7(PdfEncodings.convertToBytes(contents.getValue(), (String) null), subFilter, str2);
            }
            updateByteRange(pdfPKCS7, signature);
            PdfString date = signature.getDate();
            if (date != null) {
                pdfPKCS7.setSignDate(PdfDate.decode(date.toString()));
            }
            pdfPKCS7.setSignName(signature.getName());
            String reason = signature.getReason();
            if (reason != null) {
                pdfPKCS7.setReason(reason);
            }
            String location = signature.getLocation();
            if (location != null) {
                pdfPKCS7.setLocation(location);
            }
            return pdfPKCS7;
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public PdfSignature getSignature(String str) {
        PdfDictionary signatureDictionary = getSignatureDictionary(str);
        if (signatureDictionary != null) {
            return new PdfSignature(signatureDictionary);
        }
        return null;
    }

    public PdfDictionary getSignatureDictionary(String str) {
        getSignatureNames();
        if (this.acroForm == null || !this.sigNames.containsKey(str)) {
            return null;
        }
        return this.acroForm.getField(str).getPdfObject().getAsDictionary(PdfName.f3086V);
    }

    private void updateByteRange(PdfPKCS7 pdfPKCS7, PdfSignature pdfSignature) throws Throwable {
        RASInputStream rASInputStream;
        PdfArray byteRange = pdfSignature.getByteRange();
        RASInputStream rASInputStream2 = null;
        try {
            try {
                rASInputStream = new RASInputStream(new RandomAccessSourceFactory().createRanged(this.document.getReader().getSafeFile().createSourceView(), byteRange.toLongArray()));
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int i = rASInputStream.read(bArr, 0, 8192);
                if (i > 0) {
                    pdfPKCS7.update(bArr, 0, i);
                } else {
                    try {
                        rASInputStream.close();
                        return;
                    } catch (IOException e2) {
                        throw new PdfException(e2);
                    }
                }
            }
        } catch (Exception e3) {
            e = e3;
            throw new PdfException(e);
        } catch (Throwable th2) {
            th = th2;
            rASInputStream2 = rASInputStream;
            if (rASInputStream2 != null) {
                try {
                    rASInputStream2.close();
                } catch (IOException e4) {
                    throw new PdfException(e4);
                }
            }
            throw th;
        }
    }

    public List<String> getSignatureNames() {
        if (this.sigNames != null) {
            return new ArrayList(this.orderedSignatureNames);
        }
        this.sigNames = new HashMap();
        this.orderedSignatureNames = new ArrayList();
        populateSignatureNames();
        return new ArrayList(this.orderedSignatureNames);
    }

    public List<String> getBlankSignatureNames() {
        getSignatureNames();
        ArrayList arrayList = new ArrayList();
        PdfAcroForm pdfAcroForm = this.acroForm;
        if (pdfAcroForm != null) {
            for (Map.Entry<String, PdfFormField> entry : pdfAcroForm.getFormFields().entrySet()) {
                if (PdfName.Sig.equals(entry.getValue().getPdfObject().getAsName(PdfName.f3007FT)) && !this.sigNames.containsKey(entry.getKey())) {
                    arrayList.add(entry.getKey());
                }
            }
        }
        return arrayList;
    }

    public int getTotalRevisions() {
        getSignatureNames();
        return this.totalRevisions;
    }

    public int getRevision(String str) {
        getSignatureNames();
        String translatedFieldName = getTranslatedFieldName(str);
        if (this.sigNames.containsKey(translatedFieldName)) {
            return this.sigNames.get(translatedFieldName)[1];
        }
        return 0;
    }

    public String getTranslatedFieldName(String str) {
        String strFindFieldName;
        PdfAcroForm pdfAcroForm = this.acroForm;
        return (pdfAcroForm == null || !pdfAcroForm.getXfaForm().isXfaPresent() || (strFindFieldName = this.acroForm.getXfaForm().findFieldName(str)) == null) ? str : strFindFieldName;
    }

    public InputStream extractRevision(String str) {
        getSignatureNames();
        if (!this.sigNames.containsKey(str)) {
            return null;
        }
        return new RASInputStream(new WindowRandomAccessSource(this.document.getReader().getSafeFile().createSourceView(), 0L, this.sigNames.get(str)[0]));
    }

    public boolean signatureCoversWholeDocument(String str) {
        getSignatureNames();
        if (!this.sigNames.containsKey(str)) {
            return false;
        }
        try {
            return new ContentsChecker(this.document.getReader().getSafeFile().createSourceView()).checkWhetherSignatureCoversWholeDocument(this.acroForm.getField(str));
        } catch (IOException e) {
            throw new PdfException(e);
        }
    }

    public boolean doesSignatureFieldExist(String str) {
        return getBlankSignatureNames().contains(str) || getSignatureNames().contains(str);
    }

    private void populateSignatureNames() {
        PdfDictionary asDictionary;
        PdfString asString;
        int size;
        if (this.acroForm == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, PdfFormField> entry : this.acroForm.getFormFields().entrySet()) {
            PdfDictionary pdfObject = entry.getValue().getPdfObject();
            if (PdfName.Sig.equals(pdfObject.get(PdfName.f3007FT)) && (asDictionary = pdfObject.getAsDictionary(PdfName.f3086V)) != null && (asString = asDictionary.getAsString(PdfName.Contents)) != null) {
                asString.markAsUnencryptedObject();
                PdfArray asArray = asDictionary.getAsArray(PdfName.ByteRange);
                if (asArray != null && (size = asArray.size()) >= 2) {
                    arrayList.add(new Object[]{entry.getKey(), new int[]{asArray.getAsNumber(size - 1).intValue() + asArray.getAsNumber(size - 2).intValue(), 0}});
                }
            }
        }
        Collections.sort(arrayList, new SorterComparator());
        if (arrayList.size() > 0) {
            if (((int[]) ((Object[]) arrayList.get(arrayList.size() - 1))[1])[0] == this.document.getReader().getFileLength()) {
                this.totalRevisions = arrayList.size();
            } else {
                this.totalRevisions = arrayList.size() + 1;
            }
            int i = 0;
            while (i < arrayList.size()) {
                Object[] objArr = (Object[]) arrayList.get(i);
                String str = (String) objArr[0];
                int[] iArr = (int[]) objArr[1];
                i++;
                iArr[1] = i;
                this.sigNames.put(str, iArr);
                this.orderedSignatureNames.add(str);
            }
        }
    }

    private static class SorterComparator implements Comparator<Object[]> {
        private SorterComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object[] objArr, Object[] objArr2) {
            return ((int[]) objArr[1])[0] - ((int[]) objArr2[1])[0];
        }
    }

    private static class ContentsChecker extends PdfReader {
        private long contentsEnd;
        private int contentsLevel;
        private long contentsStart;
        private int currentLevel;
        private boolean rangeIsCorrect;
        private boolean searchInV;

        public ContentsChecker(IRandomAccessSource iRandomAccessSource) throws IOException {
            super(iRandomAccessSource, (ReaderProperties) null);
            this.currentLevel = 0;
            this.contentsLevel = 1;
            this.searchInV = true;
            this.rangeIsCorrect = false;
        }

        public boolean checkWhetherSignatureCoversWholeDocument(PdfFormField pdfFormField) {
            long offset;
            this.rangeIsCorrect = false;
            PdfDictionary pdfDictionary = (PdfDictionary) pdfFormField.getValue();
            int[] intArray = ((PdfArray) pdfDictionary.get(PdfName.ByteRange)).toIntArray();
            if (4 == intArray.length && intArray[0] == 0) {
                long length = this.tokens.getSafeFile().length();
                int i = intArray[2];
                if (length == intArray[3] + i) {
                    this.contentsStart = intArray[1];
                    this.contentsEnd = i;
                    if (pdfDictionary.getIndirectReference() != null) {
                        offset = pdfDictionary.getIndirectReference().getOffset();
                        this.searchInV = true;
                    } else {
                        offset = pdfFormField.getPdfObject().getIndirectReference().getOffset();
                        this.searchInV = false;
                        this.contentsLevel++;
                    }
                    try {
                        this.tokens.seek(offset);
                        this.tokens.nextValidToken();
                        readObject(false, false);
                        return this.rangeIsCorrect;
                    } catch (IOException unused) {
                    }
                }
            }
            return false;
        }

        @Override // com.itextpdf.kernel.pdf.PdfReader
        protected PdfDictionary readDictionary(boolean z) throws IOException {
            PdfObject object;
            int i;
            this.currentLevel++;
            PdfDictionary pdfDictionary = new PdfDictionary();
            while (true) {
                if (this.rangeIsCorrect) {
                    break;
                }
                this.tokens.nextValidToken();
                if (this.tokens.getTokenType() == PdfTokenizer.TokenType.EndDic) {
                    this.currentLevel--;
                    break;
                }
                if (this.tokens.getTokenType() != PdfTokenizer.TokenType.Name) {
                    this.tokens.throwError("Dictionary key {0} is not a name.", this.tokens.getStringValue());
                }
                PdfName pdfName = readPdfName(true);
                if (PdfName.Contents.equals(pdfName) && this.searchInV && this.contentsLevel == this.currentLevel) {
                    long position = this.tokens.getPosition();
                    int i2 = -1;
                    do {
                        i = this.tokens.read();
                        i2++;
                        if (i == -1) {
                            break;
                        }
                    } while (PdfTokenizer.isWhitespace(i));
                    this.tokens.seek(position);
                    object = readObject(true, z);
                    if (this.tokens.getPosition() == this.contentsEnd && position + ((long) i2) == this.contentsStart) {
                        this.rangeIsCorrect = true;
                    }
                } else if (PdfName.f3086V.equals(pdfName) && !this.searchInV && 1 == this.currentLevel) {
                    this.searchInV = true;
                    object = readObject(true, z);
                    this.searchInV = false;
                } else {
                    object = readObject(true, z);
                }
                if (object == null) {
                    if (this.tokens.getTokenType() == PdfTokenizer.TokenType.EndDic) {
                        this.tokens.throwError("unexpected >>.", new Object[0]);
                    }
                    if (this.tokens.getTokenType() == PdfTokenizer.TokenType.EndArray) {
                        this.tokens.throwError("Unexpected close bracket.", new Object[0]);
                    }
                }
                pdfDictionary.put(pdfName, object);
            }
            return pdfDictionary;
        }

        @Override // com.itextpdf.kernel.pdf.PdfReader
        protected PdfObject readReference(boolean z) {
            return new PdfNull();
        }
    }
}
