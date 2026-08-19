package com.itextpdf.commons.actions.producer;

import com.itextpdf.commons.actions.confirmations.ConfirmedEventWrapper;
import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;
import com.itextpdf.commons.utils.DateTimeUtil;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
class CurrentDatePlaceholderPopulator extends AbstractFormattedPlaceholderPopulator {
    private static final Set<String> ALLOWED_PATTERNS = new HashSet(Arrays.asList("dd", "MM", "MMM", "MMMM", "yy", "yyyy", "ss", CommonCssConstants.f3301MM, "HH"));

    @Override // com.itextpdf.commons.actions.producer.IPlaceholderPopulator
    public String populate(List<ConfirmedEventWrapper> list, String str) {
        if (str == null) {
            throw new IllegalArgumentException(MessageFormatUtil.format(CommonsExceptionMessageConstant.INVALID_USAGE_FORMAT_REQUIRED, "currentDate"));
        }
        return formatDate(DateTimeUtil.getCurrentTimeDate(), str);
    }

    private String formatDate(Date date, String str) {
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        int iProcessDateComponent = 0;
        while (iProcessDateComponent < charArray.length) {
            char c = charArray[iProcessDateComponent];
            if (c == '\'') {
                iProcessDateComponent = attachQuotedString(iProcessDateComponent, sb, charArray);
            } else if (isLetter(c)) {
                iProcessDateComponent = processDateComponent(iProcessDateComponent, date, sb, charArray);
            } else {
                sb.append(charArray[iProcessDateComponent]);
            }
            iProcessDateComponent++;
        }
        return sb.toString();
    }

    private int processDateComponent(int i, Date date, StringBuilder sb, char[] cArr) {
        char c;
        StringBuilder sb2 = new StringBuilder();
        char c2 = cArr[i];
        sb2.append(c2);
        while (true) {
            int i2 = i + 1;
            if (i2 >= cArr.length || c2 != (c = cArr[i2])) {
                break;
            }
            sb2.append(c);
            i = i2;
        }
        String string = sb2.toString();
        if (ALLOWED_PATTERNS.contains(string)) {
            sb.append(DateTimeUtil.format(date, string));
            return i;
        }
        throw new IllegalArgumentException(MessageFormatUtil.format(CommonsExceptionMessageConstant.PATTERN_CONTAINS_UNEXPECTED_COMPONENT, string));
    }
}
