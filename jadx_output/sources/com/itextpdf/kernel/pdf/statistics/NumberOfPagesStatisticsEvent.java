package com.itextpdf.kernel.pdf.statistics;

import com.itextpdf.commons.actions.AbstractStatisticsAggregator;
import com.itextpdf.commons.actions.AbstractStatisticsEvent;
import com.itextpdf.commons.actions.data.ProductData;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class NumberOfPagesStatisticsEvent extends AbstractStatisticsEvent {
    private static final String NUMBER_OF_PAGES_STATISTICS = "numberOfPages";
    private final int numberOfPages;

    public NumberOfPagesStatisticsEvent(int i, ProductData productData) {
        super(productData);
        if (i < 0) {
            throw new IllegalStateException(KernelExceptionMessageConstant.NUMBER_OF_PAGES_CAN_NOT_BE_NEGATIVE);
        }
        this.numberOfPages = i;
    }

    @Override // com.itextpdf.commons.actions.AbstractStatisticsEvent
    public AbstractStatisticsAggregator createStatisticsAggregatorFromName(String str) {
        if (NUMBER_OF_PAGES_STATISTICS.equals(str)) {
            return new NumberOfPagesStatisticsAggregator();
        }
        return super.createStatisticsAggregatorFromName(str);
    }

    @Override // com.itextpdf.commons.actions.AbstractStatisticsEvent
    public List<String> getStatisticsNames() {
        return Collections.singletonList(NUMBER_OF_PAGES_STATISTICS);
    }

    public int getNumberOfPages() {
        return this.numberOfPages;
    }
}
