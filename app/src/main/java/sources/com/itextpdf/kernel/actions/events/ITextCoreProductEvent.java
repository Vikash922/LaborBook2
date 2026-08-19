package com.itextpdf.kernel.actions.events;

import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;
import com.itextpdf.commons.actions.confirmations.EventConfirmationType;
import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.kernel.actions.data.ITextCoreProductData;

/* JADX INFO: loaded from: classes6.dex */
public final class ITextCoreProductEvent extends AbstractProductProcessITextEvent {
    public static final String PROCESS_PDF = "process-pdf";
    private final String eventType;

    private ITextCoreProductEvent(SequenceId sequenceId, IMetaInfo iMetaInfo, String str, EventConfirmationType eventConfirmationType) {
        super(sequenceId, ITextCoreProductData.getInstance(), iMetaInfo, eventConfirmationType);
        this.eventType = str;
    }

    public static ITextCoreProductEvent createProcessPdfEvent(SequenceId sequenceId, IMetaInfo iMetaInfo, EventConfirmationType eventConfirmationType) {
        return new ITextCoreProductEvent(sequenceId, iMetaInfo, PROCESS_PDF, eventConfirmationType);
    }

    @Override // com.itextpdf.commons.actions.AbstractProductProcessITextEvent
    public String getEventType() {
        return this.eventType;
    }
}
