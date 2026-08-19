package com.itextpdf.kernel.actions.events;

import com.itextpdf.commons.actions.AbstractITextConfigurationEvent;
import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;
import com.itextpdf.commons.actions.sequence.AbstractIdentifiableElement;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.commons.actions.sequence.SequenceIdManager;
import com.itextpdf.kernel.pdf.PdfDocument;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class LinkDocumentIdEvent extends AbstractITextConfigurationEvent {
    private final WeakReference<PdfDocument> document;
    private final WeakReference<SequenceId> sequenceId;

    public LinkDocumentIdEvent(PdfDocument pdfDocument, SequenceId sequenceId) {
        this.document = new WeakReference<>(pdfDocument);
        this.sequenceId = new WeakReference<>(sequenceId);
    }

    public LinkDocumentIdEvent(PdfDocument pdfDocument, AbstractIdentifiableElement abstractIdentifiableElement) {
        this(pdfDocument, abstractIdentifiableElement == null ? null : SequenceIdManager.getSequenceId(abstractIdentifiableElement));
    }

    @Override // com.itextpdf.commons.actions.AbstractITextConfigurationEvent
    public void doAction() {
        List<AbstractProductProcessITextEvent> events;
        SequenceId sequenceId = this.sequenceId.get();
        PdfDocument pdfDocument = this.document.get();
        if (sequenceId == null || pdfDocument == null || (events = getEvents(sequenceId)) == null) {
            return;
        }
        SequenceId documentIdWrapper = pdfDocument.getDocumentIdWrapper();
        for (AbstractProductProcessITextEvent abstractProductProcessITextEvent : events) {
            if (!getEvents(documentIdWrapper).contains(abstractProductProcessITextEvent)) {
                addEvent(documentIdWrapper, abstractProductProcessITextEvent);
            }
        }
    }
}
