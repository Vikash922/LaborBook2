.class public final Lcom/google/android/gms/internal/ads/zzala;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaka;


# static fields
.field static final zza:Ljava/util/regex/Pattern;

.field static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/regex/Pattern;

.field private static final zzd:Ljava/util/regex/Pattern;

.field private static final zze:Ljava/util/regex/Pattern;

.field private static final zzf:Ljava/util/regex/Pattern;

.field private static final zzg:Ljava/util/regex/Pattern;

.field private static final zzh:Lcom/google/android/gms/internal/ads/zzaky;


# instance fields
.field private final zzi:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzc:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zze:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zza:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzf:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzg:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaky;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaky;-><init>(FII)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzh:Lcom/google/android/gms/internal/ads/zzaky;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzi:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaky;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzajw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzc:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    .line 5
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v7, v8

    .line 5
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long/2addr v9, v11

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 7
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-double v9, v9

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    .line 10
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v5

    :goto_0
    add-double/2addr v7, v9

    .line 11
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 12
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaky;->zza:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v5

    :goto_1
    add-double/2addr v7, v11

    const/4 p0, 0x6

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 14
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzaky;->zzb:I

    int-to-double v4, p0

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzaky;->zza:F

    float-to-double p0, p0

    div-double/2addr v0, v4

    div-double v5, v0, p0

    :cond_2
    add-double/2addr v7, v9

    add-double/2addr v7, v5

    mul-double/2addr v7, v2

    double-to-long p0, v7

    return-wide p0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Ljava/util/regex/Pattern;

    .line 18
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 20
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 22
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_9

    const/16 v1, 0x68

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_7

    const/16 v1, 0xda6

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v4

    goto :goto_3

    :cond_5
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_6
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v6

    goto :goto_3

    :cond_7
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v8

    goto :goto_3

    :cond_8
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v7, v5

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_f

    if-eq v7, v8, :cond_e

    if-eq v7, v6, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    goto :goto_6

    :cond_b
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzaky;->zzc:I

    int-to-double p0, p0

    goto :goto_4

    .line 24
    :cond_c
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzaky;->zza:F

    float-to-double p0, p0

    goto :goto_4

    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_4
    div-double/2addr v9, p0

    goto :goto_6

    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_5

    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_5
    mul-double/2addr v9, p0

    :goto_6
    mul-double/2addr v9, v2

    double-to-long p0, v9

    return-wide p0

    .line 15
    :cond_10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzajw;

    const-string v0, "Malformed time expression: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zzd(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzald;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzald;-><init>()V

    :cond_0
    return-object p0
.end method

.method private static zzf(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_24

    .line 2
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, -0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    .line 58
    :sswitch_0
    const-string v7, "multiRowAlign"

    .line 3
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "backgroundColor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v13

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "rubyPosition"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v7, "textEmphasis"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "fontSize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v9

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "textCombine"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "shear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v12

    goto/16 :goto_2

    :sswitch_8
    const-string v7, "ruby"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto :goto_2

    :sswitch_9
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v3

    goto :goto_2

    :sswitch_a
    const-string v7, "fontWeight"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_2

    :sswitch_b
    const-string v7, "textDecoration"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xc

    goto :goto_2

    :sswitch_c
    const-string v7, "origin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xf

    goto :goto_2

    :sswitch_d
    const-string v7, "textAlign"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_e
    const-string v7, "fontFamily"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v11

    goto :goto_2

    :sswitch_f
    const-string v7, "extent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    goto :goto_2

    :sswitch_10
    const-string v7, "fontStyle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    move v6, v10

    :goto_2
    const/4 v7, 0x0

    const-string v14, "TtmlParser"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :pswitch_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzala;->zza:Ljava/util/regex/Pattern;

    .line 6
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v8, :cond_1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Invalid value for shear: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v7, -0x3d380000    # -100.0f

    .line 11
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    .line 12
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_3

    .line 13
    :cond_2
    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Failed to parse shear: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v14, v5, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :goto_3
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzald;->zzA(F)Lcom/google/android/gms/internal/ads/zzald;

    move-object v0, v6

    goto/16 :goto_b

    .line 12
    :pswitch_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzakw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzakw;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzD(Lcom/google/android/gms/internal/ads/zzakw;)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    .line 17
    :pswitch_4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_4

    .line 21
    :sswitch_11
    const-string v6, "linethrough"

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v10, v3

    goto :goto_4

    :sswitch_12
    const-string v6, "nolinethrough"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v10, v13

    goto :goto_4

    :sswitch_13
    const-string v6, "underline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v10, v12

    goto :goto_4

    :sswitch_14
    const-string v6, "nounderline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v10, v11

    :cond_3
    :goto_4
    if-eqz v10, :cond_7

    if-eq v10, v13, :cond_6

    if-eq v10, v12, :cond_5

    if-eq v10, v11, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzald;->zzE(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzald;->zzE(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzald;->zzv(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzald;->zzv(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    .line 22
    :pswitch_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x5305c081

    if-eq v6, v7, :cond_9

    const v7, 0x58705dc

    if-eq v6, v7, :cond_8

    goto :goto_5

    .line 24
    :cond_8
    const-string v6, "after"

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v10, v13

    goto :goto_5

    :cond_9
    const-string v6, "before"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v10, v3

    :cond_a
    :goto_5
    if-eqz v10, :cond_c

    if-eq v10, v13, :cond_b

    goto/16 :goto_b

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzald;->zzy(I)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzald;->zzy(I)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    .line 25
    :pswitch_6
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    goto :goto_6

    .line 29
    :sswitch_15
    const-string v6, "text"

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v10, v11

    goto :goto_6

    :sswitch_16
    const-string v6, "base"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v10, v13

    goto :goto_6

    :sswitch_17
    const-string v6, "textContainer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v10, v9

    goto :goto_6

    :sswitch_18
    const-string v6, "delimiter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v10, v8

    goto :goto_6

    :sswitch_19
    const-string v6, "container"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v10, v3

    goto :goto_6

    :sswitch_1a
    const-string v6, "baseContainer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v10, v12

    :cond_d
    :goto_6
    if-eqz v10, :cond_11

    if-eq v10, v13, :cond_10

    if-eq v10, v12, :cond_10

    if-eq v10, v11, :cond_f

    if-eq v10, v9, :cond_f

    if-eq v10, v8, :cond_e

    goto/16 :goto_b

    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzald;->zzz(I)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzald;->zzz(I)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzald;->zzz(I)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzald;->zzz(I)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    .line 30
    :pswitch_7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x179a1

    if-eq v6, v7, :cond_13

    const v7, 0x33af38

    if-eq v6, v7, :cond_12

    goto :goto_7

    .line 32
    :cond_12
    const-string v6, "none"

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v10, v3

    goto :goto_7

    :cond_13
    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v10, v13

    :cond_14
    :goto_7
    if-eqz v10, :cond_16

    if-eq v10, v13, :cond_15

    goto/16 :goto_b

    :cond_15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzald;->zzC(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :cond_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzald;->zzC(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    .line 30
    :pswitch_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzala;->zzd(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzw(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :pswitch_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzala;->zzd(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzB(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :pswitch_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    const-string v6, "italic"

    .line 35
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzu(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    :pswitch_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    const-string v6, "bold"

    .line 36
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzn(Z)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    .line 55
    :pswitch_c
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    const-string v6, "\\s+"

    .line 37
    sget v8, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 38
    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 39
    array-length v8, v6

    if-ne v8, v13, :cond_17

    sget-object v6, Lcom/google/android/gms/internal/ads/zzala;->zze:Ljava/util/regex/Pattern;

    .line 43
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    goto :goto_8

    :cond_17
    if-ne v8, v12, :cond_22

    .line 47
    sget-object v8, Lcom/google/android/gms/internal/ads/zzala;->zze:Ljava/util/regex/Pattern;

    .line 40
    aget-object v6, v6, v13

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v8, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 41
    invoke-static {v14, v8}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_8
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1 .. :try_end_1} :catch_1

    const-string v9, "\'."

    if-eqz v8, :cond_21

    .line 45
    :try_start_2
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_20

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v3, 0x25

    if-eq v15, v3, :cond_1a

    const/16 v3, 0xca8

    if-eq v15, v3, :cond_19

    const/16 v3, 0xe08

    if-eq v15, v3, :cond_18

    goto :goto_9

    .line 47
    :cond_18
    const-string v3, "px"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v10, 0x0

    goto :goto_9

    :cond_19
    const-string v3, "em"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v10, v13

    goto :goto_9

    :cond_1a
    const-string v3, "%"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move v10, v12

    :cond_1b
    :goto_9
    if-eqz v10, :cond_1e

    if-eq v10, v13, :cond_1d

    if-ne v10, v12, :cond_1c

    .line 46
    :try_start_3
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzald;->zzs(I)Lcom/google/android/gms/internal/ads/zzald;

    goto :goto_a

    .line 52
    :cond_1c
    new-instance v3, Lcom/google/android/gms/internal/ads/zzajw;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid unit for fontSize: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_1d
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzald;->zzs(I)Lcom/google/android/gms/internal/ads/zzald;

    goto :goto_a

    .line 48
    :cond_1e
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzald;->zzs(I)Lcom/google/android/gms/internal/ads/zzald;

    .line 49
    :goto_a
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzald;->zzr(F)Lcom/google/android/gms/internal/ads/zzald;

    goto/16 :goto_b

    .line 50
    :cond_1f
    throw v7

    .line 52
    :cond_20
    throw v7

    .line 54
    :cond_21
    new-instance v3, Lcom/google/android/gms/internal/ads/zzajw;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid expression for fontSize: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_22
    new-instance v3, Lcom/google/android/gms/internal/ads/zzajw;

    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number of entries for fontSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/gms/internal/ads/zzajw;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_3 .. :try_end_3} :catch_1

    .line 13
    :catch_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Failed parsing fontSize value: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 36
    :pswitch_d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzald;

    goto :goto_b

    .line 61
    :pswitch_e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 56
    :try_start_4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdi;->zzb(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzald;->zzp(I)Lcom/google/android/gms/internal/ads/zzald;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    .line 42
    :catch_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Failed parsing color value: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 56
    :pswitch_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 58
    :try_start_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdi;->zzb(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzald;->zzm(I)Lcom/google/android/gms/internal/ads/zzald;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    .line 57
    :catch_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Failed parsing background value: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 60
    :pswitch_10
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "style"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzala;->zze(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzald;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzald;

    :cond_23
    :goto_b
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_24
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_10
        -0x4cd540d6 -> :sswitch_f
        -0x48ff636d -> :sswitch_e
        -0x3f826a28 -> :sswitch_d
        -0x3c1e50da -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_14
        -0x3d363934 -> :sswitch_13
        0x36723ff0 -> :sswitch_12
        0x641ec051 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x24de7f50 -> :sswitch_1a
        -0x187eb37f -> :sswitch_19
        -0xeee99f9 -> :sswitch_18
        -0x81c562c -> :sswitch_17
        0x2e06d1 -> :sswitch_16
        0x36452d -> :sswitch_15
    .end sparse-switch
.end method

.method private static zzg(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const-string v0, "\\s+"

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzajz;Lcom/google/android/gms/internal/ads/zzdk;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzala;->zzb([BII)Lcom/google/android/gms/internal/ads/zzajv;

    move-result-object p1

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzaju;->zza(Lcom/google/android/gms/internal/ads/zzajv;Lcom/google/android/gms/internal/ads/zzajz;Lcom/google/android/gms/internal/ads/zzdk;)V

    return-void
.end method

.method public final zzb([BII)Lcom/google/android/gms/internal/ads/zzajv;
    .locals 38

    .line 1
    const-string v1, ""

    const-string v2, "http://www.w3.org/ns/ttml#parameter"

    move-object/from16 v3, p0

    :try_start_0
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzala;->zzi:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    .line 2
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    .line 3
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    .line 4
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzalb;

    const-string v9, ""

    const v17, -0x800001

    const/high16 v18, -0x80000000

    move-object v8, v15

    move/from16 v10, v17

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v18

    move/from16 v14, v17

    move-object/from16 v19, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/internal/ads/zzalb;-><init>(Ljava/lang/String;FFIIFFIFI)V

    move-object/from16 v8, v19

    .line 5
    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 6
    invoke-direct {v8, v9, v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v9, 0x0

    .line 7
    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayDeque;

    .line 8
    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zzala;->zzh:Lcom/google/android/gms/internal/ads/zzaky;

    move-object v14, v9

    move-object/from16 v18, v14

    move-object/from16 v16, v11

    const/4 v15, 0x0

    const/16 v17, 0xf

    :goto_0
    const/4 v12, 0x1

    if-eq v10, v12, :cond_57

    .line 10
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Lcom/google/android/gms/internal/ads/zzakx;

    const/4 v12, 0x2

    if-nez v15, :cond_54

    .line 11
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10

    move-object/from16 v20, v1

    const-string v1, "tt"

    if-ne v10, v12, :cond_4f

    .line 12
    :try_start_1
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10

    const/high16 v21, 0x3f800000    # 1.0f

    const-string v12, "TtmlParser"

    if-eqz v10, :cond_f

    :try_start_2
    const-string v10, "frameRate"

    .line 13
    invoke-interface {v4, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 14
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :cond_0
    const/16 v10, 0x1e

    :goto_1
    const-string v3, "frameRateMultiplier"

    .line 15
    invoke-interface {v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10

    move-object/from16 v22, v14

    const-string v14, " "

    if-eqz v3, :cond_2

    .line 16
    :try_start_3
    sget v16, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    move/from16 v23, v15

    const/4 v15, -0x1

    .line 17
    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 18
    array-length v15, v3

    move-object/from16 v24, v8

    const/4 v8, 0x2

    if-ne v15, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    const-string v15, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-static {v8, v15}, Lcom/google/android/gms/internal/ads/zzdc;->zze(ZLjava/lang/Object;)V

    const/4 v8, 0x0

    .line 19
    aget-object v15, v3, v8

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x1

    .line 20
    aget-object v3, v3, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v15, v3

    goto :goto_3

    :cond_2
    move-object/from16 v24, v8

    move/from16 v23, v15

    const/4 v8, 0x0

    move/from16 v15, v21

    .line 21
    :goto_3
    iget v3, v11, Lcom/google/android/gms/internal/ads/zzaky;->zzb:I

    const-string v8, "subFrameRate"

    .line 22
    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 24
    :cond_3
    iget v8, v11, Lcom/google/android/gms/internal/ads/zzaky;->zzc:I

    move/from16 v16, v8

    const-string v8, "tickRate"

    .line 25
    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 26
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v25, v11

    goto :goto_4

    :cond_4
    move-object/from16 v25, v11

    move/from16 v8, v16

    :goto_4
    new-instance v11, Lcom/google/android/gms/internal/ads/zzaky;

    int-to-float v10, v10

    mul-float/2addr v10, v15

    invoke-direct {v11, v10, v3, v8}, Lcom/google/android/gms/internal/ads/zzaky;-><init>(FII)V

    const-string v3, "cellResolution"

    .line 27
    invoke-interface {v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_5
    move-object/from16 v26, v2

    move-object/from16 v16, v11

    :goto_6
    const/16 v17, 0xf

    goto/16 :goto_8

    .line 42
    :cond_5
    sget-object v8, Lcom/google/android/gms/internal/ads/zzala;->zzg:Ljava/util/regex/Pattern;

    .line 28
    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 29
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v8, "Ignoring malformed cell resolution: "

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    goto :goto_5

    :cond_6
    const/4 v10, 0x1

    .line 31
    :try_start_4
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    move-object v10, v15

    check-cast v10, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v15, 0x2

    .line 32
    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    if-eqz v10, :cond_8

    if-eqz v8, :cond_7

    move-object/from16 v26, v2

    move v15, v8

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v26, v2

    const/4 v8, 0x0

    const/4 v15, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v26, v2

    move v15, v8

    const/4 v8, 0x0

    :goto_7
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10

    move-object/from16 v16, v11

    :try_start_6
    const-string v11, "Invalid cell resolution "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzdc;->zze(ZLjava/lang/Object;)V

    move/from16 v17, v15

    goto :goto_8

    :cond_9
    move-object/from16 v26, v2

    move-object/from16 v16, v11

    const/4 v2, 0x0

    .line 34
    throw v2

    :cond_a
    move-object/from16 v26, v2

    move-object/from16 v16, v11

    const/4 v2, 0x0

    .line 35
    throw v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    :catch_0
    move-object/from16 v26, v2

    :catch_1
    move-object/from16 v16, v11

    .line 151
    :catch_2
    :try_start_7
    const-string v2, "Ignoring malformed cell resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 27
    :goto_8
    const-string v2, "extent"

    .line 37
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_9
    const/16 v18, 0x0

    goto :goto_a

    .line 141
    :cond_b
    sget-object v3, Lcom/google/android/gms/internal/ads/zzala;->zzf:Ljava/util/regex/Pattern;

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_c

    const-string v3, "Ignoring non-pixel tts extent: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10

    goto :goto_9

    :cond_c
    const/4 v8, 0x1

    .line 41
    :try_start_8
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x2

    .line 42
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v10, Lcom/google/android/gms/internal/ads/zzakz;

    invoke-direct {v10, v8, v3}, Lcom/google/android/gms/internal/ads/zzakz;-><init>(II)V

    move-object/from16 v18, v10

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    .line 43
    throw v3

    :cond_e
    const/4 v3, 0x0

    .line 44
    throw v3
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10

    .line 140
    :catch_3
    :try_start_9
    const-string v3, "Ignoring malformed tts extent: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move-object/from16 v26, v2

    move-object/from16 v24, v8

    move-object/from16 v25, v11

    move-object/from16 v22, v14

    move/from16 v23, v15

    :goto_a
    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v8, v18

    .line 46
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    const-string v10, "metadata"

    const-string v11, "region"

    const-string v14, "head"

    const-string v15, "style"

    if-nez v1, :cond_11

    .line 47
    :try_start_a
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "body"

    .line 48
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "div"

    .line 49
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "p"

    .line 50
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "span"

    .line 51
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "br"

    .line 52
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 53
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "styling"

    .line 54
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "layout"

    .line 55
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 56
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 57
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "image"

    .line 58
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "data"

    .line 59
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "information"

    .line 60
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_b

    .line 141
    :cond_10
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring unsupported tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v14, v22

    move-object/from16 v11, v24

    const/4 v15, 0x1

    goto/16 :goto_31

    .line 61
    :cond_11
    :goto_b
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 62
    :goto_c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 63
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzev;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 64
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzald;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzald;-><init>()V

    .line 65
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzala;->zzf(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v9

    if-eqz v1, :cond_12

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzala;->zzg(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v13, v1

    move-object/from16 v16, v2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v13, :cond_13

    move/from16 v17, v13

    aget-object v13, v1, v2

    .line 67
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzald;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzald;->zzl(Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v17

    goto :goto_d

    :cond_12
    move-object/from16 v16, v2

    .line 68
    :cond_13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzald;->zzH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 69
    invoke-interface {v5, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_14
    move-object/from16 v16, v2

    .line 70
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzev;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    const-string v2, "id"

    if-nez v1, :cond_18

    .line 115
    :try_start_b
    invoke-static {v4, v10}, Lcom/google/android/gms/internal/ads/zzev;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 116
    :cond_15
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "image"

    .line 117
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzev;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 118
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 119
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 120
    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_16
    invoke-static {v4, v10}, Lcom/google/android/gms/internal/ads/zzev;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_17
    :goto_e
    move-object/from16 v18, v10

    goto/16 :goto_1d

    .line 71
    :cond_18
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_19

    :goto_f
    move-object/from16 v18, v10

    :goto_10
    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 114
    :cond_19
    const-string v1, "origin"

    .line 72
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 73
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 74
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzald;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzald;->zzI()Ljava/lang/String;

    move-result-object v1

    :cond_1a
    if-eqz v1, :cond_22

    sget-object v9, Lcom/google/android/gms/internal/ads/zzala;->zzb:Ljava/util/regex/Pattern;

    .line 75
    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    sget-object v13, Lcom/google/android/gms/internal/ads/zzala;->zzf:Ljava/util/regex/Pattern;

    .line 76
    invoke-virtual {v13, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 77
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    if-eqz v17, :cond_1d

    const/4 v2, 0x1

    .line 78
    :try_start_c
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1c

    move-object v2, v13

    check-cast v2, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v2, v13

    const/4 v13, 0x2

    .line 79
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    move-object v13, v9

    check-cast v13, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    const/high16 v13, 0x42c80000    # 100.0f

    :goto_11
    div-float/2addr v9, v13

    goto :goto_12

    :cond_1b
    const/4 v2, 0x0

    .line 80
    throw v2

    :cond_1c
    const/4 v2, 0x0

    .line 81
    throw v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    .line 152
    :catch_4
    :try_start_d
    const-string v2, "Ignoring region with malformed origin: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 83
    :cond_1d
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_21

    if-nez v8, :cond_1e

    const-string v2, "Ignoring region with missing tts:extent: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    .line 85
    :try_start_e
    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_20

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v9, 0x2

    .line 86
    invoke-virtual {v13, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1f

    move-object v9, v13

    check-cast v9, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v2, v2

    iget v13, v8, Lcom/google/android/gms/internal/ads/zzakz;->zza:I

    int-to-float v13, v13

    div-float/2addr v2, v13

    int-to-float v9, v9

    iget v13, v8, Lcom/google/android/gms/internal/ads/zzakz;->zzb:I

    int-to-float v13, v13

    goto :goto_11

    :cond_1f
    const/4 v2, 0x0

    .line 110
    throw v2

    :cond_20
    const/4 v2, 0x0

    .line 111
    throw v2
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    .line 106
    :catch_5
    :try_start_f
    const-string v2, "Ignoring region with malformed origin: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 86
    :cond_21
    const-string v2, "Ignoring region with unsupported origin: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_22
    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_12
    move/from16 v29, v2

    .line 79
    const-string v2, "extent"

    .line 87
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    .line 88
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_23

    .line 89
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzald;

    if-eqz v13, :cond_23

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzald;->zzF()Ljava/lang/String;

    move-result-object v2

    :cond_23
    if-eqz v2, :cond_2b

    sget-object v13, Lcom/google/android/gms/internal/ads/zzala;->zzb:Ljava/util/regex/Pattern;

    .line 90
    invoke-virtual {v13, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    move-object/from16 v18, v10

    sget-object v10, Lcom/google/android/gms/internal/ads/zzala;->zzf:Ljava/util/regex/Pattern;

    .line 91
    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 92
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_10

    if-eqz v10, :cond_26

    const/4 v10, 0x1

    .line 93
    :try_start_10
    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v2, v10

    const/4 v10, 0x2

    .line 94
    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_24

    move-object v10, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v1, v10

    move/from16 v34, v1

    move/from16 v33, v2

    goto/16 :goto_13

    :cond_24
    const/4 v2, 0x0

    .line 95
    throw v2

    :cond_25
    const/4 v2, 0x0

    .line 96
    throw v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    .line 80
    :catch_6
    :try_start_11
    const-string v2, "Ignoring region with malformed extent: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 98
    :cond_26
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2a

    if-nez v8, :cond_27

    const-string v2, "Ignoring region with missing tts:extent: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    goto/16 :goto_10

    :cond_27
    const/4 v10, 0x1

    .line 100
    :try_start_12
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_29

    move-object v10, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v13, 0x2

    .line 101
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v10, v10

    iget v13, v8, Lcom/google/android/gms/internal/ads/zzakz;->zza:I

    int-to-float v13, v13

    div-float/2addr v10, v13

    int-to-float v2, v2

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzakz;->zzb:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    move/from16 v34, v2

    move/from16 v33, v10

    goto :goto_13

    :cond_28
    const/4 v2, 0x0

    .line 106
    throw v2

    :cond_29
    const/4 v2, 0x0

    .line 107
    throw v2
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 95
    :catch_7
    :try_start_13
    const-string v2, "Ignoring region with malformed extent: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 101
    :cond_2a
    const-string v2, "Ignoring region with unsupported extent: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2b
    move-object/from16 v18, v10

    move/from16 v33, v21

    move/from16 v34, v33

    .line 94
    :goto_13
    const-string v1, "displayAlign"

    .line 102
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 103
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    const v10, -0x514d33ab

    if-eq v2, v10, :cond_2d

    const v10, 0x58705dc

    if-eq v2, v10, :cond_2c

    goto :goto_14

    .line 105
    :cond_2c
    const-string v2, "after"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_15

    :cond_2d
    const-string v2, "center"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_15

    :cond_2e
    :goto_14
    const/4 v1, -0x1

    :goto_15
    if-eqz v1, :cond_30

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    goto :goto_16

    :cond_2f
    add-float v9, v9, v34

    move/from16 v30, v9

    const/16 v32, 0x2

    goto :goto_17

    :cond_30
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v34, v1

    add-float/2addr v9, v1

    move/from16 v30, v9

    const/16 v32, 0x1

    goto :goto_17

    :cond_31
    :goto_16
    move/from16 v30, v9

    const/16 v32, 0x0

    :goto_17
    int-to-float v1, v3

    div-float v36, v21, v1

    :try_start_14
    const-string v1, "writingMode"

    .line 104
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 105
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    const/16 v9, 0xe6e

    if-eq v2, v9, :cond_34

    const v9, 0x363874

    if-eq v2, v9, :cond_33

    const v9, 0x363928

    if-eq v2, v9, :cond_32

    goto :goto_18

    :cond_32
    const-string v2, "tbrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    goto :goto_19

    :cond_33
    const-string v2, "tblr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    goto :goto_19

    :cond_34
    const-string v2, "tb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    goto :goto_19

    :cond_35
    :goto_18
    const/4 v1, -0x1

    :goto_19
    if-eqz v1, :cond_37

    const/4 v2, 0x1

    if-eq v1, v2, :cond_37

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    goto :goto_1a

    :cond_36
    const/16 v37, 0x1

    goto :goto_1b

    :cond_37
    const/16 v37, 0x2

    goto :goto_1b

    :cond_38
    :goto_1a
    const/high16 v1, -0x80000000

    move/from16 v37, v1

    :goto_1b
    :try_start_15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalb;

    const/16 v31, 0x0

    const/16 v35, 0x1

    move-object/from16 v27, v1

    invoke-direct/range {v27 .. v37}, Lcom/google/android/gms/internal/ads/zzalb;-><init>(Ljava/lang/String;FFIIFFIFI)V

    :goto_1c
    if-eqz v1, :cond_39

    .line 71
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzalb;->zza:Ljava/lang/String;

    .line 114
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_39
    :goto_1d
    invoke-static {v4, v14}, Lcom/google/android/gms/internal/ads/zzev;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    if-eqz v1, :cond_3a

    move-object/from16 v21, v16

    move-object/from16 v11, v24

    goto/16 :goto_2a

    :cond_3a
    move-object/from16 v2, v16

    move-object/from16 v10, v18

    goto/16 :goto_c

    :cond_3b
    move-object/from16 v16, v2

    .line 123
    :try_start_16
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    .line 124
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzala;->zzf(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/zzald;)Lcom/google/android/gms/internal/ads/zzald;

    move-result-object v32
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_16 .. :try_end_16} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_11
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    move-object/from16 v34, v20

    const/4 v2, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v33, 0x0

    const/16 v35, 0x0

    :goto_1e
    if-ge v2, v1, :cond_45

    .line 125
    :try_start_17
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 126
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    .line 127
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_17
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_17 .. :try_end_17} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    move/from16 v21, v1

    const/4 v1, 0x5

    sparse-switch v14, :sswitch_data_0

    goto :goto_1f

    .line 135
    :sswitch_0
    const-string v14, "backgroundImage"

    .line 127
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    move v10, v1

    goto :goto_20

    :sswitch_1
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v10, 0x3

    goto :goto_20

    :sswitch_2
    const-string v14, "begin"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v10, 0x0

    goto :goto_20

    :sswitch_3
    const-string v14, "end"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v10, 0x1

    goto :goto_20

    :sswitch_4
    const-string v14, "dur"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v10, 0x2

    goto :goto_20

    :sswitch_5
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    const/4 v10, 0x4

    goto :goto_20

    :cond_3c
    :goto_1f
    const/4 v10, -0x1

    :goto_20
    if-eqz v10, :cond_44

    const/4 v14, 0x1

    if-eq v10, v14, :cond_43

    const/4 v14, 0x2

    if-eq v10, v14, :cond_42

    const/4 v14, 0x3

    if-eq v10, v14, :cond_40

    const/4 v14, 0x4

    if-eq v10, v14, :cond_3f

    if-eq v10, v1, :cond_3e

    :cond_3d
    const/4 v1, 0x1

    goto :goto_21

    :cond_3e
    :try_start_18
    const-string v1, "#"

    .line 128
    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_18
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_18 .. :try_end_18} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_11
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    .line 129
    :try_start_19
    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v35, v10

    goto :goto_21

    :catch_8
    move-exception v0

    const/4 v1, 0x1

    goto :goto_22

    :cond_3f
    const/4 v1, 0x1

    .line 130
    invoke-interface {v6, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    move-object/from16 v34, v13

    goto :goto_21

    :cond_40
    const/4 v1, 0x1

    .line 131
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzala;->zzg(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 132
    array-length v13, v10
    :try_end_19
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_19 .. :try_end_19} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    if-lez v13, :cond_41

    move-object/from16 v33, v10

    :cond_41
    :goto_21
    move-object/from16 v10, v16

    goto :goto_23

    :catch_9
    move-exception v0

    :goto_22
    move-object v2, v0

    move-object/from16 v21, v16

    goto :goto_25

    :cond_42
    move-object/from16 v10, v16

    const/4 v1, 0x1

    .line 133
    :try_start_1a
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzala;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaky;)J

    move-result-wide v29

    goto :goto_23

    :cond_43
    move v1, v14

    move-object/from16 v10, v16

    .line 134
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzala;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaky;)J

    move-result-wide v17

    goto :goto_23

    :cond_44
    move-object/from16 v10, v16

    const/4 v1, 0x1

    .line 135
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzala;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaky;)J

    move-result-wide v27

    :goto_23
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v10

    move/from16 v1, v21

    goto/16 :goto_1e

    :catch_a
    move-exception v0

    move-object/from16 v10, v16

    const/4 v1, 0x1

    :goto_24
    move-object v2, v0

    move-object/from16 v21, v10

    :goto_25
    move-object/from16 v11, v24

    goto/16 :goto_2c

    :cond_45
    move-object/from16 v10, v16

    const/4 v1, 0x1

    if-eqz v9, :cond_49

    .line 127
    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzakx;->zzd:J
    :try_end_1a
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    const-wide v36, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v13, v36

    if-eqz v2, :cond_48

    cmp-long v2, v27, v36

    if-eqz v2, :cond_46

    add-long v15, v27, v13

    goto :goto_26

    :cond_46
    move-wide/from16 v15, v36

    :goto_26
    cmp-long v2, v17, v36

    if-eqz v2, :cond_47

    add-long v17, v17, v13

    move-object v2, v9

    goto :goto_27

    :cond_47
    move-object v2, v9

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_28

    :cond_48
    move-object v2, v9

    move-wide/from16 v15, v27

    goto :goto_27

    :catch_b
    move-exception v0

    goto :goto_24

    :cond_49
    move-wide/from16 v15, v27

    const/4 v2, 0x0

    :goto_27
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_28
    cmp-long v11, v17, v13

    if-nez v11, :cond_4d

    cmp-long v11, v29, v13

    if-eqz v11, :cond_4a

    add-long v29, v15, v29

    move-object/from16 v21, v10

    move-wide/from16 v30, v29

    goto :goto_29

    :cond_4a
    if-eqz v2, :cond_4b

    move-object/from16 v21, v10

    .line 139
    :try_start_1b
    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zzakx;->zze:J
    :try_end_1b
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    cmp-long v17, v10, v13

    if-eqz v17, :cond_4c

    move-wide/from16 v30, v10

    goto :goto_29

    :catch_c
    move-exception v0

    move-object v2, v0

    goto :goto_25

    :cond_4b
    move-object/from16 v21, v10

    :cond_4c
    move-wide/from16 v30, v13

    goto :goto_29

    :cond_4d
    move-object/from16 v21, v10

    move-wide/from16 v30, v17

    .line 136
    :goto_29
    :try_start_1c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    move-wide/from16 v28, v15

    move-object/from16 v36, v2

    .line 137
    invoke-static/range {v27 .. v36}, Lcom/google/android/gms/internal/ads/zzakx;->zzb(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzald;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzakx;)Lcom/google/android/gms/internal/ads/zzakx;

    move-result-object v2
    :try_end_1c
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10

    move-object/from16 v11, v24

    .line 138
    :try_start_1d
    invoke-virtual {v11, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v9, :cond_4e

    .line 139
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzakx;->zzf(Lcom/google/android/gms/internal/ads/zzakx;)V
    :try_end_1d
    .catch Lcom/google/android/gms/internal/ads/zzajw; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_11
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_10

    :cond_4e
    :goto_2a
    move/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v16, v21

    goto/16 :goto_2f

    :catch_d
    move-exception v0

    goto :goto_2b

    :catch_e
    move-exception v0

    move-object/from16 v11, v24

    goto :goto_2b

    :catch_f
    move-exception v0

    move-object/from16 v21, v16

    move-object/from16 v11, v24

    const/4 v1, 0x1

    :goto_2b
    move-object v2, v0

    .line 110
    :goto_2c
    :try_start_1e
    const-string v9, "Suppressing parser error"

    .line 140
    invoke-static {v12, v9, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v15, v1

    move/from16 v17, v3

    move-object/from16 v18, v8

    move-object/from16 v16, v21

    goto :goto_2e

    :cond_4f
    move-object/from16 v26, v2

    move-object/from16 v25, v11

    move-object/from16 v22, v14

    move/from16 v23, v15

    const/4 v2, 0x4

    move-object v11, v8

    if-ne v10, v2, :cond_51

    if-eqz v9, :cond_50

    .line 142
    move-object v1, v9

    check-cast v1, Lcom/google/android/gms/internal/ads/zzakx;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzakx;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzakx;->zzf(Lcom/google/android/gms/internal/ads/zzakx;)V

    goto :goto_2f

    :cond_50
    const/4 v1, 0x0

    .line 150
    throw v1

    :cond_51
    const/4 v2, 0x3

    if-ne v10, v2, :cond_56

    .line 143
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    new-instance v14, Lcom/google/android/gms/internal/ads/zzale;

    .line 144
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzakx;

    if-eqz v1, :cond_52

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzakx;

    invoke-direct {v14, v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzale;-><init>(Lcom/google/android/gms/internal/ads/zzakx;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2d

    :cond_52
    const/4 v1, 0x0

    .line 151
    throw v1

    :cond_53
    move-object/from16 v14, v22

    .line 145
    :goto_2d
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_30

    :cond_54
    move-object/from16 v20, v1

    move-object/from16 v26, v2

    move-object/from16 v25, v11

    move v1, v12

    move-object/from16 v22, v14

    move/from16 v23, v15

    move-object v11, v8

    if-ne v10, v1, :cond_55

    add-int/lit8 v15, v23, 0x1

    :goto_2e
    move-object/from16 v14, v22

    goto :goto_31

    :cond_55
    const/4 v1, 0x3

    if-ne v10, v1, :cond_56

    add-int/lit8 v15, v23, -0x1

    goto :goto_2e

    :cond_56
    :goto_2f
    move-object/from16 v14, v22

    :goto_30
    move/from16 v15, v23

    .line 146
    :goto_31
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 147
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    move-object/from16 v3, p0

    move-object v8, v11

    move-object/from16 v1, v20

    move-object/from16 v11, v25

    move-object/from16 v2, v26

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_57
    move-object/from16 v22, v14

    if-eqz v22, :cond_58

    .line 148
    move-object/from16 v14, v22

    check-cast v14, Lcom/google/android/gms/internal/ads/zzajv;

    return-object v14

    :cond_58
    const/4 v1, 0x0

    .line 149
    throw v1
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_10

    :catch_10
    move-exception v0

    move-object v1, v0

    .line 153
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected error when reading input."

    .line 152
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_11
    move-exception v0

    move-object v1, v0

    .line 148
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to decode source"

    .line 153
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method
