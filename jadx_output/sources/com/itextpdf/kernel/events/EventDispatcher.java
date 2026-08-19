package com.itextpdf.kernel.events;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class EventDispatcher implements IEventDispatcher {
    protected Map<String, List<IEventHandler>> eventHandlers = new HashMap();

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void addEventHandler(String str, IEventHandler iEventHandler) {
        removeEventHandler(str, iEventHandler);
        List<IEventHandler> arrayList = this.eventHandlers.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.eventHandlers.put(str, arrayList);
        }
        arrayList.add(iEventHandler);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void dispatchEvent(Event event) {
        dispatchEvent(event, false);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void dispatchEvent(Event event, boolean z) {
        List<IEventHandler> list = this.eventHandlers.get(event.getType());
        if (list != null) {
            Iterator<IEventHandler> it = list.iterator();
            while (it.hasNext()) {
                it.next().handleEvent(event);
            }
        }
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public boolean hasEventHandler(String str) {
        return this.eventHandlers.containsKey(str);
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void removeEventHandler(String str, IEventHandler iEventHandler) {
        List<IEventHandler> list = this.eventHandlers.get(str);
        if (list == null) {
            return;
        }
        list.remove(iEventHandler);
        if (list.size() == 0) {
            this.eventHandlers.remove(str);
        }
    }

    @Override // com.itextpdf.kernel.events.IEventDispatcher
    public void removeAllHandlers() {
        this.eventHandlers.clear();
    }
}
