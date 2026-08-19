package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.IsoKey;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNull;
import com.itextpdf.kernel.pdf.PdfNumTree;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class ParentTreeHandler {
    private Map<PdfIndirectReference, PageMcrsContainer> pageToPageMcrs;
    private Map<PdfIndirectReference, Integer> pageToStructParentsInd;
    private PdfNumTree parentTree;
    private PdfStructTreeRoot structTreeRoot;
    private Map<PdfIndirectReference, Integer> xObjectToStructParentsInd = new HashMap();

    ParentTreeHandler(PdfStructTreeRoot pdfStructTreeRoot) {
        this.structTreeRoot = pdfStructTreeRoot;
        this.parentTree = new PdfNumTree(pdfStructTreeRoot.getDocument().getCatalog(), PdfName.ParentTree);
        registerAllMcrs();
        this.pageToStructParentsInd = new HashMap();
    }

    public PageMcrsContainer getPageMarkedContentReferences(PdfPage pdfPage) {
        return this.pageToPageMcrs.get(pdfPage.getPdfObject().getIndirectReference());
    }

    public PdfMcr findMcrByMcid(PdfDictionary pdfDictionary, int i) {
        PageMcrsContainer pageMcrsContainer = this.pageToPageMcrs.get(pdfDictionary.getIndirectReference());
        if (pageMcrsContainer != null) {
            return (PdfMcr) pageMcrsContainer.getPageContentStreamsMcrs().get(Integer.valueOf(i));
        }
        return null;
    }

    public PdfObjRef findObjRefByStructParentIndex(PdfDictionary pdfDictionary, int i) {
        PageMcrsContainer pageMcrsContainer = this.pageToPageMcrs.get(pdfDictionary.getIndirectReference());
        if (pageMcrsContainer != null) {
            return (PdfObjRef) pageMcrsContainer.getObjRefs().get(Integer.valueOf(i));
        }
        return null;
    }

    public int getNextMcidForPage(PdfPage pdfPage) {
        PageMcrsContainer pageMarkedContentReferences = getPageMarkedContentReferences(pdfPage);
        if (pageMarkedContentReferences == null || pageMarkedContentReferences.getPageContentStreamsMcrs().size() == 0) {
            return 0;
        }
        return pageMarkedContentReferences.getPageContentStreamsMcrs().lastEntry().getKey().intValue() + 1;
    }

    public void createParentTreeEntryForPage(PdfPage pdfPage) {
        PageMcrsContainer pageMarkedContentReferences = getPageMarkedContentReferences(pdfPage);
        if (pageMarkedContentReferences == null) {
            return;
        }
        this.pageToPageMcrs.remove(pdfPage.getPdfObject().getIndirectReference());
        if (updateStructParentTreeEntries(pdfPage, pageMarkedContentReferences)) {
            this.structTreeRoot.setModified();
        }
    }

    public void savePageStructParentIndexIfNeeded(PdfPage pdfPage) {
        PdfIndirectReference indirectReference = pdfPage.getPdfObject().getIndirectReference();
        if (pdfPage.isFlushed() || this.pageToPageMcrs.get(indirectReference) == null) {
            return;
        }
        if (this.pageToPageMcrs.get(indirectReference).getPageContentStreamsMcrs().size() > 0 || this.pageToPageMcrs.get(indirectReference).getPageResourceXObjects().size() > 0) {
            this.pageToStructParentsInd.put(indirectReference, Integer.valueOf(getOrCreatePageStructParentIndex(pdfPage)));
        }
    }

    public PdfDictionary buildParentTree() {
        return (PdfDictionary) this.parentTree.buildTree().makeIndirect(this.structTreeRoot.getDocument());
    }

    public void registerMcr(PdfMcr pdfMcr) {
        registerMcr(pdfMcr, false);
    }

    private void registerMcr(PdfMcr pdfMcr, boolean z) {
        boolean z2;
        PdfStream pdfStream;
        PdfIndirectReference indirectReference;
        PdfIndirectReference pageIndirectReference = pdfMcr.getPageIndirectReference();
        if (pageIndirectReference == null || (!((z2 = pdfMcr instanceof PdfObjRef)) && pdfMcr.getMcid() < 0)) {
            LoggerFactory.getLogger((Class<?>) ParentTreeHandler.class).error(IoLogMessageConstant.ENCOUNTERED_INVALID_MCR);
            return;
        }
        PageMcrsContainer pageMcrsContainer = this.pageToPageMcrs.get(pageIndirectReference);
        if (pageMcrsContainer == null) {
            pageMcrsContainer = new PageMcrsContainer();
            this.pageToPageMcrs.put(pageIndirectReference, pageMcrsContainer);
        }
        PdfObject stm = getStm(pdfMcr);
        if (stm != null) {
            if (stm instanceof PdfIndirectReference) {
                indirectReference = (PdfIndirectReference) stm;
                pdfStream = (PdfStream) indirectReference.getRefersTo();
            } else {
                if (stm.getIndirectReference() == null) {
                    stm.makeIndirect(this.structTreeRoot.getDocument());
                }
                pdfStream = (PdfStream) stm;
                indirectReference = stm.getIndirectReference();
            }
            Integer asInt = pdfStream.getAsInt(PdfName.StructParents);
            if (asInt != null) {
                this.xObjectToStructParentsInd.put(indirectReference, asInt);
            } else {
                LoggerFactory.getLogger((Class<?>) ParentTreeHandler.class).error(IoLogMessageConstant.XOBJECT_HAS_NO_STRUCT_PARENTS);
            }
            pageMcrsContainer.putXObjectMcr(indirectReference, pdfMcr);
            if (z) {
                pdfStream.release();
            }
        } else if (z2) {
            PdfDictionary asDictionary = ((PdfDictionary) pdfMcr.getPdfObject()).getAsDictionary(PdfName.Obj);
            if (asDictionary == null || asDictionary.isFlushed()) {
                throw new PdfException(KernelExceptionMessageConstant.f2932x1aeb7c0);
            }
            PdfNumber asNumber = asDictionary.getAsNumber(PdfName.StructParent);
            if (asNumber != null) {
                pageMcrsContainer.putObjectReferenceMcr(asNumber.intValue(), pdfMcr);
            } else {
                throw new PdfException(KernelExceptionMessageConstant.STRUCT_PARENT_INDEX_NOT_FOUND_IN_TAGGED_OBJECT);
            }
        } else {
            pageMcrsContainer.putPageContentStreamMcr(pdfMcr.getMcid(), pdfMcr);
        }
        if (z) {
            return;
        }
        this.structTreeRoot.setModified();
    }

    public void unregisterMcr(PdfMcr pdfMcr) {
        PdfNumber asNumber;
        PdfDictionary pageObject = pdfMcr.getPageObject();
        if (pageObject == null) {
            return;
        }
        if (pageObject.isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.f2912xdd388fd4);
        }
        PageMcrsContainer pageMcrsContainer = this.pageToPageMcrs.get(pageObject.getIndirectReference());
        if (pageMcrsContainer != null) {
            PdfObject stm = getStm(pdfMcr);
            if (stm != null) {
                PdfIndirectReference indirectReference = stm instanceof PdfIndirectReference ? (PdfIndirectReference) stm : stm.getIndirectReference();
                pageMcrsContainer.getPageResourceXObjects().get(indirectReference).remove(Integer.valueOf(pdfMcr.getMcid()));
                if (pageMcrsContainer.getPageResourceXObjects().get(indirectReference).isEmpty()) {
                    pageMcrsContainer.getPageResourceXObjects().remove(indirectReference);
                    this.xObjectToStructParentsInd.remove(indirectReference);
                }
                this.structTreeRoot.setModified();
                return;
            }
            if (pdfMcr instanceof PdfObjRef) {
                PdfDictionary asDictionary = ((PdfDictionary) pdfMcr.getPdfObject()).getAsDictionary(PdfName.Obj);
                if (asDictionary != null && !asDictionary.isFlushed() && (asNumber = asDictionary.getAsNumber(PdfName.StructParent)) != null) {
                    pageMcrsContainer.getObjRefs().remove(Integer.valueOf(asNumber.intValue()));
                    this.structTreeRoot.setModified();
                    return;
                }
                for (Map.Entry<Integer, PdfMcr> entry : pageMcrsContainer.getObjRefs().entrySet()) {
                    if (entry.getValue().getPdfObject() == pdfMcr.getPdfObject()) {
                        pageMcrsContainer.getObjRefs().remove(entry.getKey());
                        this.structTreeRoot.setModified();
                        return;
                    }
                }
                return;
            }
            pageMcrsContainer.getPageContentStreamsMcrs().remove(Integer.valueOf(pdfMcr.getMcid()));
            this.structTreeRoot.setModified();
        }
    }

    private void registerAllMcrs() {
        this.pageToPageMcrs = new HashMap();
        Map<Integer, PdfObject> numbers = new PdfNumTree(this.structTreeRoot.getDocument().getCatalog(), PdfName.ParentTree).getNumbers();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int iIntValue = -1;
        for (Map.Entry<Integer, PdfObject> entry : numbers.entrySet()) {
            if (entry.getKey().intValue() > iIntValue) {
                iIntValue = entry.getKey().intValue();
            }
            PdfObject value = entry.getValue();
            if (value.isDictionary()) {
                linkedHashSet.add((PdfDictionary) value);
            } else if (value.isArray()) {
                PdfArray pdfArray = (PdfArray) value;
                for (int i = 0; i < pdfArray.size(); i++) {
                    PdfDictionary asDictionary = pdfArray.getAsDictionary(i);
                    if (asDictionary != null) {
                        linkedHashSet.add(asDictionary);
                    }
                }
            }
        }
        this.structTreeRoot.getPdfObject().put(PdfName.ParentTreeNextKey, new PdfNumber(iIntValue + 1));
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            for (IStructureNode iStructureNode : new PdfStructElem((PdfDictionary) ((PdfObject) it.next())).getKids()) {
                if (iStructureNode instanceof PdfMcr) {
                    registerMcr((PdfMcr) iStructureNode, true);
                }
            }
        }
    }

    private boolean updateStructParentTreeEntries(PdfPage pdfPage, PageMcrsContainer pageMcrsContainer) {
        int orCreatePageStructParentIndex;
        boolean z = false;
        for (Map.Entry<Integer, PdfMcr> entry : pageMcrsContainer.getObjRefs().entrySet()) {
            PdfDictionary pdfObject = ((PdfStructElem) entry.getValue().getParent()).getPdfObject();
            if (pdfObject.isIndirect()) {
                this.parentTree.addEntry(entry.getKey().intValue(), pdfObject);
                z = true;
            }
        }
        for (Map.Entry<PdfIndirectReference, TreeMap<Integer, PdfMcr>> entry2 : pageMcrsContainer.getPageResourceXObjects().entrySet()) {
            PdfIndirectReference key = entry2.getKey();
            if (this.xObjectToStructParentsInd.containsKey(key)) {
                if (updateStructParentTreeForContentStreamEntries(entry2.getValue(), this.xObjectToStructParentsInd.remove(key).intValue())) {
                    z = true;
                }
            }
        }
        if (pdfPage.isFlushed()) {
            PdfIndirectReference indirectReference = pdfPage.getPdfObject().getIndirectReference();
            if (!this.pageToStructParentsInd.containsKey(indirectReference)) {
                return z;
            }
            orCreatePageStructParentIndex = this.pageToStructParentsInd.remove(indirectReference).intValue();
        } else {
            orCreatePageStructParentIndex = getOrCreatePageStructParentIndex(pdfPage);
        }
        if (updateStructParentTreeForContentStreamEntries(pageMcrsContainer.getPageContentStreamsMcrs(), orCreatePageStructParentIndex)) {
            return true;
        }
        return z;
    }

    private boolean updateStructParentTreeForContentStreamEntries(Map<Integer, PdfMcr> map, int i) {
        int i2;
        PdfArray pdfArray = new PdfArray();
        Iterator<Map.Entry<Integer, PdfMcr>> it = map.entrySet().iterator();
        int i3 = 0;
        while (it.hasNext()) {
            PdfMcr value = it.next().getValue();
            PdfDictionary pdfObject = ((PdfStructElem) value.getParent()).getPdfObject();
            if (pdfObject.isIndirect()) {
                while (true) {
                    i2 = i3 + 1;
                    if (i3 >= value.getMcid()) {
                        break;
                    }
                    pdfArray.add(PdfNull.PDF_NULL);
                    i3 = i2;
                }
                pdfArray.add(pdfObject);
                i3 = i2;
            }
        }
        if (pdfArray.isEmpty()) {
            return false;
        }
        pdfArray.makeIndirect(this.structTreeRoot.getDocument());
        this.parentTree.addEntry(i, pdfArray);
        this.structTreeRoot.getDocument().checkIsoConformance(pdfArray, IsoKey.TAG_STRUCTURE_ELEMENT);
        pdfArray.flush();
        return true;
    }

    private int getOrCreatePageStructParentIndex(PdfPage pdfPage) {
        int structParentIndex = pdfPage.getStructParentIndex();
        if (structParentIndex >= 0) {
            return structParentIndex;
        }
        int nextStructParentIndex = pdfPage.getDocument().getNextStructParentIndex();
        pdfPage.getPdfObject().put(PdfName.StructParents, new PdfNumber(nextStructParentIndex));
        return nextStructParentIndex;
    }

    private static PdfObject getStm(PdfMcr pdfMcr) {
        if (pdfMcr instanceof PdfMcrDictionary) {
            return ((PdfDictionary) pdfMcr.getPdfObject()).get(PdfName.Stm, false);
        }
        return null;
    }

    static class PageMcrsContainer {
        Map<Integer, PdfMcr> objRefs = new LinkedHashMap();
        NavigableMap<Integer, PdfMcr> pageContentStreams = new TreeMap();
        Map<PdfIndirectReference, TreeMap<Integer, PdfMcr>> pageResourceXObjects = new LinkedHashMap();

        PageMcrsContainer() {
        }

        void putObjectReferenceMcr(int i, PdfMcr pdfMcr) {
            this.objRefs.put(Integer.valueOf(i), pdfMcr);
        }

        void putPageContentStreamMcr(int i, PdfMcr pdfMcr) {
            this.pageContentStreams.put(Integer.valueOf(i), pdfMcr);
        }

        void putXObjectMcr(PdfIndirectReference pdfIndirectReference, PdfMcr pdfMcr) {
            if (this.pageResourceXObjects.get(pdfIndirectReference) == null) {
                this.pageResourceXObjects.put(pdfIndirectReference, new TreeMap<>());
            }
            this.pageResourceXObjects.get(pdfIndirectReference).put(Integer.valueOf(pdfMcr.getMcid()), pdfMcr);
        }

        NavigableMap<Integer, PdfMcr> getPageContentStreamsMcrs() {
            return this.pageContentStreams;
        }

        Map<Integer, PdfMcr> getObjRefs() {
            return this.objRefs;
        }

        Map<PdfIndirectReference, TreeMap<Integer, PdfMcr>> getPageResourceXObjects() {
            return this.pageResourceXObjects;
        }

        Collection<PdfMcr> getAllMcrsAsCollection() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.objRefs.values());
            arrayList.addAll(this.pageContentStreams.values());
            Iterator<Map.Entry<PdfIndirectReference, TreeMap<Integer, PdfMcr>>> it = this.pageResourceXObjects.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().getValue().values());
            }
            return arrayList;
        }
    }
}
