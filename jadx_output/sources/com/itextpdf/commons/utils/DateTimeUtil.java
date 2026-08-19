package com.itextpdf.commons.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class DateTimeUtil {
    private static final String DEFAULT_PATTERN = "yyyy-MM-dd";

    private DateTimeUtil() {
    }

    public static double getUtcMillisFromEpoch(Calendar calendar) {
        if (calendar == null) {
            calendar = new GregorianCalendar();
        }
        return calendar.getTimeInMillis();
    }

    public static Calendar getCalendar(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static Calendar getCurrentTimeCalendar() {
        return new GregorianCalendar();
    }

    public static Date getCurrentTimeDate() {
        return new Date();
    }

    public static Calendar addDaysToCalendar(Calendar calendar, int i) {
        calendar.add(6, i);
        return calendar;
    }

    public static boolean isInPast(Date date) {
        return date.before(getCurrentTimeDate());
    }

    public static long getRelativeTime(Date date) {
        return date.getTime();
    }

    public static Date addDaysToDate(Date date, int i) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        gregorianCalendar.add(6, i);
        return gregorianCalendar.getTime();
    }

    public static Date parseWithDefaultPattern(String str) {
        return parse(str, DEFAULT_PATTERN);
    }

    public static Date parse(String str, String str2) {
        try {
            return initParserSDF(str2).parse(str);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    public static String formatWithDefaultPattern(Date date) {
        return format(date, DEFAULT_PATTERN);
    }

    public static String format(Date date, String str) {
        return initParserSDF(str).format(date);
    }

    @Deprecated
    public static long getCurrentTimeZoneOffset() {
        return getCurrentTimeZoneOffset(getCurrentTimeDate());
    }

    public static long getCurrentTimeZoneOffset(Date date) {
        return TimeZone.getDefault().getOffset(date.getTime());
    }

    private static DateFormat initParserSDF(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        simpleDateFormat.setCalendar(new GregorianCalendar());
        return simpleDateFormat;
    }
}
