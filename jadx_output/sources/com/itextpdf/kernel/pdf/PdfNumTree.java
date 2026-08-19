package com.itextpdf.kernel.pdf;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfNumTree {
    private static final int NODE_SIZE = 40;
    private PdfCatalog catalog;
    private Map<Integer, PdfObject> items = new HashMap();
    private PdfName treeType;

    public PdfNumTree(PdfCatalog pdfCatalog, PdfName pdfName) {
        this.treeType = pdfName;
        this.catalog = pdfCatalog;
    }

    public Map<Integer, PdfObject> getNumbers() {
        PdfDictionary asDictionary;
        PdfDictionary asDictionary2;
        if (this.items.size() > 0) {
            return this.items;
        }
        if (this.treeType.equals(PdfName.PageLabels)) {
            asDictionary = this.catalog.getPdfObject().getAsDictionary(PdfName.PageLabels);
        } else {
            asDictionary = (!this.treeType.equals(PdfName.ParentTree) || (asDictionary2 = this.catalog.getPdfObject().getAsDictionary(PdfName.StructTreeRoot)) == null) ? null : asDictionary2.getAsDictionary(PdfName.ParentTree);
        }
        if (asDictionary != null) {
            readTree(asDictionary);
        }
        return this.items;
    }

    public void addEntry(int i, PdfObject pdfObject) {
        this.items.put(new Integer(i), pdfObject);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PdfDictionary buildTree() {
        Integer[] numArr = (Integer[]) this.items.keySet().toArray(new Integer[this.items.size()]);
        Arrays.sort(numArr);
        if (numArr.length <= 40) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            PdfArray pdfArray = new PdfArray();
            for (int i = 0; i < numArr.length; i++) {
                pdfArray.add(new PdfNumber(numArr[i].intValue()));
                pdfArray.add(this.items.get(numArr[i]));
            }
            pdfDictionary.put(PdfName.Nums, pdfArray);
            return pdfDictionary;
        }
        int length = (numArr.length + 39) / 40;
        PdfObject[] pdfObjectArr = new PdfDictionary[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 40;
            int iMin = Math.min(i3 + 40, numArr.length);
            PdfDictionary pdfDictionary2 = new PdfDictionary();
            PdfArray pdfArray2 = new PdfArray();
            pdfArray2.add(new PdfNumber(numArr[i3].intValue()));
            pdfArray2.add(new PdfNumber(numArr[iMin - 1].intValue()));
            pdfDictionary2.put(PdfName.Limits, pdfArray2);
            PdfArray pdfArray3 = new PdfArray();
            while (i3 < iMin) {
                pdfArray3.add(new PdfNumber(numArr[i3].intValue()));
                pdfArray3.add(this.items.get(numArr[i3]));
                i3++;
            }
            pdfDictionary2.put(PdfName.Nums, pdfArray3);
            pdfDictionary2.makeIndirect(this.catalog.getDocument());
            pdfObjectArr[i2] = pdfDictionary2;
        }
        int i4 = 40;
        while (length > 40) {
            i4 *= 40;
            int length2 = ((numArr.length + i4) - 1) / i4;
            int i5 = 0;
            while (i5 < length2) {
                int i6 = i5 * 40;
                int iMin2 = Math.min(i6 + 40, length);
                PdfDictionary pdfDictionary3 = (PdfDictionary) new PdfDictionary().makeIndirect(this.catalog.getDocument());
                PdfArray pdfArray4 = new PdfArray();
                pdfArray4.add(new PdfNumber(numArr[i5 * i4].intValue()));
                int i7 = i5 + 1;
                pdfArray4.add(new PdfNumber(numArr[Math.min(i7 * i4, numArr.length) - 1].intValue()));
                pdfDictionary3.put(PdfName.Limits, pdfArray4);
                PdfArray pdfArray5 = new PdfArray();
                while (i6 < iMin2) {
                    pdfArray5.add(pdfObjectArr[i6]);
                    i6++;
                }
                pdfDictionary3.put(PdfName.Kids, pdfArray5);
                pdfObjectArr[i5] = pdfDictionary3;
                i5 = i7;
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

    private void readTree(PdfDictionary pdfDictionary) {
        if (pdfDictionary != null) {
            iterateItems(pdfDictionary, null);
        }
    }

    private PdfNumber iterateItems(PdfDictionary pdfDictionary, PdfNumber pdfNumber) {
        PdfNumber pdfNumber2;
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Nums);
        int i = 0;
        if (asArray != null) {
            while (i < asArray.size()) {
                if (pdfNumber == null) {
                    int i2 = i + 1;
                    PdfNumber asNumber = asArray.getAsNumber(i);
                    i = i2;
                    pdfNumber2 = pdfNumber;
                    pdfNumber = asNumber;
                } else {
                    pdfNumber2 = null;
                }
                if (i >= asArray.size()) {
                    return pdfNumber;
                }
                this.items.put(Integer.valueOf(pdfNumber.intValue()), asArray.get(i));
                i++;
                pdfNumber = pdfNumber2;
            }
        } else {
            PdfArray asArray2 = pdfDictionary.getAsArray(PdfName.Kids);
            if (asArray2 != null) {
                while (i < asArray2.size()) {
                    pdfNumber = iterateItems(asArray2.getAsDictionary(i), pdfNumber);
                    i++;
                }
            }
        }
        return null;
    }
}
