package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.confirmations.ConfirmEvent;
import com.itextpdf.commons.actions.confirmations.ConfirmedEventWrapper;
import com.itextpdf.commons.actions.contexts.UnknownContext;
import com.itextpdf.commons.actions.processors.ITextProductEventProcessor;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.commons.exceptions.ProductEventHandlerRepeatException;
import com.itextpdf.commons.exceptions.UnknownProductException;
import com.itextpdf.commons.logs.CommonsLogMessageConstant;
import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
final class ProductEventHandler extends AbstractContextBasedEventHandler {
    static final ProductEventHandler INSTANCE = new ProductEventHandler();
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) ProductEventHandler.class);
    private static final int MAX_EVENT_RETRY_COUNT = 4;
    private final WeakHashMap<SequenceId, List<AbstractProductProcessITextEvent>> events;
    private final ConcurrentHashMap<String, ITextProductEventProcessor> processors;

    private ProductEventHandler() {
        super(UnknownContext.PERMISSIVE);
        this.processors = new ConcurrentHashMap<>();
        this.events = new WeakHashMap<>();
    }

    @Override // com.itextpdf.commons.actions.AbstractContextBasedEventHandler
    protected void onAcceptedEvent(AbstractContextBasedITextEvent abstractContextBasedITextEvent) {
        for (int i = 0; i < 4; i++) {
            try {
                tryProcessEvent(abstractContextBasedITextEvent);
                return;
            } catch (ProductEventHandlerRepeatException unused) {
            }
        }
        tryProcessEvent(abstractContextBasedITextEvent);
    }

    ITextProductEventProcessor addProcessor(ITextProductEventProcessor iTextProductEventProcessor) {
        return this.processors.put(iTextProductEventProcessor.getProductName(), iTextProductEventProcessor);
    }

    ITextProductEventProcessor removeProcessor(String str) {
        return this.processors.remove(str);
    }

    ITextProductEventProcessor getActiveProcessor(String str) {
        ITextProductEventProcessor iTextProductEventProcessor = this.processors.get(str);
        if (iTextProductEventProcessor != null) {
            return iTextProductEventProcessor;
        }
        if (!ProductNameConstant.PRODUCT_NAMES.contains(str)) {
            return null;
        }
        ITextProductEventProcessor iTextProductEventProcessorCreateProcessor = ProductProcessorFactoryKeeper.getProductProcessorFactory().createProcessor(str);
        this.processors.put(str, iTextProductEventProcessorCreateProcessor);
        return iTextProductEventProcessorCreateProcessor;
    }

    Map<String, ITextProductEventProcessor> getProcessors() {
        return Collections.unmodifiableMap(new HashMap(this.processors));
    }

    void clearProcessors() {
        this.processors.clear();
    }

    List<AbstractProductProcessITextEvent> getEvents(SequenceId sequenceId) {
        synchronized (this.events) {
            List<AbstractProductProcessITextEvent> list = this.events.get(sequenceId);
            if (list == null) {
                return Collections.emptyList();
            }
            return Collections.unmodifiableList(new ArrayList(list));
        }
    }

    void addEvent(SequenceId sequenceId, AbstractProductProcessITextEvent abstractProductProcessITextEvent) {
        synchronized (this.events) {
            List<AbstractProductProcessITextEvent> arrayList = this.events.get(sequenceId);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.events.put(sequenceId, arrayList);
            }
            arrayList.add(abstractProductProcessITextEvent);
        }
    }

    private void tryProcessEvent(AbstractContextBasedITextEvent abstractContextBasedITextEvent) {
        if (abstractContextBasedITextEvent instanceof AbstractProductProcessITextEvent) {
            AbstractProductProcessITextEvent abstractProductProcessITextEvent = (AbstractProductProcessITextEvent) abstractContextBasedITextEvent;
            String productName = abstractProductProcessITextEvent.getProductName();
            ITextProductEventProcessor activeProcessor = getActiveProcessor(productName);
            if (activeProcessor == null) {
                throw new UnknownProductException(MessageFormatUtil.format(UnknownProductException.UNKNOWN_PRODUCT, productName));
            }
            activeProcessor.onEvent(abstractProductProcessITextEvent);
            if (abstractProductProcessITextEvent.getSequenceId() != null) {
                if (abstractProductProcessITextEvent instanceof ConfirmEvent) {
                    wrapConfirmedEvent((ConfirmEvent) abstractProductProcessITextEvent, activeProcessor);
                } else {
                    addEvent(abstractProductProcessITextEvent.getSequenceId(), abstractProductProcessITextEvent);
                }
            }
        }
    }

    private void wrapConfirmedEvent(ConfirmEvent confirmEvent, ITextProductEventProcessor iTextProductEventProcessor) {
        synchronized (this.events) {
            List<AbstractProductProcessITextEvent> list = this.events.get(confirmEvent.getSequenceId());
            AbstractProductProcessITextEvent confirmedEvent = confirmEvent.getConfirmedEvent();
            int iIndexOf = list.indexOf(confirmedEvent);
            if (iIndexOf >= 0) {
                list.set(iIndexOf, new ConfirmedEventWrapper(confirmedEvent, iTextProductEventProcessor.getUsageType(), iTextProductEventProcessor.getProducer()));
            } else {
                LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.UNREPORTED_EVENT, confirmedEvent.getProductName(), confirmedEvent.getEventType()));
            }
        }
    }
}
