.class public abstract Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
.super Ljava/lang/Object;
.source "SampleExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$Sample12BitsExtractor;,
        Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBytesExtractor;,
        Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtractor(I)Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitsPerSample value must be from {1, 2, 4, 8, 12, 16, 24, 32}"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$Sample12BitsExtractor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$Sample12BitsExtractor;-><init>(Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$1;)V

    return-object p0

    .line 41
    :cond_2
    :goto_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBytesExtractor;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBytesExtractor;-><init>(I)V

    return-object v0

    .line 36
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/utils/SampleExtractor$SampleBitsExtractor;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract extract([BI)J
.end method
