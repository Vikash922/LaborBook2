package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
final class OcgPropertiesCopier {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) OcgPropertiesCopier.class);

    private OcgPropertiesCopier() {
    }

    public static void copyOCGProperties(PdfDocument pdfDocument, PdfDocument pdfDocument2, Map<PdfPage, PdfPage> map) {
        try {
            Set<PdfIndirectReference> allUsedNonFlushedOCGs = getAllUsedNonFlushedOCGs(map, pdfDocument2.getCatalog().getPdfObject().getAsDictionary(PdfName.OCProperties));
            if (allUsedNonFlushedOCGs.isEmpty()) {
                return;
            }
            PdfDictionary pdfDictionaryFillAndGetOcPropertiesDictionary = pdfDocument2.getCatalog().fillAndGetOcPropertiesDictionary();
            PdfDictionary asDictionary = pdfDocument.getCatalog().getPdfObject().getAsDictionary(PdfName.OCProperties);
            copyOCGs(allUsedNonFlushedOCGs, pdfDictionaryFillAndGetOcPropertiesDictionary, pdfDocument2);
            copyDDictionary(allUsedNonFlushedOCGs, asDictionary.getAsDictionary(PdfName.f2992D), pdfDictionaryFillAndGetOcPropertiesDictionary, pdfDocument2);
        } catch (Exception e) {
            LOGGER.error(MessageFormatUtil.format(IoLogMessageConstant.OCG_COPYING_ERROR, e.toString()));
        }
    }

    private static Set<PdfIndirectReference> getAllUsedNonFlushedOCGs(Map<PdfPage, PdfPage> map, PdfDictionary pdfDictionary) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        PdfPage[] pdfPageArr = (PdfPage[]) map.keySet().toArray(new PdfPage[0]);
        PdfPage[] pdfPageArr2 = (PdfPage[]) map.values().toArray(new PdfPage[0]);
        for (int i = 0; i < pdfPageArr2.length; i++) {
            PdfPage pdfPage = pdfPageArr[i];
            PdfPage pdfPage2 = pdfPageArr2[i];
            List<PdfAnnotation> annotations = pdfPage2.getAnnotations();
            List<PdfAnnotation> annotations2 = pdfPage.getAnnotations();
            for (int i2 = 0; i2 < annotations.size(); i2++) {
                if (!annotations.get(i2).isFlushed()) {
                    PdfDictionary pdfObject = annotations.get(i2).getPdfObject();
                    PdfDictionary pdfObject2 = annotations2.get(i2).getPdfObject();
                    PdfAnnotation pdfAnnotation = annotations.get(i2);
                    PdfAnnotation pdfAnnotation2 = annotations2.get(i2);
                    if (!pdfObject.isFlushed()) {
                        getUsedNonFlushedOCGsFromOcDict(pdfObject.getAsDictionary(PdfName.f3042OC), pdfObject2.getAsDictionary(PdfName.f3042OC), linkedHashSet, pdfDictionary);
                        getUsedNonFlushedOCGsFromXObject(pdfAnnotation.getNormalAppearanceObject(), pdfAnnotation2.getNormalAppearanceObject(), linkedHashSet, pdfDictionary, new HashSet());
                        getUsedNonFlushedOCGsFromXObject(pdfAnnotation.getRolloverAppearanceObject(), pdfAnnotation2.getRolloverAppearanceObject(), linkedHashSet, pdfDictionary, new HashSet());
                        getUsedNonFlushedOCGsFromXObject(pdfAnnotation.getDownAppearanceObject(), pdfAnnotation2.getDownAppearanceObject(), linkedHashSet, pdfDictionary, new HashSet());
                    }
                }
            }
            getUsedNonFlushedOCGsFromResources(pdfPage2.getPdfObject().getAsDictionary(PdfName.Resources), pdfPage.getPdfObject().getAsDictionary(PdfName.Resources), linkedHashSet, pdfDictionary, new HashSet());
        }
        return linkedHashSet;
    }

    private static void getUsedNonFlushedOCGsFromResources(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, Set<PdfIndirectReference> set, PdfDictionary pdfDictionary3, Set<PdfObject> set2) {
        if (pdfDictionary == null || pdfDictionary.isFlushed()) {
            return;
        }
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Properties);
        PdfDictionary asDictionary2 = pdfDictionary2.getAsDictionary(PdfName.Properties);
        if (asDictionary != null && !asDictionary.isFlushed()) {
            for (PdfName pdfName : asDictionary.keySet()) {
                getUsedNonFlushedOCGsFromOcDict(asDictionary.get(pdfName), asDictionary2.get(pdfName), set, pdfDictionary3);
            }
        }
        getUsedNonFlushedOCGsFromXObject(pdfDictionary.getAsDictionary(PdfName.XObject), pdfDictionary2.getAsDictionary(PdfName.XObject), set, pdfDictionary3, set2);
    }

    private static void getUsedNonFlushedOCGsFromXObject(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, Set<PdfIndirectReference> set, PdfDictionary pdfDictionary3, Set<PdfObject> set2) {
        if (set2.contains(pdfDictionary2)) {
            return;
        }
        set2.add(pdfDictionary2);
        if (pdfDictionary == null || pdfDictionary.isFlushed()) {
            return;
        }
        if (pdfDictionary.isStream() && !pdfDictionary.isFlushed()) {
            PdfStream pdfStream = (PdfStream) pdfDictionary;
            PdfStream pdfStream2 = (PdfStream) pdfDictionary2;
            getUsedNonFlushedOCGsFromOcDict(pdfStream.getAsDictionary(PdfName.f3042OC), pdfStream2.getAsDictionary(PdfName.f3042OC), set, pdfDictionary3);
            getUsedNonFlushedOCGsFromResources(pdfStream.getAsDictionary(PdfName.Resources), pdfStream2.getAsDictionary(PdfName.Resources), set, pdfDictionary3, set2);
            return;
        }
        for (PdfName pdfName : pdfDictionary.keySet()) {
            PdfObject pdfObject = pdfDictionary.get(pdfName);
            PdfObject pdfObject2 = pdfDictionary2.get(pdfName);
            if (pdfObject.isStream() && !pdfObject.isFlushed()) {
                getUsedNonFlushedOCGsFromXObject((PdfStream) pdfObject, (PdfStream) pdfObject2, set, pdfDictionary3, set2);
            }
        }
    }

    private static void getUsedNonFlushedOCGsFromOcDict(PdfObject pdfObject, PdfObject pdfObject2, Set<PdfIndirectReference> set, PdfDictionary pdfDictionary) {
        PdfArray asArray;
        PdfArray asArray2;
        if (pdfObject == null || !pdfObject.isDictionary() || pdfObject.isFlushed()) {
            return;
        }
        PdfDictionary pdfDictionary2 = (PdfDictionary) pdfObject;
        PdfDictionary pdfDictionary3 = (PdfDictionary) pdfObject2;
        PdfName asName = pdfDictionary2.getAsName(PdfName.Type);
        if (PdfName.OCG.equals(asName) && !ocgAlreadyInOCGs(pdfDictionary2.getIndirectReference(), pdfDictionary)) {
            set.add(pdfDictionary3.getIndirectReference());
            return;
        }
        if (PdfName.OCMD.equals(asName)) {
            if (pdfDictionary2.getAsDictionary(PdfName.OCGs) != null) {
                asArray = new PdfArray();
                asArray.add(pdfDictionary2.getAsDictionary(PdfName.OCGs));
                asArray2 = new PdfArray();
                asArray2.add(pdfDictionary3.getAsDictionary(PdfName.OCGs));
            } else if (pdfDictionary2.getAsArray(PdfName.OCGs) != null) {
                asArray = pdfDictionary2.getAsArray(PdfName.OCGs);
                asArray2 = pdfDictionary3.getAsArray(PdfName.OCGs);
            } else {
                asArray = null;
                asArray2 = null;
            }
            if (asArray == null || asArray.isFlushed()) {
                return;
            }
            for (int i = 0; i < asArray.size(); i++) {
                getUsedNonFlushedOCGsFromOcDict(asArray.get(i), asArray2.get(i), set, pdfDictionary);
            }
        }
    }

    private static void copyOCGs(Set<PdfIndirectReference> set, PdfDictionary pdfDictionary, PdfDocument pdfDocument) {
        HashSet hashSet = new HashSet();
        if (pdfDictionary.getAsArray(PdfName.OCGs) != null) {
            for (PdfObject pdfObject : pdfDictionary.getAsArray(PdfName.OCGs)) {
                if (pdfObject.isDictionary()) {
                    hashSet.add(((PdfDictionary) pdfObject).getAsString(PdfName.Name).toUnicodeString());
                }
            }
        }
        Iterator<PdfIndirectReference> it = set.iterator();
        boolean z = false;
        while (it.hasNext()) {
            PdfDictionary pdfDictionary2 = (PdfDictionary) it.next().getRefersTo().copyTo(pdfDocument, false);
            String unicodeString = pdfDictionary2.getAsString(PdfName.Name).toUnicodeString();
            if (hashSet.contains(unicodeString)) {
                int i = 0;
                while (hashSet.contains(unicodeString + "_" + i)) {
                    i++;
                }
                pdfDictionary2.put(PdfName.Name, new PdfString(unicodeString + "_" + i, PdfEncodings.UNICODE_BIG));
                z = true;
            }
            if (pdfDictionary.getAsArray(PdfName.OCGs) == null) {
                pdfDictionary.put(PdfName.OCGs, new PdfArray());
            }
            pdfDictionary.getAsArray(PdfName.OCGs).add(pdfDictionary2);
        }
        if (z) {
            LOGGER.warn(IoLogMessageConstant.DOCUMENT_HAS_CONFLICTING_OCG_NAMES);
        }
    }

    private static boolean ocgAlreadyInOCGs(PdfIndirectReference pdfIndirectReference, PdfDictionary pdfDictionary) {
        PdfArray asArray;
        if (pdfDictionary != null && (asArray = pdfDictionary.getAsArray(PdfName.OCGs)) != null) {
            Iterator<PdfObject> it = asArray.iterator();
            while (it.hasNext()) {
                if (pdfIndirectReference.equals(it.next().getIndirectReference())) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void copyDDictionary(Set<PdfIndirectReference> set, PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, PdfDocument pdfDocument) {
        if (pdfDictionary2.getAsDictionary(PdfName.f2992D) == null) {
            pdfDictionary2.put(PdfName.f2992D, new PdfDictionary());
        }
        PdfDictionary asDictionary = pdfDictionary2.getAsDictionary(PdfName.f2992D);
        asDictionary.remove(PdfName.Creator);
        copyDArrayField(PdfName.f3044ON, set, pdfDictionary, asDictionary, pdfDocument);
        copyDArrayField(PdfName.OFF, set, pdfDictionary, asDictionary, pdfDocument);
        copyDArrayField(PdfName.Order, set, pdfDictionary, asDictionary, pdfDocument);
        copyDArrayField(PdfName.RBGroups, set, pdfDictionary, asDictionary, pdfDocument);
        copyDArrayField(PdfName.Locked, set, pdfDictionary, asDictionary, pdfDocument);
    }

    private static void attemptToAddObjectToArray(Set<PdfIndirectReference> set, PdfObject pdfObject, PdfArray pdfArray, PdfDocument pdfDocument) {
        PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
        if (indirectReference == null || !set.contains(indirectReference)) {
            return;
        }
        pdfArray.add(pdfObject.copyTo(pdfDocument, false));
    }

    private static void copyDArrayField(PdfName pdfName, Set<PdfIndirectReference> set, PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, PdfDocument pdfDocument) {
        boolean z;
        PdfArray pdfArray;
        if (pdfDictionary.getAsArray(pdfName) == null) {
            return;
        }
        PdfArray<PdfArray> asArray = pdfDictionary.getAsArray(pdfName);
        if (pdfDictionary2.getAsArray(pdfName) == null) {
            pdfDictionary2.put(pdfName, new PdfArray());
        }
        PdfArray asArray2 = pdfDictionary2.getAsArray(pdfName);
        HashSet hashSet = new HashSet();
        Iterator<PdfIndirectReference> it = set.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            } else {
                hashSet.add(it.next().getRefersTo().copyTo(pdfDocument, false).getIndirectReference());
            }
        }
        if (PdfName.Order.equals(pdfName)) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < asArray2.size(); i++) {
                if (orderBranchContainsSetElements(asArray2.get(i), asArray2, i, hashSet, null, null)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int size = arrayList.size() - 1; size > -1; size--) {
                asArray2.remove(((Integer) arrayList.get(size)).intValue());
            }
            PdfArray asArray3 = pdfDocument.getCatalog().getPdfObject().getAsDictionary(PdfName.OCProperties).getAsArray(PdfName.OCGs);
            int i2 = 0;
            while (i2 < asArray.size()) {
                PdfObject pdfObject = asArray.get(i2);
                boolean z2 = z;
                PdfArray pdfArray2 = asArray2;
                if (orderBranchContainsSetElements(pdfObject, asArray, i2, set, asArray3, pdfDocument)) {
                    pdfArray2.add(pdfObject.copyTo(pdfDocument, z2));
                }
                i2++;
                z = z2;
                asArray2 = pdfArray2;
            }
            pdfArray = asArray2;
        } else {
            pdfArray = asArray2;
            if (PdfName.RBGroups.equals(pdfName)) {
                for (int size2 = pdfArray.size() - 1; size2 > -1; size2--) {
                    Iterator<PdfObject> it2 = ((PdfArray) pdfArray.get(size2)).iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (hashSet.contains(it2.next().getIndirectReference())) {
                                pdfArray.remove(size2);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                for (PdfArray pdfArray3 : asArray) {
                    Iterator<PdfObject> it3 = pdfArray3.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (set.contains(it3.next().getIndirectReference())) {
                                pdfArray.add(pdfArray3.copyTo(pdfDocument, false));
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } else {
                Iterator<PdfObject> it4 = asArray.iterator();
                while (it4.hasNext()) {
                    attemptToAddObjectToArray(set, it4.next(), pdfArray, pdfDocument);
                }
            }
        }
        if (pdfArray.isEmpty()) {
            pdfDictionary2.remove(pdfName);
        }
    }

    private static boolean orderBranchContainsSetElements(PdfObject pdfObject, PdfArray pdfArray, int i, Set<PdfIndirectReference> set, PdfArray pdfArray2, PdfDocument pdfDocument) {
        if (pdfObject.isDictionary()) {
            if (set.contains(pdfObject.getIndirectReference())) {
                return true;
            }
            if (i < pdfArray.size() - 1) {
                int i2 = i + 1;
                if (pdfArray.get(i2).isArray()) {
                    PdfArray asArray = pdfArray.getAsArray(i2);
                    if (!asArray.get(0).isString()) {
                        boolean zOrderBranchContainsSetElements = orderBranchContainsSetElements(asArray, pdfArray, i2, set, pdfArray2, pdfDocument);
                        if (zOrderBranchContainsSetElements && pdfArray2 != null && !set.contains(pdfObject.getIndirectReference())) {
                            pdfArray2.add(pdfObject.copyTo(pdfDocument, false));
                        }
                        return zOrderBranchContainsSetElements;
                    }
                }
            }
        } else if (pdfObject.isArray()) {
            PdfArray pdfArray3 = (PdfArray) pdfObject;
            for (int i3 = 0; i3 < pdfArray3.size(); i3++) {
                if (orderBranchContainsSetElements(pdfArray3.get(i3), pdfArray3, i3, set, pdfArray2, pdfDocument)) {
                    return true;
                }
            }
            if (!pdfArray3.isEmpty() && !pdfArray3.get(0).isString() && i > 0) {
                int i4 = i - 1;
                if (pdfArray.get(i4).isDictionary()) {
                    return set.contains(((PdfDictionary) pdfArray.get(i4)).getIndirectReference());
                }
            }
        }
        return false;
    }
}
