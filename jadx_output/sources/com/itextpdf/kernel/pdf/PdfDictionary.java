package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.kernel.utils.NullCopyFilter;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDictionary extends PdfObject {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Map<PdfName, PdfObject> map;

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 3;
    }

    public PdfDictionary() {
        this.map = new TreeMap();
    }

    public PdfDictionary(Map<PdfName, PdfObject> map) {
        TreeMap treeMap = new TreeMap();
        this.map = treeMap;
        treeMap.putAll(map);
    }

    public PdfDictionary(Set<Map.Entry<PdfName, PdfObject>> set) {
        this.map = new TreeMap();
        for (Map.Entry<PdfName, PdfObject> entry : set) {
            this.map.put(entry.getKey(), entry.getValue());
        }
    }

    public PdfDictionary(PdfDictionary pdfDictionary) {
        TreeMap treeMap = new TreeMap();
        this.map = treeMap;
        treeMap.putAll(pdfDictionary.map);
    }

    public int size() {
        return this.map.size();
    }

    public boolean isEmpty() {
        return this.map.size() == 0;
    }

    public boolean containsKey(PdfName pdfName) {
        return this.map.containsKey(pdfName);
    }

    public boolean containsValue(PdfObject pdfObject) {
        return this.map.values().contains(pdfObject);
    }

    public PdfObject get(PdfName pdfName) {
        return get(pdfName, true);
    }

    public PdfArray getAsArray(PdfName pdfName) {
        PdfObject pdfObject = get(pdfName, true);
        if (pdfObject == null || pdfObject.getType() != 1) {
            return null;
        }
        return (PdfArray) pdfObject;
    }

    public PdfDictionary getAsDictionary(PdfName pdfName) {
        PdfObject pdfObject = get(pdfName, true);
        if (pdfObject == null || pdfObject.getType() != 3) {
            return null;
        }
        return (PdfDictionary) pdfObject;
    }

    public PdfStream getAsStream(PdfName pdfName) {
        PdfObject pdfObject = get(pdfName, true);
        if (pdfObject == null || pdfObject.getType() != 9) {
            return null;
        }
        return (PdfStream) pdfObject;
    }

    public PdfNumber getAsNumber(PdfName pdfName) {
        PdfObject pdfObject = get(pdfName, true);
        if (pdfObject == null || pdfObject.getType() != 8) {
            return null;
        }
        return (PdfNumber) pdfObject;
    }

    public PdfName getAsName(PdfName pdfName) {
        PdfObject pdfObject = get(pdfName, true);
        if (pdfObject == null || pdfObject.getType() != 6) {
            return null;
        }
        return (PdfName) pdfObject;
    }

    public PdfString getAsString(PdfName pdfName) {
        PdfObject pdfObject = get(pdfName, true);
        if (pdfObject == null || pdfObject.getType() != 10) {
            return null;
        }
        return (PdfString) pdfObject;
    }

    public PdfBoolean getAsBoolean(PdfName pdfName) {
        PdfObject pdfObject = get(pdfName, true);
        if (pdfObject == null || pdfObject.getType() != 2) {
            return null;
        }
        return (PdfBoolean) pdfObject;
    }

    public Rectangle getAsRectangle(PdfName pdfName) {
        PdfArray asArray = getAsArray(pdfName);
        if (asArray == null) {
            return null;
        }
        return asArray.toRectangle();
    }

    public Float getAsFloat(PdfName pdfName) {
        PdfNumber asNumber = getAsNumber(pdfName);
        if (asNumber != null) {
            return Float.valueOf(asNumber.floatValue());
        }
        return null;
    }

    public Integer getAsInt(PdfName pdfName) {
        PdfNumber asNumber = getAsNumber(pdfName);
        if (asNumber != null) {
            return Integer.valueOf(asNumber.intValue());
        }
        return null;
    }

    public Boolean getAsBool(PdfName pdfName) {
        PdfBoolean asBoolean = getAsBoolean(pdfName);
        if (asBoolean != null) {
            return Boolean.valueOf(asBoolean.getValue());
        }
        return null;
    }

    public PdfObject put(PdfName pdfName, PdfObject pdfObject) {
        return this.map.put(pdfName, pdfObject);
    }

    public PdfObject remove(PdfName pdfName) {
        return this.map.remove(pdfName);
    }

    public void putAll(PdfDictionary pdfDictionary) {
        this.map.putAll(pdfDictionary.map);
    }

    public void clear() {
        this.map.clear();
    }

    public Set<PdfName> keySet() {
        return this.map.keySet();
    }

    public Collection<PdfObject> values(boolean z) {
        if (z) {
            return values();
        }
        return this.map.values();
    }

    public Collection<PdfObject> values() {
        return new PdfDictionaryValues(this.map.values());
    }

    public Set<Map.Entry<PdfName, PdfObject>> entrySet() {
        return new PdfDictionaryEntrySet(this.map.entrySet());
    }

    public String toString() {
        if (!isFlushed()) {
            String str = "<<";
            for (Map.Entry<PdfName, PdfObject> entry : this.map.entrySet()) {
                PdfIndirectReference indirectReference = entry.getValue().getIndirectReference();
                str = str + entry.getKey().toString() + StringUtils.SPACE + (indirectReference == null ? entry.getValue().toString() : indirectReference.toString()) + StringUtils.SPACE;
            }
            return str + ">>";
        }
        return this.indirectReference.toString();
    }

    public PdfDictionary clone(List<PdfName> list) {
        TreeMap treeMap = new TreeMap();
        for (PdfName pdfName : list) {
            if (this.map.get(pdfName) != null) {
                treeMap.put(pdfName, this.map.remove(pdfName));
            }
        }
        PdfDictionary pdfDictionary = (PdfDictionary) m3121clone();
        this.map.putAll(treeMap);
        return pdfDictionary;
    }

    public PdfDictionary copyTo(PdfDocument pdfDocument, List<PdfName> list, boolean z) {
        return copyTo(pdfDocument, list, z, NullCopyFilter.getInstance());
    }

    public PdfDictionary copyTo(PdfDocument pdfDocument, List<PdfName> list, boolean z, ICopyFilter iCopyFilter) {
        TreeMap treeMap = new TreeMap();
        for (PdfName pdfName : list) {
            if (this.map.get(pdfName) != null) {
                treeMap.put(pdfName, this.map.remove(pdfName));
            }
        }
        PdfDictionary pdfDictionary = (PdfDictionary) copyTo(pdfDocument, z, iCopyFilter);
        this.map.putAll(treeMap);
        return pdfDictionary;
    }

    public PdfObject get(PdfName pdfName, boolean z) {
        if (!z) {
            return this.map.get(pdfName);
        }
        PdfObject pdfObject = this.map.get(pdfName);
        return (pdfObject == null || pdfObject.getType() != 5) ? pdfObject : ((PdfIndirectReference) pdfObject).getRefersTo(true);
    }

    public void mergeDifferent(PdfDictionary pdfDictionary) {
        for (PdfName pdfName : pdfDictionary.keySet()) {
            if (!containsKey(pdfName)) {
                put(pdfName, pdfDictionary.get(pdfName));
            }
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfDictionary();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument) {
        copyContent(pdfObject, pdfDocument, NullCopyFilter.getInstance());
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        for (Map.Entry<PdfName, PdfObject> entry : ((PdfDictionary) pdfObject).map.entrySet()) {
            if (iCopyFilter.shouldProcess(this, entry.getKey(), entry.getValue())) {
                this.map.put(entry.getKey(), entry.getValue().processCopying(pdfDocument, false, iCopyFilter));
            }
        }
    }

    protected void releaseContent() {
        this.map = null;
    }
}
