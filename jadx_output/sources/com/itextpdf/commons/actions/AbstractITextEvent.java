package com.itextpdf.commons.actions;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractITextEvent implements IEvent {
    private static final Map<String, Object> INTERNAL_PACKAGES = new ConcurrentHashMap();
    private static final String ONLY_FOR_INTERNAL_USE = "AbstractITextEvent is only for internal usage.";

    static {
        registerNamespace(NamespaceConstant.ITEXT);
    }

    protected AbstractITextEvent() {
        Iterator<String> it = INTERNAL_PACKAGES.keySet().iterator();
        while (it.hasNext()) {
            if (getClass().getName().startsWith(it.next())) {
                return;
            }
        }
        throw new UnsupportedOperationException(ONLY_FOR_INTERNAL_USE);
    }

    static void registerNamespace(String str) {
        INTERNAL_PACKAGES.put(str + ".", new Object());
    }
}
