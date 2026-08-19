package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.data.ProductData;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractProductITextEvent extends AbstractITextEvent {
    private final ProductData productData;

    protected AbstractProductITextEvent(ProductData productData) {
        if (productData == null) {
            throw new IllegalStateException("ProductData shouldn't be null.");
        }
        this.productData = productData;
    }

    public ProductData getProductData() {
        return this.productData;
    }

    public String getProductName() {
        return getProductData().getProductName();
    }
}
