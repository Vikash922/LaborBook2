package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.navigation.PdfDestination;
import com.itextpdf.p017io.font.PdfEncodings;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfOutline {
    public static int FLAG_BOLD = 2;
    public static int FLAG_ITALIC = 1;
    private List<PdfOutline> children = new ArrayList();
    private PdfDictionary content;
    private PdfDestination destination;
    private PdfOutline parent;
    private PdfDocument pdfDoc;
    private String title;

    PdfOutline(String str, PdfDictionary pdfDictionary, PdfDocument pdfDocument) {
        this.title = str;
        this.content = pdfDictionary;
        this.pdfDoc = pdfDocument;
    }

    PdfOutline(String str, PdfDictionary pdfDictionary, PdfOutline pdfOutline) {
        this.title = str;
        this.content = pdfDictionary;
        this.parent = pdfOutline;
        this.pdfDoc = pdfOutline.pdfDoc;
        pdfDictionary.makeIndirect(pdfOutline.pdfDoc);
    }

    PdfOutline(PdfDocument pdfDocument) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        this.content = pdfDictionary;
        pdfDictionary.put(PdfName.Type, PdfName.Outlines);
        this.pdfDoc = pdfDocument;
        this.content.makeIndirect(pdfDocument);
        pdfDocument.getCatalog().addRootOutline(this);
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
        this.content.put(PdfName.Title, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public void setColor(Color color) {
        this.content.put(PdfName.f2980C, new PdfArray(color.getColorValue()));
    }

    public Color getColor() {
        PdfArray asArray = this.content.getAsArray(PdfName.f2980C);
        if (asArray == null) {
            return null;
        }
        return Color.makeColor(PdfColorSpace.makeColorSpace(PdfName.DeviceRGB), asArray.toFloatArray());
    }

    public void setStyle(int i) {
        if (i == FLAG_BOLD || i == FLAG_ITALIC) {
            this.content.put(PdfName.f3004F, new PdfNumber(i));
        }
    }

    public Integer getStyle() {
        return this.content.getAsInt(PdfName.f3004F);
    }

    public PdfDictionary getContent() {
        return this.content;
    }

    public List<PdfOutline> getAllChildren() {
        return this.children;
    }

    public PdfOutline getParent() {
        return this.parent;
    }

    public PdfDestination getDestination() {
        return this.destination;
    }

    public void addDestination(PdfDestination pdfDestination) {
        setDestination(pdfDestination);
        this.content.put(PdfName.Dest, pdfDestination.getPdfObject());
    }

    public void addAction(PdfAction pdfAction) {
        this.content.put(PdfName.f2967A, pdfAction.getPdfObject());
    }

    public void setOpen(boolean z) {
        if (!z) {
            this.content.put(PdfName.Count, new PdfNumber(-1));
        } else if (this.children.size() > 0) {
            this.content.put(PdfName.Count, new PdfNumber(this.children.size()));
        } else {
            this.content.remove(PdfName.Count);
        }
    }

    public boolean isOpen() {
        Integer asInt = this.content.getAsInt(PdfName.Count);
        return asInt == null || asInt.intValue() >= 0;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public PdfOutline addOutline(String str, int i) {
        if (i == -1) {
            i = this.children.size();
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        PdfOutline pdfOutline = new PdfOutline(str, pdfDictionary, this);
        pdfDictionary.put(PdfName.Title, new PdfString(str, PdfEncodings.UNICODE_BIG));
        pdfDictionary.put(PdfName.Parent, this.content);
        if (this.children.size() > 0) {
            if (i != 0) {
                PdfDictionary content = this.children.get(i - 1).getContent();
                pdfDictionary.put(PdfName.Prev, content);
                content.put(PdfName.Next, pdfDictionary);
            }
            if (i != this.children.size()) {
                PdfDictionary content2 = this.children.get(i).getContent();
                pdfDictionary.put(PdfName.Next, content2);
                content2.put(PdfName.Prev, pdfDictionary);
            }
        }
        if (i == 0) {
            this.content.put(PdfName.First, pdfDictionary);
        }
        if (i == this.children.size()) {
            this.content.put(PdfName.Last, pdfDictionary);
        }
        PdfNumber asNumber = this.content.getAsNumber(PdfName.Count);
        if (asNumber == null || asNumber.getValue() != -1.0d) {
            this.content.put(PdfName.Count, new PdfNumber(this.children.size() + 1));
        }
        this.children.add(i, pdfOutline);
        return pdfOutline;
    }

    public PdfOutline addOutline(String str) {
        return addOutline(str, -1);
    }

    public PdfOutline addOutline(PdfOutline pdfOutline) {
        PdfOutline pdfOutlineAddOutline = addOutline(pdfOutline.getTitle());
        pdfOutlineAddOutline.addDestination(pdfOutline.getDestination());
        Iterator<PdfOutline> it = pdfOutline.getAllChildren().iterator();
        while (it.hasNext()) {
            pdfOutlineAddOutline.addOutline(it.next());
        }
        return pdfOutlineAddOutline;
    }

    public void removeOutline() {
        if (!this.pdfDoc.hasOutlines() || isOutlineRoot()) {
            this.pdfDoc.getCatalog().remove(PdfName.Outlines);
            return;
        }
        PdfOutline pdfOutline = this.parent;
        List<PdfOutline> list = pdfOutline.children;
        list.remove(this);
        PdfDictionary pdfDictionary = pdfOutline.content;
        if (list.size() > 0) {
            pdfDictionary.put(PdfName.First, list.get(0).content);
            pdfDictionary.put(PdfName.Last, list.get(list.size() - 1).content);
            PdfDictionary asDictionary = this.content.getAsDictionary(PdfName.Next);
            PdfDictionary asDictionary2 = this.content.getAsDictionary(PdfName.Prev);
            if (asDictionary2 == null) {
                if (asDictionary != null) {
                    asDictionary.remove(PdfName.Prev);
                    return;
                }
                return;
            } else if (asDictionary != null) {
                asDictionary2.put(PdfName.Next, asDictionary);
                asDictionary.put(PdfName.Prev, asDictionary2);
                return;
            } else {
                asDictionary2.remove(PdfName.Next);
                return;
            }
        }
        pdfOutline.removeOutline();
    }

    void clear() {
        this.children.clear();
    }

    void setDestination(PdfDestination pdfDestination) {
        this.destination = pdfDestination;
    }

    private PdfDictionary getOutlineRoot() {
        if (this.pdfDoc.hasOutlines()) {
            return this.pdfDoc.getCatalog().getPdfObject().getAsDictionary(PdfName.Outlines);
        }
        return null;
    }

    private boolean isOutlineRoot() {
        return getOutlineRoot() == this.content;
    }
}
