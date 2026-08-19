package com.itextpdf.kernel.utils;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfOutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfResourceCounter {
    private Map<Integer, PdfObject> resources = new HashMap();

    public PdfResourceCounter(PdfObject pdfObject) {
        process(pdfObject);
    }

    protected final void process(PdfObject pdfObject) {
        PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
        if (indirectReference == null) {
            loopOver(pdfObject);
        } else {
            if (this.resources.containsKey(Integer.valueOf(indirectReference.getObjNumber()))) {
                return;
            }
            this.resources.put(Integer.valueOf(indirectReference.getObjNumber()), pdfObject);
            loopOver(pdfObject);
        }
    }

    protected final void loopOver(PdfObject pdfObject) {
        byte type = pdfObject.getType();
        if (type == 1) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            for (int i = 0; i < pdfArray.size(); i++) {
                process(pdfArray.get(i));
            }
            return;
        }
        if (type == 3 || type == 9) {
            PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
            if (PdfName.Pages.equals(pdfDictionary.get(PdfName.Type))) {
                return;
            }
            Iterator<PdfName> it = pdfDictionary.keySet().iterator();
            while (it.hasNext()) {
                process(pdfDictionary.get(it.next()));
            }
        }
    }

    public Map<Integer, PdfObject> getResources() {
        return this.resources;
    }

    public long getLength(Map<Integer, PdfObject> map) {
        Iterator<Integer> it = this.resources.keySet().iterator();
        long currentPos = 0;
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            if (map == null || !map.containsKey(Integer.valueOf(iIntValue))) {
                PdfOutputStream pdfOutputStream = new PdfOutputStream(new IdleOutputStream());
                pdfOutputStream.write(this.resources.get(Integer.valueOf(iIntValue)).m3121clone());
                currentPos += pdfOutputStream.getCurrentPos();
            }
        }
        return currentPos;
    }
}
