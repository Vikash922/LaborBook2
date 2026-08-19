.class final Lcom/itextpdf/barcodes/qrcode/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# static fields
.field public static final ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final FNC1_FIRST_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final FNC1_SECOND_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final STRUCTURED_APPEND:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final TERMINATOR:Lcom/itextpdf/barcodes/qrcode/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 55
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1}, [I

    move-result-object v2

    const-string v3, "TERMINATOR"

    invoke-direct {v0, v2, v1, v3}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->TERMINATOR:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 56
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/16 v2, 0xe

    const/16 v3, 0xa

    const/16 v4, 0xc

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "NUMERIC"

    invoke-direct {v0, v2, v5, v6}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 57
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/16 v2, 0xb

    const/16 v5, 0xd

    const/16 v6, 0x9

    filled-new-array {v6, v2, v5}, [I

    move-result-object v2

    const/4 v5, 0x2

    const-string v7, "ALPHANUMERIC"

    invoke-direct {v0, v2, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 60
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    filled-new-array {v1, v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    const-string v5, "STRUCTURED_APPEND"

    invoke-direct {v0, v1, v2, v5}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->STRUCTURED_APPEND:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 61
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/16 v1, 0x10

    const/16 v2, 0x8

    filled-new-array {v2, v1, v1}, [I

    move-result-object v1

    const/4 v5, 0x4

    const-string v7, "BYTE"

    invoke-direct {v0, v1, v5, v7}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 64
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/4 v1, 0x7

    const-string v5, "ECI"

    const/4 v7, 0x0

    invoke-direct {v0, v7, v1, v5}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 65
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    filled-new-array {v2, v3, v4}, [I

    move-result-object v1

    const-string v3, "KANJI"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 66
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/4 v1, 0x5

    const-string v2, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v7, v1, v2}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_FIRST_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 67
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const-string v1, "FNC1_SECOND_POSITION"

    invoke-direct {v0, v7, v6, v1}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_SECOND_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-void
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->characterCountBitsForVersions:[I

    .line 75
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->bits:I

    .line 76
    iput-object p3, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->name:Ljava/lang/String;

    return-void
.end method

.method public static forBits(I)Lcom/itextpdf/barcodes/qrcode/Mode;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 105
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 103
    :pswitch_1
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_SECOND_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 101
    :pswitch_2
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 99
    :pswitch_3
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 97
    :pswitch_4
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_FIRST_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 95
    :pswitch_5
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 93
    :pswitch_6
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->STRUCTURED_APPEND:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 91
    :pswitch_7
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 89
    :pswitch_8
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    .line 87
    :pswitch_9
    sget-object p0, Lcom/itextpdf/barcodes/qrcode/Mode;->TERMINATOR:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->bits:I

    return v0
.end method

.method public getCharacterCountBits(Lcom/itextpdf/barcodes/qrcode/Version;)I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->characterCountBitsForVersions:[I

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionNumber()I

    move-result p1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->characterCountBitsForVersions:[I

    aget p1, v0, p1

    return p1

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Character count doesn\'t apply to this mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->name:Ljava/lang/String;

    return-object v0
.end method
