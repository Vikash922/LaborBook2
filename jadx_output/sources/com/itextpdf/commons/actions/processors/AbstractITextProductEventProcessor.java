package com.itextpdf.commons.actions.processors;

import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;
import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractITextProductEventProcessor implements ITextProductEventProcessor {
    private final String productName;

    @Override // com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public abstract String getUsageType();

    @Override // com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public abstract void onEvent(AbstractProductProcessITextEvent abstractProductProcessITextEvent);

    public AbstractITextProductEventProcessor(String str) {
        if (str == null) {
            throw new IllegalArgumentException(CommonsExceptionMessageConstant.PRODUCT_NAME_CAN_NOT_BE_NULL);
        }
        this.productName = str;
    }

    @Override // com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public String getProducer() {
        return "iText® ${usedProducts:P V (T 'version')} ©${copyrightSince}-${copyrightTo} iText Group NV";
    }

    @Override // com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public String getProductName() {
        return this.productName;
    }
}
