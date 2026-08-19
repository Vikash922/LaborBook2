package com.itextpdf.forms.xfdf;

import com.itextpdf.forms.exceptions.AttributeNotFoundException;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.laborbook.base.analytics.ConstantEventSources;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class AnnotObject {
    private ActionObject action;
    private String appearance;
    private List<AttributeObject> attributes = new ArrayList();
    private BorderStyleAltObject borderStyleAlt;
    private PdfString contents;
    private PdfString contentsRichText;
    private String defaultAppearance;
    private String defaultStyle;
    private DestObject destination;
    private boolean hasPopup;
    private String name;
    private AnnotObject popup;
    private PdfIndirectReference ref;
    private String vertices;

    public String getName() {
        return this.name;
    }

    public AnnotObject setName(String str) {
        this.name = str;
        return this;
    }

    public List<AttributeObject> getAttributes() {
        return this.attributes;
    }

    public AttributeObject getAttribute(String str) {
        for (AttributeObject attributeObject : this.attributes) {
            if (attributeObject.getName().equals(str)) {
                return attributeObject;
            }
        }
        return null;
    }

    public String getAttributeValue(String str) {
        for (AttributeObject attributeObject : this.attributes) {
            if (attributeObject.getName().equals(str)) {
                return attributeObject.getValue();
            }
        }
        return null;
    }

    public AnnotObject getPopup() {
        return this.popup;
    }

    public AnnotObject setPopup(AnnotObject annotObject) {
        this.popup = annotObject;
        return this;
    }

    public boolean isHasPopup() {
        return this.hasPopup;
    }

    public AnnotObject setHasPopup(boolean z) {
        this.hasPopup = z;
        return this;
    }

    public PdfString getContents() {
        return this.contents;
    }

    public AnnotObject setContents(PdfString pdfString) {
        this.contents = pdfString;
        return this;
    }

    public PdfString getContentsRichText() {
        return this.contentsRichText;
    }

    public AnnotObject setContentsRichText(PdfString pdfString) {
        this.contentsRichText = pdfString;
        return this;
    }

    public ActionObject getAction() {
        return this.action;
    }

    public AnnotObject setAction(ActionObject actionObject) {
        this.action = actionObject;
        return this;
    }

    public void addAttribute(AttributeObject attributeObject) {
        this.attributes.add(attributeObject);
    }

    void addAttribute(String str, boolean z) {
        this.attributes.add(new AttributeObject(str, z ? ConstantEventSources.YES : ConstantEventSources.f3418NO));
    }

    void addAttribute(String str, float f) {
        this.attributes.add(new AttributeObject(str, String.valueOf(f)));
    }

    void addAttribute(String str, Rectangle rectangle) {
        this.attributes.add(new AttributeObject(str, XfdfObjectUtils.convertRectToString(rectangle)));
    }

    void addAttribute(String str, PdfObject pdfObject, boolean z) {
        String value;
        if (pdfObject == null) {
            if (z) {
                throw new AttributeNotFoundException(str);
            }
            return;
        }
        if (pdfObject.getType() == 2) {
            value = ((PdfBoolean) pdfObject).getValue() ? ConstantEventSources.YES : ConstantEventSources.f3418NO;
        } else if (pdfObject.getType() == 6) {
            value = ((PdfName) pdfObject).getValue();
        } else if (pdfObject.getType() == 8) {
            value = String.valueOf(((PdfNumber) pdfObject).getValue());
        } else {
            value = pdfObject.getType() == 10 ? ((PdfString) pdfObject).getValue() : null;
        }
        this.attributes.add(new AttributeObject(str, value));
    }

    void addAttribute(String str, PdfObject pdfObject) {
        addAttribute(str, pdfObject, false);
    }

    void addFdfAttributes(int i) {
        addAttribute(new AttributeObject("page", String.valueOf(i)));
    }

    public DestObject getDestination() {
        return this.destination;
    }

    public AnnotObject setDestination(DestObject destObject) {
        this.destination = destObject;
        return this;
    }

    public String getAppearance() {
        return this.appearance;
    }

    public AnnotObject setAppearance(String str) {
        this.appearance = str;
        return this;
    }

    public String getDefaultAppearance() {
        return this.defaultAppearance;
    }

    public AnnotObject setDefaultAppearance(String str) {
        this.defaultAppearance = str;
        return this;
    }

    public String getDefaultStyle() {
        return this.defaultStyle;
    }

    public AnnotObject setDefaultStyle(String str) {
        this.defaultStyle = str;
        return this;
    }

    public BorderStyleAltObject getBorderStyleAlt() {
        return this.borderStyleAlt;
    }

    public AnnotObject setBorderStyleAlt(BorderStyleAltObject borderStyleAltObject) {
        this.borderStyleAlt = borderStyleAltObject;
        return this;
    }

    public String getVertices() {
        return this.vertices;
    }

    public AnnotObject setVertices(String str) {
        this.vertices = str;
        return this;
    }

    public PdfIndirectReference getRef() {
        return this.ref;
    }

    public AnnotObject setRef(PdfIndirectReference pdfIndirectReference) {
        this.ref = pdfIndirectReference;
        return this;
    }
}
