.class final Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;
.super Ljava/lang/Object;
.source "TextSequenceWordWrapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;,
        Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;,
        Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;,
        Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;
    }
.end annotation


# static fields
.field private static final OCCUPIED_AREA_RELAYOUT_EPS:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPossibleBreakPointsToGlyphLineBased(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 658
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 662
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 665
    invoke-static {p1, v1, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I

    move-result v1

    if-ltz v1, :cond_1

    .line 667
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static distributePossibleBreakPointsOverSequentialTextRenderers(Lcom/itextpdf/layout/renderer/LineRenderer;IILjava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p2, :cond_3

    .line 510
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 511
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    add-int v4, p1, v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 512
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-virtual {v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getText()Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->fillActualTextChunkRelatedLists(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/List;Ljava/util/List;)V

    .line 518
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    .line 519
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 520
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v2

    .line 523
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_0

    add-int/2addr v2, v9

    move v1, v7

    goto :goto_2

    .line 529
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 532
    :cond_1
    :goto_2
    invoke-static {v6, v4, v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->convertPossibleBreakPointsToGlyphLineBased(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 535
    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptsWordBreakPoints(Ljava/util/List;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static fillActualTextChunkRelatedLists(Lcom/itextpdf/io/font/otf/GlyphLine;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/otf/GlyphLine;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 679
    new-instance v0, Lcom/itextpdf/io/font/otf/ActualTextIterator;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;)V

    const/4 v1, 0x0

    move v2, v1

    .line 682
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 683
    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/ActualTextIterator;->next()Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;

    move-result-object v3

    .line 685
    iget-object v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 686
    iget-object v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->actualText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    .line 689
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget v2, v3, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 693
    :cond_1
    iget v4, v3, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->start:I

    :goto_1
    iget v5, v3, Lcom/itextpdf/io/font/otf/GlyphLine$GlyphLinePart;->end:I

    if-ge v4, v5, :cond_0

    .line 694
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v5

    if-eqz v5, :cond_2

    .line 695
    array-length v5, v5

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    add-int/2addr v2, v5

    .line 698
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    .line 699
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method static getCurWidthRelayoutedTextSequenceDecrement(IILjava/util/Map;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    if-eq p0, p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-lt p0, p1, :cond_1

    .line 596
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 597
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getIndexAndLayoutResultOfTheLastTextRendererContainingSpecialScripts(Lcom/itextpdf/layout/renderer/LineRenderer;ILjava/util/Map;ZZ)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;ZZ)",
            "Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    .line 290
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ltz v4, :cond_c

    .line 294
    iget-object v10, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eq v4, v1, :cond_0

    .line 296
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->length()I

    move-result v5

    goto :goto_2

    .line 297
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 298
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 299
    iget-object v12, v11, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 300
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/TextRenderer;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 301
    invoke-virtual {v11}, Lcom/itextpdf/layout/renderer/TextRenderer;->length()I

    move-result v5

    .line 302
    :goto_1
    iget v11, v12, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/2addr v11, v6

    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v13

    if-ge v11, v13, :cond_1

    iget v11, v12, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    add-int/2addr v11, v6

    .line 303
    invoke-virtual {v12, v11}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/io/util/TextUtil;->isWhitespace(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v5, :cond_4

    .line 312
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->getSpecialScriptsWordBreakPoints()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 313
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_4

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v12, v8, :cond_4

    .line 315
    invoke-virtual {v10}, Lcom/itextpdf/layout/renderer/TextRenderer;->getSpecialScriptsWordBreakPoints()Ljava/util/List;

    move-result-object v12

    iget-object v13, v10, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v13, v13, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v13, v5

    .line 314
    invoke-static {v12, v13, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->findPossibleBreaksSplitPosition(Ljava/util/List;IZ)I

    move-result v12

    if-le v12, v8, :cond_4

    .line 318
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v6

    .line 319
    iget-object v10, v10, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v10, v10, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-eq v1, v10, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    move v10, v6

    move v6, v5

    move-object v5, v9

    move v14, v4

    move v4, v1

    move v1, v14

    goto :goto_6

    .line 330
    :cond_4
    invoke-static {p0, v4}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getSpecialScriptsContainingSequenceStatus(Lcom/itextpdf/layout/renderer/LineRenderer;I)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;

    move-result-object v10

    .line 337
    sget-object v11, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;->FORCED_SPLIT:Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;

    if-ne v10, v11, :cond_a

    .line 338
    iget-object v4, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 339
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v10, 0x66

    invoke-interface {v4, v10}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    .line 341
    sget-object v10, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    if-eq v4, v10, :cond_5

    sget-object v10, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->BREAK_WORD:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    if-ne v4, v10, :cond_6

    .line 343
    :cond_5
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    if-ne v4, v7, :cond_8

    :cond_6
    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    return-object v9

    .line 345
    :cond_8
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v4

    if-eq v4, v7, :cond_9

    move-object v4, v2

    goto :goto_4

    :cond_9
    move-object v4, v9

    :goto_4
    move v10, v6

    move v6, v5

    move-object v5, v4

    move v4, v3

    goto :goto_6

    .line 357
    :cond_a
    sget-object v11, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;->MOVE_SEQUENCE_CONTAINING_SPECIAL_SCRIPTS_ON_NEXT_LINE:Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;

    if-ne v10, v11, :cond_b

    move v1, v4

    move v10, v6

    move v4, v3

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_c
    move v4, v3

    move v10, v6

    :goto_5
    move v6, v5

    move-object v5, v9

    :goto_6
    if-nez v5, :cond_f

    .line 367
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 368
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v3, :cond_e

    sub-int/2addr v6, v10

    .line 371
    iget-object v3, v0, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v3, v3, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    add-int/2addr v6, v3

    if-eq v6, v4, :cond_d

    .line 375
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    const v5, 0x38d1b717    # 1.0E-4f

    .line 377
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v3

    .line 378
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 379
    invoke-virtual {v0, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptFirstNotFittingIndex(I)V

    .line 386
    new-instance v3, Lcom/itextpdf/layout/layout/LayoutContext;

    move/from16 v4, p3

    invoke-direct {v3, v2, v4}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/layout/renderer/TextRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v2

    .line 387
    invoke-virtual {v0, v8}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptFirstNotFittingIndex(I)V

    :cond_d
    move-object v5, v2

    goto :goto_7

    .line 390
    :cond_e
    new-instance v5, Lcom/itextpdf/layout/layout/TextLayoutResult;

    invoke-direct {v5, v7, v9, v9, v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 394
    :cond_f
    :goto_7
    new-instance v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;

    invoke-direct {v0, v1, v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;-><init>(ILcom/itextpdf/layout/layout/LayoutResult;)V

    return-object v0
.end method

.method public static getIndexAndLayoutResultOfTheLastTextRendererWithNoSpecialScripts(Lcom/itextpdf/layout/renderer/LineRenderer;ILjava/util/Map;ZZZ)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;ZZZ)",
            "Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;"
        }
    .end annotation

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/LayoutResult;

    .line 186
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 187
    invoke-virtual {v0}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isWordHasBeenSplit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance p0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;-><init>(ILcom/itextpdf/layout/layout/LayoutResult;)V

    return-object p0

    :cond_0
    move v0, p1

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ltz v0, :cond_8

    .line 196
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 197
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 196
    invoke-static {v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 198
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v5, 0x1

    .line 199
    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eq v0, v1, :cond_3

    .line 203
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getStatus()I

    move-result v8

    if-ne v8, v5, :cond_3

    .line 204
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isStartsWithSplitCharacterWhiteSpace()Z

    move-result v8

    if-nez v8, :cond_1

    .line 205
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isEndsWithSplitCharacter()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 206
    :cond_1
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getStatus()I

    move-result p3

    if-ne p3, v2, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v7, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 209
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-direct {v7, v2, v3, v3, p3}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto/16 :goto_1

    .line 212
    :cond_3
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isContainsPossibleBreak()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 213
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getStatus()I

    move-result v6

    if-eq v6, v2, :cond_4

    .line 214
    iget-object v6, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    iget v6, v6, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    invoke-virtual {v4, v6}, Lcom/itextpdf/layout/renderer/TextRenderer;->setIndexOfFirstCharacterToBeForcedToOverflow(I)V

    .line 215
    invoke-virtual {v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v6

    .line 216
    invoke-virtual {v6}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    const v8, 0x38d1b717    # 1.0E-4f

    .line 217
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseHeight(F)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v7

    .line 218
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/geom/Rectangle;->increaseWidth(F)Lcom/itextpdf/kernel/geom/Rectangle;

    .line 225
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutContext;

    invoke-direct {v7, v6, p3}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;Z)V

    .line 226
    invoke-virtual {v4, v7}, Lcom/itextpdf/layout/renderer/TextRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v7

    const p3, 0x7fffffff

    .line 227
    invoke-virtual {v4, p3}, Lcom/itextpdf/layout/renderer/TextRenderer;->setIndexOfFirstCharacterToBeForcedToOverflow(I)V

    .line 228
    invoke-virtual {v7}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result p3

    if-ne p3, v5, :cond_9

    .line 229
    new-instance v7, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 230
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-direct {v7, v2, v3, v3, p3}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v0, -0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_0

    .line 239
    :cond_5
    new-instance v7, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 240
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-direct {v7, v2, v3, v3, p3}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_1

    .line 244
    :cond_6
    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 245
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 246
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 247
    :cond_7
    new-instance v7, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 248
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-direct {v7, v2, v3, v3, p3}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    move-object v7, v3

    :cond_9
    :goto_2
    if-nez v7, :cond_f

    .line 256
    iget-object p3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 257
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x66

    invoke-interface {p3, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    .line 259
    sget-object v1, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->ANYWHERE:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    if-eq p3, v1, :cond_a

    sget-object v1, Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;->BREAK_WORD:Lcom/itextpdf/layout/properties/OverflowWrapPropertyValue;

    if-ne p3, v1, :cond_b

    .line 262
    :cond_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/layout/LayoutResult;

    invoke-virtual {p3}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result p3

    if-ne p3, v2, :cond_e

    :cond_b
    if-eqz p4, :cond_c

    goto :goto_3

    :cond_c
    if-eqz p5, :cond_d

    .line 267
    new-instance v7, Lcom/itextpdf/layout/layout/TextLayoutResult;

    iget-object p0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 268
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-direct {v7, v2, v3, v3, p0}, Lcom/itextpdf/layout/layout/TextLayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_4

    :cond_d
    return-object v3

    .line 265
    :cond_e
    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/itextpdf/layout/layout/LayoutResult;

    goto :goto_5

    :cond_f
    :goto_4
    move p1, v0

    :goto_5
    if-eqz v7, :cond_10

    .line 275
    new-instance p0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;

    invoke-direct {p0, p1, v7}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$LastFittingChildRendererData;-><init>(ILcom/itextpdf/layout/layout/LayoutResult;)V

    return-object p0

    :cond_10
    return-object v3
.end method

.method static getSpecialScriptsContainingSequenceStatus(Lcom/itextpdf/layout/renderer/LineRenderer;I)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    .line 563
    iget-object p0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 564
    instance-of p1, p0, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 565
    check-cast p0, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    move p1, v1

    goto :goto_0

    .line 570
    :cond_0
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/itextpdf/layout/renderer/ImageRenderer;

    if-nez p1, :cond_1

    .line 572
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isInlineBlockChild(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move p1, v0

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v1

    move p1, p0

    :goto_0
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 581
    sget-object p0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;->MOVE_SEQUENCE_CONTAINING_SPECIAL_SCRIPTS_ON_NEXT_LINE:Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;

    return-object p0

    :cond_4
    if-eqz v0, :cond_5

    .line 583
    sget-object p0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;->FORCED_SPLIT:Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;

    return-object p0

    .line 585
    :cond_5
    sget-object p0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;->MOVE_TO_PREVIOUS_TEXT_RENDERER_CONTAINING_SPECIAL_SCRIPTS:Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingSequenceStatus;

    return-object p0
.end method

.method static getSpecialScriptsContainingTextRendererSequenceInfo(Lcom/itextpdf/layout/renderer/LineRenderer;I)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;
    .locals 5

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 484
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 485
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v4}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 490
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 491
    invoke-virtual {v4, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    iget-object v4, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 493
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/TextRenderer;

    iget-object v4, v4, Lcom/itextpdf/layout/renderer/TextRenderer;->text:Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 500
    :cond_1
    new-instance p0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1, v1}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static isTextRendererAndRequiresSpecialScriptPreLayoutProcessing(Lcom/itextpdf/layout/renderer/IRenderer;)Z
    .locals 3

    .line 48
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 49
    invoke-virtual {v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->getSpecialScriptsWordBreakPoints()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static postprocessTextSequenceOverflowX(Lcom/itextpdf/layout/renderer/LineRenderer;ZILcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutResult;Z)Z
    .locals 5

    .line 448
    instance-of v0, p3, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 449
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p2, v2

    .line 451
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq p2, v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 452
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-static {v3}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    .line 453
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v2

    :goto_2
    const/16 v3, 0x67

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 456
    check-cast p3, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-virtual {p3}, Lcom/itextpdf/layout/renderer/TextRenderer;->getSpecialScriptFirstNotFittingIndex()I

    move-result v4

    if-gtz v4, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    const/4 v4, -0x1

    .line 460
    invoke-virtual {p3, v4}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptFirstNotFittingIndex(I)V

    if-eqz p5, :cond_5

    .line 462
    sget-object p3, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {p0, v3, p3}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_5
    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    .line 467
    instance-of p1, p4, Lcom/itextpdf/layout/layout/TextLayoutResult;

    if-eqz p1, :cond_6

    check-cast p4, Lcom/itextpdf/layout/layout/TextLayoutResult;

    invoke-virtual {p4}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isContainsPossibleBreak()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    :cond_8
    :goto_3
    if-eqz p5, :cond_9

    .line 472
    sget-object p1, Lcom/itextpdf/layout/properties/OverflowPropertyValue;->FIT:Lcom/itextpdf/layout/properties/OverflowPropertyValue;

    invoke-virtual {p0, v3, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_9
    move v1, v2

    :cond_a
    return v1
.end method

.method public static preprocessTextSequenceOverflowX(Lcom/itextpdf/layout/renderer/LineRenderer;ZLcom/itextpdf/layout/renderer/IRenderer;ZLcom/itextpdf/layout/properties/OverflowPropertyValue;)V
    .locals 4

    .line 415
    instance-of v0, p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v2, 0x1

    .line 416
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v0, 0x67

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 418
    check-cast p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    .line 419
    invoke-virtual {p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->getSpecialScriptsWordBreakPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 422
    invoke-virtual {p2, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->setSpecialScriptFirstNotFittingIndex(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 425
    invoke-virtual {p0, v0, p4}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    if-nez v2, :cond_3

    if-eqz p3, :cond_3

    .line 430
    invoke-virtual {p0, v0, p4}, Lcom/itextpdf/layout/renderer/LineRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static processSpecialScriptPreLayout(Lcom/itextpdf/layout/renderer/LineRenderer;I)V
    .locals 3

    .line 85
    invoke-static {p0, p1}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->getSpecialScriptsContainingTextRendererSequenceInfo(Lcom/itextpdf/layout/renderer/LineRenderer;I)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;

    move-result-object v0

    .line 86
    iget v1, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;->numberOfSequentialTextRenderers:I

    .line 87
    iget-object v2, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;->sequentialTextContent:Ljava/lang/String;

    .line 88
    iget-object v0, v0, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$SpecialScriptsContainingTextRendererSequenceInfo;->indicesOfFloating:Ljava/util/List;

    .line 89
    invoke-static {v2}, Lcom/itextpdf/layout/renderer/TypographyUtils;->getPossibleBreaks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-static {p0, p1, v1, v2, v0}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->distributePossibleBreakPointsOverSequentialTextRenderers(Lcom/itextpdf/layout/renderer/LineRenderer;IILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static resetTextSequenceIfItEnded(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLcom/itextpdf/layout/renderer/AbstractWidthHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;Z",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "I",
            "Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;",
            "Z",
            "Lcom/itextpdf/layout/renderer/AbstractWidthHandler;",
            ")V"
        }
    .end annotation

    .line 113
    instance-of v0, p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 115
    invoke-static {p2}, Lcom/itextpdf/layout/renderer/LineRenderer;->isChildFloating(Lcom/itextpdf/layout/renderer/IRenderer;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    move v1, p3

    :goto_0
    if-ltz v1, :cond_2

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 127
    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/layout/LayoutResult;

    move v0, p5

    move-object v3, p6

    move-object v4, p4

    move-object v5, p0

    .line 128
    invoke-static/range {v0 .. v5}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping;->updateMinMaxWidthOfLineRendererAfterTextRendererSequenceProcessing(ZILcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;Ljava/util/Map;)V

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method

.method private static updateMinMaxWidthOfLineRendererAfterTextRendererSequenceProcessing(ZILcom/itextpdf/layout/layout/LayoutResult;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            "Lcom/itextpdf/layout/renderer/AbstractWidthHandler;",
            "Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 612
    :cond_0
    check-cast p2, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 613
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getLeftMinWidth()F

    move-result p0

    .line 614
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_5

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 620
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/layout/TextLayoutResult;

    .line 621
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getLeftMinWidth()F

    move-result v2

    .line 622
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result v3

    .line 623
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->getRightMinWidth()F

    move-result v4

    .line 624
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 626
    invoke-virtual {v1}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isEndsWithSplitCharacter()Z

    move-result v3

    if-nez v3, :cond_3

    .line 627
    invoke-virtual {p2}, Lcom/itextpdf/layout/layout/TextLayoutResult;->isStartsWithSplitCharacterWhiteSpace()Z

    move-result p2

    if-nez p2, :cond_3

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, v4, p2

    if-lez p2, :cond_1

    add-float/2addr p0, v4

    goto :goto_1

    :cond_1
    add-float/2addr p0, v2

    .line 633
    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    if-lez p2, :cond_2

    goto :goto_2

    :cond_2
    move v2, p0

    :cond_3
    :goto_2
    move-object p2, v1

    move p0, v2

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 645
    :cond_5
    iget-boolean p1, p4, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;->anythingPlacedBeforeTextRendererSequence:Z

    if-nez p1, :cond_6

    .line 646
    iget p1, p4, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;->textIndent:F

    add-float/2addr p0, p1

    .line 647
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 651
    :cond_6
    iget p0, p4, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;->minWidthPreSequence:F

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 653
    iget-object p1, p3, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {p1, p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    return-void
.end method

.method public static updateTextRendererSequenceAscentDescent(Lcom/itextpdf/layout/renderer/LineRenderer;Ljava/util/Map;I[FLcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;)Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;I[F",
            "Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;",
            ")",
            "Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 140
    instance-of v1, v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance p4, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;

    iget v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxAscent:F

    iget v1, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxDescent:F

    iget v2, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextAscent:F

    iget p0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->maxTextDescent:F

    invoke-direct {p4, v0, v1, v2, p0}, Lcom/itextpdf/layout/renderer/LineRenderer$LineAscentDescentState;-><init>(FFFF)V

    .line 147
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p4, 0x0

    :cond_2
    :goto_0
    return-object p4
.end method

.method public static updateTextRendererSequenceMinMaxWidth(Lcom/itextpdf/layout/renderer/LineRenderer;Lcom/itextpdf/layout/renderer/AbstractWidthHandler;ILcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;ZLjava/util/Map;Ljava/util/Map;F)Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/LineRenderer;",
            "Lcom/itextpdf/layout/renderer/AbstractWidthHandler;",
            "I",
            "Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;F)",
            "Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;"
        }
    .end annotation

    .line 162
    iget-object p0, p0, Lcom/itextpdf/layout/renderer/LineRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 163
    instance-of p2, p0, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz p2, :cond_3

    .line 164
    check-cast p0, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 p2, 0x1

    .line 165
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result p6

    if-ne p6, p2, :cond_0

    move p6, p2

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 168
    :goto_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result p0

    if-nez p0, :cond_1

    .line 169
    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result p0

    if-ne p0, p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_2

    .line 171
    :goto_1
    new-instance p3, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;

    iget-object p0, p1, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    .line 172
    invoke-virtual {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result p0

    invoke-direct {p3, p0, p7, p4}, Lcom/itextpdf/layout/renderer/TextSequenceWordWrapping$MinMaxWidthOfTextRendererSequenceHelper;-><init>(FFZ)V

    :cond_2
    return-object p3

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateTextSequenceLayoutResults(Ljava/util/Map;ZLcom/itextpdf/layout/renderer/IRenderer;ILcom/itextpdf/layout/layout/LayoutResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ">;Z",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "I",
            "Lcom/itextpdf/layout/layout/LayoutResult;",
            ")V"
        }
    .end annotation

    .line 101
    instance-of v0, p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/itextpdf/layout/renderer/TextRenderer;

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p2, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;->textContainsSpecialScriptGlyphs(Z)Z

    move-result p2

    if-ne p2, p1, :cond_0

    .line 103
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
