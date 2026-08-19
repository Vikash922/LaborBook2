package org.shadow.apache.commons.lang3.time;

import com.itextpdf.svg.SvgConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.FieldPosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public class FastDatePrinter implements DatePrinter, Serializable {
    public static final int FULL = 0;
    public static final int LONG = 1;
    public static final int MEDIUM = 2;
    public static final int SHORT = 3;
    private static final ConcurrentMap<TimeZoneDisplayKey, String> cTimeZoneDisplayCache = new ConcurrentHashMap(7);
    private static final long serialVersionUID = 1;
    private final Locale mLocale;
    private transient int mMaxLengthEstimate;
    private final String mPattern;
    private transient Rule[] mRules;
    private final TimeZone mTimeZone;

    private interface NumberRule extends Rule {
        void appendTo(StringBuffer stringBuffer, int i);
    }

    private interface Rule {
        void appendTo(StringBuffer stringBuffer, Calendar calendar);

        int estimateLength();
    }

    protected FastDatePrinter(String str, TimeZone timeZone, Locale locale) {
        this.mPattern = str;
        this.mTimeZone = timeZone;
        this.mLocale = locale;
        init();
    }

    private void init() {
        List<Rule> pattern = parsePattern();
        Rule[] ruleArr = (Rule[]) pattern.toArray(new Rule[pattern.size()]);
        this.mRules = ruleArr;
        int length = ruleArr.length;
        int iEstimateLength = 0;
        while (true) {
            length--;
            if (length >= 0) {
                iEstimateLength += this.mRules[length].estimateLength();
            } else {
                this.mMaxLengthEstimate = iEstimateLength;
                return;
            }
        }
    }

    protected List<Rule> parsePattern() {
        int i;
        Rule ruleSelectNumberRule;
        Rule stringLiteral;
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(this.mLocale);
        ArrayList arrayList = new ArrayList();
        String[] eras = dateFormatSymbols.getEras();
        String[] months = dateFormatSymbols.getMonths();
        String[] shortMonths = dateFormatSymbols.getShortMonths();
        String[] weekdays = dateFormatSymbols.getWeekdays();
        String[] shortWeekdays = dateFormatSymbols.getShortWeekdays();
        String[] amPmStrings = dateFormatSymbols.getAmPmStrings();
        int length = this.mPattern.length();
        int i2 = 0;
        while (i2 < length) {
            int[] iArr = {i2};
            String token = parseToken(this.mPattern, iArr);
            int i3 = iArr[0];
            int length2 = token.length();
            if (length2 == 0) {
                return arrayList;
            }
            char cCharAt = token.charAt(0);
            if (cCharAt == 'W') {
                i = 1;
                ruleSelectNumberRule = selectNumberRule(4, length2);
            } else if (cCharAt == 'X') {
                i = 1;
                ruleSelectNumberRule = Iso8601_Rule.getRule(length2);
            } else if (cCharAt != 'y') {
                if (cCharAt != 'z') {
                    switch (cCharAt) {
                        case '\'':
                            String strSubstring = token.substring(1);
                            if (strSubstring.length() == 1) {
                                stringLiteral = new CharacterLiteral(strSubstring.charAt(0));
                            } else {
                                stringLiteral = new StringLiteral(strSubstring);
                            }
                            ruleSelectNumberRule = stringLiteral;
                            break;
                        case 'K':
                            ruleSelectNumberRule = selectNumberRule(10, length2);
                            break;
                        case 'M':
                            if (length2 >= 4) {
                                stringLiteral = new TextField(2, months);
                            } else if (length2 == 3) {
                                stringLiteral = new TextField(2, shortMonths);
                            } else if (length2 == 2) {
                                ruleSelectNumberRule = TwoDigitMonthField.INSTANCE;
                            } else {
                                ruleSelectNumberRule = UnpaddedMonthField.INSTANCE;
                            }
                            ruleSelectNumberRule = stringLiteral;
                            break;
                        case 'S':
                            ruleSelectNumberRule = selectNumberRule(14, length2);
                            break;
                        case 'Z':
                            if (length2 == 1) {
                                ruleSelectNumberRule = TimeZoneNumberRule.INSTANCE_NO_COLON;
                            } else if (length2 == 2) {
                                ruleSelectNumberRule = TimeZoneNumberRule.INSTANCE_ISO_8601;
                            } else {
                                ruleSelectNumberRule = TimeZoneNumberRule.INSTANCE_COLON;
                            }
                            break;
                        case 'a':
                            ruleSelectNumberRule = new TextField(9, amPmStrings);
                            break;
                        case 'd':
                            ruleSelectNumberRule = selectNumberRule(5, length2);
                            break;
                        case 'h':
                            ruleSelectNumberRule = new TwelveHourField(selectNumberRule(10, length2));
                            break;
                        case 'k':
                            ruleSelectNumberRule = new TwentyFourHourField(selectNumberRule(11, length2));
                            break;
                        case 'm':
                            ruleSelectNumberRule = selectNumberRule(12, length2);
                            break;
                        case 's':
                            ruleSelectNumberRule = selectNumberRule(13, length2);
                            break;
                        case 'w':
                            ruleSelectNumberRule = selectNumberRule(3, length2);
                            break;
                        default:
                            switch (cCharAt) {
                                case 'D':
                                    ruleSelectNumberRule = selectNumberRule(6, length2);
                                    break;
                                case 'E':
                                    ruleSelectNumberRule = new TextField(7, length2 < 4 ? shortWeekdays : weekdays);
                                    break;
                                case 'F':
                                    ruleSelectNumberRule = selectNumberRule(8, length2);
                                    break;
                                case 'G':
                                    ruleSelectNumberRule = new TextField(0, eras);
                                    break;
                                case 'H':
                                    ruleSelectNumberRule = selectNumberRule(11, length2);
                                    break;
                                default:
                                    throw new IllegalArgumentException("Illegal pattern component: " + token);
                            }
                            break;
                    }
                } else if (length2 >= 4) {
                    ruleSelectNumberRule = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 1);
                    i = 1;
                } else {
                    ruleSelectNumberRule = new TimeZoneNameRule(this.mTimeZone, this.mLocale, 0);
                }
                i = 1;
            } else if (length2 == 2) {
                ruleSelectNumberRule = TwoDigitYearField.INSTANCE;
                i = 1;
            } else {
                if (length2 < 4) {
                    length2 = 4;
                }
                i = 1;
                ruleSelectNumberRule = selectNumberRule(1, length2);
            }
            arrayList.add(ruleSelectNumberRule);
            i2 = i3 + i;
        }
        return arrayList;
    }

    protected String parseToken(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i = iArr[0];
        int length = str.length();
        char cCharAt = str.charAt(i);
        if ((cCharAt >= 'A' && cCharAt <= 'Z') || (cCharAt >= 'a' && cCharAt <= 'z')) {
            sb.append(cCharAt);
            while (true) {
                int i2 = i + 1;
                if (i2 >= length || str.charAt(i2) != cCharAt) {
                    break;
                }
                sb.append(cCharAt);
                i = i2;
            }
        } else {
            sb.append('\'');
            boolean z = false;
            while (i < length) {
                char cCharAt2 = str.charAt(i);
                if (cCharAt2 != '\'') {
                    if (!z && ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || (cCharAt2 >= 'a' && cCharAt2 <= 'z'))) {
                        i--;
                        break;
                    }
                    sb.append(cCharAt2);
                } else {
                    int i3 = i + 1;
                    if (i3 >= length || str.charAt(i3) != '\'') {
                        z = !z;
                    } else {
                        sb.append(cCharAt2);
                        i = i3;
                    }
                }
                i++;
            }
        }
        iArr[0] = i;
        return sb.toString();
    }

    protected NumberRule selectNumberRule(int i, int i2) {
        if (i2 == 1) {
            return new UnpaddedNumberField(i);
        }
        if (i2 == 2) {
            return new TwoDigitNumberField(i);
        }
        return new PaddedNumberField(i, i2);
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Object obj, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        if (obj instanceof Date) {
            return format((Date) obj, stringBuffer);
        }
        if (obj instanceof Calendar) {
            return format((Calendar) obj, stringBuffer);
        }
        if (obj instanceof Long) {
            return format(((Long) obj).longValue(), stringBuffer);
        }
        throw new IllegalArgumentException("Unknown class: " + (obj == null ? "<null>" : obj.getClass().getName()));
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public String format(long j) {
        GregorianCalendar gregorianCalendarNewCalendar = newCalendar();
        gregorianCalendarNewCalendar.setTimeInMillis(j);
        return applyRulesToString(gregorianCalendarNewCalendar);
    }

    private String applyRulesToString(Calendar calendar) {
        return applyRules(calendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    private GregorianCalendar newCalendar() {
        return new GregorianCalendar(this.mTimeZone, this.mLocale);
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public String format(Date date) {
        GregorianCalendar gregorianCalendarNewCalendar = newCalendar();
        gregorianCalendarNewCalendar.setTime(date);
        return applyRulesToString(gregorianCalendarNewCalendar);
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public String format(Calendar calendar) {
        return format(calendar, new StringBuffer(this.mMaxLengthEstimate)).toString();
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(long j, StringBuffer stringBuffer) {
        return format(new Date(j), stringBuffer);
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Date date, StringBuffer stringBuffer) {
        GregorianCalendar gregorianCalendarNewCalendar = newCalendar();
        gregorianCalendarNewCalendar.setTime(date);
        return applyRules(gregorianCalendarNewCalendar, stringBuffer);
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public StringBuffer format(Calendar calendar, StringBuffer stringBuffer) {
        return applyRules(calendar, stringBuffer);
    }

    protected StringBuffer applyRules(Calendar calendar, StringBuffer stringBuffer) {
        for (Rule rule : this.mRules) {
            rule.appendTo(stringBuffer, calendar);
        }
        return stringBuffer;
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.mPattern;
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.mTimeZone;
    }

    @Override // org.shadow.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.mLocale;
    }

    public int getMaxLengthEstimate() {
        return this.mMaxLengthEstimate;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDatePrinter)) {
            return false;
        }
        FastDatePrinter fastDatePrinter = (FastDatePrinter) obj;
        return this.mPattern.equals(fastDatePrinter.mPattern) && this.mTimeZone.equals(fastDatePrinter.mTimeZone) && this.mLocale.equals(fastDatePrinter.mLocale);
    }

    public int hashCode() {
        return this.mPattern.hashCode() + ((this.mTimeZone.hashCode() + (this.mLocale.hashCode() * 13)) * 13);
    }

    public String toString() {
        return "FastDatePrinter[" + this.mPattern + "," + this.mLocale + "," + this.mTimeZone.getID() + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void appendDigits(StringBuffer stringBuffer, int i) {
        stringBuffer.append((char) ((i / 10) + 48));
        stringBuffer.append((char) ((i % 10) + 48));
    }

    private static class CharacterLiteral implements Rule {
        private final char mValue;

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 1;
        }

        CharacterLiteral(char c) {
            this.mValue = c;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }
    }

    private static class StringLiteral implements Rule {
        private final String mValue;

        StringLiteral(String str) {
            this.mValue = str;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mValue.length();
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValue);
        }
    }

    private static class TextField implements Rule {
        private final int mField;
        private final String[] mValues;

        TextField(int i, String[] strArr) {
            this.mField = i;
            this.mValues = strArr;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            int length = this.mValues.length;
            int i = 0;
            while (true) {
                length--;
                if (length < 0) {
                    return i;
                }
                int length2 = this.mValues[length].length();
                if (length2 > i) {
                    i = length2;
                }
            }
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            stringBuffer.append(this.mValues[calendar.get(this.mField)]);
        }
    }

    private static class UnpaddedNumberField implements NumberRule {
        private final int mField;

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 4;
        }

        UnpaddedNumberField(int i) {
            this.mField = i;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 10) {
                stringBuffer.append((char) (i + 48));
            } else if (i < 100) {
                FastDatePrinter.appendDigits(stringBuffer, i);
            } else {
                stringBuffer.append(i);
            }
        }
    }

    private static class UnpaddedMonthField implements NumberRule {
        static final UnpaddedMonthField INSTANCE = new UnpaddedMonthField();

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        UnpaddedMonthField() {
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i >= 10) {
                FastDatePrinter.appendDigits(stringBuffer, i);
            } else {
                stringBuffer.append((char) (i + 48));
            }
        }
    }

    private static class PaddedNumberField implements NumberRule {
        private final int mField;
        private final int mSize;

        PaddedNumberField(int i, int i2) {
            if (i2 < 3) {
                throw new IllegalArgumentException();
            }
            this.mField = i;
            this.mSize = i2;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mSize;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            for (int i2 = 0; i2 < this.mSize; i2++) {
                stringBuffer.append('0');
            }
            int length = stringBuffer.length();
            while (i > 0) {
                length--;
                stringBuffer.setCharAt(length, (char) ((i % 10) + 48));
                i /= 10;
            }
        }
    }

    private static class TwoDigitNumberField implements NumberRule {
        private final int mField;

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        TwoDigitNumberField(int i) {
            this.mField = i;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(this.mField));
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            if (i < 100) {
                FastDatePrinter.appendDigits(stringBuffer, i);
            } else {
                stringBuffer.append(i);
            }
        }
    }

    private static class TwoDigitYearField implements NumberRule {
        static final TwoDigitYearField INSTANCE = new TwoDigitYearField();

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        TwoDigitYearField() {
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(1) % 100);
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            FastDatePrinter.appendDigits(stringBuffer, i);
        }
    }

    private static class TwoDigitMonthField implements NumberRule {
        static final TwoDigitMonthField INSTANCE = new TwoDigitMonthField();

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 2;
        }

        TwoDigitMonthField() {
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            appendTo(stringBuffer, calendar.get(2) + 1);
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public final void appendTo(StringBuffer stringBuffer, int i) {
            FastDatePrinter.appendDigits(stringBuffer, i);
        }
    }

    private static class TwelveHourField implements NumberRule {
        private final NumberRule mRule;

        TwelveHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int leastMaximum = calendar.get(10);
            if (leastMaximum == 0) {
                leastMaximum = calendar.getLeastMaximum(10) + 1;
            }
            this.mRule.appendTo(stringBuffer, leastMaximum);
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }
    }

    private static class TwentyFourHourField implements NumberRule {
        private final NumberRule mRule;

        TwentyFourHourField(NumberRule numberRule) {
            this.mRule = numberRule;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.mRule.estimateLength();
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int maximum = calendar.get(11);
            if (maximum == 0) {
                maximum = calendar.getMaximum(11) + 1;
            }
            this.mRule.appendTo(stringBuffer, maximum);
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.NumberRule
        public void appendTo(StringBuffer stringBuffer, int i) {
            this.mRule.appendTo(stringBuffer, i);
        }
    }

    static String getTimeZoneDisplay(TimeZone timeZone, boolean z, int i, Locale locale) {
        TimeZoneDisplayKey timeZoneDisplayKey = new TimeZoneDisplayKey(timeZone, z, i, locale);
        ConcurrentMap<TimeZoneDisplayKey, String> concurrentMap = cTimeZoneDisplayCache;
        String str = concurrentMap.get(timeZoneDisplayKey);
        if (str != null) {
            return str;
        }
        String displayName = timeZone.getDisplayName(z, i, locale);
        String strPutIfAbsent = concurrentMap.putIfAbsent(timeZoneDisplayKey, displayName);
        return strPutIfAbsent != null ? strPutIfAbsent : displayName;
    }

    private static class TimeZoneNameRule implements Rule {
        private final String mDaylight;
        private final Locale mLocale;
        private final String mStandard;
        private final int mStyle;

        TimeZoneNameRule(TimeZone timeZone, Locale locale, int i) {
            this.mLocale = locale;
            this.mStyle = i;
            this.mStandard = FastDatePrinter.getTimeZoneDisplay(timeZone, false, i, locale);
            this.mDaylight = FastDatePrinter.getTimeZoneDisplay(timeZone, true, i, locale);
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return Math.max(this.mStandard.length(), this.mDaylight.length());
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            TimeZone timeZone = calendar.getTimeZone();
            if (calendar.get(16) != 0) {
                stringBuffer.append(FastDatePrinter.getTimeZoneDisplay(timeZone, true, this.mStyle, this.mLocale));
            } else {
                stringBuffer.append(FastDatePrinter.getTimeZoneDisplay(timeZone, false, this.mStyle, this.mLocale));
            }
        }
    }

    private static class TimeZoneNumberRule implements Rule {
        final boolean mColon;
        final boolean mISO8601;
        static final TimeZoneNumberRule INSTANCE_COLON = new TimeZoneNumberRule(true, false);
        static final TimeZoneNumberRule INSTANCE_NO_COLON = new TimeZoneNumberRule(false, false);
        static final TimeZoneNumberRule INSTANCE_ISO_8601 = new TimeZoneNumberRule(true, true);

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return 5;
        }

        TimeZoneNumberRule(boolean z, boolean z2) {
            this.mColon = z;
            this.mISO8601 = z2;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            if (this.mISO8601 && calendar.getTimeZone().getID().equals("UTC")) {
                stringBuffer.append(SvgConstants.Attributes.PATH_DATA_CLOSE_PATH);
                return;
            }
            int i = calendar.get(15) + calendar.get(16);
            if (i < 0) {
                stringBuffer.append(SignatureVisitor.SUPER);
                i = -i;
            } else {
                stringBuffer.append(SignatureVisitor.EXTENDS);
            }
            int i2 = i / 3600000;
            FastDatePrinter.appendDigits(stringBuffer, i2);
            if (this.mColon) {
                stringBuffer.append(':');
            }
            FastDatePrinter.appendDigits(stringBuffer, (i / 60000) - (i2 * 60));
        }
    }

    private static class Iso8601_Rule implements Rule {
        final int length;
        static final Iso8601_Rule ISO8601_HOURS = new Iso8601_Rule(3);
        static final Iso8601_Rule ISO8601_HOURS_MINUTES = new Iso8601_Rule(5);
        static final Iso8601_Rule ISO8601_HOURS_COLON_MINUTES = new Iso8601_Rule(6);

        static Iso8601_Rule getRule(int i) {
            if (i == 1) {
                return ISO8601_HOURS;
            }
            if (i == 2) {
                return ISO8601_HOURS_MINUTES;
            }
            if (i == 3) {
                return ISO8601_HOURS_COLON_MINUTES;
            }
            throw new IllegalArgumentException("invalid number of X");
        }

        Iso8601_Rule(int i) {
            this.length = i;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public int estimateLength() {
            return this.length;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDatePrinter.Rule
        public void appendTo(StringBuffer stringBuffer, Calendar calendar) {
            int i = calendar.get(15);
            if (i == 0) {
                stringBuffer.append(SvgConstants.Attributes.PATH_DATA_CLOSE_PATH);
                return;
            }
            int i2 = i + calendar.get(16);
            if (i2 < 0) {
                stringBuffer.append(SignatureVisitor.SUPER);
                i2 = -i2;
            } else {
                stringBuffer.append(SignatureVisitor.EXTENDS);
            }
            int i3 = i2 / 3600000;
            FastDatePrinter.appendDigits(stringBuffer, i3);
            int i4 = this.length;
            if (i4 < 5) {
                return;
            }
            if (i4 == 6) {
                stringBuffer.append(':');
            }
            FastDatePrinter.appendDigits(stringBuffer, (i2 / 60000) - (i3 * 60));
        }
    }

    private static class TimeZoneDisplayKey {
        private final Locale mLocale;
        private final int mStyle;
        private final TimeZone mTimeZone;

        TimeZoneDisplayKey(TimeZone timeZone, boolean z, int i, Locale locale) {
            this.mTimeZone = timeZone;
            if (z) {
                this.mStyle = Integer.MIN_VALUE | i;
            } else {
                this.mStyle = i;
            }
            this.mLocale = locale;
        }

        public int hashCode() {
            return (((this.mStyle * 31) + this.mLocale.hashCode()) * 31) + this.mTimeZone.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TimeZoneDisplayKey)) {
                return false;
            }
            TimeZoneDisplayKey timeZoneDisplayKey = (TimeZoneDisplayKey) obj;
            return this.mTimeZone.equals(timeZoneDisplayKey.mTimeZone) && this.mStyle == timeZoneDisplayKey.mStyle && this.mLocale.equals(timeZoneDisplayKey.mLocale);
        }
    }
}
