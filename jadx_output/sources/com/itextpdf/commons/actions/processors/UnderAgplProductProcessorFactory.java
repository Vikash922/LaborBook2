package com.itextpdf.commons.actions.processors;

/* JADX INFO: loaded from: classes6.dex */
public class UnderAgplProductProcessorFactory implements IProductProcessorFactory {
    @Override // com.itextpdf.commons.actions.processors.IProductProcessorFactory
    public ITextProductEventProcessor createProcessor(String str) {
        return new UnderAgplITextProductEventProcessor(str);
    }
}
