package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfNameTree {
    private static final int NODE_SIZE = 40;
    private PdfCatalog catalog;
    private Map<String, PdfObject> items;
    private boolean modified;
    private PdfName treeType;

    public PdfNameTree(PdfCatalog pdfCatalog, PdfName pdfName) {
        this.items = new LinkedHashMap();
        this.treeType = pdfName;
        this.catalog = pdfCatalog;
        this.items = getNames();
    }

    public Map<String, PdfObject> getNames() {
        PdfDictionary asDictionary;
        PdfDictionary asDictionary2;
        if (this.items.size() > 0) {
            return this.items;
        }
        PdfDictionary asDictionary3 = this.catalog.getPdfObject().getAsDictionary(PdfName.Names);
        if (asDictionary3 != null && (asDictionary2 = asDictionary3.getAsDictionary(this.treeType)) != null) {
            this.items = readTree(asDictionary2);
            HashSet<String> hashSet = new HashSet();
            hashSet.addAll(this.items.keySet());
            for (String str : hashSet) {
                if (this.treeType.equals(PdfName.Dests)) {
                    PdfArray destArray = getDestArray(this.items.get(str));
                    if (destArray != null) {
                        this.items.put(str, destArray);
                    } else {
                        this.items.remove(str);
                    }
                } else if (this.items.get(str) == null) {
                    this.items.remove(str);
                }
            }
        }
        if (this.treeType.equals(PdfName.Dests) && (asDictionary = this.catalog.getPdfObject().getAsDictionary(PdfName.Dests)) != null) {
            for (PdfName pdfName : asDictionary.keySet()) {
                PdfArray destArray2 = getDestArray(asDictionary.get(pdfName));
                if (destArray2 != null) {
                    this.items.put(pdfName.getValue(), destArray2);
                }
            }
        }
        return this.items;
    }

    public void addEntry(String str, PdfObject pdfObject) {
        PdfObject pdfObject2 = this.items.get(str);
        if (pdfObject2 != null) {
            if (pdfObject.getIndirectReference() != null && pdfObject.getIndirectReference().equals(pdfObject2.getIndirectReference())) {
                return;
            } else {
                LoggerFactory.getLogger((Class<?>) PdfNameTree.class).warn(MessageFormatUtil.format(IoLogMessageConstant.NAME_ALREADY_EXISTS_IN_THE_NAME_TREE, str));
            }
        }
        this.modified = true;
        this.items.put(str, pdfObject);
    }

    public boolean isModified() {
        return this.modified;
    }

    public void setModified() {
        this.modified = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PdfDictionary buildTree() {
        String[] strArr = (String[]) this.items.keySet().toArray(new String[this.items.size()]);
        Arrays.sort(strArr);
        int i = 40;
        if (strArr.length <= 40) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            PdfArray pdfArray = new PdfArray();
            for (String str : strArr) {
                pdfArray.add(new PdfString(str, (String) null));
                pdfArray.add(this.items.get(str));
            }
            pdfDictionary.put(PdfName.Names, pdfArray);
            return pdfDictionary;
        }
        int length = (strArr.length + 39) / 40;
        PdfObject[] pdfObjectArr = new PdfDictionary[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 40;
            int iMin = Math.min(i3 + 40, strArr.length);
            PdfDictionary pdfDictionary2 = new PdfDictionary();
            PdfArray pdfArray2 = new PdfArray();
            pdfArray2.add(new PdfString(strArr[i3], (String) null));
            pdfArray2.add(new PdfString(strArr[iMin - 1], (String) null));
            pdfDictionary2.put(PdfName.Limits, pdfArray2);
            PdfArray pdfArray3 = new PdfArray();
            while (i3 < iMin) {
                pdfArray3.add(new PdfString(strArr[i3], (String) null));
                pdfArray3.add(this.items.get(strArr[i3]));
                i3++;
            }
            pdfDictionary2.put(PdfName.Names, pdfArray3);
            pdfDictionary2.makeIndirect(this.catalog.getDocument());
            pdfObjectArr[i2] = pdfDictionary2;
        }
        int i4 = 40;
        while (length > i) {
            i4 *= i;
            int length2 = ((strArr.length + i4) - 1) / i4;
            int i5 = 0;
            while (i5 < length2) {
                int i6 = i5 * 40;
                int iMin2 = Math.min(i6 + 40, length);
                PdfDictionary pdfDictionary3 = (PdfDictionary) new PdfDictionary().makeIndirect(this.catalog.getDocument());
                PdfArray pdfArray4 = new PdfArray();
                pdfArray4.add(new PdfString(strArr[i5 * i4], (String) null));
                int i7 = i5 + 1;
                pdfArray4.add(new PdfString(strArr[Math.min(i7 * i4, strArr.length) - 1], (String) null));
                pdfDictionary3.put(PdfName.Limits, pdfArray4);
                PdfArray pdfArray5 = new PdfArray();
                while (i6 < iMin2) {
                    pdfArray5.add(pdfObjectArr[i6]);
                    i6++;
                }
                pdfDictionary3.put(PdfName.Kids, pdfArray5);
                pdfObjectArr[i5] = pdfDictionary3;
                i5 = i7;
                i = 40;
            }
            length = length2;
        }
        PdfArray pdfArray6 = new PdfArray();
        for (int i8 = 0; i8 < length; i8++) {
            pdfArray6.add(pdfObjectArr[i8]);
        }
        PdfDictionary pdfDictionary4 = new PdfDictionary();
        pdfDictionary4.put(PdfName.Kids, pdfArray6);
        return pdfDictionary4;
    }

    private Map<String, PdfObject> readTree(PdfDictionary pdfDictionary) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (pdfDictionary != null) {
            iterateItems(pdfDictionary, linkedHashMap, null);
        }
        return linkedHashMap;
    }

    private PdfString iterateItems(PdfDictionary pdfDictionary, Map<String, PdfObject> map, PdfString pdfString) {
        PdfString pdfString2;
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Names);
        int i = 0;
        if (asArray != null) {
            while (i < asArray.size()) {
                if (pdfString == null) {
                    int i2 = i + 1;
                    PdfString asString = asArray.getAsString(i);
                    i = i2;
                    pdfString2 = pdfString;
                    pdfString = asString;
                } else {
                    pdfString2 = null;
                }
                if (i >= asArray.size()) {
                    return pdfString;
                }
                map.put(pdfString.toUnicodeString(), asArray.get(i));
                i++;
                pdfString = pdfString2;
            }
        } else {
            PdfArray asArray2 = pdfDictionary.getAsArray(PdfName.Kids);
            if (asArray2 != null) {
                while (i < asArray2.size()) {
                    pdfString = iterateItems(asArray2.getAsDictionary(i), map, pdfString);
                    i++;
                }
            }
        }
        return null;
    }

    private PdfArray getDestArray(PdfObject pdfObject) {
        if (pdfObject == null) {
            return null;
        }
        if (pdfObject.isArray()) {
            return (PdfArray) pdfObject;
        }
        if (pdfObject.isDictionary()) {
            return ((PdfDictionary) pdfObject).getAsArray(PdfName.f2992D);
        }
        return null;
    }
}
