.class synthetic Lcom/itextpdf/pdfa/PdfADocument$1;
.super Ljava/lang/Object;
.source "PdfADocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/pdfa/PdfADocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 193
    invoke-static {}, Lcom/itextpdf/kernel/pdf/IsoKey;->values()[Lcom/itextpdf/kernel/pdf/IsoKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    :try_start_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->CANVAS_STACK:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->PDF_OBJECT:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->RENDERING_INTENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->INLINE_IMAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->EXTENDED_GRAPHICS_STATE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->FILL_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->PAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->STROKE_COLOR:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->TAG_STRUCTURE_ELEMENT:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->FONT_GLYPHS:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->XREF_TABLE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/itextpdf/pdfa/PdfADocument$1;->$SwitchMap$com$itextpdf$kernel$pdf$IsoKey:[I

    sget-object v1, Lcom/itextpdf/kernel/pdf/IsoKey;->SIGNATURE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/IsoKey;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
