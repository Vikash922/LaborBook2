package com.itextpdf.kernel.events;

/* JADX INFO: loaded from: classes6.dex */
public interface IEventDispatcher {
    void addEventHandler(String str, IEventHandler iEventHandler);

    void dispatchEvent(Event event);

    void dispatchEvent(Event event, boolean z);

    boolean hasEventHandler(String str);

    void removeAllHandlers();

    void removeEventHandler(String str, IEventHandler iEventHandler);
}
