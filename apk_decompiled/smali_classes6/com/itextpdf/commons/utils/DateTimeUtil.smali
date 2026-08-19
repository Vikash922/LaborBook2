.class public final Lcom/itextpdf/commons/utils/DateTimeUtil;
.super Ljava/lang/Object;
.source "DateTimeUtil.java"


# static fields
.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDaysToCalendar(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x6

    .line 121
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    return-object p0
.end method

.method public static addDaysToDate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .line 159
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 160
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x6

    .line 161
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->add(II)V

    .line 162
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 212
    invoke-static {p1}, Lcom/itextpdf/commons/utils/DateTimeUtil;->initParserSDF(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWithDefaultPattern(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 200
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lcom/itextpdf/commons/utils/DateTimeUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static getCurrentTimeCalendar()Ljava/util/Calendar;
    .locals 1

    .line 99
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    return-object v0
.end method

.method public static getCurrentTimeDate()Ljava/util/Date;
    .locals 1

    .line 109
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static getCurrentTimeZoneOffset()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    invoke-static {}, Lcom/itextpdf/commons/utils/DateTimeUtil;->getCurrentTimeDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/commons/utils/DateTimeUtil;->getCurrentTimeZoneOffset(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTimeZoneOffset(Ljava/util/Date;)J
    .locals 3

    .line 237
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static getRelativeTime(Ljava/util/Date;)J
    .locals 2

    .line 146
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUtcMillisFromEpoch(Ljava/util/Calendar;)D
    .locals 2

    if-nez p0, :cond_0

    .line 74
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method private static initParserSDF(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 1

    .line 242
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static isInPast(Ljava/util/Date;)Z
    .locals 1

    .line 133
    invoke-static {}, Lcom/itextpdf/commons/utils/DateTimeUtil;->getCurrentTimeDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 186
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/commons/utils/DateTimeUtil;->initParserSDF(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 188
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseWithDefaultPattern(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 173
    const-string v0, "yyyy-MM-dd"

    invoke-static {p0, v0}, Lcom/itextpdf/commons/utils/DateTimeUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
