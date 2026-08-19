package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.processors.UnderAgplProductProcessorFactory;
import com.itextpdf.commons.exceptions.AggregatedException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class EventManager {
    private static final EventManager INSTANCE = new EventManager();
    private final Set<IEventHandler> handlers;

    private EventManager() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.handlers = linkedHashSet;
        linkedHashSet.add(ProductEventHandler.INSTANCE);
    }

    public static EventManager getInstance() {
        return INSTANCE;
    }

    public static void acknowledgeAgplUsageDisableWarningMessage() {
        ProductProcessorFactoryKeeper.setProductProcessorFactory(new UnderAgplProductProcessorFactory());
    }

    public void onEvent(IEvent iEvent) {
        ArrayList arrayList = new ArrayList();
        Iterator<IEventHandler> it = this.handlers.iterator();
        while (it.hasNext()) {
            try {
                it.next().onEvent(iEvent);
            } catch (RuntimeException e) {
                arrayList.add(e);
            }
        }
        if (iEvent instanceof AbstractITextConfigurationEvent) {
            try {
                ((AbstractITextConfigurationEvent) iEvent).doAction();
            } catch (RuntimeException e2) {
                arrayList.add(e2);
            }
        }
        if (arrayList.size() == 1) {
            throw ((RuntimeException) arrayList.get(0));
        }
        if (!arrayList.isEmpty()) {
            throw new AggregatedException(AggregatedException.ERROR_DURING_EVENT_PROCESSING, arrayList);
        }
    }

    public void register(IEventHandler iEventHandler) {
        if (iEventHandler != null) {
            this.handlers.add(iEventHandler);
        }
    }

    public boolean isRegistered(IEventHandler iEventHandler) {
        if (iEventHandler != null) {
            return this.handlers.contains(iEventHandler);
        }
        return false;
    }

    public boolean unregister(IEventHandler iEventHandler) {
        if (iEventHandler != null) {
            return this.handlers.remove(iEventHandler);
        }
        return false;
    }
}
