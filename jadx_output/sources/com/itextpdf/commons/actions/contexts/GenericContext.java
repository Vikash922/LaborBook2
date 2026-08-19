package com.itextpdf.commons.actions.contexts;

import com.itextpdf.commons.actions.AbstractContextBasedITextEvent;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class GenericContext implements IContext {
    private final Set<String> supportedProducts;

    public GenericContext(Collection<String> collection) {
        HashSet hashSet = new HashSet();
        this.supportedProducts = hashSet;
        hashSet.addAll(collection);
    }

    @Override // com.itextpdf.commons.actions.contexts.IContext
    public boolean isAllowed(AbstractContextBasedITextEvent abstractContextBasedITextEvent) {
        return this.supportedProducts.contains(abstractContextBasedITextEvent.getProductName());
    }
}
