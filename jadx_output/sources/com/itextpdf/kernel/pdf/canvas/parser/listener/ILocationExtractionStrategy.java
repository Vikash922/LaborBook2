package com.itextpdf.kernel.pdf.canvas.parser.listener;

import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public interface ILocationExtractionStrategy extends IEventListener {
    Collection<IPdfTextLocation> getResultantLocations();
}
