package org.shadow.apache.commons.lang3.time;

import com.itextpdf.svg.SvgConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.text.DateFormatSymbols;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.SortedMap;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class FastDateParser implements DateParser, Serializable {
    private static final long serialVersionUID = 2;
    private final int century;
    private transient String currentFormatField;
    private final Locale locale;
    private transient Strategy nextStrategy;
    private transient Pattern parsePattern;
    private final String pattern;
    private final int startYear;
    private transient Strategy[] strategies;
    private final TimeZone timeZone;
    static final Locale JAPANESE_IMPERIAL = new Locale("ja", "JP", "JP");
    private static final Pattern formatPattern = Pattern.compile("D+|E+|F+|G+|H+|K+|M+|S+|W+|X+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|''|'[^']++(''[^']*+)*+'|[^'A-Za-z]++");
    private static final ConcurrentMap<Locale, Strategy>[] caches = new ConcurrentMap[17];
    private static final Strategy ABBREVIATED_YEAR_STRATEGY = new NumberStrategy(1) { // from class: org.shadow.apache.commons.lang3.time.FastDateParser.1
        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.NumberStrategy, org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        void setCalendar(FastDateParser fastDateParser, Calendar calendar, String str) {
            int iAdjustYear = Integer.parseInt(str);
            if (iAdjustYear < 100) {
                iAdjustYear = fastDateParser.adjustYear(iAdjustYear);
            }
            calendar.set(1, iAdjustYear);
        }
    };
    private static final Strategy NUMBER_MONTH_STRATEGY = new NumberStrategy(2) { // from class: org.shadow.apache.commons.lang3.time.FastDateParser.2
        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.NumberStrategy
        int modify(int i) {
            return i - 1;
        }
    };
    private static final Strategy LITERAL_YEAR_STRATEGY = new NumberStrategy(1);
    private static final Strategy WEEK_OF_YEAR_STRATEGY = new NumberStrategy(3);
    private static final Strategy WEEK_OF_MONTH_STRATEGY = new NumberStrategy(4);
    private static final Strategy DAY_OF_YEAR_STRATEGY = new NumberStrategy(6);
    private static final Strategy DAY_OF_MONTH_STRATEGY = new NumberStrategy(5);
    private static final Strategy DAY_OF_WEEK_IN_MONTH_STRATEGY = new NumberStrategy(8);
    private static final Strategy HOUR_OF_DAY_STRATEGY = new NumberStrategy(11);
    private static final Strategy HOUR24_OF_DAY_STRATEGY = new NumberStrategy(11) { // from class: org.shadow.apache.commons.lang3.time.FastDateParser.3
        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.NumberStrategy
        int modify(int i) {
            if (i == 24) {
                return 0;
            }
            return i;
        }
    };
    private static final Strategy HOUR12_STRATEGY = new NumberStrategy(10) { // from class: org.shadow.apache.commons.lang3.time.FastDateParser.4
        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.NumberStrategy
        int modify(int i) {
            if (i == 12) {
                return 0;
            }
            return i;
        }
    };
    private static final Strategy HOUR_STRATEGY = new NumberStrategy(10);
    private static final Strategy MINUTE_STRATEGY = new NumberStrategy(12);
    private static final Strategy SECOND_STRATEGY = new NumberStrategy(13);
    private static final Strategy MILLISECOND_STRATEGY = new NumberStrategy(14);
    private static final Strategy ISO_8601_STRATEGY = new ISO8601TimeZoneStrategy("(Z|(?:[+-]\\d{2}(?::?\\d{2})?))");

    protected FastDateParser(String str, TimeZone timeZone, Locale locale) {
        this(str, timeZone, locale, null);
    }

    protected FastDateParser(String str, TimeZone timeZone, Locale locale, Date date) {
        int i;
        this.pattern = str;
        this.timeZone = timeZone;
        this.locale = locale;
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        if (date != null) {
            calendar.setTime(date);
            i = calendar.get(1);
        } else if (locale.equals(JAPANESE_IMPERIAL)) {
            i = 0;
        } else {
            calendar.setTime(new Date());
            i = calendar.get(1) - 80;
        }
        int i2 = (i / 100) * 100;
        this.century = i2;
        this.startYear = i - i2;
        init(calendar);
    }

    private void init(Calendar calendar) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        Matcher matcher = formatPattern.matcher(this.pattern);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("Illegal pattern character '" + this.pattern.charAt(matcher.regionStart()) + "'");
        }
        String strGroup = matcher.group();
        this.currentFormatField = strGroup;
        Strategy strategy = getStrategy(strGroup, calendar);
        while (true) {
            matcher.region(matcher.end(), matcher.regionEnd());
            if (!matcher.lookingAt()) {
                break;
            }
            String strGroup2 = matcher.group();
            this.nextStrategy = getStrategy(strGroup2, calendar);
            if (strategy.addRegex(this, sb)) {
                arrayList.add(strategy);
            }
            this.currentFormatField = strGroup2;
            strategy = this.nextStrategy;
        }
        this.nextStrategy = null;
        if (matcher.regionStart() != matcher.regionEnd()) {
            throw new IllegalArgumentException("Failed to parse \"" + this.pattern + "\" ; gave up at index " + matcher.regionStart());
        }
        if (strategy.addRegex(this, sb)) {
            arrayList.add(strategy);
        }
        this.currentFormatField = null;
        this.strategies = (Strategy[]) arrayList.toArray(new Strategy[arrayList.size()]);
        this.parsePattern = Pattern.compile(sb.toString());
    }

    @Override // org.shadow.apache.commons.lang3.time.DateParser, org.shadow.apache.commons.lang3.time.DatePrinter
    public String getPattern() {
        return this.pattern;
    }

    @Override // org.shadow.apache.commons.lang3.time.DateParser, org.shadow.apache.commons.lang3.time.DatePrinter
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    @Override // org.shadow.apache.commons.lang3.time.DateParser, org.shadow.apache.commons.lang3.time.DatePrinter
    public Locale getLocale() {
        return this.locale;
    }

    Pattern getParsePattern() {
        return this.parsePattern;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FastDateParser)) {
            return false;
        }
        FastDateParser fastDateParser = (FastDateParser) obj;
        return this.pattern.equals(fastDateParser.pattern) && this.timeZone.equals(fastDateParser.timeZone) && this.locale.equals(fastDateParser.locale);
    }

    public int hashCode() {
        return this.pattern.hashCode() + ((this.timeZone.hashCode() + (this.locale.hashCode() * 13)) * 13);
    }

    public String toString() {
        return "FastDateParser[" + this.pattern + "," + this.locale + "," + this.timeZone.getID() + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init(Calendar.getInstance(this.timeZone, this.locale));
    }

    @Override // org.shadow.apache.commons.lang3.time.DateParser
    public Object parseObject(String str) throws ParseException {
        return parse(str);
    }

    @Override // org.shadow.apache.commons.lang3.time.DateParser
    public Date parse(String str) throws ParseException {
        Date date = parse(str, new ParsePosition(0));
        if (date != null) {
            return date;
        }
        if (this.locale.equals(JAPANESE_IMPERIAL)) {
            throw new ParseException("(The " + this.locale + " locale does not support dates before 1868 AD)\nUnparseable date: \"" + str + "\" does not match " + this.parsePattern.pattern(), 0);
        }
        throw new ParseException("Unparseable date: \"" + str + "\" does not match " + this.parsePattern.pattern(), 0);
    }

    @Override // org.shadow.apache.commons.lang3.time.DateParser
    public Object parseObject(String str, ParsePosition parsePosition) {
        return parse(str, parsePosition);
    }

    @Override // org.shadow.apache.commons.lang3.time.DateParser
    public Date parse(String str, ParsePosition parsePosition) {
        int index = parsePosition.getIndex();
        Matcher matcher = this.parsePattern.matcher(str.substring(index));
        if (!matcher.lookingAt()) {
            return null;
        }
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        calendar.clear();
        int i = 0;
        while (true) {
            Strategy[] strategyArr = this.strategies;
            if (i < strategyArr.length) {
                int i2 = i + 1;
                strategyArr[i].setCalendar(this, calendar, matcher.group(i2));
                i = i2;
            } else {
                parsePosition.setIndex(index + matcher.end());
                return calendar.getTime();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static StringBuilder escapeRegex(StringBuilder sb, String str, boolean z) {
        sb.append("\\Q");
        int i = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\'') {
                if (cCharAt == '\\' && (i = i + 1) != str.length()) {
                    sb.append(cCharAt);
                    cCharAt = str.charAt(i);
                    if (cCharAt == 'E') {
                        sb.append("E\\\\E\\");
                        cCharAt = 'Q';
                    }
                }
            } else if (z) {
                i++;
                if (i == str.length()) {
                    return sb;
                }
                cCharAt = str.charAt(i);
            } else {
                continue;
            }
            sb.append(cCharAt);
            i++;
        }
        sb.append("\\E");
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, Integer> getDisplayNames(int i, Calendar calendar, Locale locale) {
        return calendar.getDisplayNames(i, 0, locale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int adjustYear(int i) {
        int i2 = this.century + i;
        return i >= this.startYear ? i2 : i2 + 100;
    }

    boolean isNextNumber() {
        Strategy strategy = this.nextStrategy;
        return strategy != null && strategy.isNumber();
    }

    int getFieldWidth() {
        return this.currentFormatField.length();
    }

    private static abstract class Strategy {
        abstract boolean addRegex(FastDateParser fastDateParser, StringBuilder sb);

        boolean isNumber() {
            return false;
        }

        void setCalendar(FastDateParser fastDateParser, Calendar calendar, String str) {
        }

        private Strategy() {
        }
    }

    private Strategy getStrategy(String str, Calendar calendar) {
        char cCharAt = str.charAt(0);
        if (cCharAt == 'W') {
            return WEEK_OF_MONTH_STRATEGY;
        }
        if (cCharAt == 'X') {
            return ISO8601TimeZoneStrategy.getStrategy(str.length());
        }
        if (cCharAt == 'y') {
            return str.length() > 2 ? LITERAL_YEAR_STRATEGY : ABBREVIATED_YEAR_STRATEGY;
        }
        if (cCharAt != 'z') {
            switch (cCharAt) {
                case '\'':
                    if (str.length() > 2) {
                        return new CopyQuotedStrategy(str.substring(1, str.length() - 1));
                    }
                    return new CopyQuotedStrategy(str);
                case 'K':
                    return HOUR_STRATEGY;
                case 'M':
                    return str.length() >= 3 ? getLocaleSpecificStrategy(2, calendar) : NUMBER_MONTH_STRATEGY;
                case 'S':
                    return MILLISECOND_STRATEGY;
                case 'Z':
                    if (str.equals("ZZ")) {
                        return ISO_8601_STRATEGY;
                    }
                    break;
                case 'a':
                    return getLocaleSpecificStrategy(9, calendar);
                case 'd':
                    return DAY_OF_MONTH_STRATEGY;
                case 'h':
                    return HOUR12_STRATEGY;
                case 'k':
                    return HOUR24_OF_DAY_STRATEGY;
                case 'm':
                    return MINUTE_STRATEGY;
                case 's':
                    return SECOND_STRATEGY;
                case 'w':
                    return WEEK_OF_YEAR_STRATEGY;
                default:
                    switch (cCharAt) {
                        case 'D':
                            return DAY_OF_YEAR_STRATEGY;
                        case 'E':
                            return getLocaleSpecificStrategy(7, calendar);
                        case 'F':
                            return DAY_OF_WEEK_IN_MONTH_STRATEGY;
                        case 'G':
                            return getLocaleSpecificStrategy(0, calendar);
                        case 'H':
                            return HOUR_OF_DAY_STRATEGY;
                        default:
                            return new CopyQuotedStrategy(str);
                    }
            }
        }
        return getLocaleSpecificStrategy(15, calendar);
    }

    private static ConcurrentMap<Locale, Strategy> getCache(int i) {
        ConcurrentMap<Locale, Strategy> concurrentMap;
        ConcurrentMap<Locale, Strategy>[] concurrentMapArr = caches;
        synchronized (concurrentMapArr) {
            if (concurrentMapArr[i] == null) {
                concurrentMapArr[i] = new ConcurrentHashMap(3);
            }
            concurrentMap = concurrentMapArr[i];
        }
        return concurrentMap;
    }

    private Strategy getLocaleSpecificStrategy(int i, Calendar calendar) {
        ConcurrentMap<Locale, Strategy> cache = getCache(i);
        Strategy timeZoneStrategy = cache.get(this.locale);
        if (timeZoneStrategy == null) {
            timeZoneStrategy = i == 15 ? new TimeZoneStrategy(this.locale) : new CaseInsensitiveTextStrategy(i, calendar, this.locale);
            Strategy strategyPutIfAbsent = cache.putIfAbsent(this.locale, timeZoneStrategy);
            if (strategyPutIfAbsent != null) {
                return strategyPutIfAbsent;
            }
        }
        return timeZoneStrategy;
    }

    private static class CopyQuotedStrategy extends Strategy {
        private final String formatField;

        CopyQuotedStrategy(String str) {
            super();
            this.formatField = str;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        boolean isNumber() {
            char cCharAt = this.formatField.charAt(0);
            if (cCharAt == '\'') {
                cCharAt = this.formatField.charAt(1);
            }
            return Character.isDigit(cCharAt);
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        boolean addRegex(FastDateParser fastDateParser, StringBuilder sb) {
            FastDateParser.escapeRegex(sb, this.formatField, true);
            return false;
        }
    }

    private static class CaseInsensitiveTextStrategy extends Strategy {
        private final int field;
        private final Map<String, Integer> lKeyValues;
        private final Locale locale;

        CaseInsensitiveTextStrategy(int i, Calendar calendar, Locale locale) {
            super();
            this.field = i;
            this.locale = locale;
            Map displayNames = FastDateParser.getDisplayNames(i, calendar, locale);
            this.lKeyValues = new HashMap();
            for (Map.Entry entry : displayNames.entrySet()) {
                this.lKeyValues.put(((String) entry.getKey()).toLowerCase(locale), (Integer) entry.getValue());
            }
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        boolean addRegex(FastDateParser fastDateParser, StringBuilder sb) {
            sb.append("((?iu)");
            Iterator<String> it = this.lKeyValues.keySet().iterator();
            while (it.hasNext()) {
                FastDateParser.escapeRegex(sb, it.next(), false).append('|');
            }
            sb.setCharAt(sb.length() - 1, ')');
            return true;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        void setCalendar(FastDateParser fastDateParser, Calendar calendar, String str) {
            Integer num = this.lKeyValues.get(str.toLowerCase(this.locale));
            if (num == null) {
                StringBuilder sb = new StringBuilder(str);
                sb.append(" not in (");
                Iterator<String> it = this.lKeyValues.keySet().iterator();
                while (it.hasNext()) {
                    sb.append(it.next()).append(' ');
                }
                sb.setCharAt(sb.length() - 1, ')');
                throw new IllegalArgumentException(sb.toString());
            }
            calendar.set(this.field, num.intValue());
        }
    }

    private static class NumberStrategy extends Strategy {
        private final int field;

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        boolean isNumber() {
            return true;
        }

        int modify(int i) {
            return i;
        }

        NumberStrategy(int i) {
            super();
            this.field = i;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        boolean addRegex(FastDateParser fastDateParser, StringBuilder sb) {
            if (fastDateParser.isNextNumber()) {
                sb.append("(\\p{Nd}{").append(fastDateParser.getFieldWidth()).append("}+)");
                return true;
            }
            sb.append("(\\p{Nd}++)");
            return true;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        void setCalendar(FastDateParser fastDateParser, Calendar calendar, String str) {
            calendar.set(this.field, modify(Integer.parseInt(str)));
        }
    }

    private static class TimeZoneStrategy extends Strategy {

        /* JADX INFO: renamed from: ID */
        private static final int f4779ID = 0;
        private static final int LONG_DST = 3;
        private static final int LONG_STD = 1;
        private static final int SHORT_DST = 4;
        private static final int SHORT_STD = 2;
        private final SortedMap<String, TimeZone> tzNames;
        private final String validTimeZoneChars;

        TimeZoneStrategy(Locale locale) {
            super();
            this.tzNames = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (String[] strArr : DateFormatSymbols.getInstance(locale).getZoneStrings()) {
                if (!strArr[0].startsWith("GMT")) {
                    TimeZone timeZone = TimeZone.getTimeZone(strArr[0]);
                    if (!this.tzNames.containsKey(strArr[1])) {
                        this.tzNames.put(strArr[1], timeZone);
                    }
                    if (!this.tzNames.containsKey(strArr[2])) {
                        this.tzNames.put(strArr[2], timeZone);
                    }
                    if (timeZone.useDaylightTime()) {
                        if (!this.tzNames.containsKey(strArr[3])) {
                            this.tzNames.put(strArr[3], timeZone);
                        }
                        if (!this.tzNames.containsKey(strArr[4])) {
                            this.tzNames.put(strArr[4], timeZone);
                        }
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("(GMT[+-]\\d{1,2}:\\d{2}|[+-]\\d{4}|");
            Iterator<String> it = this.tzNames.keySet().iterator();
            while (it.hasNext()) {
                FastDateParser.escapeRegex(sb, it.next(), false).append('|');
            }
            sb.setCharAt(sb.length() - 1, ')');
            this.validTimeZoneChars = sb.toString();
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        boolean addRegex(FastDateParser fastDateParser, StringBuilder sb) {
            sb.append(this.validTimeZoneChars);
            return true;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        void setCalendar(FastDateParser fastDateParser, Calendar calendar, String str) {
            TimeZone timeZone;
            if (str.charAt(0) == '+' || str.charAt(0) == '-') {
                timeZone = TimeZone.getTimeZone("GMT" + str);
            } else if (str.startsWith("GMT")) {
                timeZone = TimeZone.getTimeZone(str);
            } else {
                timeZone = this.tzNames.get(str);
                if (timeZone == null) {
                    throw new IllegalArgumentException(str + " is not a supported timezone name");
                }
            }
            calendar.setTimeZone(timeZone);
        }
    }

    private static class ISO8601TimeZoneStrategy extends Strategy {
        private static final Strategy ISO_8601_1_STRATEGY = new ISO8601TimeZoneStrategy("(Z|(?:[+-]\\d{2}))");
        private static final Strategy ISO_8601_2_STRATEGY = new ISO8601TimeZoneStrategy("(Z|(?:[+-]\\d{2}\\d{2}))");
        private static final Strategy ISO_8601_3_STRATEGY = new ISO8601TimeZoneStrategy("(Z|(?:[+-]\\d{2}(?::)\\d{2}))");
        private final String pattern;

        ISO8601TimeZoneStrategy(String str) {
            super();
            this.pattern = str;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        boolean addRegex(FastDateParser fastDateParser, StringBuilder sb) {
            sb.append(this.pattern);
            return true;
        }

        @Override // org.shadow.apache.commons.lang3.time.FastDateParser.Strategy
        void setCalendar(FastDateParser fastDateParser, Calendar calendar, String str) {
            if (str.equals(SvgConstants.Attributes.PATH_DATA_CLOSE_PATH)) {
                calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
            } else {
                calendar.setTimeZone(TimeZone.getTimeZone("GMT" + str));
            }
        }

        static Strategy getStrategy(int i) {
            if (i == 1) {
                return ISO_8601_1_STRATEGY;
            }
            if (i == 2) {
                return ISO_8601_2_STRATEGY;
            }
            if (i == 3) {
                return ISO_8601_3_STRATEGY;
            }
            throw new IllegalArgumentException("invalid number of X");
        }
    }
}
