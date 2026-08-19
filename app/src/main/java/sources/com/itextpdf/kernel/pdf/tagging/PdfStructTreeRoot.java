package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.VersionConforming;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.kernel.pdf.tagging.ParentTreeHandler;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStructTreeRoot extends PdfObjectWrapper<PdfDictionary> implements IStructureNode {
    private static Map<String, PdfName> staticRoleNames = new ConcurrentHashMap();
    private PdfDocument document;
    private ParentTreeHandler parentTreeHandler;

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public IStructureNode getParent() {
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public PdfName getRole() {
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfStructTreeRoot(PdfDocument pdfDocument) {
        this((PdfDictionary) new PdfDictionary().makeIndirect(pdfDocument), pdfDocument);
        getPdfObject().put(PdfName.Type, PdfName.StructTreeRoot);
    }

    public PdfStructTreeRoot(PdfDictionary pdfDictionary, PdfDocument pdfDocument) {
        super(pdfDictionary);
        this.document = pdfDocument;
        if (pdfDocument == null) {
            ensureObjectIsAddedToDocument(pdfDictionary);
            this.document = pdfDictionary.getIndirectReference().getDocument();
        }
        setForbidRelease();
        this.parentTreeHandler = new ParentTreeHandler(this);
        getRoleMap();
    }

    public static PdfName convertRoleToPdfName(String str) {
        PdfName pdfName = PdfName.staticNames.get(str);
        if (pdfName != null) {
            return pdfName;
        }
        PdfName pdfName2 = staticRoleNames.get(str);
        if (pdfName2 != null) {
            return pdfName2;
        }
        PdfName pdfName3 = new PdfName(str);
        staticRoleNames.put(str, pdfName3);
        return pdfName3;
    }

    public PdfStructElem addKid(PdfStructElem pdfStructElem) {
        return addKid(-1, pdfStructElem);
    }

    public PdfStructElem addKid(int i, PdfStructElem pdfStructElem) {
        addKidObject(i, pdfStructElem.getPdfObject());
        return pdfStructElem;
    }

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public List<IStructureNode> getKids() {
        PdfObject pdfObject = getPdfObject().get(PdfName.f3024K);
        ArrayList arrayList = new ArrayList();
        if (pdfObject != null) {
            if (pdfObject.isArray()) {
                PdfArray pdfArray = (PdfArray) pdfObject;
                for (int i = 0; i < pdfArray.size(); i++) {
                    ifKidIsStructElementAddToList(pdfArray.get(i), arrayList);
                }
            } else {
                ifKidIsStructElementAddToList(pdfObject, arrayList);
            }
        }
        return arrayList;
    }

    public PdfArray getKidsObject() {
        PdfObject pdfObject = getPdfObject().get(PdfName.f3024K);
        PdfArray pdfArray = (pdfObject == null || !pdfObject.isArray()) ? null : (PdfArray) pdfObject;
        if (pdfArray == null) {
            pdfArray = new PdfArray();
            getPdfObject().put(PdfName.f3024K, pdfArray);
            setModified();
            if (pdfObject != null) {
                pdfArray.add(pdfObject);
            }
        }
        return pdfArray;
    }

    public void addRoleMapping(String str, String str2) {
        PdfDictionary roleMap = getRoleMap();
        PdfObject pdfObjectPut = roleMap.put(convertRoleToPdfName(str), convertRoleToPdfName(str2));
        if (pdfObjectPut != null && (pdfObjectPut instanceof PdfName)) {
            LoggerFactory.getLogger((Class<?>) PdfStructTreeRoot.class).warn(MessageFormat.format(IoLogMessageConstant.MAPPING_IN_STRUCT_ROOT_OVERWRITTEN, str, pdfObjectPut, str2));
        }
        if (roleMap.isIndirect()) {
            roleMap.setModified();
        } else {
            setModified();
        }
    }

    public PdfDictionary getRoleMap() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.RoleMap);
        if (asDictionary != null) {
            return asDictionary;
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        getPdfObject().put(PdfName.RoleMap, pdfDictionary);
        setModified();
        return pdfDictionary;
    }

    public List<PdfNamespace> getNamespaces() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.Namespaces);
        if (asArray == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(asArray.size());
        for (int i = 0; i < asArray.size(); i++) {
            arrayList.add(new PdfNamespace(asArray.getAsDictionary(i)));
        }
        return arrayList;
    }

    public void addNamespace(PdfNamespace pdfNamespace) {
        getNamespacesObject().add(pdfNamespace.getPdfObject());
        setModified();
    }

    public PdfArray getNamespacesObject() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.Namespaces);
        if (asArray != null) {
            return asArray;
        }
        PdfArray pdfArray = new PdfArray();
        VersionConforming.validatePdfVersionForDictEntry(getDocument(), PdfVersion.PDF_2_0, PdfName.Namespaces, PdfName.StructTreeRoot);
        getPdfObject().put(PdfName.Namespaces, pdfArray);
        setModified();
        return pdfArray;
    }

    public List<PdfFileSpec> getPronunciationLexiconsList() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.PronunciationLexicon);
        if (asArray == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(asArray.size());
        for (int i = 0; i < asArray.size(); i++) {
            arrayList.add(PdfFileSpec.wrapFileSpecObject(asArray.get(i)));
        }
        return arrayList;
    }

    public void addPronunciationLexicon(PdfFileSpec pdfFileSpec) {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.PronunciationLexicon);
        if (asArray == null) {
            asArray = new PdfArray();
            VersionConforming.validatePdfVersionForDictEntry(getDocument(), PdfVersion.PDF_2_0, PdfName.PronunciationLexicon, PdfName.StructTreeRoot);
            getPdfObject().put(PdfName.PronunciationLexicon, asArray);
        }
        asArray.add(pdfFileSpec.getPdfObject());
        setModified();
    }

    public void createParentTreeEntryForPage(PdfPage pdfPage) {
        getParentTreeHandler().createParentTreeEntryForPage(pdfPage);
    }

    public void savePageStructParentIndexIfNeeded(PdfPage pdfPage) {
        getParentTreeHandler().savePageStructParentIndexIfNeeded(pdfPage);
    }

    public Collection<PdfMcr> getPageMarkedContentReferences(PdfPage pdfPage) {
        ParentTreeHandler.PageMcrsContainer pageMarkedContentReferences = getParentTreeHandler().getPageMarkedContentReferences(pdfPage);
        if (pageMarkedContentReferences != null) {
            return Collections.unmodifiableCollection(pageMarkedContentReferences.getAllMcrsAsCollection());
        }
        return null;
    }

    public PdfMcr findMcrByMcid(PdfDictionary pdfDictionary, int i) {
        return getParentTreeHandler().findMcrByMcid(pdfDictionary, i);
    }

    public PdfObjRef findObjRefByStructParentIndex(PdfDictionary pdfDictionary, int i) {
        return getParentTreeHandler().findObjRefByStructParentIndex(pdfDictionary, i);
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        int i = 0;
        while (i < getDocument().getNumberOfPages()) {
            i++;
            createParentTreeEntryForPage(getDocument().getPage(i));
        }
        getPdfObject().put(PdfName.ParentTree, getParentTreeHandler().buildParentTree());
        getPdfObject().put(PdfName.ParentTreeNextKey, new PdfNumber(getDocument().getNextStructParentIndex()));
        if (!getDocument().isAppendMode()) {
            flushAllKids(this);
        }
        super.flush();
    }

    public void copyTo(PdfDocument pdfDocument, Map<PdfPage, PdfPage> map) {
        StructureTreeCopier.copyTo(pdfDocument, map, getDocument());
    }

    public void copyTo(PdfDocument pdfDocument, int i, Map<PdfPage, PdfPage> map) {
        StructureTreeCopier.copyTo(pdfDocument, i, map, getDocument());
    }

    public void move(PdfPage pdfPage, int i) {
        for (int i2 = 1; i2 <= getDocument().getNumberOfPages(); i2++) {
            if (getDocument().getPage(i2).isFlushed()) {
                throw new PdfException(MessageFormatUtil.format(KernelExceptionMessageConstant.CANNOT_MOVE_PAGES_IN_PARTLY_FLUSHED_DOCUMENT, Integer.valueOf(i2)));
            }
        }
        StructureTreeCopier.move(getDocument(), pdfPage, i);
    }

    public int getParentTreeNextKey() {
        return getPdfObject().getAsNumber(PdfName.ParentTreeNextKey).intValue();
    }

    public int getNextMcidForPage(PdfPage pdfPage) {
        return getParentTreeHandler().getNextMcidForPage(pdfPage);
    }

    public PdfDocument getDocument() {
        return this.document;
    }

    public void addAssociatedFile(String str, PdfFileSpec pdfFileSpec) {
        if (((PdfDictionary) pdfFileSpec.getPdfObject()).get(PdfName.AFRelationship) == null) {
            LoggerFactory.getLogger((Class<?>) PdfStructTreeRoot.class).error(IoLogMessageConstant.ASSOCIATED_FILE_SPEC_SHALL_INCLUDE_AFRELATIONSHIP);
        }
        if (str != null) {
            getDocument().getCatalog().getNameTree(PdfName.EmbeddedFiles).addEntry(str, pdfFileSpec.getPdfObject());
        }
        PdfArray asArray = getPdfObject().getAsArray(PdfName.f2969AF);
        if (asArray == null) {
            asArray = new PdfArray();
            getPdfObject().put(PdfName.f2969AF, asArray);
        }
        asArray.add(pdfFileSpec.getPdfObject());
    }

    public void addAssociatedFile(PdfFileSpec pdfFileSpec) {
        addAssociatedFile(null, pdfFileSpec);
    }

    public PdfArray getAssociatedFiles(boolean z) {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.f2969AF);
        if (asArray != null || !z) {
            return asArray;
        }
        PdfArray pdfArray = new PdfArray();
        getPdfObject().put(PdfName.f2969AF, pdfArray);
        return pdfArray;
    }

    ParentTreeHandler getParentTreeHandler() {
        return this.parentTreeHandler;
    }

    void addKidObject(int i, PdfDictionary pdfDictionary) {
        if (i == -1) {
            getKidsObject().add(pdfDictionary);
        } else {
            getKidsObject().add(i, pdfDictionary);
        }
        if (PdfStructElem.isStructElem(pdfDictionary)) {
            if (getPdfObject().getIndirectReference() == null) {
                throw new PdfException(KernelExceptionMessageConstant.f2925x19c0568b);
            }
            pdfDictionary.put(PdfName.f3047P, getPdfObject());
        }
        setModified();
    }

    private void flushAllKids(IStructureNode iStructureNode) {
        for (IStructureNode iStructureNode2 : iStructureNode.getKids()) {
            if (iStructureNode2 instanceof PdfStructElem) {
                PdfStructElem pdfStructElem = (PdfStructElem) iStructureNode2;
                if (!pdfStructElem.isFlushed()) {
                    flushAllKids(iStructureNode2);
                    pdfStructElem.flush();
                }
            }
        }
    }

    private void ifKidIsStructElementAddToList(PdfObject pdfObject, List<IStructureNode> list) {
        if (pdfObject.isFlushed()) {
            list.add(null);
        } else if (pdfObject.isDictionary()) {
            PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
            if (PdfStructElem.isStructElem(pdfDictionary)) {
                list.add(new PdfStructElem(pdfDictionary));
            }
        }
    }
}
