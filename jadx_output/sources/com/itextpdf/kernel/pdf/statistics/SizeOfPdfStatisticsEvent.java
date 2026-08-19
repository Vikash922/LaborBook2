package com.itextpdf.kernel.pdf.statistics;

import com.itextpdf.commons.actions.AbstractStatisticsAggregator;
import com.itextpdf.commons.actions.AbstractStatisticsEvent;
import com.itextpdf.commons.actions.data.ProductData;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class SizeOfPdfStatisticsEvent extends AbstractStatisticsEvent {
    private static final String PDF_SIZE_STATISTICS = "pdfSize";
    private final long amountOfBytes;

    public SizeOfPdfStatisticsEvent(long j, ProductData productData) {
        super(productData);
        if (j < 0) {
            throw new IllegalArgumentException(KernelExceptionMessageConstant.AMOUNT_OF_BYTES_LESS_THAN_ZERO);
        }
        this.amountOfBytes = j;
    }

    @Override // com.itextpdf.commons.actions.AbstractStatisticsEvent
    public AbstractStatisticsAggregator createStatisticsAggregatorFromName(String str) {
        if (PDF_SIZE_STATISTICS.equals(str)) {
            return new SizeOfPdfStatisticsAggregator();
        }
        return super.createStatisticsAggregatorFromName(str);
    }

    @Override // com.itextpdf.commons.actions.AbstractStatisticsEvent
    public List<String> getStatisticsNames() {
        return Collections.singletonList(PDF_SIZE_STATISTICS);
    }

    public long getAmountOfBytes() {
        return this.amountOfBytes;
    }
}
