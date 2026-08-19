package com.itextpdf.commons.actions;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractStatisticsAggregator {
    public abstract void aggregate(AbstractStatisticsEvent abstractStatisticsEvent);

    public abstract void merge(AbstractStatisticsAggregator abstractStatisticsAggregator);

    public abstract Object retrieveAggregation();
}
