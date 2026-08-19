package com.itextpdf.kernel.pdf.layer;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public class PdfLayerMembership extends PdfObjectWrapper<PdfDictionary> implements IPdfOCG {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper, com.itextpdf.kernel.pdf.layer.IPdfOCG
    public /* bridge */ /* synthetic */ PdfDictionary getPdfObject() {
        return (PdfDictionary) super.getPdfObject();
    }

    public PdfLayerMembership(PdfDocument pdfDocument) {
        super(new PdfDictionary());
        makeIndirect(pdfDocument);
        ((PdfDictionary) getPdfObject()).put(PdfName.Type, PdfName.OCMD);
    }

    public PdfLayerMembership(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        ensureObjectIsAddedToDocument(pdfDictionary);
        if (!PdfName.OCMD.equals(pdfDictionary.getAsName(PdfName.Type))) {
            throw new IllegalArgumentException("Invalid membershipDictionary.");
        }
    }

    public Collection<PdfLayer> getLayers() {
        PdfObject pdfObject = ((PdfDictionary) getPdfObject()).get(PdfName.OCGs);
        if (pdfObject instanceof PdfDictionary) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new PdfLayer((PdfDictionary) ((PdfDictionary) pdfObject).makeIndirect(getDocument())));
            return arrayList;
        }
        if (!(pdfObject instanceof PdfArray)) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (true) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            if (i >= pdfArray.size()) {
                return arrayList2;
            }
            arrayList2.add(new PdfLayer(((PdfArray) pdfArray.makeIndirect(getDocument())).getAsDictionary(i)));
            i++;
        }
    }

    public void addLayer(PdfLayer pdfLayer) {
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.OCGs);
        if (asArray == null) {
            asArray = new PdfArray();
            ((PdfDictionary) getPdfObject()).put(PdfName.OCGs, asArray);
        }
        asArray.add(pdfLayer.getPdfObject());
        asArray.setModified();
    }

    public void setVisibilityPolicy(PdfName pdfName) {
        if (pdfName == null || (!PdfName.AllOn.equals(pdfName) && !PdfName.AnyOn.equals(pdfName) && !PdfName.AnyOff.equals(pdfName) && !PdfName.AllOff.equals(pdfName))) {
            throw new IllegalArgumentException("Argument: visibilityPolicy");
        }
        ((PdfDictionary) getPdfObject()).put(PdfName.f3047P, pdfName);
        ((PdfDictionary) getPdfObject()).setModified();
    }

    public PdfName getVisibilityPolicy() {
        PdfName asName = ((PdfDictionary) getPdfObject()).getAsName(PdfName.f3047P);
        return (asName == null || !(asName.equals(PdfName.AllOn) || asName.equals(PdfName.AllOff) || asName.equals(PdfName.AnyOn) || asName.equals(PdfName.AnyOff))) ? PdfName.AnyOn : asName;
    }

    public void setVisibilityExpression(PdfVisibilityExpression pdfVisibilityExpression) {
        ((PdfDictionary) getPdfObject()).put(PdfName.f3088VE, pdfVisibilityExpression.getPdfObject());
        ((PdfDictionary) getPdfObject()).setModified();
    }

    public PdfVisibilityExpression getVisibilityExpression() {
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f3088VE);
        if (asArray != null) {
            return new PdfVisibilityExpression(asArray);
        }
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.layer.IPdfOCG
    public PdfIndirectReference getIndirectReference() {
        return ((PdfDictionary) getPdfObject()).getIndirectReference();
    }

    protected PdfDocument getDocument() {
        return ((PdfDictionary) getPdfObject()).getIndirectReference().getDocument();
    }
}
