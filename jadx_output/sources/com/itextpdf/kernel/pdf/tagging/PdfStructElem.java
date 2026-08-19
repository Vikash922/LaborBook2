package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.IsoKey;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.VersionConforming;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStructElem extends PdfObjectWrapper<PdfDictionary> implements IStructureNode {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfStructElem(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        setForbidRelease();
    }

    public PdfStructElem(PdfDocument pdfDocument, PdfName pdfName, PdfPage pdfPage) {
        this(pdfDocument, pdfName);
        getPdfObject().put(PdfName.f3054Pg, pdfPage.getPdfObject().getIndirectReference());
    }

    public PdfStructElem(PdfDocument pdfDocument, PdfName pdfName, PdfAnnotation pdfAnnotation) {
        this(pdfDocument, pdfName);
        if (pdfAnnotation.getPage() == null) {
            throw new PdfException(KernelExceptionMessageConstant.ANNOTATION_SHALL_HAVE_REFERENCE_TO_PAGE);
        }
        getPdfObject().put(PdfName.f3054Pg, pdfAnnotation.getPage().getPdfObject().getIndirectReference());
    }

    public PdfStructElem(PdfDocument pdfDocument, PdfName pdfName) {
        this((PdfDictionary) new PdfDictionary().makeIndirect(pdfDocument));
        getPdfObject().put(PdfName.Type, PdfName.StructElem);
        getPdfObject().put(PdfName.f3065S, pdfName);
    }

    public static boolean isStructElem(PdfDictionary pdfDictionary) {
        return PdfName.StructElem.equals(pdfDictionary.getAsName(PdfName.Type)) || pdfDictionary.containsKey(PdfName.f3065S);
    }

    public PdfObject getAttributes(boolean z) {
        PdfObject pdfObject = getPdfObject().get(PdfName.f2967A);
        if (pdfObject != null || !z) {
            return pdfObject;
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        setAttributes(pdfDictionary);
        return pdfDictionary;
    }

    public void setAttributes(PdfObject pdfObject) {
        put(PdfName.f2967A, pdfObject);
    }

    public PdfString getLang() {
        return getPdfObject().getAsString(PdfName.Lang);
    }

    public void setLang(PdfString pdfString) {
        put(PdfName.Lang, pdfString);
    }

    public PdfString getAlt() {
        return getPdfObject().getAsString(PdfName.Alt);
    }

    public void setAlt(PdfString pdfString) {
        put(PdfName.Alt, pdfString);
    }

    public PdfString getActualText() {
        return getPdfObject().getAsString(PdfName.ActualText);
    }

    public void setActualText(PdfString pdfString) {
        put(PdfName.ActualText, pdfString);
    }

    public PdfString getE() {
        return getPdfObject().getAsString(PdfName.f3000E);
    }

    public void setE(PdfString pdfString) {
        put(PdfName.f3000E, pdfString);
    }

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public PdfName getRole() {
        return getPdfObject().getAsName(PdfName.f3065S);
    }

    public void setRole(PdfName pdfName) {
        put(PdfName.f3065S, pdfName);
    }

    public PdfStructElem addKid(PdfStructElem pdfStructElem) {
        return addKid(-1, pdfStructElem);
    }

    public PdfStructElem addKid(int i, PdfStructElem pdfStructElem) {
        addKidObject(getPdfObject(), i, pdfStructElem.getPdfObject());
        return pdfStructElem;
    }

    public PdfMcr addKid(PdfMcr pdfMcr) {
        return addKid(-1, pdfMcr);
    }

    public PdfMcr addKid(int i, PdfMcr pdfMcr) {
        getDocEnsureIndirectForKids().getStructTreeRoot().getParentTreeHandler().registerMcr(pdfMcr);
        addKidObject(getPdfObject(), i, pdfMcr.getPdfObject());
        return pdfMcr;
    }

    public IStructureNode removeKid(int i) {
        return removeKid(i, false);
    }

    public IStructureNode removeKid(int i, boolean z) {
        PdfObject k = getK();
        if (k == null || (!k.isArray() && i != 0)) {
            throw new IndexOutOfBoundsException();
        }
        if (k.isArray()) {
            PdfArray pdfArray = (PdfArray) k;
            PdfObject pdfObject = pdfArray.get(i);
            pdfArray.remove(i);
            if (pdfArray.isEmpty()) {
                getPdfObject().remove(PdfName.f3024K);
            }
            k = pdfObject;
        } else {
            getPdfObject().remove(PdfName.f3024K);
        }
        setModified();
        IStructureNode iStructureNodeConvertPdfObjectToIPdfStructElem = convertPdfObjectToIPdfStructElem(k);
        PdfDocument document = getDocument();
        if ((iStructureNodeConvertPdfObjectToIPdfStructElem instanceof PdfMcr) && document != null && !z) {
            document.getStructTreeRoot().getParentTreeHandler().unregisterMcr((PdfMcr) iStructureNodeConvertPdfObjectToIPdfStructElem);
        }
        return iStructureNodeConvertPdfObjectToIPdfStructElem;
    }

    public int removeKid(IStructureNode iStructureNode) {
        if (iStructureNode instanceof PdfMcr) {
            PdfMcr pdfMcr = (PdfMcr) iStructureNode;
            PdfDocument document = getDocument();
            if (document != null) {
                document.getStructTreeRoot().getParentTreeHandler().unregisterMcr(pdfMcr);
            }
            return removeKidObject(pdfMcr.getPdfObject());
        }
        if (iStructureNode instanceof PdfStructElem) {
            return removeKidObject(((PdfStructElem) iStructureNode).getPdfObject());
        }
        return -1;
    }

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public IStructureNode getParent() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f3047P);
        if (asDictionary == null) {
            return null;
        }
        if (asDictionary.isFlushed()) {
            PdfDocument document = getDocument();
            if (document == null) {
                return null;
            }
            PdfStructTreeRoot structTreeRoot = document.getStructTreeRoot();
            return structTreeRoot.getPdfObject() == asDictionary ? structTreeRoot : new PdfStructElem(asDictionary);
        }
        if (isStructElem(asDictionary)) {
            return new PdfStructElem(asDictionary);
        }
        PdfDocument document2 = getDocument();
        if ((document2 == null || !PdfName.StructTreeRoot.equals(asDictionary.getAsName(PdfName.Type))) && (document2 == null || document2.getStructTreeRoot().getPdfObject() != asDictionary)) {
            return null;
        }
        return document2.getStructTreeRoot();
    }

    @Override // com.itextpdf.kernel.pdf.tagging.IStructureNode
    public List<IStructureNode> getKids() {
        PdfObject k = getK();
        ArrayList arrayList = new ArrayList();
        if (k != null) {
            if (k.isArray()) {
                PdfArray pdfArray = (PdfArray) k;
                for (int i = 0; i < pdfArray.size(); i++) {
                    addKidObjectToStructElemList(pdfArray.get(i), arrayList);
                }
            } else {
                addKidObjectToStructElemList(k, arrayList);
            }
        }
        return arrayList;
    }

    public PdfObject getK() {
        return getPdfObject().get(PdfName.f3024K);
    }

    public List<PdfStructElem> getRefsList() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.Ref);
        if (asArray == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(asArray.size());
        for (int i = 0; i < asArray.size(); i++) {
            arrayList.add(new PdfStructElem(asArray.getAsDictionary(i)));
        }
        return arrayList;
    }

    public void addRef(PdfStructElem pdfStructElem) {
        if (!pdfStructElem.getPdfObject().isIndirect()) {
            throw new PdfException(KernelExceptionMessageConstant.f2923xb061bdfb);
        }
        VersionConforming.validatePdfVersionForDictEntry(getDocument(), PdfVersion.PDF_2_0, PdfName.Ref, PdfName.StructElem);
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.Ref);
        if (asArray == null) {
            asArray = new PdfArray();
            put(PdfName.Ref, asArray);
        }
        asArray.add(pdfStructElem.getPdfObject());
        setModified();
    }

    public PdfNamespace getNamespace() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f3040NS);
        if (asDictionary != null) {
            return new PdfNamespace(asDictionary);
        }
        return null;
    }

    public void setNamespace(PdfNamespace pdfNamespace) {
        VersionConforming.validatePdfVersionForDictEntry(getDocument(), PdfVersion.PDF_2_0, PdfName.f3040NS, PdfName.StructElem);
        if (pdfNamespace != null) {
            put(PdfName.f3040NS, pdfNamespace.getPdfObject());
        } else {
            getPdfObject().remove(PdfName.f3040NS);
            setModified();
        }
    }

    public void setPhoneme(PdfString pdfString) {
        VersionConforming.validatePdfVersionForDictEntry(getDocument(), PdfVersion.PDF_2_0, PdfName.Phoneme, PdfName.StructElem);
        put(PdfName.Phoneme, pdfString);
    }

    public PdfString getPhoneme() {
        return getPdfObject().getAsString(PdfName.Phoneme);
    }

    public void setPhoneticAlphabet(PdfName pdfName) {
        VersionConforming.validatePdfVersionForDictEntry(getDocument(), PdfVersion.PDF_2_0, PdfName.PhoneticAlphabet, PdfName.StructElem);
        put(PdfName.PhoneticAlphabet, pdfName);
    }

    public PdfName getPhoneticAlphabet() {
        return getPdfObject().getAsName(PdfName.PhoneticAlphabet);
    }

    public void addAssociatedFile(String str, PdfFileSpec pdfFileSpec) {
        if (((PdfDictionary) pdfFileSpec.getPdfObject()).get(PdfName.AFRelationship) == null) {
            LoggerFactory.getLogger((Class<?>) PdfStructElem.class).error(IoLogMessageConstant.ASSOCIATED_FILE_SPEC_SHALL_INCLUDE_AFRELATIONSHIP);
        }
        if (str != null) {
            getDocument().getCatalog().getNameTree(PdfName.EmbeddedFiles).addEntry(str, pdfFileSpec.getPdfObject());
        }
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f2969AF);
        if (asArray == null) {
            asArray = new PdfArray();
            put(PdfName.f2969AF, asArray);
        }
        asArray.add(pdfFileSpec.getPdfObject());
    }

    public void addAssociatedFile(PdfFileSpec pdfFileSpec) {
        addAssociatedFile(null, pdfFileSpec);
    }

    public PdfArray getAssociatedFiles(boolean z) {
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f2969AF);
        if (asArray != null || !z) {
            return asArray;
        }
        PdfArray pdfArray = new PdfArray();
        put(PdfName.f2969AF, pdfArray);
        return pdfArray;
    }

    public PdfStructElem put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f3054Pg);
        if (asDictionary == null || (asDictionary.getIndirectReference() != null && asDictionary.getIndirectReference().isFree())) {
            getPdfObject().remove(PdfName.f3054Pg);
        }
        PdfDocument document = getDocument();
        if (document != null) {
            document.checkIsoConformance(getPdfObject(), IsoKey.TAG_STRUCTURE_ELEMENT);
        }
        super.flush();
    }

    static void addKidObject(PdfDictionary pdfDictionary, int i, PdfObject pdfObject) {
        PdfArray pdfArray;
        if (pdfDictionary.isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_ADD_KID_TO_THE_FLUSHED_ELEMENT);
        }
        if (!pdfDictionary.containsKey(PdfName.f3047P)) {
            throw new PdfException(KernelExceptionMessageConstant.STRUCTURE_ELEMENT_SHALL_CONTAIN_PARENT_OBJECT, pdfDictionary);
        }
        PdfObject pdfObject2 = pdfDictionary.get(PdfName.f3024K);
        if (pdfObject2 == null) {
            pdfDictionary.put(PdfName.f3024K, pdfObject);
        } else {
            if (pdfObject2 instanceof PdfArray) {
                pdfArray = (PdfArray) pdfObject2;
            } else {
                PdfArray pdfArray2 = new PdfArray();
                pdfArray2.add(pdfObject2);
                pdfDictionary.put(PdfName.f3024K, pdfArray2);
                pdfArray = pdfArray2;
            }
            if (i == -1) {
                pdfArray.add(pdfObject);
            } else {
                pdfArray.add(i, pdfObject);
            }
        }
        pdfDictionary.setModified();
        if (pdfObject instanceof PdfDictionary) {
            PdfDictionary pdfDictionary2 = (PdfDictionary) pdfObject;
            if (isStructElem(pdfDictionary2)) {
                if (!pdfDictionary.isIndirect()) {
                    throw new PdfException(KernelExceptionMessageConstant.f2925x19c0568b);
                }
                pdfDictionary2.put(PdfName.f3047P, pdfDictionary);
                pdfObject.setModified();
            }
        }
    }

    protected PdfDocument getDocument() {
        PdfDictionary pdfObject = getPdfObject();
        PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
        if (indirectReference == null && pdfObject.getAsDictionary(PdfName.f3047P) != null) {
            indirectReference = pdfObject.getAsDictionary(PdfName.f3047P).getIndirectReference();
        }
        if (indirectReference != null) {
            return indirectReference.getDocument();
        }
        return null;
    }

    private PdfDocument getDocEnsureIndirectForKids() {
        PdfDocument document = getDocument();
        if (document != null) {
            return document;
        }
        throw new PdfException(KernelExceptionMessageConstant.f2925x19c0568b);
    }

    private void addKidObjectToStructElemList(PdfObject pdfObject, List<IStructureNode> list) {
        if (pdfObject.isFlushed()) {
            list.add(null);
        } else {
            list.add(convertPdfObjectToIPdfStructElem(pdfObject));
        }
    }

    private IStructureNode convertPdfObjectToIPdfStructElem(PdfObject pdfObject) {
        byte type = pdfObject.getType();
        if (type == 3) {
            PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
            if (isStructElem(pdfDictionary)) {
                return new PdfStructElem(pdfDictionary);
            }
            if (PdfName.MCR.equals(pdfDictionary.getAsName(PdfName.Type))) {
                return new PdfMcrDictionary(pdfDictionary, this);
            }
            if (PdfName.OBJR.equals(pdfDictionary.getAsName(PdfName.Type))) {
                return new PdfObjRef(pdfDictionary, this);
            }
        } else if (type == 8) {
            return new PdfMcrNumber((PdfNumber) pdfObject, this);
        }
        return null;
    }

    private int removeKidObject(PdfObject pdfObject) {
        PdfObject k = getK();
        if (k != null && (k.isArray() || k == pdfObject || k == pdfObject.getIndirectReference())) {
            iRemoveObjectFromArray = k.isArray() ? removeObjectFromArray((PdfArray) k, pdfObject) : -1;
            if (!k.isArray() || (k.isArray() && ((PdfArray) k).isEmpty())) {
                getPdfObject().remove(PdfName.f3024K);
                iRemoveObjectFromArray = 0;
            }
            setModified();
        }
        return iRemoveObjectFromArray;
    }

    private static int removeObjectFromArray(PdfArray pdfArray, PdfObject pdfObject) {
        int i = 0;
        while (i < pdfArray.size()) {
            PdfObject pdfObject2 = pdfArray.get(i);
            if (pdfObject2 == pdfObject || pdfObject2 == pdfObject.getIndirectReference()) {
                pdfArray.remove(i);
                break;
            }
            i++;
        }
        return i;
    }
}
