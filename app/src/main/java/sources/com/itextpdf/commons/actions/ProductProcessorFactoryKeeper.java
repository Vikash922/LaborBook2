package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.processors.DefaultProductProcessorFactory;
import com.itextpdf.commons.actions.processors.IProductProcessorFactory;

/* JADX INFO: loaded from: classes6.dex */
final class ProductProcessorFactoryKeeper {
    private static final IProductProcessorFactory DEFAULT_FACTORY;
    private static IProductProcessorFactory productProcessorFactory;

    static {
        DefaultProductProcessorFactory defaultProductProcessorFactory = new DefaultProductProcessorFactory();
        DEFAULT_FACTORY = defaultProductProcessorFactory;
        productProcessorFactory = defaultProductProcessorFactory;
    }

    private ProductProcessorFactoryKeeper() {
    }

    static void setProductProcessorFactory(IProductProcessorFactory iProductProcessorFactory) {
        productProcessorFactory = iProductProcessorFactory;
    }

    static void restoreDefaultProductProcessorFactory() {
        productProcessorFactory = DEFAULT_FACTORY;
    }

    static IProductProcessorFactory getProductProcessorFactory() {
        return productProcessorFactory;
    }
}
