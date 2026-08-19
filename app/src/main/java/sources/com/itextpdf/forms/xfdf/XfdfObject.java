package com.itextpdf.forms.xfdf;

import com.itextpdf.kernel.pdf.PdfDocument;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;

/* JADX INFO: loaded from: classes6.dex */
public class XfdfObject {
    private AnnotsObject annots;
    private List<AttributeObject> attributes;

    /* JADX INFO: renamed from: f */
    private FObject f2853f;
    private FieldsObject fields;
    private IdsObject ids;

    public FObject getF() {
        return this.f2853f;
    }

    public void setF(FObject fObject) {
        this.f2853f = fObject;
    }

    public IdsObject getIds() {
        return this.ids;
    }

    public void setIds(IdsObject idsObject) {
        this.ids = idsObject;
    }

    public FieldsObject getFields() {
        return this.fields;
    }

    public void setFields(FieldsObject fieldsObject) {
        this.fields = fieldsObject;
    }

    public AnnotsObject getAnnots() {
        return this.annots;
    }

    public void setAnnots(AnnotsObject annotsObject) {
        this.annots = annotsObject;
    }

    public List<AttributeObject> getAttributes() {
        return this.attributes;
    }

    public void setAttributes(List<AttributeObject> list) {
        this.attributes = list;
    }

    public void mergeToPdf(PdfDocument pdfDocument, String str) {
        new XfdfReader().mergeXfdfIntoPdf(this, pdfDocument, str);
    }

    public void writeToFile(String str) throws TransformerException, ParserConfigurationException, IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        try {
            writeToFile(fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public void writeToFile(OutputStream outputStream) throws TransformerException, ParserConfigurationException {
        new XfdfWriter(outputStream).write(this);
    }
}
