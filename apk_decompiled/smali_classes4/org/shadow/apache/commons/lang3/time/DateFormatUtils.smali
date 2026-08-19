.class public Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;
.super Ljava/lang/Object;
.source "DateFormatUtils.java"


# static fields
.field public static final ISO_DATETIME_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_DATE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_DATE_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_NO_T_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_TIME_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field public static final SMTP_DATETIME_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

.field private static final UTC_TIME_ZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    .line 47
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_DATETIME_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 54
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 61
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_DATE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 70
    const-string v0, "yyyy-MM-ddZZ"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_DATE_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 77
    const-string v0, "\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 84
    const-string v0, "\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 93
    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_NO_T_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 102
    const-string v0, "HH:mm:ssZZ"

    invoke-static {v0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    .line 109
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->SMTP_DATETIME_FORMAT:Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 177
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p0}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 251
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p3}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 213
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p3, p0}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 290
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, p3, p4}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-static {p0, p1, v0, v0}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-static {p0, p1, v0, p2}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-static {p0, p1, p2, v0}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 319
    invoke-static {p1, p2, p3}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object p1

    .line 320
    invoke-virtual {p1, p0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-static {p0, p1, v0, v0}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-static {p0, p1, v0, p2}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-static {p0, p1, p2, v0}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 303
    invoke-static {p1, p2, p3}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/shadow/apache/commons/lang3/time/FastDateFormat;

    move-result-object p1

    .line 304
    invoke-virtual {p1, p0}, Lorg/shadow/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 p1, 0x0

    invoke-static {v0, p2, p0, p1}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 154
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {v0, p2, p0, p3}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 142
    sget-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 166
    sget-object v0, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lorg/shadow/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
