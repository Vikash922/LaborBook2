package com.itextpdf.commons.actions.confirmations;

import com.itextpdf.commons.actions.AbstractEventWrapper;
import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;
import com.itextpdf.commons.actions.sequence.SequenceId;

/* JADX INFO: loaded from: classes6.dex */
public class ConfirmEvent extends AbstractEventWrapper {
    public ConfirmEvent(SequenceId sequenceId, AbstractProductProcessITextEvent abstractProductProcessITextEvent) {
        super(sequenceId, abstractProductProcessITextEvent, EventConfirmationType.UNCONFIRMABLE);
    }

    public ConfirmEvent(AbstractProductProcessITextEvent abstractProductProcessITextEvent) {
        this(abstractProductProcessITextEvent.getSequenceId(), abstractProductProcessITextEvent);
    }

    public AbstractProductProcessITextEvent getConfirmedEvent() {
        AbstractProductProcessITextEvent event = getEvent();
        return event instanceof ConfirmEvent ? ((ConfirmEvent) event).getConfirmedEvent() : event;
    }
}
