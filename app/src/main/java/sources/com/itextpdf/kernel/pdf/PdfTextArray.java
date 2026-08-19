package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.font.PdfFont;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTextArray extends PdfArray {
    private float lastNumber = Float.NaN;
    private StringBuilder lastString;

    @Override // com.itextpdf.kernel.pdf.PdfArray
    public void add(PdfObject pdfObject) {
        if (pdfObject.isNumber()) {
            add(((PdfNumber) pdfObject).floatValue());
        } else if (pdfObject instanceof PdfString) {
            add(((PdfString) pdfObject).getValueBytes());
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfArray
    public void addAll(PdfArray pdfArray) {
        if (pdfArray != null) {
            addAll(pdfArray.list);
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfArray
    public void addAll(Collection<PdfObject> collection) {
        Iterator<PdfObject> it = collection.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    public boolean add(float f) {
        if (f == 0.0f) {
            return false;
        }
        if (!Float.isNaN(this.lastNumber)) {
            float f2 = f + this.lastNumber;
            this.lastNumber = f2;
            if (f2 != 0.0f) {
                set(size() - 1, new PdfNumber(this.lastNumber));
            } else {
                remove(size() - 1);
            }
        } else {
            this.lastNumber = f;
            super.add(new PdfNumber(this.lastNumber));
        }
        this.lastString = null;
        return true;
    }

    public boolean add(String str, PdfFont pdfFont) {
        return add(pdfFont.convertToBytes(str));
    }

    public boolean add(byte[] bArr) {
        return add(new PdfString(bArr).getValue());
    }

    protected boolean add(String str) {
        if (str.length() <= 0) {
            return false;
        }
        StringBuilder sb = this.lastString;
        if (sb != null) {
            sb.append(str);
            set(size() - 1, new PdfString(this.lastString.toString()));
        } else {
            this.lastString = new StringBuilder(str);
            super.add(new PdfString(this.lastString.toString()));
        }
        this.lastNumber = Float.NaN;
        return true;
    }
}
