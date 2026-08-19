package com.itextpdf.commons.actions.contexts;

import com.itextpdf.commons.actions.AbstractContextBasedITextEvent;

/* JADX INFO: loaded from: classes6.dex */
public class UnknownContext implements IContext {
    private final boolean allowEvents;
    public static final IContext RESTRICTIVE = new UnknownContext(false);
    public static final IContext PERMISSIVE = new UnknownContext(true);

    public UnknownContext(boolean z) {
        this.allowEvents = z;
    }

    @Override // com.itextpdf.commons.actions.contexts.IContext
    public boolean isAllowed(AbstractContextBasedITextEvent abstractContextBasedITextEvent) {
        return this.allowEvents;
    }
}
