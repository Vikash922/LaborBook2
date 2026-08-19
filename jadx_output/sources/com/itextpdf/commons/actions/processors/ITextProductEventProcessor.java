package com.itextpdf.commons.actions.processors;

import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;

/* JADX INFO: loaded from: classes6.dex */
public interface ITextProductEventProcessor {
    String getProducer();

    String getProductName();

    String getUsageType();

    void onEvent(AbstractProductProcessITextEvent abstractProductProcessITextEvent);
}
