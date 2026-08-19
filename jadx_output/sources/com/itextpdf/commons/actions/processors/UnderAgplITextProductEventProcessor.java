package com.itextpdf.commons.actions.processors;

import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;

/* JADX INFO: loaded from: classes6.dex */
public class UnderAgplITextProductEventProcessor extends AbstractITextProductEventProcessor {
    @Override // com.itextpdf.commons.actions.processors.AbstractITextProductEventProcessor, com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public void onEvent(AbstractProductProcessITextEvent abstractProductProcessITextEvent) {
    }

    public UnderAgplITextProductEventProcessor(String str) {
        super(str);
    }

    @Override // com.itextpdf.commons.actions.processors.AbstractITextProductEventProcessor, com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public String getUsageType() {
        return "AGPL";
    }
}
