.class public final Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors;
.super Ljava/lang/Object;
.source "BaseInputOutPutConvertors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;,
        Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getByteBasedInputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;
    .locals 1

    .line 62
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda1;-><init>(ID)V

    return-object v0
.end method

.method private static getByteBasedOutputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;
    .locals 1

    .line 87
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$$ExternalSyntheticLambda0;-><init>(ID)V

    return-object v0
.end method

.method public static getInputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;
    .locals 3

    mul-int/lit8 v0, p0, 0x8

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    long-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v0

    .line 54
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors;->getByteBasedInputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IInputConversionFunction;

    move-result-object p0

    return-object p0
.end method

.method public static getOutputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;
    .locals 3

    mul-int/lit8 v0, p0, 0x8

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    long-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors;->getByteBasedOutputConvertor(ID)Lcom/itextpdf/kernel/pdf/function/BaseInputOutPutConvertors$IOutputConversionFunction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getByteBasedInputConvertor$0(ID[BII)[D
    .locals 6

    add-int v0, p4, p5

    .line 63
    array-length v1, p3

    if-gt v0, v1, :cond_3

    .line 66
    rem-int v1, p5, p0

    if-nez v1, :cond_2

    .line 70
    div-int/2addr p5, p0

    new-array p5, p5, [D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge p4, v0, :cond_1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, p0, :cond_0

    shl-int/lit8 v4, v4, 0x8

    add-int v5, p4, v3

    .line 76
    aget-byte v5, p3, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    int-to-double v3, v4

    div-double/2addr v3, p1

    .line 79
    aput-wide v3, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p5

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "The length must be a multiple of {0}."

    invoke-static {p2, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The offset + length must be lower than or equal to the length of the byte array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$getByteBasedOutputConvertor$1(ID[D)[B
    .locals 9

    .line 88
    array-length v0, p3

    mul-int/2addr v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 91
    :goto_0
    array-length v5, p3

    if-ge v3, v5, :cond_1

    if-ge v4, v0, :cond_1

    .line 92
    aget-wide v5, p3, v3

    mul-double/2addr v5, p1

    double-to-int v5, v5

    move v6, v2

    :goto_1
    if-ge v6, p0, :cond_0

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v8, v6, 0x8

    ushr-int v8, v5, v8

    int-to-byte v8, v8

    .line 94
    aput-byte v8, v1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
