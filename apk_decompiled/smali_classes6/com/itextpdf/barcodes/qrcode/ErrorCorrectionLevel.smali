.class public final Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
.super Ljava/lang/Object;
.source "ErrorCorrectionLevel.java"


# static fields
.field private static final FOR_BITS:[Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final H:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final L:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final M:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final Q:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;


# instance fields
.field private final bits:I

.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 57
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->L:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 61
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const-string v4, "M"

    invoke-direct {v1, v3, v2, v4}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v1, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->M:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 65
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const-string v3, "Q"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v2, v4, v5, v3}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v2, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->Q:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 69
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const-string v6, "H"

    invoke-direct {v3, v5, v4, v6}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->H:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 71
    filled-new-array {v1, v0, v3, v2}, [Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->FOR_BITS:[Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->ordinal:I

    .line 79
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->bits:I

    .line 80
    iput-object p3, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-void
.end method

.method public static forBits(I)Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .locals 2

    if-ltz p0, :cond_0

    .line 110
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->FOR_BITS:[Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 113
    aget-object p0, v0, p0

    return-object p0

    .line 111
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->bits:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method
