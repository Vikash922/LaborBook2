package com.itextpdf.commons.actions;

import com.itextpdf.commons.actions.data.ProductData;
import com.itextpdf.commons.logs.CommonsLogMessageConstant;
import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractStatisticsEvent extends AbstractProductITextEvent {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) AbstractStatisticsEvent.class);

    public abstract List<String> getStatisticsNames();

    protected AbstractStatisticsEvent(ProductData productData) {
        super(productData);
    }

    public AbstractStatisticsAggregator createStatisticsAggregatorFromName(String str) {
        LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.INVALID_STATISTICS_NAME, str));
        return null;
    }
}
