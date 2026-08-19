.class public abstract Lcom/itextpdf/layout/font/FontSelectorStrategy;
.super Ljava/lang/Object;
.source "FontSelectorStrategy.java"


# instance fields
.field protected final additionalFonts:Lcom/itextpdf/layout/font/FontSet;

.field protected index:I

.field protected final provider:Lcom/itextpdf/layout/font/FontProvider;

.field protected text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->index:I

    .line 64
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->provider:Lcom/itextpdf/layout/font/FontProvider;

    .line 65
    iput-object p3, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->additionalFonts:Lcom/itextpdf/layout/font/FontSet;

    return-void
.end method


# virtual methods
.method public endOfText()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract getCurrentFont()Lcom/itextpdf/kernel/font/PdfFont;
.end method

.method protected getPdfFont(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->provider:Lcom/itextpdf/layout/font/FontProvider;

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontSelectorStrategy;->additionalFonts:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/layout/font/FontProvider;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    return-object p1
.end method

.method public abstract nextGlyphs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end method
