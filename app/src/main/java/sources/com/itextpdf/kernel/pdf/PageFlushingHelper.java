package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.events.PdfDocumentEvent;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.pdf.layer.PdfLayer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class PageFlushingHelper {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final DeepFlushingContext pageContext = initPageFlushingContext();
    private HashSet<PdfObject> currNestedObjParents = new HashSet<>();
    private Set<PdfIndirectReference> layersRefs = new HashSet();
    private PdfDocument pdfDoc;
    private boolean release;

    public PageFlushingHelper(PdfDocument pdfDocument) {
        this.pdfDoc = pdfDocument;
    }

    public void unsafeFlushDeep(int i) {
        if (this.pdfDoc.getWriter() == null) {
            throw new IllegalArgumentException(KernelExceptionMessageConstant.FLUSHING_HELPER_FLUSHING_MODE_IS_NOT_FOR_DOC_READING_MODE);
        }
        this.release = false;
        flushPage(i);
    }

    public void releaseDeep(int i) {
        this.release = true;
        flushPage(i);
    }

    public void appendModeFlush(int i) {
        if (this.pdfDoc.getWriter() == null) {
            throw new IllegalArgumentException(KernelExceptionMessageConstant.FLUSHING_HELPER_FLUSHING_MODE_IS_NOT_FOR_DOC_READING_MODE);
        }
        PdfPage page = this.pdfDoc.getPage(i);
        if (page.isFlushed()) {
            return;
        }
        page.getDocument().dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.END_PAGE, page));
        boolean zIsModified = page.getPdfObject().isModified();
        page.setModified();
        this.release = true;
        boolean z = flushPage(i) || zIsModified;
        PdfArray asArray = page.getPdfObject().getAsArray(PdfName.Annots);
        if (asArray != null && !asArray.isFlushed()) {
            arrayFlushIfModified(asArray);
        }
        flushIfModified(page.getPdfObject().get(PdfName.Thumb, false));
        PdfObject pdfObject = page.getPdfObject().get(PdfName.Contents, false);
        if (pdfObject instanceof PdfIndirectReference) {
            if (pdfObject.checkState((short) 8) && !pdfObject.checkState((short) 1)) {
                PdfObject refersTo = ((PdfIndirectReference) pdfObject).getRefersTo();
                if (refersTo.isArray()) {
                    arrayFlushIfModified((PdfArray) refersTo);
                } else {
                    refersTo.flush();
                }
            }
        } else if (pdfObject instanceof PdfArray) {
            arrayFlushIfModified((PdfArray) pdfObject);
        } else if (pdfObject instanceof PdfStream) {
            flushIfModified(pdfObject);
        }
        if (!z) {
            page.getPdfObject().getIndirectReference().clearState((short) 8);
            this.pdfDoc.getCatalog().getPageTree().releasePage(i);
            page.unsetForbidRelease();
            page.getPdfObject().release();
            return;
        }
        page.releaseInstanceFields();
        page.getPdfObject().flush();
    }

    private boolean flushPage(int i) {
        PdfPage page = this.pdfDoc.getPage(i);
        boolean z = false;
        if (page.isFlushed()) {
            return false;
        }
        if (!this.release) {
            this.pdfDoc.dispatchEvent(new PdfDocumentEvent(PdfDocumentEvent.END_PAGE, page));
            initCurrentLayers(this.pdfDoc);
        }
        PdfDictionary pdfObject = page.getPdfObject();
        PdfDictionary pdfDictionaryInitResources = page.initResources(false);
        PdfResources resources = page.getResources(false);
        if (resources != null && resources.isModified() && !resources.isReadOnly()) {
            pdfDictionaryInitResources = resources.getPdfObject();
            pdfObject.put(PdfName.Resources, resources.getPdfObject());
            pdfObject.setModified();
            z = true;
        }
        if (!pdfDictionaryInitResources.isFlushed()) {
            flushDictRecursively(pdfDictionaryInitResources, null);
            flushOrRelease(pdfDictionaryInitResources);
        }
        flushDictRecursively(pdfObject, pageContext);
        if (this.release) {
            if (!page.getPdfObject().isModified()) {
                this.pdfDoc.getCatalog().getPageTree().releasePage(i);
                page.unsetForbidRelease();
                page.getPdfObject().release();
            }
        } else {
            if (this.pdfDoc.isTagged() && !this.pdfDoc.getStructTreeRoot().isFlushed()) {
                page.tryFlushPageTags();
            }
            if (!this.pdfDoc.isAppendMode() || page.getPdfObject().isModified()) {
                page.releaseInstanceFields();
                page.getPdfObject().flush();
            } else {
                this.pdfDoc.getCatalog().getPageTree().releasePage(i);
                page.unsetForbidRelease();
                page.getPdfObject().release();
            }
        }
        this.layersRefs.clear();
        return z;
    }

    private void initCurrentLayers(PdfDocument pdfDocument) {
        if (pdfDocument.getCatalog().isOCPropertiesMayHaveChanged()) {
            Iterator<PdfLayer> it = pdfDocument.getCatalog().getOCProperties(false).getLayers().iterator();
            while (it.hasNext()) {
                this.layersRefs.add(((PdfDictionary) it.next().getPdfObject()).getIndirectReference());
            }
        }
    }

    private void flushObjectRecursively(PdfObject pdfObject, DeepFlushingContext deepFlushingContext) {
        if (pdfObject == null) {
            return;
        }
        boolean z = true;
        if (pdfObject.isIndirectReference()) {
            PdfIndirectReference pdfIndirectReference = (PdfIndirectReference) pdfObject;
            if (pdfIndirectReference.refersTo == null || pdfIndirectReference.checkState((short) 1)) {
                return;
            } else {
                pdfObject = pdfIndirectReference.getRefersTo();
            }
        } else {
            if (pdfObject.isFlushed()) {
                return;
            }
            if (!this.release || !pdfObject.isIndirect()) {
            }
            if (!this.pdfDoc.isDocumentFont(pdfObject.getIndirectReference()) || this.layersRefs.contains(pdfObject.getIndirectReference())) {
            }
            if (pdfObject.isDictionary() || pdfObject.isStream()) {
                if (!this.currNestedObjParents.add(pdfObject)) {
                    return;
                }
                flushDictRecursively((PdfDictionary) pdfObject, deepFlushingContext);
                this.currNestedObjParents.remove(pdfObject);
            } else if (pdfObject.isArray()) {
                if (!this.currNestedObjParents.add(pdfObject)) {
                    return;
                }
                PdfArray pdfArray = (PdfArray) pdfObject;
                for (int i = 0; i < pdfArray.size(); i++) {
                    flushObjectRecursively(pdfArray.get(i, false), deepFlushingContext);
                }
                this.currNestedObjParents.remove(pdfObject);
            }
            if (z) {
                return;
            }
            flushOrRelease(pdfObject);
            return;
        }
        z = false;
        if (this.pdfDoc.isDocumentFont(pdfObject.getIndirectReference())) {
        }
    }

    private void flushDictRecursively(PdfDictionary pdfDictionary, DeepFlushingContext deepFlushingContext) {
        DeepFlushingContext innerContextFor;
        for (PdfName pdfName : pdfDictionary.keySet()) {
            if (deepFlushingContext == null) {
                innerContextFor = null;
            } else if (!deepFlushingContext.isKeyInBlackList(pdfName)) {
                innerContextFor = deepFlushingContext.getInnerContextFor(pdfName);
            }
            flushObjectRecursively(pdfDictionary.get(pdfName, false), innerContextFor);
        }
    }

    private void flushOrRelease(PdfObject pdfObject) {
        if (this.release) {
            if (pdfObject.isReleaseForbidden()) {
                return;
            }
            pdfObject.release();
            return;
        }
        makeIndirectIfNeeded(pdfObject);
        if (!this.pdfDoc.isAppendMode() || pdfObject.isModified()) {
            pdfObject.flush();
        } else {
            if (pdfObject.isReleaseForbidden()) {
                return;
            }
            pdfObject.release();
        }
    }

    private void flushIfModified(PdfObject pdfObject) {
        if (pdfObject != null && !(pdfObject instanceof PdfIndirectReference)) {
            makeIndirectIfNeeded(pdfObject);
            pdfObject = pdfObject.getIndirectReference();
        }
        if (pdfObject == null || !pdfObject.checkState((short) 8) || pdfObject.checkState((short) 1)) {
            return;
        }
        ((PdfIndirectReference) pdfObject).getRefersTo().flush();
    }

    private void arrayFlushIfModified(PdfArray pdfArray) {
        for (int i = 0; i < pdfArray.size(); i++) {
            flushIfModified(pdfArray.get(i, false));
        }
    }

    private void makeIndirectIfNeeded(PdfObject pdfObject) {
        if (pdfObject.checkState((short) 64)) {
            pdfObject.makeIndirect(this.pdfDoc);
        }
    }

    private static DeepFlushingContext initPageFlushingContext() {
        Map mapEmptyMap = Collections.emptyMap();
        DeepFlushingContext deepFlushingContext = new DeepFlushingContext(new LinkedHashSet(Arrays.asList(PdfName.f2992D, PdfName.f3067SD, PdfName.f2999Dp, PdfName.f2973B, PdfName.Annotation, PdfName.f3071T, PdfName.f2970AN, PdfName.f3072TA)), mapEmptyMap);
        DeepFlushingContext deepFlushingContext2 = new DeepFlushingContext(deepFlushingContext);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DeepFlushingContext deepFlushingContext3 = new DeepFlushingContext(new LinkedHashSet(Arrays.asList(PdfName.f3047P, PdfName.Popup, PdfName.Dest, PdfName.Parent, PdfName.f3086V)), linkedHashMap);
        linkedHashMap.put(PdfName.f2967A, deepFlushingContext);
        linkedHashMap.put(PdfName.f3048PA, deepFlushingContext);
        linkedHashMap.put(PdfName.f2968AA, deepFlushingContext2);
        DeepFlushingContext deepFlushingContext4 = new DeepFlushingContext(new LinkedHashSet(Collections.singletonList(PdfName.Pages)), mapEmptyMap);
        DeepFlushingContext deepFlushingContext5 = new DeepFlushingContext(null, mapEmptyMap);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        DeepFlushingContext deepFlushingContext6 = new DeepFlushingContext(new LinkedHashSet(Collections.singletonList(PdfName.Prev)), linkedHashMap2);
        linkedHashMap2.put(PdfName.f3038NA, deepFlushingContext);
        linkedHashMap2.put(PdfName.f3048PA, deepFlushingContext);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        DeepFlushingContext deepFlushingContext7 = new DeepFlushingContext(new LinkedHashSet(Arrays.asList(PdfName.Parent, PdfName.DPart)), linkedHashMap3);
        linkedHashMap3.put(PdfName.Annots, deepFlushingContext3);
        linkedHashMap3.put(PdfName.f2973B, deepFlushingContext5);
        linkedHashMap3.put(PdfName.f2968AA, deepFlushingContext2);
        linkedHashMap3.put(PdfName.SeparationInfo, deepFlushingContext4);
        linkedHashMap3.put(PdfName.PresSteps, deepFlushingContext6);
        return deepFlushingContext7;
    }

    private static class DeepFlushingContext {
        Set<PdfName> blackList;
        Map<PdfName, DeepFlushingContext> innerContexts;
        DeepFlushingContext unconditionalInnerContext;

        public DeepFlushingContext(Set<PdfName> set, Map<PdfName, DeepFlushingContext> map) {
            this.blackList = set;
            this.innerContexts = map;
        }

        public DeepFlushingContext(DeepFlushingContext deepFlushingContext) {
            this.blackList = Collections.emptySet();
            this.innerContexts = null;
            this.unconditionalInnerContext = deepFlushingContext;
        }

        public boolean isKeyInBlackList(PdfName pdfName) {
            Set<PdfName> set = this.blackList;
            return set == null || set.contains(pdfName);
        }

        public DeepFlushingContext getInnerContextFor(PdfName pdfName) {
            Map<PdfName, DeepFlushingContext> map = this.innerContexts;
            return map == null ? this.unconditionalInnerContext : map.get(pdfName);
        }
    }
}
