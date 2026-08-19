package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.contexts.ContextManager;
import com.itextpdf.commons.actions.contexts.IContext;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractContextBasedEventHandler implements IEventHandler {
    private final IContext defaultContext;

    protected abstract void onAcceptedEvent(AbstractContextBasedITextEvent abstractContextBasedITextEvent);

    protected AbstractContextBasedEventHandler(IContext iContext) {
        this.defaultContext = iContext;
    }

    @Override // com.itextpdf.commons.actions.IEventHandler
    public final void onEvent(IEvent iEvent) {
        if (iEvent instanceof AbstractContextBasedITextEvent) {
            AbstractContextBasedITextEvent abstractContextBasedITextEvent = (AbstractContextBasedITextEvent) iEvent;
            IContext context = abstractContextBasedITextEvent.getMetaInfo() != null ? ContextManager.getInstance().getContext(abstractContextBasedITextEvent.getMetaInfo().getClass()) : null;
            if (context == null) {
                context = ContextManager.getInstance().getContext(abstractContextBasedITextEvent.getClassFromContext());
            }
            if (context == null) {
                context = this.defaultContext;
            }
            if (context.isAllowed(abstractContextBasedITextEvent)) {
                onAcceptedEvent(abstractContextBasedITextEvent);
            }
        }
    }
}
