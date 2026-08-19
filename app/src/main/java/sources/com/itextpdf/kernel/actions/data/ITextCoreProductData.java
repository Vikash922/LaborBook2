package com.itextpdf.kernel.actions.data;

import com.itextpdf.commons.actions.ProductNameConstant;
import com.itextpdf.commons.actions.data.ProductData;

/* JADX INFO: loaded from: classes6.dex */
public final class ITextCoreProductData {
    private static final int CORE_COPYRIGHT_SINCE = 2000;
    private static final String CORE_PUBLIC_PRODUCT_NAME = "Core";
    private static final String CORE_VERSION = "7.2.5";
    private static final int CORE_COPYRIGHT_TO = 2023;
    private static final ProductData ITEXT_PRODUCT_DATA = new ProductData(CORE_PUBLIC_PRODUCT_NAME, ProductNameConstant.ITEXT_CORE, CORE_VERSION, 2000, CORE_COPYRIGHT_TO);

    private ITextCoreProductData() {
    }

    public static ProductData getInstance() {
        return ITEXT_PRODUCT_DATA;
    }
}
