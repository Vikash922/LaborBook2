package com.itextpdf.signatures;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class SignaturePermissions {
    boolean annotationsAllowed;
    boolean certification;
    List<FieldLock> fieldLocks = new ArrayList();
    boolean fillInAllowed;

    public class FieldLock {
        PdfName action;
        PdfArray fields;

        public FieldLock(PdfName pdfName, PdfArray pdfArray) {
            this.action = pdfName;
            this.fields = pdfArray;
        }

        public PdfName getAction() {
            return this.action;
        }

        public PdfArray getFields() {
            return this.fields;
        }

        public String toString() {
            StringBuilder sbAppend = new StringBuilder().append(this.action.toString());
            PdfArray pdfArray = this.fields;
            return sbAppend.append(pdfArray == null ? "" : pdfArray.toString()).toString();
        }
    }

    public SignaturePermissions(PdfDictionary pdfDictionary, SignaturePermissions signaturePermissions) {
        this.certification = false;
        this.fillInAllowed = true;
        this.annotationsAllowed = true;
        if (signaturePermissions != null) {
            this.annotationsAllowed &= signaturePermissions.isAnnotationsAllowed();
            this.fillInAllowed &= signaturePermissions.isFillInAllowed();
            this.fieldLocks.addAll(signaturePermissions.getFieldLocks());
        }
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Reference);
        if (asArray != null) {
            for (int i = 0; i < asArray.size(); i++) {
                PdfDictionary asDictionary = asArray.getAsDictionary(i);
                PdfDictionary asDictionary2 = asDictionary.getAsDictionary(PdfName.TransformParams);
                if (PdfName.DocMDP.equals(asDictionary.getAsName(PdfName.TransformMethod))) {
                    this.certification = true;
                }
                PdfName asName = asDictionary2.getAsName(PdfName.Action);
                if (asName != null) {
                    this.fieldLocks.add(new FieldLock(asName, asDictionary2.getAsArray(PdfName.Fields)));
                }
                PdfNumber asNumber = asDictionary2.getAsNumber(PdfName.f3047P);
                if (asNumber != null) {
                    int iIntValue = asNumber.intValue();
                    if (iIntValue == 1) {
                        this.fillInAllowed = false;
                    } else if (iIntValue != 2) {
                    }
                    this.annotationsAllowed = false;
                }
            }
        }
    }

    public boolean isCertification() {
        return this.certification;
    }

    public boolean isFillInAllowed() {
        return this.fillInAllowed;
    }

    public boolean isAnnotationsAllowed() {
        return this.annotationsAllowed;
    }

    public List<FieldLock> getFieldLocks() {
        return this.fieldLocks;
    }
}
