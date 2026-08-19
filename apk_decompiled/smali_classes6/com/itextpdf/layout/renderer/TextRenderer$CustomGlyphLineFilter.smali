.class final Lcom/itextpdf/layout/renderer/TextRenderer$CustomGlyphLineFilter;
.super Ljava/lang/Object;
.source "TextRenderer.java"

# interfaces
.implements Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/TextRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CustomGlyphLineFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/layout/renderer/TextRenderer$1;)V
    .locals 0

    .line 1874
    invoke-direct {p0}, Lcom/itextpdf/layout/renderer/TextRenderer$CustomGlyphLineFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 0

    .line 1877
    invoke-static {p1}, Lcom/itextpdf/layout/renderer/TextRenderer;->access$100(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
