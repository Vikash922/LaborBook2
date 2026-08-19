.class final Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;
.super Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
.source "SampleExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleBitsExtractor"
.end annotation


# instance fields
.field private final bitsPerSample:I

.field private final mask:B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;-><init>()V

    .line 56
    iput p1, p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;->bitsPerSample:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    int-to-byte p1, p1

    .line 57
    iput-byte p1, p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;->mask:B

    return-void
.end method


# virtual methods
.method public extract([BI)J
    .locals 2

    .line 62
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;->bitsPerSample:I

    mul-int/2addr p2, v0

    shr-int/lit8 v1, p2, 0x3

    and-int/lit8 p2, p2, 0x7

    rsub-int/lit8 p2, p2, 0x8

    sub-int/2addr p2, v0

    .line 65
    aget-byte p1, p1, v1

    shr-int/2addr p1, p2

    iget-byte p2, p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;->mask:B

    and-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method
