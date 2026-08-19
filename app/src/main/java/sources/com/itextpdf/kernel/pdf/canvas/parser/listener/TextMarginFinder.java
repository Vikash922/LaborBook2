package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class TextMarginFinder implements IEventListener {
    private Rectangle textRectangle = null;

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public void eventOccurred(IEventData iEventData, EventType eventType) {
        if (eventType == EventType.RENDER_TEXT) {
            TextRenderInfo textRenderInfo = (TextRenderInfo) iEventData;
            Rectangle rectangle = this.textRectangle;
            if (rectangle == null) {
                this.textRectangle = textRenderInfo.getDescentLine().getBoundingRectangle();
            } else {
                this.textRectangle = Rectangle.getCommonRectangle(rectangle, textRenderInfo.getDescentLine().getBoundingRectangle());
            }
            this.textRectangle = Rectangle.getCommonRectangle(this.textRectangle, textRenderInfo.getAscentLine().getBoundingRectangle());
            return;
        }
        throw new IllegalStateException(MessageFormatUtil.format("Event type not supported: {0}", eventType));
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public Set<EventType> getSupportedEvents() {
        return new LinkedHashSet(Collections.singletonList(EventType.RENDER_TEXT));
    }

    public Rectangle getTextRectangle() {
        return this.textRectangle;
    }
}
