package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.confirmations.EventConfirmationType;
import com.itextpdf.commons.actions.sequence.SequenceId;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractEventWrapper extends AbstractProductProcessITextEvent {
    private final AbstractProductProcessITextEvent event;

    protected AbstractEventWrapper(AbstractProductProcessITextEvent abstractProductProcessITextEvent, EventConfirmationType eventConfirmationType) {
        super(abstractProductProcessITextEvent.getSequenceId(), abstractProductProcessITextEvent.getProductData(), abstractProductProcessITextEvent.getMetaInfo(), eventConfirmationType);
        this.event = abstractProductProcessITextEvent;
    }

    protected AbstractEventWrapper(SequenceId sequenceId, AbstractProductProcessITextEvent abstractProductProcessITextEvent, EventConfirmationType eventConfirmationType) {
        super(sequenceId, abstractProductProcessITextEvent.getProductData(), abstractProductProcessITextEvent.getMetaInfo(), eventConfirmationType);
        this.event = abstractProductProcessITextEvent;
    }

    public AbstractProductProcessITextEvent getEvent() {
        return this.event;
    }

    @Override // com.itextpdf.commons.actions.AbstractContextBasedITextEvent
    public Class<?> getClassFromContext() {
        return getEvent().getClassFromContext();
    }

    @Override // com.itextpdf.commons.actions.AbstractProductProcessITextEvent
    public String getEventType() {
        return getEvent().getEventType();
    }
}
