.class final Lcom/itextpdf/barcodes/qrcode/GF256;
.super Ljava/lang/Object;
.source "GF256.java"


# static fields
.field public static final DATA_MATRIX_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

.field public static final QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final one:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

.field private final zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/GF256;

    const/16 v1, 0x11d

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/GF256;-><init>(I)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    .line 62
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/GF256;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/GF256;-><init>(I)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/GF256;->DATA_MATRIX_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 77
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    .line 78
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 81
    iget-object v5, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    aput v4, v5, v3

    shl-int/2addr v4, v1

    if-lt v4, v0, :cond_0

    xor-int/2addr v4, p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    const/16 v0, 0xff

    if-ge p1, v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    aget v3, v3, p1

    aput p1, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 94
    :cond_2
    new-instance p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    filled-new-array {v2}, [I

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 95
    new-instance p1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->one:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-void
.end method

.method static addOrSubtract(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method buildMonomial(II)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    .line 114
    iget-object p1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 116
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 117
    aput p2, p1, v0

    .line 118
    new-instance p2, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    invoke-direct {p2, p0, p1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    return-object p2

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method exp(I)I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    aget p1, v0, p1

    return p1
.end method

.method getOne()Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->one:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object v0
.end method

.method getZero()Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object v0
.end method

.method inverse(I)I
    .locals 2

    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    aget p1, v1, p1

    rsub-int p1, p1, 0xff

    aget p1, v0, p1

    return p1

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method log(I)I
    .locals 1

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    aget p1, v0, p1

    return p1

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method multiply(II)I
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return p2

    :cond_1
    if-ne p2, v0, :cond_2

    return p1

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    rem-int/lit16 p1, p1, 0xff

    aget p1, v0, p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
