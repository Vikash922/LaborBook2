package com.itextpdf.kernel.pdf.canvas.parser.filter;

import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;

/* JADX INFO: loaded from: classes6.dex */
public interface IEventFilter {
    boolean accept(IEventData iEventData, EventType eventType);
}
