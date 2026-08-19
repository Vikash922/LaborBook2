package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.kernel.pdf.colorspace.PdfShading;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
public class PdfResources extends PdfObjectWrapper<PdfDictionary> {

    /* JADX INFO: renamed from: Cs */
    private static final String f3100Cs = "Cs";

    /* JADX INFO: renamed from: F */
    private static final String f3101F = "F";

    /* JADX INFO: renamed from: Fm */
    private static final String f3102Fm = "Fm";

    /* JADX INFO: renamed from: Gs */
    private static final String f3103Gs = "Gs";

    /* JADX INFO: renamed from: Im */
    private static final String f3104Im = "Im";

    /* JADX INFO: renamed from: P */
    private static final String f3105P = "P";

    /* JADX INFO: renamed from: Pr */
    private static final String f3106Pr = "Pr";

    /* JADX INFO: renamed from: Sh */
    private static final String f3107Sh = "Sh";
    private ResourceNameGenerator csNamesGen;
    private ResourceNameGenerator egsNamesGen;
    private ResourceNameGenerator fontNamesGen;
    private ResourceNameGenerator formNamesGen;
    private ResourceNameGenerator imageNamesGen;
    private boolean isModified;
    private ResourceNameGenerator patternNamesGen;
    private ResourceNameGenerator propNamesGen;
    private boolean readOnly;
    private Map<PdfObject, PdfName> resourceToName;
    private ResourceNameGenerator shadingNamesGen;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfResources(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.resourceToName = new HashMap();
        this.fontNamesGen = new ResourceNameGenerator(PdfName.Font, f3101F);
        this.imageNamesGen = new ResourceNameGenerator(PdfName.XObject, f3104Im);
        this.formNamesGen = new ResourceNameGenerator(PdfName.XObject, f3102Fm);
        this.egsNamesGen = new ResourceNameGenerator(PdfName.ExtGState, f3103Gs);
        this.propNamesGen = new ResourceNameGenerator(PdfName.Properties, f3106Pr);
        this.csNamesGen = new ResourceNameGenerator(PdfName.ColorSpace, f3100Cs);
        this.patternNamesGen = new ResourceNameGenerator(PdfName.Pattern, "P");
        this.shadingNamesGen = new ResourceNameGenerator(PdfName.Shading, f3107Sh);
        this.readOnly = false;
        this.isModified = false;
        buildResources(pdfDictionary);
    }

    public PdfResources() {
        this(new PdfDictionary());
    }

    public PdfName addFont(PdfDocument pdfDocument, PdfFont pdfFont) {
        pdfDocument.addFont(pdfFont);
        return addResource(pdfFont, this.fontNamesGen);
    }

    public PdfName addImage(PdfImageXObject pdfImageXObject) {
        return addResource(pdfImageXObject, this.imageNamesGen);
    }

    public PdfName addImage(PdfStream pdfStream) {
        return addResource(pdfStream, this.imageNamesGen);
    }

    public PdfImageXObject getImage(PdfName pdfName) {
        PdfStream asStream = getResource(PdfName.XObject).getAsStream(pdfName);
        if (asStream == null || !PdfName.Image.equals(asStream.getAsName(PdfName.Subtype))) {
            return null;
        }
        return new PdfImageXObject(asStream);
    }

    public PdfName addForm(PdfFormXObject pdfFormXObject) {
        return addResource(pdfFormXObject, this.formNamesGen);
    }

    public PdfName addForm(PdfStream pdfStream) {
        return addResource(pdfStream, this.formNamesGen);
    }

    public PdfName addForm(PdfFormXObject pdfFormXObject, PdfName pdfName) {
        if (getResourceNames(PdfName.XObject).contains(pdfName)) {
            return addResource(pdfFormXObject, this.formNamesGen);
        }
        addResource(pdfFormXObject.getPdfObject(), PdfName.XObject, pdfName);
        return pdfName;
    }

    public PdfFormXObject getForm(PdfName pdfName) {
        PdfStream asStream = getResource(PdfName.XObject).getAsStream(pdfName);
        if (asStream == null || !PdfName.Form.equals(asStream.getAsName(PdfName.Subtype))) {
            return null;
        }
        return new PdfFormXObject(asStream);
    }

    public PdfName addExtGState(PdfExtGState pdfExtGState) {
        return addResource(pdfExtGState, this.egsNamesGen);
    }

    public PdfName addExtGState(PdfDictionary pdfDictionary) {
        return addResource(pdfDictionary, this.egsNamesGen);
    }

    public PdfExtGState getPdfExtGState(PdfName pdfName) {
        PdfDictionary asDictionary = getResource(PdfName.ExtGState).getAsDictionary(pdfName);
        if (asDictionary != null) {
            return new PdfExtGState(asDictionary);
        }
        return null;
    }

    public PdfName addProperties(PdfDictionary pdfDictionary) {
        return addResource(pdfDictionary, this.propNamesGen);
    }

    public PdfObject getProperties(PdfName pdfName) {
        return getResourceObject(PdfName.Properties, pdfName);
    }

    public PdfName addColorSpace(PdfColorSpace pdfColorSpace) {
        return addResource(pdfColorSpace, this.csNamesGen);
    }

    public PdfName addColorSpace(PdfObject pdfObject) {
        return addResource(pdfObject, this.csNamesGen);
    }

    public PdfColorSpace getColorSpace(PdfName pdfName) {
        PdfObject resourceObject = getResourceObject(PdfName.ColorSpace, pdfName);
        if (resourceObject != null) {
            return PdfColorSpace.makeColorSpace(resourceObject);
        }
        return null;
    }

    public PdfName addPattern(PdfPattern pdfPattern) {
        return addResource(pdfPattern, this.patternNamesGen);
    }

    public PdfName addPattern(PdfDictionary pdfDictionary) {
        return addResource(pdfDictionary, this.patternNamesGen);
    }

    public PdfPattern getPattern(PdfName pdfName) {
        PdfObject resourceObject = getResourceObject(PdfName.Pattern, pdfName);
        if (resourceObject instanceof PdfDictionary) {
            return PdfPattern.getPatternInstance((PdfDictionary) resourceObject);
        }
        return null;
    }

    public PdfName addShading(PdfShading pdfShading) {
        return addResource(pdfShading, this.shadingNamesGen);
    }

    public PdfName addShading(PdfDictionary pdfDictionary) {
        return addResource(pdfDictionary, this.shadingNamesGen);
    }

    public PdfShading getShading(PdfName pdfName) {
        PdfObject resourceObject = getResourceObject(PdfName.Shading, pdfName);
        if (resourceObject instanceof PdfDictionary) {
            return PdfShading.makeShading((PdfDictionary) resourceObject);
        }
        return null;
    }

    protected boolean isReadOnly() {
        return this.readOnly;
    }

    protected void setReadOnly(boolean z) {
        this.readOnly = z;
    }

    protected boolean isModified() {
        return this.isModified;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public PdfObjectWrapper<PdfDictionary> setModified() {
        this.isModified = true;
        return super.setModified();
    }

    public void setDefaultGray(PdfColorSpace pdfColorSpace) {
        addResource(pdfColorSpace.getPdfObject(), PdfName.ColorSpace, PdfName.DefaultGray);
    }

    public void setDefaultRgb(PdfColorSpace pdfColorSpace) {
        addResource(pdfColorSpace.getPdfObject(), PdfName.ColorSpace, PdfName.DefaultRGB);
    }

    public void setDefaultCmyk(PdfColorSpace pdfColorSpace) {
        addResource(pdfColorSpace.getPdfObject(), PdfName.ColorSpace, PdfName.DefaultCMYK);
    }

    public <T extends PdfObject> PdfName getResourceName(PdfObjectWrapper<T> pdfObjectWrapper) {
        return getResourceName(pdfObjectWrapper.getPdfObject());
    }

    public PdfName getResourceName(PdfObject pdfObject) {
        PdfName pdfName = this.resourceToName.get(pdfObject);
        return pdfName == null ? this.resourceToName.get(pdfObject.getIndirectReference()) : pdfName;
    }

    public Set<PdfName> getResourceNames() {
        TreeSet treeSet = new TreeSet();
        Iterator<PdfName> it = getPdfObject().keySet().iterator();
        while (it.hasNext()) {
            treeSet.addAll(getResourceNames(it.next()));
        }
        return treeSet;
    }

    public PdfArray getProcSet() {
        return getPdfObject().getAsArray(PdfName.ProcSet);
    }

    public void setProcSet(PdfArray pdfArray) {
        getPdfObject().put(PdfName.ProcSet, pdfArray);
    }

    public Set<PdfName> getResourceNames(PdfName pdfName) {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(pdfName);
        return asDictionary == null ? Collections.emptySet() : asDictionary.keySet();
    }

    public PdfDictionary getResource(PdfName pdfName) {
        return getPdfObject().getAsDictionary(pdfName);
    }

    public PdfObject getResourceObject(PdfName pdfName, PdfName pdfName2) {
        PdfDictionary resource = getResource(pdfName);
        if (resource != null) {
            return resource.get(pdfName2);
        }
        return null;
    }

    <T extends PdfObject> PdfName addResource(PdfObjectWrapper<T> pdfObjectWrapper, ResourceNameGenerator resourceNameGenerator) {
        return addResource(pdfObjectWrapper.getPdfObject(), resourceNameGenerator);
    }

    protected void addResource(PdfObject pdfObject, PdfName pdfName, PdfName pdfName2) {
        if (pdfName.equals(PdfName.XObject)) {
            checkAndResolveCircularReferences(pdfObject);
        }
        if (this.readOnly) {
            setPdfObject(getPdfObject().clone(Collections.emptyList()));
            buildResources(getPdfObject());
            this.isModified = true;
            this.readOnly = false;
        }
        if (getPdfObject().containsKey(pdfName) && getPdfObject().getAsDictionary(pdfName).containsKey(pdfName2)) {
            return;
        }
        this.resourceToName.put(pdfObject, pdfName2);
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(pdfName);
        if (asDictionary == null) {
            PdfDictionary pdfObject2 = getPdfObject();
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfObject2.put(pdfName, pdfDictionary);
            asDictionary = pdfDictionary;
        } else {
            asDictionary.setModified();
        }
        asDictionary.put(pdfName2, pdfObject);
        setModified();
    }

    PdfName addResource(PdfObject pdfObject, ResourceNameGenerator resourceNameGenerator) {
        PdfName resourceName = getResourceName(pdfObject);
        if (resourceName != null) {
            return resourceName;
        }
        PdfName pdfNameGenerate = resourceNameGenerator.generate(this);
        addResource(pdfObject, resourceNameGenerator.getResourceType(), pdfNameGenerate);
        return pdfNameGenerate;
    }

    protected void buildResources(PdfDictionary pdfDictionary) {
        for (PdfName pdfName : pdfDictionary.keySet()) {
            if (getPdfObject().get(pdfName) == null) {
                getPdfObject().put(pdfName, new PdfDictionary());
            }
            PdfDictionary asDictionary = pdfDictionary.getAsDictionary(pdfName);
            if (asDictionary != null) {
                for (PdfName pdfName2 : asDictionary.keySet()) {
                    this.resourceToName.put(asDictionary.get(pdfName2, false), pdfName2);
                }
            }
        }
    }

    private void checkAndResolveCircularReferences(PdfObject pdfObject) {
        PdfDictionary pdfDictionary;
        PdfObject pdfObject2;
        if (!(pdfObject instanceof PdfDictionary) || pdfObject.isFlushed() || (pdfObject2 = (pdfDictionary = (PdfDictionary) pdfObject).get(PdfName.Resources)) == null || pdfObject2.getIndirectReference() == null || !pdfObject2.getIndirectReference().equals(getPdfObject().getIndirectReference())) {
            return;
        }
        PdfObject pdfObjectClone = getPdfObject().m3121clone();
        pdfObjectClone.makeIndirect(getPdfObject().getIndirectReference().getDocument());
        pdfDictionary.put(PdfName.Resources, pdfObjectClone.getIndirectReference());
    }

    static class ResourceNameGenerator {
        private int counter;
        private String prefix;
        private PdfName resourceType;

        public ResourceNameGenerator(PdfName pdfName, String str, int i) {
            this.prefix = str;
            this.resourceType = pdfName;
            this.counter = i;
        }

        public ResourceNameGenerator(PdfName pdfName, String str) {
            this(pdfName, str, 1);
        }

        public PdfName getResourceType() {
            return this.resourceType;
        }

        public PdfName generate(PdfResources pdfResources) {
            StringBuilder sbAppend = new StringBuilder().append(this.prefix);
            int i = this.counter;
            this.counter = i + 1;
            PdfName pdfName = new PdfName(sbAppend.append(i).toString());
            PdfDictionary pdfObject = pdfResources.getPdfObject();
            if (pdfObject.containsKey(this.resourceType)) {
                while (pdfObject.getAsDictionary(this.resourceType).containsKey(pdfName)) {
                    StringBuilder sbAppend2 = new StringBuilder().append(this.prefix);
                    int i2 = this.counter;
                    this.counter = i2 + 1;
                    pdfName = new PdfName(sbAppend2.append(i2).toString());
                }
            }
            return pdfName;
        }
    }
}
