.class final Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
.super Ljava/lang/Object;
.source "CharacterSetECI.java"


# static fields
.field private static NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encodingName:Ljava/lang/String;

.field private final value:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->encodingName:Ljava/lang/String;

    .line 88
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->value:I

    return-void
.end method

.method private static addCharacterSet(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;",
            ">;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 107
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;",
            ">;)V"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-direct {v0, p0, v2}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 112
    :goto_0
    array-length p0, p1

    if-ge v1, p0, :cond_0

    .line 113
    aget-object p0, p1, v1

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
    .locals 1

    .line 123
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->initialize()V

    .line 126
    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    return-object p0
.end method

.method private static initialize()V
    .locals 8

    .line 60
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 61
    const-string v2, "Cp437"

    invoke-static {v1, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(ILjava/lang/String;Ljava/util/Map;)V

    const/4 v3, 0x2

    .line 62
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "ISO8859_1"

    aput-object v5, v4, v1

    const/4 v6, 0x1

    const-string v7, "ISO-8859-1"

    aput-object v7, v4, v6

    invoke-static {v6, v4, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    invoke-static {v3, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(ILjava/lang/String;Ljava/util/Map;)V

    .line 64
    new-array v2, v3, [Ljava/lang/String;

    aput-object v5, v2, v1

    aput-object v7, v2, v6

    const/4 v4, 0x3

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_2"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-2"

    aput-object v4, v2, v6

    const/4 v4, 0x4

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_3"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-3"

    aput-object v4, v2, v6

    const/4 v4, 0x5

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_4"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-4"

    aput-object v4, v2, v6

    const/4 v4, 0x6

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_5"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-5"

    aput-object v4, v2, v6

    const/4 v4, 0x7

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_6"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-6"

    aput-object v4, v2, v6

    const/16 v4, 0x8

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_7"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-7"

    aput-object v4, v2, v6

    const/16 v4, 0x9

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_8"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-8"

    aput-object v4, v2, v6

    const/16 v4, 0xa

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_9"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-9"

    aput-object v4, v2, v6

    const/16 v4, 0xb

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_10"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-10"

    aput-object v4, v2, v6

    const/16 v4, 0xc

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_11"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-11"

    aput-object v4, v2, v6

    const/16 v4, 0xd

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_13"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-13"

    aput-object v4, v2, v6

    const/16 v4, 0xf

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_14"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-14"

    aput-object v4, v2, v6

    const/16 v4, 0x10

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_15"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-15"

    aput-object v4, v2, v6

    const/16 v4, 0x11

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "ISO8859_16"

    aput-object v4, v2, v1

    const-string v4, "ISO-8859-16"

    aput-object v4, v2, v6

    const/16 v4, 0x12

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "SJIS"

    aput-object v3, v2, v1

    const-string v1, "Shift_JIS"

    aput-object v1, v2, v6

    const/16 v1, 0x14

    invoke-static {v1, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    sput-object v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getEncodingName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->encodingName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->value:I

    return v0
.end method
