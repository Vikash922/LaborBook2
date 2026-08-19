package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class StructureTreeCopier {
    private static List<PdfName> ignoreKeysForCopy = new ArrayList();
    private static List<PdfName> ignoreKeysForClone = new ArrayList();

    StructureTreeCopier() {
    }

    static {
        ignoreKeysForCopy.add(PdfName.f3024K);
        ignoreKeysForCopy.add(PdfName.f3047P);
        ignoreKeysForCopy.add(PdfName.f3054Pg);
        ignoreKeysForCopy.add(PdfName.Obj);
        ignoreKeysForCopy.add(PdfName.f3040NS);
        ignoreKeysForClone.add(PdfName.f3024K);
        ignoreKeysForClone.add(PdfName.f3047P);
    }

    public static void copyTo(PdfDocument pdfDocument, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument2) {
        if (pdfDocument.isTagged()) {
            copyTo(pdfDocument, map, pdfDocument2, false);
        }
    }

    public static void copyTo(PdfDocument pdfDocument, int i, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument2) {
        if (pdfDocument.isTagged()) {
            copyTo(pdfDocument, i, map, pdfDocument2, false);
        }
    }

    public static void move(PdfDocument pdfDocument, PdfPage pdfPage, int i) {
        int pageNumber;
        int i2;
        int iSeparateStructure;
        if (!pdfDocument.isTagged() || i < 1 || i > pdfDocument.getNumberOfPages() + 1 || (pageNumber = pdfDocument.getPageNumber(pdfPage)) == 0 || pageNumber == i || (i2 = pageNumber + 1) == i) {
            return;
        }
        if (pageNumber > i) {
            iSeparateStructure = separateStructure(pdfDocument, 1, i, 0);
            separateStructure(pdfDocument, pageNumber, i2, separateStructure(pdfDocument, i, pageNumber, iSeparateStructure));
        } else {
            iSeparateStructure = separateStructure(pdfDocument, i2, i, separateStructure(pdfDocument, pageNumber, i2, separateStructure(pdfDocument, 1, pageNumber, 0)));
        }
        HashSet hashSet = new HashSet();
        Collection<PdfMcr> pageMarkedContentReferences = pdfDocument.getStructTreeRoot().getPageMarkedContentReferences(pdfPage);
        if (pageMarkedContentReferences != null) {
            Iterator<PdfMcr> it = pageMarkedContentReferences.iterator();
            while (it.hasNext()) {
                PdfDictionary topmostParent = getTopmostParent(it.next());
                if (topmostParent != null) {
                    if (topmostParent.isFlushed()) {
                        throw new PdfException(KernelExceptionMessageConstant.CANNOT_MOVE_FLUSHED_TAG);
                    }
                    hashSet.add(topmostParent);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        PdfArray kidsObject = pdfDocument.getStructTreeRoot().getKidsObject();
        for (int i3 = 0; i3 < kidsObject.size(); i3++) {
            PdfDictionary asDictionary = kidsObject.getAsDictionary(i3);
            if (hashSet.contains(asDictionary)) {
                arrayList.add(asDictionary);
                kidsObject.remove(i3);
                if (i3 < iSeparateStructure) {
                    iSeparateStructure--;
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            pdfDocument.getStructTreeRoot().addKidObject(iSeparateStructure, (PdfDictionary) it2.next());
            iSeparateStructure++;
        }
    }

    private static int separateStructure(PdfDocument pdfDocument, int i) {
        return separateStructure(pdfDocument, 1, i, 0);
    }

    private static int separateStructure(PdfDocument pdfDocument, int i, int i2, int i3) {
        if (!pdfDocument.isTagged() || 1 > i || i > i2 || i2 > pdfDocument.getNumberOfPages() + 1) {
            return -1;
        }
        if (i2 == i) {
            return i3;
        }
        if (i2 == pdfDocument.getNumberOfPages() + 1) {
            return pdfDocument.getStructTreeRoot().getKidsObject().size();
        }
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Collection<PdfMcr> pageMarkedContentReferences = pdfDocument.getStructTreeRoot().getPageMarkedContentReferences(pdfDocument.getPage(i));
            if (pageMarkedContentReferences != null) {
                for (PdfMcr pdfMcr : pageMarkedContentReferences) {
                    hashSet.add(pdfMcr.getPdfObject());
                    PdfDictionary pdfDictionaryAddAllParentsToSet = addAllParentsToSet(pdfMcr, hashSet);
                    if (pdfDictionaryAddAllParentsToSet != null && pdfDictionaryAddAllParentsToSet.isFlushed()) {
                        throw new PdfException(KernelExceptionMessageConstant.f2927xc89f17de);
                    }
                }
            }
            i++;
        }
        ArrayList arrayList = new ArrayList();
        PdfArray kidsObject = pdfDocument.getStructTreeRoot().getKidsObject();
        int i4 = i3 - 1;
        for (int i5 = 0; i5 < kidsObject.size(); i5++) {
            PdfDictionary asDictionary = kidsObject.getAsDictionary(i5);
            if (hashSet.contains(asDictionary)) {
                LastClonedAncestor lastClonedAncestor = new LastClonedAncestor();
                lastClonedAncestor.ancestor = asDictionary;
                PdfDictionary pdfDictionaryClone = asDictionary.clone(ignoreKeysForClone);
                pdfDictionaryClone.put(PdfName.f3047P, pdfDocument.getStructTreeRoot().getPdfObject());
                lastClonedAncestor.clone = pdfDictionaryClone;
                separateKids(asDictionary, hashSet, lastClonedAncestor, pdfDocument);
                if (pdfDictionaryClone.containsKey(PdfName.f3024K)) {
                    pdfDictionaryClone.makeIndirect(pdfDocument);
                    arrayList.add(pdfDictionaryClone);
                }
                i4 = i5;
            }
        }
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            pdfDocument.getStructTreeRoot().addKidObject(i4 + 1 + i6, (PdfDictionary) arrayList.get(i6));
        }
        return i4 + 1;
    }

    private static void copyTo(PdfDocument pdfDocument, int i, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument2, boolean z) {
        int iSeparateStructure;
        if (pdfDocument.isTagged() && (iSeparateStructure = separateStructure(pdfDocument, i)) > 0) {
            copyTo(pdfDocument, map, pdfDocument2, z, iSeparateStructure);
        }
    }

    private static void copyTo(PdfDocument pdfDocument, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument2, boolean z) {
        copyTo(pdfDocument, map, pdfDocument2, z, -1);
    }

    private static void copyTo(PdfDocument pdfDocument, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument2, boolean z, int i) {
        CopyStructureResult copyStructureResultCopyStructure = copyStructure(pdfDocument, map, pdfDocument2, z);
        PdfStructTreeRoot structTreeRoot = pdfDocument.getStructTreeRoot();
        structTreeRoot.makeIndirect(pdfDocument);
        Iterator<PdfDictionary> it = copyStructureResultCopyStructure.getTopsList().iterator();
        while (it.hasNext()) {
            structTreeRoot.addKidObject(i, it.next());
            if (i > -1) {
                i++;
            }
        }
        if (z) {
            return;
        }
        if (!copyStructureResultCopyStructure.getCopiedNamespaces().isEmpty()) {
            structTreeRoot.getNamespacesObject().addAll(copyStructureResultCopyStructure.getCopiedNamespaces());
        }
        PdfDictionary roleMap = pdfDocument2.getStructTreeRoot().getRoleMap();
        PdfDictionary roleMap2 = structTreeRoot.getRoleMap();
        for (Map.Entry<PdfName, PdfObject> entry : roleMap.entrySet()) {
            if (!roleMap2.containsKey(entry.getKey())) {
                roleMap2.put(entry.getKey(), entry.getValue());
            } else if (!entry.getValue().equals(roleMap2.get(entry.getKey()))) {
                LoggerFactory.getLogger((Class<?>) StructureTreeCopier.class).warn(MessageFormat.format(IoLogMessageConstant.ROLE_MAPPING_FROM_SOURCE_IS_NOT_COPIED_ALREADY_EXIST, entry.getKey() + " -> " + entry.getValue(), entry.getKey() + " -> " + roleMap2.get(entry.getKey())));
            }
        }
    }

    private static CopyStructureResult copyStructure(PdfDocument pdfDocument, Map<PdfPage, PdfPage> map, PdfDocument pdfDocument2, boolean z) {
        if (z) {
            pdfDocument2 = pdfDocument;
        }
        HashMap map2 = new HashMap();
        HashSet hashSet = new HashSet();
        HashMap map3 = new HashMap();
        for (Map.Entry<PdfPage, PdfPage> entry : map.entrySet()) {
            map3.put(entry.getKey().getPdfObject(), entry.getValue().getPdfObject());
            Collection<PdfMcr> pageMarkedContentReferences = pdfDocument2.getStructTreeRoot().getPageMarkedContentReferences(entry.getKey());
            if (pageMarkedContentReferences != null) {
                for (PdfMcr pdfMcr : pageMarkedContentReferences) {
                    if ((pdfMcr instanceof PdfMcrDictionary) || (pdfMcr instanceof PdfObjRef)) {
                        hashSet.add(pdfMcr.getPdfObject());
                    }
                    PdfDictionary pdfDictionaryAddAllParentsToSet = addAllParentsToSet(pdfMcr, hashSet);
                    if (pdfDictionaryAddAllParentsToSet != null) {
                        if (pdfDictionaryAddAllParentsToSet.isFlushed()) {
                            throw new PdfException(KernelExceptionMessageConstant.CANNOT_COPY_FLUSHED_TAG);
                        }
                        if (!map2.containsKey(pdfDictionaryAddAllParentsToSet)) {
                            map2.put(pdfDictionaryAddAllParentsToSet, entry.getValue().getPdfObject());
                        }
                    }
                }
            }
        }
        ArrayList<PdfDictionary> arrayList = new ArrayList();
        for (IStructureNode iStructureNode : pdfDocument2.getStructTreeRoot().getKids()) {
            if (iStructureNode != null) {
                PdfDictionary pdfObject = ((PdfStructElem) iStructureNode).getPdfObject();
                if (map2.containsKey(pdfObject)) {
                    arrayList.add(pdfObject);
                }
            }
        }
        StructElemCopyingParams structElemCopyingParams = new StructElemCopyingParams(hashSet, pdfDocument, map3, z);
        pdfDocument.getStructTreeRoot().makeIndirect(pdfDocument);
        ArrayList arrayList2 = new ArrayList();
        for (PdfDictionary pdfDictionary : arrayList) {
            arrayList2.add(copyObject(pdfDictionary, (PdfDictionary) map2.get(pdfDictionary), false, structElemCopyingParams));
        }
        return new CopyStructureResult(arrayList2, structElemCopyingParams.getCopiedNamespaces());
    }

    private static PdfDictionary copyObject(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, boolean z, StructElemCopyingParams structElemCopyingParams) {
        PdfDictionary pdfDictionaryCopyTo;
        boolean z2;
        if (structElemCopyingParams.isCopyFromDestDocument()) {
            pdfDictionaryCopyTo = pdfDictionary.clone(ignoreKeysForClone);
            if (pdfDictionary.isIndirect()) {
                pdfDictionaryCopyTo.makeIndirect(structElemCopyingParams.getToDocument());
            }
            PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f3054Pg);
            if (asDictionary != null && structElemCopyingParams.isCopyFromDestDocument()) {
                if (asDictionary != pdfDictionary2) {
                    pdfDictionaryCopyTo.put(PdfName.f3054Pg, pdfDictionary2);
                    z = true;
                } else {
                    z = false;
                }
            }
        } else {
            pdfDictionaryCopyTo = pdfDictionary.copyTo(structElemCopyingParams.getToDocument(), ignoreKeysForCopy, true);
            PdfDictionary asDictionary2 = pdfDictionary.getAsDictionary(PdfName.Obj);
            if (asDictionary2 != null) {
                pdfDictionaryCopyTo.put(PdfName.Obj, asDictionary2.copyTo(structElemCopyingParams.getToDocument(), Arrays.asList(PdfName.f3047P), false));
            }
            PdfDictionary asDictionary3 = pdfDictionary.getAsDictionary(PdfName.f3040NS);
            if (asDictionary3 != null) {
                pdfDictionaryCopyTo.put(PdfName.f3040NS, copyNamespaceDict(asDictionary3, structElemCopyingParams));
            }
            PdfDictionary asDictionary4 = pdfDictionary.getAsDictionary(PdfName.f3054Pg);
            if (asDictionary4 != null) {
                PdfDictionary pdfDictionary3 = structElemCopyingParams.getPage2page().get(asDictionary4);
                if (pdfDictionary3 == null) {
                    pdfDictionary3 = pdfDictionary2;
                    z2 = true;
                } else {
                    z2 = false;
                }
                pdfDictionaryCopyTo.put(PdfName.f3054Pg, pdfDictionary3);
                z = z2;
            }
        }
        PdfObject pdfObject = pdfDictionary.get(PdfName.f3024K);
        if (pdfObject != null) {
            if (pdfObject.isArray()) {
                PdfArray pdfArray = (PdfArray) pdfObject;
                PdfArray pdfArray2 = new PdfArray();
                for (int i = 0; i < pdfArray.size(); i++) {
                    PdfObject pdfObjectCopyObjectKid = copyObjectKid(pdfArray.get(i), pdfDictionaryCopyTo, pdfDictionary2, z, structElemCopyingParams);
                    if (pdfObjectCopyObjectKid != null) {
                        pdfArray2.add(pdfObjectCopyObjectKid);
                    }
                }
                if (!pdfArray2.isEmpty()) {
                    if (pdfArray2.size() == 1) {
                        pdfDictionaryCopyTo.put(PdfName.f3024K, pdfArray2.get(0));
                    } else {
                        pdfDictionaryCopyTo.put(PdfName.f3024K, pdfArray2);
                    }
                }
            } else {
                PdfObject pdfObjectCopyObjectKid2 = copyObjectKid(pdfObject, pdfDictionaryCopyTo, pdfDictionary2, z, structElemCopyingParams);
                if (pdfObjectCopyObjectKid2 != null) {
                    pdfDictionaryCopyTo.put(PdfName.f3024K, pdfObjectCopyObjectKid2);
                }
            }
        }
        return pdfDictionaryCopyTo;
    }

    private static PdfObject copyObjectKid(PdfObject pdfObject, PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, boolean z, StructElemCopyingParams structElemCopyingParams) {
        PdfMcr pdfMcrDictionary;
        if (pdfObject.isNumber()) {
            if (!z) {
                structElemCopyingParams.getToDocument().getStructTreeRoot().getParentTreeHandler().registerMcr(new PdfMcrNumber((PdfNumber) pdfObject, new PdfStructElem(pdfDictionary)));
                return pdfObject;
            }
        } else if (pdfObject.isDictionary()) {
            PdfDictionary pdfDictionary3 = (PdfDictionary) pdfObject;
            if (structElemCopyingParams.getObjectsToCopy().contains(pdfDictionary3) || shouldTableElementBeCopied(pdfDictionary3, pdfDictionary)) {
                boolean zContainsKey = pdfDictionary3.containsKey(PdfName.f3047P);
                PdfDictionary pdfDictionaryCopyObject = copyObject(pdfDictionary3, pdfDictionary2, z, structElemCopyingParams);
                if (zContainsKey) {
                    pdfDictionaryCopyObject.put(PdfName.f3047P, pdfDictionary);
                } else {
                    if (pdfDictionaryCopyObject.containsKey(PdfName.Obj)) {
                        pdfMcrDictionary = new PdfObjRef(pdfDictionaryCopyObject, new PdfStructElem(pdfDictionary));
                        PdfDictionary asDictionary = pdfDictionaryCopyObject.getAsDictionary(PdfName.Obj);
                        if (PdfName.Link.equals(asDictionary.getAsName(PdfName.Subtype)) && !asDictionary.containsKey(PdfName.f3047P)) {
                            return null;
                        }
                        asDictionary.put(PdfName.StructParent, new PdfNumber(structElemCopyingParams.getToDocument().getNextStructParentIndex()));
                    } else {
                        pdfMcrDictionary = new PdfMcrDictionary(pdfDictionaryCopyObject, new PdfStructElem(pdfDictionary));
                    }
                    structElemCopyingParams.getToDocument().getStructTreeRoot().getParentTreeHandler().registerMcr(pdfMcrDictionary);
                }
                return pdfDictionaryCopyObject;
            }
        }
        return null;
    }

    static boolean shouldTableElementBeCopied(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        return (PdfName.f3073TD.equals(pdfDictionary.get(PdfName.f3065S)) || PdfName.f3075TH.equals(pdfDictionary.get(PdfName.f3065S))) && PdfName.f3080TR.equals(pdfDictionary2.get(PdfName.f3065S));
    }

    private static PdfDictionary copyNamespaceDict(PdfDictionary pdfDictionary, StructElemCopyingParams structElemCopyingParams) {
        PdfObject pdfObjectCopyTo;
        List<PdfName> listSingletonList = Collections.singletonList(PdfName.RoleMapNS);
        PdfDocument toDocument = structElemCopyingParams.getToDocument();
        PdfDictionary pdfDictionaryCopyTo = pdfDictionary.copyTo(toDocument, listSingletonList, false);
        structElemCopyingParams.addCopiedNamespace(pdfDictionaryCopyTo);
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.RoleMapNS);
        PdfDictionary asDictionary2 = pdfDictionaryCopyTo.getAsDictionary(PdfName.RoleMapNS);
        if (asDictionary != null && asDictionary2 == null) {
            PdfDictionary pdfDictionary2 = new PdfDictionary();
            pdfDictionaryCopyTo.put(PdfName.RoleMapNS, pdfDictionary2);
            for (Map.Entry<PdfName, PdfObject> entry : asDictionary.entrySet()) {
                if (entry.getValue().isArray()) {
                    PdfArray pdfArray = (PdfArray) entry.getValue();
                    if (pdfArray.size() > 1 && pdfArray.get(1).isDictionary()) {
                        PdfArray pdfArray2 = new PdfArray();
                        pdfArray2.add(pdfArray.get(0).copyTo(toDocument));
                        pdfArray2.add(copyNamespaceDict(pdfArray.getAsDictionary(1), structElemCopyingParams));
                        pdfObjectCopyTo = pdfArray2;
                    } else {
                        LoggerFactory.getLogger((Class<?>) StructureTreeCopier.class).warn(MessageFormat.format(IoLogMessageConstant.ROLE_MAPPING_FROM_SOURCE_IS_NOT_COPIED_INVALID, entry.getKey().toString()));
                    }
                } else {
                    pdfObjectCopyTo = entry.getValue().copyTo(toDocument);
                }
                pdfDictionary2.put((PdfName) entry.getKey().copyTo(toDocument), pdfObjectCopyTo);
            }
        }
        return pdfDictionaryCopyTo;
    }

    private static void separateKids(PdfDictionary pdfDictionary, Set<PdfObject> set, LastClonedAncestor lastClonedAncestor, PdfDocument pdfDocument) {
        PdfMcr pdfMcrNumber;
        int i;
        PdfObject pdfObject = pdfDictionary.get(PdfName.f3024K);
        if (!pdfObject.isArray()) {
            if (pdfObject.isDictionary()) {
                PdfDictionary pdfDictionary2 = (PdfDictionary) pdfObject;
                if (PdfStructElem.isStructElem(pdfDictionary2)) {
                    separateKids(pdfDictionary2, set, lastClonedAncestor, pdfDocument);
                }
            }
        } else {
            PdfArray pdfArray = (PdfArray) pdfObject;
            int i2 = 0;
            while (i2 < pdfArray.size()) {
                PdfObject pdfObject2 = pdfArray.get(i2);
                PdfDictionary pdfDictionary3 = pdfObject2.isDictionary() ? (PdfDictionary) pdfObject2 : null;
                if (pdfDictionary3 != null && PdfStructElem.isStructElem(pdfDictionary3)) {
                    if (set.contains(pdfObject2)) {
                        separateKids((PdfDictionary) pdfObject2, set, lastClonedAncestor, pdfDocument);
                    } else {
                        if (pdfDictionary3.isFlushed()) {
                            throw new PdfException(KernelExceptionMessageConstant.f2927xc89f17de);
                        }
                        if (pdfDictionary3.containsKey(PdfName.f3024K)) {
                            cloneParents(pdfDictionary, lastClonedAncestor, pdfDocument);
                            i = i2 - 1;
                            pdfArray.remove(i2);
                            PdfStructElem.addKidObject(lastClonedAncestor.clone, -1, pdfObject2);
                            i2 = i;
                        }
                    }
                } else if (!set.contains(pdfObject2)) {
                    cloneParents(pdfDictionary, lastClonedAncestor, pdfDocument);
                    if (pdfDictionary3 != null) {
                        if (pdfDictionary3.get(PdfName.Type).equals(PdfName.MCR)) {
                            pdfMcrNumber = new PdfMcrDictionary(pdfDictionary3, new PdfStructElem(lastClonedAncestor.clone));
                        } else {
                            pdfMcrNumber = new PdfObjRef(pdfDictionary3, new PdfStructElem(lastClonedAncestor.clone));
                        }
                    } else {
                        pdfMcrNumber = new PdfMcrNumber((PdfNumber) pdfObject2, new PdfStructElem(lastClonedAncestor.clone));
                    }
                    i = i2 - 1;
                    pdfArray.remove(i2);
                    PdfStructElem.addKidObject(lastClonedAncestor.clone, -1, pdfObject2);
                    pdfDocument.getStructTreeRoot().getParentTreeHandler().registerMcr(pdfMcrNumber);
                    i2 = i;
                }
                i2++;
            }
        }
        if (lastClonedAncestor.ancestor == pdfDictionary) {
            lastClonedAncestor.ancestor = lastClonedAncestor.ancestor.getAsDictionary(PdfName.f3047P);
            lastClonedAncestor.clone = lastClonedAncestor.clone.getAsDictionary(PdfName.f3047P);
        }
    }

    private static void cloneParents(PdfDictionary pdfDictionary, LastClonedAncestor lastClonedAncestor, PdfDocument pdfDocument) {
        if (lastClonedAncestor.ancestor != pdfDictionary) {
            PdfDictionary pdfDictionary2 = (PdfDictionary) pdfDictionary.clone(ignoreKeysForClone).makeIndirect(pdfDocument);
            PdfDictionary asDictionary = pdfDictionary;
            PdfDictionary pdfDictionary3 = pdfDictionary2;
            while (asDictionary.get(PdfName.f3047P) != lastClonedAncestor.ancestor) {
                asDictionary = asDictionary.getAsDictionary(PdfName.f3047P);
                PdfDictionary pdfDictionary4 = (PdfDictionary) asDictionary.clone(ignoreKeysForClone).makeIndirect(pdfDocument);
                pdfDictionary3.put(PdfName.f3047P, pdfDictionary4);
                pdfDictionary4.put(PdfName.f3024K, pdfDictionary3);
                pdfDictionary3 = pdfDictionary4;
            }
            PdfStructElem.addKidObject(lastClonedAncestor.clone, -1, pdfDictionary3);
            lastClonedAncestor.clone = pdfDictionary2;
            lastClonedAncestor.ancestor = pdfDictionary;
        }
    }

    private static PdfDictionary addAllParentsToSet(PdfMcr pdfMcr, Set<PdfObject> set) {
        List<PdfDictionary> listRetrieveParents = retrieveParents(pdfMcr, true);
        set.addAll(listRetrieveParents);
        if (listRetrieveParents.isEmpty()) {
            return null;
        }
        return listRetrieveParents.get(listRetrieveParents.size() - 1);
    }

    private static PdfDictionary getTopmostParent(PdfMcr pdfMcr) {
        return retrieveParents(pdfMcr, false).get(0);
    }

    private static List<PdfDictionary> retrieveParents(PdfMcr pdfMcr, boolean z) {
        ArrayList arrayList = new ArrayList();
        IStructureNode parent = pdfMcr.getParent();
        PdfDictionary pdfDictionary = null;
        for (PdfDictionary pdfObject = parent instanceof PdfStructElem ? ((PdfStructElem) parent).getPdfObject() : null; pdfObject != null && !PdfName.StructTreeRoot.equals(pdfObject.getAsName(PdfName.Type)); pdfObject = pdfObject.isFlushed() ? null : pdfObject.getAsDictionary(PdfName.f3047P)) {
            if (z) {
                arrayList.add(pdfObject);
            }
            pdfDictionary = pdfObject;
        }
        if (!z) {
            arrayList.add(pdfDictionary);
        }
        return arrayList;
    }

    static class LastClonedAncestor {
        PdfDictionary ancestor;
        PdfDictionary clone;

        LastClonedAncestor() {
        }
    }

    private static class StructElemCopyingParams {
        private final Set<PdfObject> copiedNamespaces = new LinkedHashSet();
        private final boolean copyFromDestDocument;
        private final Set<PdfObject> objectsToCopy;
        private final Map<PdfDictionary, PdfDictionary> page2page;
        private final PdfDocument toDocument;

        public StructElemCopyingParams(Set<PdfObject> set, PdfDocument pdfDocument, Map<PdfDictionary, PdfDictionary> map, boolean z) {
            this.objectsToCopy = set;
            this.toDocument = pdfDocument;
            this.page2page = map;
            this.copyFromDestDocument = z;
        }

        public Set<PdfObject> getObjectsToCopy() {
            return this.objectsToCopy;
        }

        public PdfDocument getToDocument() {
            return this.toDocument;
        }

        public Map<PdfDictionary, PdfDictionary> getPage2page() {
            return this.page2page;
        }

        public boolean isCopyFromDestDocument() {
            return this.copyFromDestDocument;
        }

        public void addCopiedNamespace(PdfDictionary pdfDictionary) {
            this.copiedNamespaces.add(pdfDictionary);
        }

        public Set<PdfObject> getCopiedNamespaces() {
            return this.copiedNamespaces;
        }
    }

    private static class CopyStructureResult {
        private final Set<PdfObject> copiedNamespaces;
        private final List<PdfDictionary> topsList;

        public CopyStructureResult(List<PdfDictionary> list, Set<PdfObject> set) {
            this.topsList = list;
            this.copiedNamespaces = set;
        }

        public Set<PdfObject> getCopiedNamespaces() {
            return this.copiedNamespaces;
        }

        public List<PdfDictionary> getTopsList() {
            return this.topsList;
        }
    }
}
