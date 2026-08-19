package com.itextpdf.commons.actions.producer;

import com.itextpdf.commons.actions.confirmations.ConfirmedEventWrapper;
import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;
import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CopyrightToPlaceholderPopulator implements IPlaceholderPopulator {
    @Override // com.itextpdf.commons.actions.producer.IPlaceholderPopulator
    public String populate(List<ConfirmedEventWrapper> list, String str) {
        if (str != null) {
            throw new IllegalArgumentException(MessageFormatUtil.format(CommonsExceptionMessageConstant.INVALID_USAGE_CONFIGURATION_FORBIDDEN, "copyrightTo"));
        }
        Iterator<ConfirmedEventWrapper> it = list.iterator();
        int i = Integer.MIN_VALUE;
        while (it.hasNext()) {
            int toCopyrightYear = it.next().getEvent().getProductData().getToCopyrightYear();
            if (toCopyrightYear > i) {
                i = toCopyrightYear;
            }
        }
        return String.valueOf(i);
    }
}
