package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.confirmations.EventConfirmationType;
import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.actions.data.ProductData;
import com.itextpdf.commons.actions.sequence.SequenceId;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractProductProcessITextEvent extends AbstractContextBasedITextEvent {
    private final EventConfirmationType confirmationType;
    private final WeakReference<SequenceId> sequenceId;

    public abstract String getEventType();

    protected AbstractProductProcessITextEvent(SequenceId sequenceId, ProductData productData, IMetaInfo iMetaInfo, EventConfirmationType eventConfirmationType) {
        super(productData, iMetaInfo);
        this.sequenceId = new WeakReference<>(sequenceId);
        this.confirmationType = eventConfirmationType;
    }

    protected AbstractProductProcessITextEvent(ProductData productData, IMetaInfo iMetaInfo, EventConfirmationType eventConfirmationType) {
        this(null, productData, iMetaInfo, eventConfirmationType);
    }

    public SequenceId getSequenceId() {
        return this.sequenceId.get();
    }

    public EventConfirmationType getConfirmationType() {
        return this.confirmationType;
    }
}
