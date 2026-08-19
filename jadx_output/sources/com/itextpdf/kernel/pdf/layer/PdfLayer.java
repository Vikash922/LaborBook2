package com.itextpdf.kernel.pdf.layer;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.PdfEncodings;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfLayer extends PdfObjectWrapper<PdfDictionary> implements IPdfOCG {
    protected List<PdfLayer> children;
    protected boolean locked;

    /* JADX INFO: renamed from: on */
    protected boolean f3183on;
    protected boolean onPanel;
    protected PdfLayer parent;
    protected String title;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper, com.itextpdf.kernel.pdf.layer.IPdfOCG
    public /* bridge */ /* synthetic */ PdfDictionary getPdfObject() {
        return (PdfDictionary) super.getPdfObject();
    }

    public PdfLayer(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.f3183on = true;
        this.onPanel = true;
        this.locked = false;
        setForbidRelease();
        ensureObjectIsAddedToDocument(pdfDictionary);
    }

    public PdfLayer(String str, PdfDocument pdfDocument) {
        this(pdfDocument);
        setName(str);
        pdfDocument.getCatalog().getOCProperties(true).registerLayer(this);
    }

    private PdfLayer(PdfDocument pdfDocument) {
        super(new PdfDictionary());
        this.f3183on = true;
        this.onPanel = true;
        this.locked = false;
        makeIndirect(pdfDocument);
        ((PdfDictionary) getPdfObject()).put(PdfName.Type, PdfName.OCG);
    }

    public static PdfLayer createTitle(String str, PdfDocument pdfDocument) {
        PdfLayer pdfLayerCreateTitleSilent = createTitleSilent(str, pdfDocument);
        pdfDocument.getCatalog().getOCProperties(true).registerLayer(pdfLayerCreateTitleSilent);
        return pdfLayerCreateTitleSilent;
    }

    public static void addOCGRadioGroup(PdfDocument pdfDocument, List<PdfLayer> list) {
        pdfDocument.getCatalog().getOCProperties(true).addOCGRadioGroup(list);
    }

    public void addChild(PdfLayer pdfLayer) {
        if (pdfLayer.parent != null) {
            throw new IllegalArgumentException("Illegal argument: childLayer");
        }
        pdfLayer.parent = this;
        if (this.children == null) {
            this.children = new ArrayList();
        }
        this.children.add(pdfLayer);
    }

    public PdfLayer getParent() {
        return this.parent;
    }

    public void setName(String str) {
        ((PdfDictionary) getPdfObject()).put(PdfName.Name, new PdfString(str, PdfEncodings.UNICODE_BIG));
        ((PdfDictionary) getPdfObject()).setModified();
    }

    public boolean isOn() {
        return this.f3183on;
    }

    public void setOn(boolean z) {
        if (this.f3183on != z) {
            fetchOCProperties().setModified();
        }
        this.f3183on = z;
    }

    public boolean isLocked() {
        return this.locked;
    }

    public void setLocked(boolean z) {
        if (isLocked() != z) {
            fetchOCProperties().setModified();
        }
        this.locked = z;
    }

    public boolean isOnPanel() {
        return this.onPanel;
    }

    public void setOnPanel(boolean z) {
        if (this.f3183on != z) {
            fetchOCProperties().setModified();
        }
        this.onPanel = z;
    }

    public Collection<PdfName> getIntents() {
        PdfObject pdfObject = ((PdfDictionary) getPdfObject()).get(PdfName.Intent);
        if (pdfObject instanceof PdfName) {
            return Collections.singletonList((PdfName) pdfObject);
        }
        if (pdfObject instanceof PdfArray) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            ArrayList arrayList = new ArrayList(pdfArray.size());
            for (PdfObject pdfObject2 : pdfArray) {
                if (pdfObject2 instanceof PdfName) {
                    arrayList.add((PdfName) pdfObject2);
                }
            }
            return arrayList;
        }
        return Collections.singletonList(PdfName.View);
    }

    public void setIntents(List<PdfName> list) {
        if (list == null || list.size() == 0) {
            ((PdfDictionary) getPdfObject()).remove(PdfName.Intent);
        } else if (list.size() == 1) {
            ((PdfDictionary) getPdfObject()).put(PdfName.Intent, list.get(0));
        } else {
            PdfArray pdfArray = new PdfArray();
            Iterator<PdfName> it = list.iterator();
            while (it.hasNext()) {
                pdfArray.add(it.next());
            }
            ((PdfDictionary) getPdfObject()).put(PdfName.Intent, pdfArray);
        }
        ((PdfDictionary) getPdfObject()).setModified();
    }

    public void setCreatorInfo(String str, String str2) {
        PdfDictionary usage = getUsage();
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Creator, new PdfString(str, PdfEncodings.UNICODE_BIG));
        pdfDictionary.put(PdfName.Subtype, new PdfName(str2));
        usage.put(PdfName.CreatorInfo, pdfDictionary);
        usage.setModified();
    }

    public void setLanguage(String str, boolean z) {
        PdfDictionary usage = getUsage();
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Lang, new PdfString(str, PdfEncodings.UNICODE_BIG));
        if (z) {
            pdfDictionary.put(PdfName.Preferred, PdfName.f3044ON);
        }
        usage.put(PdfName.Language, pdfDictionary);
        usage.setModified();
    }

    public void setExport(boolean z) {
        PdfDictionary usage = getUsage();
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.ExportState, z ? PdfName.f3044ON : PdfName.OFF);
        usage.put(PdfName.Export, pdfDictionary);
        usage.setModified();
    }

    public void setZoom(float f, float f2) {
        if (f > 0.0f || f2 >= 0.0f) {
            PdfDictionary usage = getUsage();
            PdfDictionary pdfDictionary = new PdfDictionary();
            if (f > 0.0f) {
                pdfDictionary.put(PdfName.min, new PdfNumber(f));
            }
            if (f2 >= 0.0f) {
                pdfDictionary.put(PdfName.max, new PdfNumber(f2));
            }
            usage.put(PdfName.Zoom, pdfDictionary);
            usage.setModified();
        }
    }

    public void setPrint(String str, boolean z) {
        PdfDictionary usage = getUsage();
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Subtype, new PdfName(str));
        pdfDictionary.put(PdfName.PrintState, z ? PdfName.f3044ON : PdfName.OFF);
        usage.put(PdfName.Print, pdfDictionary);
        usage.setModified();
    }

    public void setView(boolean z) {
        PdfDictionary usage = getUsage();
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.ViewState, z ? PdfName.f3044ON : PdfName.OFF);
        usage.put(PdfName.View, pdfDictionary);
        usage.setModified();
    }

    public void setUser(String str, String... strArr) {
        if (str == null || (!"Ind".equals(str) && !"Ttl".equals(str) && !"Org".equals(str))) {
            throw new IllegalArgumentException("Illegal type argument");
        }
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("Illegal names argument");
        }
        PdfDictionary usage = getUsage();
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Type, new PdfName(str));
        if (strArr.length == 1) {
            pdfDictionary.put(PdfName.Name, new PdfString(strArr[0], PdfEncodings.UNICODE_BIG));
        } else {
            PdfArray pdfArray = new PdfArray();
            for (String str2 : strArr) {
                pdfArray.add(new PdfString(str2, PdfEncodings.UNICODE_BIG));
            }
            pdfDictionary.put(PdfName.Name, pdfArray);
        }
        usage.put(PdfName.User, pdfDictionary);
        usage.setModified();
    }

    public void setPageElement(String str) {
        PdfDictionary usage = getUsage();
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Subtype, new PdfName(str));
        usage.put(PdfName.PageElement, pdfDictionary);
        usage.setModified();
    }

    @Override // com.itextpdf.kernel.pdf.layer.IPdfOCG
    public PdfIndirectReference getIndirectReference() {
        return ((PdfDictionary) getPdfObject()).getIndirectReference();
    }

    public String getTitle() {
        return this.title;
    }

    public List<PdfLayer> getChildren() {
        if (this.children == null) {
            return null;
        }
        return new ArrayList(this.children);
    }

    protected PdfDocument getDocument() {
        return ((PdfDictionary) getPdfObject()).getIndirectReference().getDocument();
    }

    protected static PdfLayer createTitleSilent(String str, PdfDocument pdfDocument) {
        if (str == null) {
            throw new IllegalArgumentException("Invalid title argument");
        }
        PdfLayer pdfLayer = new PdfLayer(pdfDocument);
        pdfLayer.title = str;
        return pdfLayer;
    }

    protected PdfDictionary getUsage() {
        PdfDictionary asDictionary = ((PdfDictionary) getPdfObject()).getAsDictionary(PdfName.Usage);
        if (asDictionary != null) {
            return asDictionary;
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        ((PdfDictionary) getPdfObject()).put(PdfName.Usage, pdfDictionary);
        return pdfDictionary;
    }

    private PdfOCProperties fetchOCProperties() {
        return getDocument().getCatalog().getOCProperties(true);
    }
}
