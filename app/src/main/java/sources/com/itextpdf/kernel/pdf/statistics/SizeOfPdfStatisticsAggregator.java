package com.itextpdf.kernel.pdf.statistics;

import com.itextpdf.commons.actions.AbstractStatisticsAggregator;
import com.itextpdf.commons.actions.AbstractStatisticsEvent;
import com.itextpdf.commons.utils.MapUtil;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes6.dex */
public class SizeOfPdfStatisticsAggregator extends AbstractStatisticsAggregator {
    private static final Map<Long, String> DOCUMENT_SIZES;
    private static final long MEASURE_COEFFICIENT = 1024;
    private static final long SIZE_128KB = 131072;
    private static final long SIZE_128MB = 134217728;
    private static final long SIZE_16MB = 16777216;
    private static final long SIZE_1MB = 1048576;
    private static final List<Long> SORTED_UPPER_BOUNDS_OF_SIZES;
    private static final String STRING_FOR_128KB = "<128kb";
    private static final String STRING_FOR_128MB = "16mb-128mb";
    private static final String STRING_FOR_16MB = "1mb-16mb";
    private static final String STRING_FOR_1MB = "128kb-1mb";
    private static final String STRING_FOR_INF = "128mb+";
    private final Object lock = new Object();
    private final Map<String, Long> numberOfDocuments = new LinkedHashMap();

    static {
        Long lValueOf = Long.valueOf(SIZE_16MB);
        Long lValueOf2 = Long.valueOf(SIZE_128MB);
        SORTED_UPPER_BOUNDS_OF_SIZES = Arrays.asList(131072L, 1048576L, lValueOf, lValueOf2);
        HashMap map = new HashMap();
        map.put(131072L, STRING_FOR_128KB);
        map.put(1048576L, STRING_FOR_1MB);
        map.put(lValueOf, STRING_FOR_16MB);
        map.put(lValueOf2, STRING_FOR_128MB);
        DOCUMENT_SIZES = Collections.unmodifiableMap(map);
    }

    @Override // com.itextpdf.commons.actions.AbstractStatisticsAggregator
    public void aggregate(AbstractStatisticsEvent abstractStatisticsEvent) {
        if (abstractStatisticsEvent instanceof SizeOfPdfStatisticsEvent) {
            long amountOfBytes = ((SizeOfPdfStatisticsEvent) abstractStatisticsEvent).getAmountOfBytes();
            String str = STRING_FOR_INF;
            Iterator<Long> it = SORTED_UPPER_BOUNDS_OF_SIZES.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                long jLongValue = it.next().longValue();
                if (amountOfBytes <= jLongValue) {
                    str = DOCUMENT_SIZES.get(Long.valueOf(jLongValue));
                    break;
                }
            }
            synchronized (this.lock) {
                Long l = this.numberOfDocuments.get(str);
                long jLongValue2 = 1;
                if (l != null) {
                    jLongValue2 = 1 + l.longValue();
                }
                this.numberOfDocuments.put(str, Long.valueOf(jLongValue2));
            }
        }
    }

    @Override // com.itextpdf.commons.actions.AbstractStatisticsAggregator
    public Object retrieveAggregation() {
        return Collections.unmodifiableMap(this.numberOfDocuments);
    }

    @Override // com.itextpdf.commons.actions.AbstractStatisticsAggregator
    public void merge(AbstractStatisticsAggregator abstractStatisticsAggregator) {
        if (abstractStatisticsAggregator instanceof SizeOfPdfStatisticsAggregator) {
            Map<String, Long> map = ((SizeOfPdfStatisticsAggregator) abstractStatisticsAggregator).numberOfDocuments;
            synchronized (this.lock) {
                MapUtil.merge(this.numberOfDocuments, map, new BiFunction() { // from class: com.itextpdf.kernel.pdf.statistics.SizeOfPdfStatisticsAggregator$$ExternalSyntheticLambda0
                    @Override // java.util.function.BiFunction
                    public final Object apply(Object obj, Object obj2) {
                        return SizeOfPdfStatisticsAggregator.lambda$merge$0((Long) obj, (Long) obj2);
                    }
                });
            }
        }
    }

    static /* synthetic */ Long lambda$merge$0(Long l, Long l2) {
        return l2 == null ? l : Long.valueOf(l.longValue() + l2.longValue());
    }
}
