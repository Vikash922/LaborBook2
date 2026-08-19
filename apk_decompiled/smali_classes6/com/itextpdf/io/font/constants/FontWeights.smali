.class public final Lcom/itextpdf/io/font/constants/FontWeights;
.super Ljava/lang/Object;
.source "FontWeights.java"


# static fields
.field public static final BLACK:I = 0x384

.field public static final BOLD:I = 0x2bc

.field public static final EXTRA_BOLD:I = 0x320

.field public static final EXTRA_LIGHT:I = 0xc8

.field public static final LIGHT:I = 0x12c

.field public static final MEDIUM:I = 0x1f4

.field public static final NORMAL:I = 0x190

.field public static final SEMI_BOLD:I = 0x258

.field public static final THIN:I = 0x64


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromType1FontWeight(Ljava/lang/String;)I
    .locals 2

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "ultralight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ultrablack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "ultrabold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "semibold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "regular"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "demibold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "extralight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "extrablack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "ultra"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "light"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "heavy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "black"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_c
    const-string v0, "thin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_d
    const-string v0, "book"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_e
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_f
    const-string v0, "fat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_10
    const-string v0, "extrabold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_11
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_12
    const-string v0, "medium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x0

    :goto_0
    const/16 p0, 0x384

    const/16 v0, 0x190

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move p0, v0

    goto :goto_1

    :pswitch_1
    const/16 p0, 0x64

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x258

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x12c

    goto :goto_1

    :pswitch_4
    const/16 p0, 0xc8

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x2bc

    goto :goto_1

    :pswitch_6
    const/16 p0, 0x320

    goto :goto_1

    :pswitch_7
    const/16 p0, 0x1f4

    :goto_1
    :pswitch_8
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_12
        -0x3df94319 -> :sswitch_11
        -0xf12b96b -> :sswitch_10
        0x18b19 -> :sswitch_f
        0x2e3a85 -> :sswitch_e
        0x2e3ae9 -> :sswitch_d
        0x364e99 -> :sswitch_c
        0x5978fff -> :sswitch_b
        0x5e8f0c7 -> :sswitch_a
        0x6233516 -> :sswitch_9
        0x6a397ac -> :sswitch_8
        0x2cba05ef -> :sswitch_7
        0x2d45ab06 -> :sswitch_6
        0x32c101e2 -> :sswitch_5
        0x40c21f9c -> :sswitch_4
        0x48f2a2f3 -> :sswitch_3
        0x56a61c31 -> :sswitch_2
        0x7e1be3d3 -> :sswitch_1
        0x7ea788ea -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method public static normalizeFontWeight(I)I
    .locals 1

    const/16 v0, 0x64

    .line 124
    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x384

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method
