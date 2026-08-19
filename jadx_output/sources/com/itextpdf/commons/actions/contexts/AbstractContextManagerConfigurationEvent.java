package com.itextpdf.commons.actions.contexts;

import com.itextpdf.commons.actions.AbstractITextConfigurationEvent;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractContextManagerConfigurationEvent extends AbstractITextConfigurationEvent {
    protected AbstractContextManagerConfigurationEvent() {
    }

    protected void registerGenericContext(Collection<String> collection, Collection<String> collection2) {
        ContextManager.getInstance().registerGenericContext(collection, collection2);
    }

    protected void unregisterContext(Collection<String> collection) {
        ContextManager.getInstance().unregisterContext(collection);
    }
}
