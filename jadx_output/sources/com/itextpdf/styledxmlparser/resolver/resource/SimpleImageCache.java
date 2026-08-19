package com.itextpdf.styledxmlparser.resolver.resource;

import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class SimpleImageCache {
    private Map<String, PdfXObject> cache;
    private int capacity;
    private Map<String, Integer> imagesFrequency;

    SimpleImageCache() {
        this.cache = new LinkedHashMap();
        this.imagesFrequency = new LinkedHashMap();
        this.capacity = 100;
    }

    SimpleImageCache(int i) {
        this.cache = new LinkedHashMap();
        this.imagesFrequency = new LinkedHashMap();
        if (i < 1) {
            throw new IllegalArgumentException("capacity");
        }
        this.capacity = i;
    }

    void putImage(String str, PdfXObject pdfXObject) {
        if (this.cache.containsKey(str)) {
            return;
        }
        ensureCapacity();
        this.cache.put(str, pdfXObject);
    }

    PdfXObject getImage(String str) {
        Integer num = this.imagesFrequency.get(str);
        if (num != null) {
            this.imagesFrequency.put(str, Integer.valueOf(num.intValue() + 1));
        } else {
            this.imagesFrequency.put(str, 1);
        }
        return this.cache.get(str);
    }

    int size() {
        return this.cache.size();
    }

    void reset() {
        this.cache.clear();
        this.imagesFrequency.clear();
    }

    private void ensureCapacity() {
        if (this.cache.size() >= this.capacity) {
            Iterator<String> it = this.cache.keySet().iterator();
            String str = null;
            int iIntValue = Integer.MAX_VALUE;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                Integer num = this.imagesFrequency.get(next);
                if (num == null || num.intValue() < iIntValue) {
                    if (num == null) {
                        str = next;
                        break;
                    } else {
                        iIntValue = num.intValue();
                        str = next;
                    }
                }
            }
            this.cache.remove(str);
        }
    }
}
