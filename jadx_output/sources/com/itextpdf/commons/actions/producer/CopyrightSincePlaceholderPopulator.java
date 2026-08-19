package com.itextpdf.commons.actions.producer;

import com.itextpdf.commons.actions.confirmations.ConfirmedEventWrapper;
import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;
import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CopyrightSincePlaceholderPopulator implements IPlaceholderPopulator {
    @Override // com.itextpdf.commons.actions.producer.IPlaceholderPopulator
    public String populate(List<ConfirmedEventWrapper> list, String str) {
        if (str != null) {
            throw new IllegalArgumentException(MessageFormatUtil.format(CommonsExceptionMessageConstant.INVALID_USAGE_CONFIGURATION_FORBIDDEN, "copyrightSince"));
        }
        Iterator<ConfirmedEventWrapper> it = list.iterator();
        int i = Integer.MAX_VALUE;
        while (it.hasNext()) {
            int sinceCopyrightYear = it.next().getEvent().getProductData().getSinceCopyrightYear();
            if (sinceCopyrightYear < i) {
                i = sinceCopyrightYear;
            }
        }
        return String.valueOf(i);
    }
}
