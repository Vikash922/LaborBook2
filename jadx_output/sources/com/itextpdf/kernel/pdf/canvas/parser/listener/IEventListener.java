package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public interface IEventListener {
    void eventOccurred(IEventData iEventData, EventType eventType);

    Set<EventType> getSupportedEvents();
}
