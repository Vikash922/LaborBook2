.class public final Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;
.super Ljava/lang/Object;
.source "InlineImageParsingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;
    }
.end annotation


# static fields
.field private static final EI:[B

.field private static final inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final inlineImageEntryAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final inlineImageFilterAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->EI:[B

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    .line 108
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ImageMask:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ImageMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Intent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Intent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "BPC"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "CS"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "D"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "DP"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "F"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "H"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "IM"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ImageMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "I"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "W"

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    .line 133
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "G"

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "RGB"

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "CMYK"

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    .line 141
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "AHx"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ASCIIHexDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "A85"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ASCII85Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "LZW"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->LZWDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "Fl"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "RL"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->RunLengthDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "CCF"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CCITTFaxDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "DCT"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DCTDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0x45t
        0x49t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeBytesPerRow(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 3

    .line 273
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    .line 275
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->getComponentsPerPixel(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p0

    .line 277
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/2addr p1, v0

    mul-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x7

    .line 280
    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method private static getAlternateValue(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 4

    .line 240
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    if-ne p0, v0, :cond_2

    .line 241
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v0, :cond_0

    .line 242
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz p0, :cond_3

    return-object p0

    .line 246
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v0, :cond_3

    .line 247
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 248
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 251
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->getAlternateValue(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 255
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    if-ne p0, v0, :cond_3

    instance-of p0, p1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz p0, :cond_3

    .line 256
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    return-object p1
.end method

.method static getComponentsPerPixel(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 175
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 177
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    .line 179
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    if-eqz p1, :cond_6

    .line 183
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-nez v1, :cond_4

    .line 185
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 187
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->getComponentsPerPixel(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p0

    return p0

    .line 190
    :cond_4
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 193
    :cond_5
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 194
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p0

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p0

    return p0

    .line 199
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;

    const-string v0, "Unexpected ColorSpace: {0}."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0
.end method

.method private static imageColorSpaceIsKnown(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 2

    .line 388
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 389
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private static inlineImageStreamBytesAreComplete([BLcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 3

    .line 407
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/filters/FilterHandlers;->getDefaultFilterHandlers()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 408
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->JBIG2Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/filters/DoNothingFilter;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/filters/DoNothingFilter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeStrictFilter;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/filters/FlateDecodeStrictFilter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->parseDictionary(Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 162
    invoke-static {v0, p1, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->parseSamples(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;)[B

    move-result-object p0

    .line 163
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 164
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object p1
.end method

.method private static parseDictionary(Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "ID"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 216
    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v3

    .line 220
    :goto_1
    invoke-static {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->getAlternateValue(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->getTokeniser()Lcom/itextpdf/io/source/PdfTokenizer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result p0

    .line 224
    invoke-static {p0}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 225
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;

    const-string v1, "Unexpected character {0} found after ID in inline image."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0
.end method

.method private static parseSamples(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->imageColorSpaceIsKnown(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->parseUnfilteredSamples(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;)[B

    move-result-object p0

    return-object p0

    .line 357
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 360
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->getTokeniser()Lcom/itextpdf/io/source/PdfTokenizer;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 361
    :goto_1
    invoke-virtual {p2}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x45

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 364
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->EI:[B

    invoke-virtual {p1, v2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v1, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v4, :cond_2

    const/16 v4, 0x49

    if-ne v2, v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    .line 371
    invoke-static {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 373
    invoke-static {v3, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->inlineImageStreamBytesAreComplete([BLcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 378
    :cond_3
    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->EI:[B

    invoke-virtual {p1, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 379
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 384
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;

    const-string p1, "Cannot find image data or EI."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseUnfilteredSamples(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 300
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 302
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->computeBytesPerRow(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    mul-int/2addr p0, p1

    .line 303
    new-array p1, p0, [B

    .line 304
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->getTokeniser()Lcom/itextpdf/io/source/PdfTokenizer;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v1

    .line 311
    invoke-static {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    int-to-byte v1, v1

    .line 313
    aput-byte v1, p1, v3

    const/4 v3, 0x1

    :cond_1
    :goto_0
    if-ge v3, p0, :cond_3

    .line 317
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    int-to-byte v1, v1

    .line 322
    aput-byte v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;

    const-string p1, "End of content stream reached before end of image data."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_3
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 328
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 330
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;

    const-string p1, "Operator EI not found after the end of image data."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-object p1

    .line 298
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dictionary contains filters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
