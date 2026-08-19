.class final Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$Sample12BitsExtractor;
.super Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
.source "SampleExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sample12BitsExtractor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$Sample12BitsExtractor;-><init>()V

    return-void
.end method


# virtual methods
.method public extract([BI)J
    .locals 1

    mul-int/lit8 p2, p2, 0xc

    shr-int/lit8 v0, p2, 0x3

    and-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_0

    .line 95
    aget-byte p2, p1, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x4

    add-int/lit8 v0, v0, 0x1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xf0

    shr-int/lit8 p1, p1, 0x4

    :goto_0
    or-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1

    .line 97
    :cond_0
    aget-byte p2, p1, v0

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    goto :goto_0
.end method
