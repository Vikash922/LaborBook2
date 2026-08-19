package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class GlyphEventListener implements IEventListener {
    protected final IEventListener delegate;

    public GlyphEventListener(IEventListener iEventListener) {
        this.delegate = iEventListener;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public void eventOccurred(IEventData iEventData, EventType eventType) {
        if (eventType.equals(EventType.RENDER_TEXT)) {
            Iterator<TextRenderInfo> it = ((TextRenderInfo) iEventData).getCharacterRenderInfos().iterator();
            while (it.hasNext()) {
                this.delegate.eventOccurred(it.next(), eventType);
            }
            return;
        }
        this.delegate.eventOccurred(iEventData, eventType);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public Set<EventType> getSupportedEvents() {
        return this.delegate.getSupportedEvents();
    }
}
