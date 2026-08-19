package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.processors.ITextProductEventProcessor;
import com.itextpdf.commons.actions.sequence.SequenceId;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractITextConfigurationEvent extends AbstractITextEvent {
    protected abstract void doAction();

    protected ITextProductEventProcessor addProcessor(ITextProductEventProcessor iTextProductEventProcessor) {
        return ProductEventHandler.INSTANCE.addProcessor(iTextProductEventProcessor);
    }

    protected ITextProductEventProcessor removeProcessor(String str) {
        return ProductEventHandler.INSTANCE.removeProcessor(str);
    }

    protected ITextProductEventProcessor getActiveProcessor(String str) {
        return ProductEventHandler.INSTANCE.getActiveProcessor(str);
    }

    protected Map<String, ITextProductEventProcessor> getProcessors() {
        return ProductEventHandler.INSTANCE.getProcessors();
    }

    protected List<AbstractProductProcessITextEvent> getEvents(SequenceId sequenceId) {
        return ProductEventHandler.INSTANCE.getEvents(sequenceId);
    }

    protected void addEvent(SequenceId sequenceId, AbstractProductProcessITextEvent abstractProductProcessITextEvent) {
        ProductEventHandler.INSTANCE.addEvent(sequenceId, abstractProductProcessITextEvent);
    }

    protected void registerInternalNamespace(String str) {
        AbstractITextEvent.registerNamespace(str);
    }
}
