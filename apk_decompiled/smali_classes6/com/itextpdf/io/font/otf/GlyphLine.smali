.class public Lcom/itextpdf/io/font/otf/GlyphLine;
.super Ljava/lang/Object;
.source "GlyphLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;,
        Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;,
        Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;
    }
.end annotation


# instance fields
.field protected actualText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;",
            ">;"
        }
    .end annotation
.end field

.field public end:I

.field protected glyphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;"
        }
    .end annotation
.end field

.field public idx:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 107
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 108
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 109
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 110
    iget p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/font/otf/GlyphLine;II)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 122
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr p3, p2

    .line 126
    iput p3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 127
    iget p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;II)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 83
    iput p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 84
    iput p3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;",
            ">;II)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p3, p4}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;II)V

    .line 97
    iput-object p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    return-void
.end method

.method private addAllGlyphs(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)V"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 422
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 423
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeGlyph(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILcom/itextpdf/io/font/otf/Glyph;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 191
    iget-object p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 192
    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public add(Lcom/itextpdf/io/font/otf/Glyph;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public add(Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 5

    .line 211
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget-object v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget-object v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-interface {v2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 222
    :goto_1
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 223
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public copy(II)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 3

    .line 166
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>()V

    const/4 v1, 0x0

    .line 167
    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int v1, p2, p1

    .line 168
    iput v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    .line 170
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v1

    :goto_0
    iput-object p1, v0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 371
    :cond_1
    check-cast p1, Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 372
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v2, v3

    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v5, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_2

    return v1

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v2, :cond_3

    iget-object v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v4, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v2, :cond_5

    :cond_4
    return v1

    .line 378
    :cond_5
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v3, v2, :cond_e

    .line 379
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v2, v4

    .line 380
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 381
    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    if-nez v4, :cond_6

    if-nez v5, :cond_7

    :cond_6
    if-eqz v4, :cond_8

    .line 382
    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/otf/Glyph;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    return v1

    .line 385
    :cond_8
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v5, 0x0

    if-nez v4, :cond_9

    move-object v4, v5

    goto :goto_1

    :cond_9
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    .line 386
    :goto_1
    iget-object v6, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    :goto_2
    if-nez v4, :cond_b

    if-nez v5, :cond_c

    :cond_b
    if-eqz v4, :cond_d

    .line 387
    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    return v1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_e
    return v0

    :cond_f
    :goto_3
    return v1
.end method

.method public filter(Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 6

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 330
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v2, v5, :cond_3

    .line 331
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-interface {p1, v5}, Lcom/itextpdf/io/font/otf/GlyphLine$IGlyphLineFilter;->accept(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 334
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 341
    new-instance p1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p1, v0, v1, v3, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;Ljava/util/List;II)V

    return-object p1

    :cond_4
    return-object p0
.end method

.method public get(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 397
    iget v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    mul-int/lit8 v1, v0, 0x1f

    .line 398
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/2addr v1, v2

    .line 399
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 403
    iget v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    :goto_1
    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v0, v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 405
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;",
            ">;"
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/itextpdf/io/font/otf/ActualTextIterator;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    return-object v0
.end method

.method public replaceContent(Lcom/itextpdf/io/font/otf/GlyphLine;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget-object v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget-object v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    .line 246
    :goto_1
    iget v0, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 247
    iget p1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return-void
.end method

.method public set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/Glyph;

    return-object p1
.end method

.method public setActualText(IILjava/lang/String;)V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v0, 0x0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    invoke-direct {v0, p3}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;-><init>(Ljava/lang/String;)V

    :goto_1
    if-ge p1, p2, :cond_1

    .line 355
    iget-object p3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    invoke-interface {p3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setGlyphs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)V"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    return-void
.end method

.method public size()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public substituteManyToOne(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;III)V
    .locals 6

    .line 255
    new-instance v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v0}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 256
    iput-object p0, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 257
    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v1, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    .line 261
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v3

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_4

    .line 268
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 269
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v5, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/font/otf/Glyph;

    .line 270
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v5

    if-eqz v5, :cond_2

    .line 271
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 272
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 273
    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-static {v4}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 275
    :cond_3
    :goto_2
    iget v4, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    add-int/lit8 v5, v4, -0x1

    iput v5, v0, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->removeGlyph(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    new-array p2, p2, [C

    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0, p2, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 279
    invoke-virtual {p1, p4}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    .line 280
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 281
    iget-object p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget p4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {p2, p4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    return-void
.end method

.method public substituteOneToMany(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;[I)V
    .locals 6

    const/4 v0, 0x0

    .line 300
    aget v1, p2, v0

    .line 301
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    .line 302
    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 303
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    array-length v1, p2

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p2

    sub-int/2addr v4, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 307
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 308
    aget v5, p2, v4

    .line 309
    invoke-virtual {p1, v5}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 310
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    :cond_0
    iget p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr p1, v3

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->addAllGlyphs(ILjava/util/List;)V

    .line 313
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 314
    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 315
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget v4, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    new-instance v5, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicodeString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/itextpdf/io/font/otf/GlyphLine$ActualText;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 318
    iget-object p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->actualText:Ljava/util/List;

    iget v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    :cond_2
    iget p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    array-length v0, p2

    sub-int/2addr v0, v3

    add-int/2addr p1, v0

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 322
    iget p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    array-length p2, p2

    sub-int/2addr p2, v3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    :cond_3
    return-void
.end method

.method public substituteOneToOne(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/otf/Glyph;

    .line 287
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object p1

    .line 288
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object p2

    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 291
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p2

    invoke-static {p2}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 293
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result p2

    invoke-static {p2}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    .line 295
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    iget v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 155
    iget v0, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iget v1, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->toUnicodeString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnicodeString(II)Ljava/lang/String;
    .locals 3

    .line 138
    new-instance v0, Lcom/itextpdf/io/font/otf/ActualTextIterator;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;II)V

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->next()Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    move-result-object p2

    .line 142
    iget-object v1, p2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 143
    iget-object p2, p2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_1
    iget v1, p2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    :goto_1
    iget v2, p2, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    if-ge v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GlyphLine;->glyphs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicodeChars()[C

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
