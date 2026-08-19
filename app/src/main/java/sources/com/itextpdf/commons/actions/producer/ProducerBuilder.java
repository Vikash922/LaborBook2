package com.itextpdf.commons.actions.producer;

import com.itextpdf.commons.actions.AbstractITextConfigurationEvent;
import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;
import com.itextpdf.commons.actions.confirmations.ConfirmedEventWrapper;
import com.itextpdf.commons.actions.processors.ITextProductEventProcessor;
import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;
import com.itextpdf.commons.logs.CommonsLogMessageConstant;
import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class ProducerBuilder extends AbstractITextConfigurationEvent {
    private static final String COPYRIGHT_SINCE = "copyrightSince";
    private static final String COPYRIGHT_TO = "copyrightTo";
    private static final String CURRENT_DATE = "currentDate";
    private static final char FORMAT_DELIMITER = ':';
    private static final String MODIFIED_USING = "; modified using ";
    private static final Map<String, IPlaceholderPopulator> PLACEHOLDER_POPULATORS;
    private static final String USED_PRODUCTS = "usedProducts";
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) ProducerBuilder.class);
    private static final ProducerBuilder INSTANCE = new ProducerBuilder();
    private static final String PATTERN_STRING = "\\$\\{([^}]*)\\}";
    private static final Pattern PATTERN = Pattern.compile(PATTERN_STRING);

    static {
        HashMap map = new HashMap();
        map.put(CURRENT_DATE, new CurrentDatePlaceholderPopulator());
        map.put(USED_PRODUCTS, new UsedProductsPlaceholderPopulator());
        map.put(COPYRIGHT_SINCE, new CopyrightSincePlaceholderPopulator());
        map.put(COPYRIGHT_TO, new CopyrightToPlaceholderPopulator());
        PLACEHOLDER_POPULATORS = Collections.unmodifiableMap(map);
    }

    private ProducerBuilder() {
    }

    public static String modifyProducer(List<? extends AbstractProductProcessITextEvent> list, String str) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (AbstractProductProcessITextEvent abstractProductProcessITextEvent : list) {
                if (abstractProductProcessITextEvent instanceof ConfirmedEventWrapper) {
                    arrayList.add((ConfirmedEventWrapper) abstractProductProcessITextEvent);
                } else {
                    ITextProductEventProcessor activeProcessor = INSTANCE.getActiveProcessor(abstractProductProcessITextEvent.getProductName());
                    arrayList.add(new ConfirmedEventWrapper(abstractProductProcessITextEvent, activeProcessor.getUsageType(), activeProcessor.getProducer()));
                }
            }
        }
        String strBuildProducer = buildProducer(arrayList);
        return (str == null || str.isEmpty()) ? strBuildProducer : str + MODIFIED_USING + strBuildProducer;
    }

    @Override // com.itextpdf.commons.actions.AbstractITextConfigurationEvent
    protected void doAction() {
        throw new IllegalStateException("Configuration events for util internal purposes are not expected to be sent");
    }

    private static String buildProducer(List<ConfirmedEventWrapper> list) {
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException(CommonsExceptionMessageConstant.NO_EVENTS_WERE_REGISTERED_FOR_THE_DOCUMENT);
        }
        return populatePlaceholders(list.get(0).getProducerLine(), list);
    }

    private static String populatePlaceholders(String str, List<ConfirmedEventWrapper> list) {
        String strSubstring;
        Matcher matcher = PATTERN.matcher(str);
        StringBuilder sb = new StringBuilder();
        int iEnd = 0;
        while (matcher.find()) {
            sb.append(str.substring(iEnd, matcher.start()));
            iEnd = matcher.end();
            String strGroup = matcher.group(1);
            int iIndexOf = strGroup.indexOf(58);
            if (strGroup.indexOf(58) == -1) {
                strSubstring = null;
            } else {
                String strSubstring2 = strGroup.substring(0, iIndexOf);
                strSubstring = strGroup.substring(iIndexOf + 1);
                strGroup = strSubstring2;
            }
            IPlaceholderPopulator iPlaceholderPopulator = PLACEHOLDER_POPULATORS.get(strGroup);
            if (iPlaceholderPopulator == null) {
                LOGGER.info(MessageFormatUtil.format(CommonsLogMessageConstant.UNKNOWN_PLACEHOLDER_WAS_IGNORED, strGroup));
            } else {
                sb.append(iPlaceholderPopulator.populate(list, strSubstring));
            }
        }
        sb.append(str.substring(iEnd));
        return sb.toString();
    }
}
