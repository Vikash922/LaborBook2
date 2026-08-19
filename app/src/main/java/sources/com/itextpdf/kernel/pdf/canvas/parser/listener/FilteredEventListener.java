package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.filter.IEventFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class FilteredEventListener implements IEventListener {
    protected final List<IEventListener> delegates;
    protected final List<IEventFilter[]> filters;

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public Set<EventType> getSupportedEvents() {
        return null;
    }

    public FilteredEventListener() {
        this.delegates = new ArrayList();
        this.filters = new ArrayList();
    }

    public FilteredEventListener(IEventListener iEventListener, IEventFilter... iEventFilterArr) {
        this();
        attachEventListener(iEventListener, iEventFilterArr);
    }

    public <T extends IEventListener> T attachEventListener(T t, IEventFilter... iEventFilterArr) {
        this.delegates.add(t);
        this.filters.add(iEventFilterArr);
        return t;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public void eventOccurred(IEventData iEventData, EventType eventType) {
        for (int i = 0; i < this.delegates.size(); i++) {
            IEventListener iEventListener = this.delegates.get(i);
            boolean z = iEventListener.getSupportedEvents() == null || iEventListener.getSupportedEvents().contains(eventType);
            IEventFilter[] iEventFilterArr = this.filters.get(i);
            int length = iEventFilterArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (!iEventFilterArr[i2].accept(iEventData, eventType)) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                iEventListener.eventOccurred(iEventData, eventType);
            }
        }
    }
}
