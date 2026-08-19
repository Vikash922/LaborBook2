package com.itextpdf.kernel.actions.events;

import com.amplitude.core.events.Identify;
import com.itextpdf.commons.actions.AbstractITextConfigurationEvent;
import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;
import com.itextpdf.commons.actions.EventManager;
import com.itextpdf.commons.actions.confirmations.ConfirmEvent;
import com.itextpdf.commons.actions.confirmations.ConfirmedEventWrapper;
import com.itextpdf.commons.actions.confirmations.EventConfirmationType;
import com.itextpdf.commons.actions.data.ProductData;
import com.itextpdf.commons.actions.producer.ProducerBuilder;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.actions.data.ITextCoreProductData;
import com.itextpdf.kernel.logs.KernelLogMessageConstant;
import com.itextpdf.kernel.pdf.PdfDocument;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class FlushPdfDocumentEvent extends AbstractITextConfigurationEvent {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) FlushPdfDocumentEvent.class);
    private final WeakReference<PdfDocument> document;

    public FlushPdfDocumentEvent(PdfDocument pdfDocument) {
        this.document = new WeakReference<>(pdfDocument);
    }

    @Override // com.itextpdf.commons.actions.AbstractITextConfigurationEvent
    protected void doAction() {
        PdfDocument pdfDocument = this.document.get();
        if (pdfDocument == null) {
            return;
        }
        List<AbstractProductProcessITextEvent> events = getEvents(pdfDocument.getDocumentIdWrapper());
        if (events == null || events.isEmpty()) {
            ProductData iTextCoreProductData = ITextCoreProductData.getInstance();
            pdfDocument.getDocumentInfo().setProducer("iText® ©" + iTextCoreProductData.getSinceCopyrightYear() + Identify.UNSET_VALUE + iTextCoreProductData.getToCopyrightYear() + " iText Group NV (no registered products)");
            return;
        }
        HashSet<String> hashSet = new HashSet();
        for (AbstractProductProcessITextEvent abstractProductProcessITextEvent : events) {
            pdfDocument.getFingerPrint().registerProduct(abstractProductProcessITextEvent.getProductData());
            if (abstractProductProcessITextEvent.getConfirmationType() == EventConfirmationType.ON_CLOSE) {
                EventManager.getInstance().onEvent(new ConfirmEvent(pdfDocument.getDocumentIdWrapper(), abstractProductProcessITextEvent));
            }
            hashSet.add(abstractProductProcessITextEvent.getProductName());
        }
        for (String str : hashSet) {
            if (getActiveProcessor(str) == null) {
                Logger logger = LOGGER;
                if (logger.isWarnEnabled()) {
                    logger.warn(MessageFormatUtil.format(KernelLogMessageConstant.UNKNOWN_PRODUCT_INVOLVED, str));
                }
            }
        }
        pdfDocument.getDocumentInfo().setProducer(ProducerBuilder.modifyProducer(getConfirmedEvents(pdfDocument.getDocumentIdWrapper()), pdfDocument.getDocumentInfo().getProducer()));
    }

    private List<ConfirmedEventWrapper> getConfirmedEvents(SequenceId sequenceId) {
        List<AbstractProductProcessITextEvent> events = getEvents(sequenceId);
        ArrayList arrayList = new ArrayList();
        for (AbstractProductProcessITextEvent abstractProductProcessITextEvent : events) {
            if (abstractProductProcessITextEvent instanceof ConfirmedEventWrapper) {
                arrayList.add((ConfirmedEventWrapper) abstractProductProcessITextEvent);
            } else {
                LOGGER.warn(MessageFormatUtil.format(KernelLogMessageConstant.UNCONFIRMED_EVENT, abstractProductProcessITextEvent.getProductName(), abstractProductProcessITextEvent.getEventType()));
            }
        }
        return arrayList;
    }
}
