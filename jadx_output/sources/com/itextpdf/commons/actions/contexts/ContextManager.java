package com.itextpdf.commons.actions.contexts;

import com.itextpdf.commons.actions.NamespaceConstant;
import com.itextpdf.commons.actions.ProductNameConstant;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public class ContextManager {
    private static final ContextManager INSTANCE;
    private final SortedMap<String, IContext> contextMappings = new TreeMap(new LengthComparator());

    static {
        ContextManager contextManager = new ContextManager();
        contextManager.registerGenericContext(NamespaceConstant.ITEXT_CORE_NAMESPACES, Collections.singleton(ProductNameConstant.ITEXT_CORE));
        contextManager.registerGenericContext(Collections.singletonList(NamespaceConstant.PDF_HTML), Collections.singleton(ProductNameConstant.PDF_HTML));
        contextManager.registerGenericContext(Collections.singletonList(NamespaceConstant.PDF_SWEEP), Collections.singleton(ProductNameConstant.PDF_SWEEP));
        contextManager.registerGenericContext(Collections.singletonList(NamespaceConstant.PDF_OCR_TESSERACT4), Collections.singleton(ProductNameConstant.PDF_OCR_TESSERACT4));
        INSTANCE = contextManager;
    }

    ContextManager() {
    }

    public static ContextManager getInstance() {
        return INSTANCE;
    }

    public IContext getContext(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        return getContext(cls.getName());
    }

    public IContext getContext(String str) {
        return getNamespaceMapping(getRecognisedNamespace(str));
    }

    String getRecognisedNamespace(String str) {
        if (str == null) {
            return null;
        }
        String strNormalize = normalize(str);
        for (String str2 : this.contextMappings.keySet()) {
            if (strNormalize.startsWith(str2)) {
                return str2;
            }
        }
        return null;
    }

    void unregisterContext(Collection<String> collection) {
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            this.contextMappings.remove(normalize(it.next()));
        }
    }

    private IContext getNamespaceMapping(String str) {
        if (str != null) {
            return this.contextMappings.get(str);
        }
        return null;
    }

    void registerGenericContext(Collection<String> collection, Collection<String> collection2) {
        GenericContext genericContext = new GenericContext(collection2);
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            this.contextMappings.put(normalize(it.next()), genericContext);
        }
    }

    private static String normalize(String str) {
        return str.toLowerCase();
    }

    private static class LengthComparator implements Comparator<String> {
        private LengthComparator() {
        }

        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            int iCompare = Integer.compare(str2.length(), str.length());
            return iCompare == 0 ? str.compareTo(str2) : iCompare;
        }
    }
}
