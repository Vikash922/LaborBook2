.class final Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBytesExtractor;
.super Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
.source "SampleExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleBytesExtractor"
.end annotation


# instance fields
.field private final bytesPerSample:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;-><init>()V

    shr-int/lit8 p1, p1, 0x3

    .line 74
    iput p1, p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBytesExtractor;->bytesPerSample:I

    return-void
.end method


# virtual methods
.method public extract([BI)J
    .locals 6

    .line 79
    iget v0, p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBytesExtractor;->bytesPerSample:I

    mul-int/2addr p2, v0

    add-int/lit8 v0, p2, 0x1

    .line 80
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 81
    :goto_0
    iget v3, p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBytesExtractor;->bytesPerSample:I

    if-ge p2, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-int/lit8 v3, v0, 0x1

    .line 82
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr v1, v4

    add-int/lit8 p2, p2, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method
