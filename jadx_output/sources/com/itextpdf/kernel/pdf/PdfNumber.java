package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.p017io.source.ByteUtils;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes6.dex */
public class PdfNumber extends PdfPrimitiveObject {
    private boolean isDouble;
    private double value;

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 8;
    }

    public PdfNumber(double d) {
        setValue(d);
    }

    public PdfNumber(int i) {
        setValue(i);
    }

    public PdfNumber(byte[] bArr) {
        super(bArr);
        this.isDouble = true;
        this.value = Double.NaN;
    }

    private PdfNumber() {
    }

    public double getValue() {
        if (Double.isNaN(this.value)) {
            generateValue();
        }
        return this.value;
    }

    public double doubleValue() {
        return getValue();
    }

    public float floatValue() {
        return (float) getValue();
    }

    public long longValue() {
        return (long) getValue();
    }

    public int intValue() {
        if (getValue() > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        return (int) getValue();
    }

    public void setValue(int i) {
        this.value = i;
        this.isDouble = false;
        this.content = null;
    }

    public void setValue(double d) {
        this.value = d;
        this.isDouble = true;
        this.content = null;
    }

    public void increment() {
        double d = this.value + 1.0d;
        this.value = d;
        setValue(d);
    }

    public void decrement() {
        double d = this.value - 1.0d;
        this.value = d;
        setValue(d);
    }

    public String toString() {
        if (this.content != null) {
            return new String(this.content, StandardCharsets.ISO_8859_1);
        }
        if (this.isDouble) {
            return new String(ByteUtils.getIsoBytes(getValue()), StandardCharsets.ISO_8859_1);
        }
        return new String(ByteUtils.getIsoBytes(intValue()), StandardCharsets.ISO_8859_1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && Double.compare(((PdfNumber) obj).getValue(), getValue()) == 0;
    }

    public boolean hasDecimalPoint() {
        return toString().contains(".");
    }

    public int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(getValue());
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfNumber();
    }

    protected boolean isDoubleNumber() {
        return this.isDouble;
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject
    protected void generateContent() {
        if (this.isDouble) {
            this.content = ByteUtils.getIsoBytes(this.value);
        } else {
            this.content = ByteUtils.getIsoBytes((int) this.value);
        }
    }

    protected void generateValue() {
        try {
            this.value = Double.parseDouble(new String(this.content, StandardCharsets.ISO_8859_1));
        } catch (NumberFormatException unused) {
            this.value = Double.NaN;
        }
        this.isDouble = true;
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        PdfNumber pdfNumber = (PdfNumber) pdfObject;
        this.value = pdfNumber.value;
        this.isDouble = pdfNumber.isDouble;
    }
}
