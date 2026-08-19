.class public final Lcom/itextpdf/io/font/constants/FontStretches;
.super Ljava/lang/Object;
.source "FontStretches.java"


# static fields
.field public static final CONDENSED:Ljava/lang/String; = "Condensed"

.field public static final EXPANDED:Ljava/lang/String; = "Expanded"

.field public static final EXTRA_CONDENSED:Ljava/lang/String; = "ExtraCondensed"

.field public static final EXTRA_EXPANDED:Ljava/lang/String; = "ExtraExpanded"

.field private static final FWIDTH_CONDENSED:I = 0x3

.field private static final FWIDTH_EXPANDED:I = 0x7

.field private static final FWIDTH_EXTRA_CONDENSED:I = 0x2

.field private static final FWIDTH_EXTRA_EXPANDED:I = 0x8

.field private static final FWIDTH_NORMAL:I = 0x5

.field private static final FWIDTH_SEMI_CONDENSED:I = 0x4

.field private static final FWIDTH_SEMI_EXPANDED:I = 0x6

.field private static final FWIDTH_ULTRA_CONDENSED:I = 0x1

.field private static final FWIDTH_ULTRA_EXPANDED:I = 0x9

.field public static final NORMAL:Ljava/lang/String; = "Normal"

.field public static final SEMI_CONDENSED:Ljava/lang/String; = "SemiCondensed"

.field public static final SEMI_EXPANDED:Ljava/lang/String; = "SemiExpanded"

.field public static final ULTRA_CONDENSED:Ljava/lang/String; = "UltraCondensed"

.field public static final ULTRA_EXPANDED:Ljava/lang/String; = "UltraExpanded"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromOpenTypeWidthClass(I)Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "Normal"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    const-string v0, "UltraExpanded"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v0, "ExtraExpanded"

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "Expanded"

    goto :goto_0

    .line 107
    :pswitch_3
    const-string v0, "SemiExpanded"

    goto :goto_0

    .line 101
    :pswitch_4
    const-string v0, "SemiCondensed"

    goto :goto_0

    .line 98
    :pswitch_5
    const-string v0, "Condensed"

    goto :goto_0

    .line 95
    :pswitch_6
    const-string v0, "ExtraCondensed"

    goto :goto_0

    .line 92
    :pswitch_7
    const-string v0, "UltraCondensed"

    :goto_0
    :pswitch_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
