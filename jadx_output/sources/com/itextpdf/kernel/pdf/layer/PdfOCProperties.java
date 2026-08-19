package com.itextpdf.kernel.pdf.layer;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.PdfEncodings;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public class PdfOCProperties extends PdfObjectWrapper<PdfDictionary> {
    static final String OC_CONFIG_NAME_PATTERN = "OCConfigName";
    private List<PdfLayer> layers;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfOCProperties(PdfDocument pdfDocument) {
        this((PdfDictionary) new PdfDictionary().makeIndirect(pdfDocument));
    }

    public PdfOCProperties(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.layers = new ArrayList();
        ensureObjectIsAddedToDocument(pdfDictionary);
        readLayersFromDictionary();
    }

    public void addOCGRadioGroup(List<PdfLayer> list) {
        PdfArray pdfArray = new PdfArray();
        for (PdfLayer pdfLayer : list) {
            if (pdfLayer.getTitle() == null) {
                pdfArray.add(((PdfDictionary) pdfLayer.getPdfObject()).getIndirectReference());
            }
        }
        if (pdfArray.size() != 0) {
            PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f2992D);
            if (asDictionary == null) {
                asDictionary = new PdfDictionary();
                getPdfObject().put(PdfName.f2992D, asDictionary);
            }
            PdfArray asArray = asDictionary.getAsArray(PdfName.RBGroups);
            if (asArray == null) {
                asArray = new PdfArray();
                asDictionary.put(PdfName.RBGroups, asArray);
                asDictionary.setModified();
            } else {
                asArray.setModified();
            }
            asArray.add(pdfArray);
        }
    }

    public PdfObject fillDictionary() {
        return fillDictionary(true);
    }

    public PdfObject fillDictionary(boolean z) {
        PdfArray pdfArray = new PdfArray();
        for (PdfLayer pdfLayer : this.layers) {
            if (pdfLayer.getTitle() == null) {
                pdfArray.add(pdfLayer.getIndirectReference());
            }
        }
        getPdfObject().put(PdfName.OCGs, pdfArray);
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f2992D);
        PdfArray asArray = asDictionary != null ? asDictionary.getAsArray(PdfName.RBGroups) : null;
        PdfDictionary pdfDictionary = new PdfDictionary();
        if (asArray != null) {
            pdfDictionary.put(PdfName.RBGroups, asArray);
        }
        pdfDictionary.put(PdfName.Name, new PdfString(createUniqueName(), PdfEncodings.UNICODE_BIG));
        getPdfObject().put(PdfName.f2992D, pdfDictionary);
        ArrayList arrayList = new ArrayList(this.layers);
        int i = 0;
        while (i < arrayList.size()) {
            PdfLayer pdfLayer2 = (PdfLayer) arrayList.get(i);
            if (pdfLayer2.getParent() != null) {
                arrayList.remove(pdfLayer2);
                i--;
            }
            i++;
        }
        PdfArray pdfArray2 = new PdfArray();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            getOCGOrder(pdfArray2, (PdfLayer) it.next());
        }
        pdfDictionary.put(PdfName.Order, pdfArray2);
        PdfArray pdfArray3 = new PdfArray();
        for (PdfLayer pdfLayer3 : this.layers) {
            if (pdfLayer3.getTitle() == null && !pdfLayer3.isOn()) {
                pdfArray3.add(pdfLayer3.getIndirectReference());
            }
        }
        if (pdfArray3.size() > 0) {
            pdfDictionary.put(PdfName.OFF, pdfArray3);
        } else {
            pdfDictionary.remove(PdfName.OFF);
        }
        PdfArray pdfArray4 = new PdfArray();
        for (PdfLayer pdfLayer4 : this.layers) {
            if (pdfLayer4.getTitle() == null && pdfLayer4.isLocked()) {
                pdfArray4.add(pdfLayer4.getIndirectReference());
            }
        }
        if (pdfArray4.size() > 0) {
            pdfDictionary.put(PdfName.Locked, pdfArray4);
        } else {
            pdfDictionary.remove(PdfName.Locked);
        }
        pdfDictionary.remove(PdfName.f2972AS);
        addASEvent(PdfName.View, PdfName.Zoom);
        addASEvent(PdfName.View, PdfName.View);
        addASEvent(PdfName.Print, PdfName.Print);
        addASEvent(PdfName.Export, PdfName.Export);
        if (z) {
            removeNotRegisteredOcgs();
        }
        return getPdfObject();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        fillDictionary();
        super.flush();
    }

    public List<PdfLayer> getLayers() {
        return new ArrayList(this.layers);
    }

    protected void registerLayer(PdfLayer pdfLayer) {
        if (pdfLayer == null) {
            throw new IllegalArgumentException("layer argument is null");
        }
        this.layers.add(pdfLayer);
    }

    protected PdfDocument getDocument() {
        return getPdfObject().getIndirectReference().getDocument();
    }

    private static void getOCGOrder(PdfArray pdfArray, PdfLayer pdfLayer) {
        if (pdfLayer.isOnPanel()) {
            if (pdfLayer.getTitle() == null) {
                pdfArray.add(((PdfDictionary) pdfLayer.getPdfObject()).getIndirectReference());
            }
            List<PdfLayer> children = pdfLayer.getChildren();
            if (children == null) {
                return;
            }
            PdfArray pdfArray2 = new PdfArray();
            if (pdfLayer.getTitle() != null) {
                pdfArray2.add(new PdfString(pdfLayer.getTitle(), PdfEncodings.UNICODE_BIG));
            }
            Iterator<PdfLayer> it = children.iterator();
            while (it.hasNext()) {
                getOCGOrder(pdfArray2, it.next());
            }
            if (pdfArray2.size() > 0) {
                pdfArray.add(pdfArray2);
            }
        }
    }

    private void removeNotRegisteredOcgs() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f2992D);
        PdfDictionary asDictionary2 = getDocument().getCatalog().getPdfObject().getAsDictionary(PdfName.OCProperties);
        HashSet hashSet = new HashSet();
        if (asDictionary2.getAsArray(PdfName.OCGs) != null) {
            for (PdfObject pdfObject : asDictionary2.getAsArray(PdfName.OCGs)) {
                if (pdfObject.isDictionary()) {
                    hashSet.add(pdfObject.getIndirectReference());
                }
            }
        }
        PdfArray<PdfArray> asArray = asDictionary.getAsArray(PdfName.RBGroups);
        if (asArray != null) {
            for (PdfArray pdfArray : asArray) {
                int size = pdfArray.size();
                while (true) {
                    size--;
                    if (size > -1) {
                        if (!hashSet.contains(pdfArray.get(size).getIndirectReference())) {
                            pdfArray.remove(size);
                        }
                    }
                }
            }
        }
    }

    private void addASEvent(PdfName pdfName, PdfName pdfName2) {
        PdfDictionary asDictionary;
        PdfArray pdfArray = new PdfArray();
        for (PdfLayer pdfLayer : this.layers) {
            if (pdfLayer.getTitle() == null && !((PdfDictionary) pdfLayer.getPdfObject()).isFlushed() && (asDictionary = ((PdfDictionary) pdfLayer.getPdfObject()).getAsDictionary(PdfName.Usage)) != null && asDictionary.get(pdfName2) != null) {
                pdfArray.add(((PdfDictionary) pdfLayer.getPdfObject()).getIndirectReference());
            }
        }
        if (pdfArray.size() == 0) {
            return;
        }
        PdfDictionary asDictionary2 = getPdfObject().getAsDictionary(PdfName.f2992D);
        PdfArray asArray = asDictionary2.getAsArray(PdfName.f2972AS);
        if (asArray == null) {
            asArray = new PdfArray();
            asDictionary2.put(PdfName.f2972AS, asArray);
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Event, pdfName);
        PdfArray pdfArray2 = new PdfArray();
        pdfArray2.add(pdfName2);
        pdfDictionary.put(PdfName.Category, pdfArray2);
        pdfDictionary.put(PdfName.OCGs, pdfArray);
        asArray.add(pdfDictionary);
    }

    private void readLayersFromDictionary() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.OCGs);
        if (asArray == null || asArray.isEmpty()) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (int i = 0; i < asArray.size(); i++) {
            PdfLayer pdfLayer = new PdfLayer((PdfDictionary) asArray.getAsDictionary(i).makeIndirect(getDocument()));
            pdfLayer.onPanel = false;
            treeMap.put(pdfLayer.getIndirectReference(), pdfLayer);
        }
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f2992D);
        if (asDictionary != null && !asDictionary.isEmpty()) {
            PdfArray asArray2 = asDictionary.getAsArray(PdfName.OFF);
            if (asArray2 != null) {
                for (int i2 = 0; i2 < asArray2.size(); i2++) {
                    PdfObject pdfObject = asArray2.get(i2, false);
                    if (pdfObject.isIndirectReference()) {
                        treeMap.get((PdfIndirectReference) pdfObject).f3183on = false;
                    } else {
                        treeMap.get(pdfObject.getIndirectReference()).f3183on = false;
                    }
                }
            }
            PdfArray asArray3 = asDictionary.getAsArray(PdfName.Locked);
            if (asArray3 != null) {
                for (int i3 = 0; i3 < asArray3.size(); i3++) {
                    PdfObject pdfObject2 = asArray3.get(i3, false);
                    if (pdfObject2.isIndirectReference()) {
                        treeMap.get((PdfIndirectReference) pdfObject2).locked = true;
                    } else {
                        treeMap.get(pdfObject2.getIndirectReference()).locked = true;
                    }
                }
            }
            PdfArray asArray4 = asDictionary.getAsArray(PdfName.Order);
            if (asArray4 != null && !asArray4.isEmpty()) {
                readOrderFromDictionary(null, asArray4, treeMap);
            }
        }
        for (PdfLayer pdfLayer2 : treeMap.values()) {
            if (!pdfLayer2.isOnPanel()) {
                this.layers.add(pdfLayer2);
            }
        }
    }

    private void readOrderFromDictionary(PdfLayer pdfLayer, PdfArray pdfArray, Map<PdfIndirectReference, PdfLayer> map) {
        int i = 0;
        while (i < pdfArray.size()) {
            PdfObject pdfObject = pdfArray.get(i);
            if (pdfObject.getType() == 3) {
                PdfLayer pdfLayer2 = map.get(pdfObject.getIndirectReference());
                if (pdfLayer2 != null) {
                    this.layers.add(pdfLayer2);
                    pdfLayer2.onPanel = true;
                    if (pdfLayer != null) {
                        pdfLayer.addChild(pdfLayer2);
                    }
                    int i2 = i + 1;
                    if (i2 < pdfArray.size() && pdfArray.get(i2).getType() == 1) {
                        PdfArray asArray = pdfArray.getAsArray(i2);
                        if (asArray.size() > 0 && asArray.get(0).getType() != 10) {
                            readOrderFromDictionary(pdfLayer2, pdfArray.getAsArray(i2), map);
                            i = i2;
                        }
                    }
                }
            } else if (pdfObject.getType() == 1) {
                PdfArray pdfArray2 = (PdfArray) pdfObject;
                if (!pdfArray2.isEmpty()) {
                    PdfObject pdfObject2 = pdfArray2.get(0);
                    if (pdfObject2.getType() == 10) {
                        PdfLayer pdfLayerCreateTitleSilent = PdfLayer.createTitleSilent(((PdfString) pdfObject2).toUnicodeString(), getDocument());
                        pdfLayerCreateTitleSilent.onPanel = true;
                        this.layers.add(pdfLayerCreateTitleSilent);
                        if (pdfLayer != null) {
                            pdfLayer.addChild(pdfLayerCreateTitleSilent);
                        }
                        readOrderFromDictionary(pdfLayerCreateTitleSilent, new PdfArray(pdfArray2.subList(1, pdfArray2.size())), map);
                    } else {
                        readOrderFromDictionary(pdfLayer, pdfArray2, map);
                    }
                }
            }
            i++;
        }
    }

    private String createUniqueName() {
        HashSet hashSet = new HashSet();
        PdfArray asArray = getPdfObject().getAsArray(PdfName.Configs);
        int i = 0;
        if (asArray != null) {
            for (int i2 = 0; i2 < asArray.size(); i2++) {
                PdfDictionary asDictionary = asArray.getAsDictionary(i2);
                if (asDictionary != null && asDictionary.containsKey(PdfName.Name)) {
                    hashSet.add(asDictionary.getAsString(PdfName.Name).toUnicodeString());
                }
            }
        }
        while (hashSet.contains(OC_CONFIG_NAME_PATTERN + i)) {
            i++;
        }
        return OC_CONFIG_NAME_PATTERN + i;
    }
}
