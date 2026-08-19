package com.itextpdf.forms.xfdf;

import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class ActionObject {
    private DestObject destination;
    private String fileOriginalName;
    private boolean isMap;
    private boolean isNewWindow;
    private PdfName nameAction;
    private PdfName type;
    private PdfString uri;

    public ActionObject(PdfName pdfName) {
        this.type = pdfName;
    }

    public PdfName getType() {
        return this.type;
    }

    public ActionObject setType(PdfName pdfName) {
        this.type = pdfName;
        return this;
    }

    public PdfString getUri() {
        return this.uri;
    }

    public ActionObject setUri(PdfString pdfString) {
        this.uri = pdfString;
        return this;
    }

    public boolean isMap() {
        return this.isMap;
    }

    public ActionObject setMap(boolean z) {
        this.isMap = z;
        return this;
    }

    public PdfName getNameAction() {
        return this.nameAction;
    }

    public ActionObject setNameAction(PdfName pdfName) {
        this.nameAction = pdfName;
        return this;
    }

    public String getFileOriginalName() {
        return this.fileOriginalName;
    }

    public ActionObject setFileOriginalName(String str) {
        this.fileOriginalName = str;
        return this;
    }

    public boolean isNewWindow() {
        return this.isNewWindow;
    }

    public ActionObject setNewWindow(boolean z) {
        this.isNewWindow = z;
        return this;
    }

    public DestObject getDestination() {
        return this.destination;
    }

    public ActionObject setDestination(DestObject destObject) {
        this.destination = destObject;
        return this;
    }
}
