.class public Lcom/itextpdf/layout/renderer/ListRenderer;
.super Lcom/itextpdf/layout/renderer/BlockRenderer;
.source "ListRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/renderer/ListRenderer$ConstantFontTextRenderer;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/element/List;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;-><init>(Lcom/itextpdf/layout/element/IElement;)V

    return-void
.end method

.method private correctListSplitting(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 11

    .line 277
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 v0, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, p3, :cond_1

    .line 280
    new-instance p3, Lcom/itextpdf/layout/layout/LayoutResult;

    if-nez p2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    move-object v4, p3

    move-object v6, p4

    move-object v7, p1

    move-object v8, p2

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object p3

    .line 286
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 288
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/renderer/ListRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/itextpdf/layout/renderer/ListRenderer;

    const/16 v4, 0x1a

    .line 289
    invoke-virtual {v9, v4}, Lcom/itextpdf/layout/renderer/ListRenderer;->deleteOwnProperty(I)V

    .line 291
    iget-object v4, v9, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    move-object v5, v0

    check-cast v5, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    .line 292
    invoke-virtual {v5, v2}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v2, v9, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    .line 294
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    .line 297
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    add-int/2addr p3, v3

    .line 298
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4, p3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 301
    invoke-interface {p3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 304
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_2

    .line 305
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/ListRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {p3}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {p3}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 307
    invoke-virtual {v9}, Lcom/itextpdf/layout/renderer/ListRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 308
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 307
    invoke-interface {p3, v1, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    goto :goto_1

    .line 310
    :cond_2
    iget-object p3, v9, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    if-eqz p2, :cond_3

    .line 314
    iget-object p3, v9, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    :cond_3
    iget-object p2, v9, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_4

    .line 318
    new-instance p2, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v6, 0x2

    move-object v5, p2

    move-object v7, p4

    move-object v8, p1

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object p2

    .line 320
    :cond_4
    new-instance p1, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    move-object v0, p1

    move-object v2, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object p1
.end method

.method private createListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 4

    const/16 v0, 0x25

    .line 163
    invoke-static {p2, p0, v0}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lcom/itextpdf/layout/element/Text;

    if-eqz v1, :cond_0

    .line 165
    new-instance p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    check-cast v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {p1, v0}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/ListRenderer;->surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/layout/element/Image;

    if-eqz v1, :cond_1

    .line 167
    new-instance p1, Lcom/itextpdf/layout/renderer/ImageRenderer;

    check-cast v0, Lcom/itextpdf/layout/element/Image;

    invoke-direct {p1, v0}, Lcom/itextpdf/layout/renderer/ImageRenderer;-><init>(Lcom/itextpdf/layout/element/Image;)V

    return-object p1

    .line 168
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eqz v1, :cond_7

    .line 169
    check-cast v0, Lcom/itextpdf/layout/properties/ListNumberingType;

    .line 171
    sget-object v1, Lcom/itextpdf/layout/renderer/ListRenderer$1;->$SwitchMap$com$itextpdf$layout$properties$ListNumberingType:[I

    invoke-virtual {v0}, Lcom/itextpdf/layout/properties/ListNumberingType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 209
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    add-int/lit16 p1, p1, 0xc9

    int-to-char p1, p1

    .line 206
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    add-int/lit16 p1, p1, 0xbf

    int-to-char p1, p1

    .line 203
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    add-int/lit16 p1, p1, 0xb5

    int-to-char p1, p1

    .line 200
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    add-int/lit16 p1, p1, 0xab

    int-to-char p1, p1

    .line 197
    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->charToString(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 194
    :pswitch_4
    invoke-static {p1, v2, v2}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->toGreekAlphabetNumber(IZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x0

    .line 191
    invoke-static {p1, v1, v2}, Lcom/itextpdf/kernel/numbering/GreekAlphabetNumbering;->toGreekAlphabetNumber(IZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 188
    :pswitch_6
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberUpperCase(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 185
    :pswitch_7
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberLowerCase(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 182
    :pswitch_8
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanUpperCase(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 179
    :pswitch_9
    invoke-static {p1}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanLowerCase(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 176
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    if-ge p1, v2, :cond_2

    const-string v2, "0"

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 173
    :pswitch_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    :goto_1
    new-instance v1, Lcom/itextpdf/layout/element/Text;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x29

    invoke-static {p2, p0, v3}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x2a

    invoke-static {p2, p0, v2}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    .line 216
    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->GREEK_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq v0, p1, :cond_4

    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->GREEK_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq v0, p1, :cond_4

    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_1:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq v0, p1, :cond_4

    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_2:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq v0, p1, :cond_4

    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_3:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq v0, p1, :cond_4

    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->ZAPF_DINGBATS_4:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-ne v0, p1, :cond_3

    goto :goto_2

    .line 229
    :cond_3
    new-instance p1, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {p1, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    goto :goto_5

    .line 220
    :cond_4
    :goto_2
    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->GREEK_LOWER:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-eq v0, p1, :cond_6

    sget-object p1, Lcom/itextpdf/layout/properties/ListNumberingType;->GREEK_UPPER:Lcom/itextpdf/layout/properties/ListNumberingType;

    if-ne v0, p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, "ZapfDingbats"

    goto :goto_4

    :cond_6
    :goto_3
    const-string p1, "Symbol"

    .line 223
    :goto_4
    new-instance p2, Lcom/itextpdf/layout/renderer/ListRenderer$ConstantFontTextRenderer;

    invoke-direct {p2, v1, p1}, Lcom/itextpdf/layout/renderer/ListRenderer$ConstantFontTextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;Ljava/lang/String;)V

    .line 225
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    const/16 v0, 0x14

    invoke-interface {p2, v0, p1}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object p1, p2

    .line 231
    :goto_5
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/ListRenderer;->surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object p1

    return-object p1

    .line 232
    :cond_7
    instance-of v1, v0, Lcom/itextpdf/layout/properties/IListSymbolFactory;

    if-eqz v1, :cond_8

    .line 233
    check-cast v0, Lcom/itextpdf/layout/properties/IListSymbolFactory;

    invoke-interface {v0, p1, p0, p2}, Lcom/itextpdf/layout/properties/IListSymbolFactory;->createSymbol(ILcom/itextpdf/layout/IPropertyContainer;Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/element/IElement;

    move-result-object p1

    invoke-interface {p1}, Lcom/itextpdf/layout/element/IElement;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/ListRenderer;->surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;

    move-result-object p1

    return-object p1

    :cond_8
    if-nez v0, :cond_9

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-interface {p0, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private initializeListSymbols(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 16

    move-object/from16 v6, p0

    const/16 v0, 0x28

    .line 325
    invoke-virtual {v6, v0}, Lcom/itextpdf/layout/renderer/ListRenderer;->hasOwnProperty(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x24

    const/4 v3, 0x1

    .line 327
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Lcom/itextpdf/layout/renderer/ListRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    .line 328
    :goto_0
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x7

    if-ge v5, v7, :cond_6

    .line 329
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v7, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 330
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/IRenderer;

    const/16 v9, 0x78

    invoke-interface {v7, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v2, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    .line 331
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v2, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 333
    :cond_0
    iget-object v7, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-virtual {v6, v2, v7}, Lcom/itextpdf/layout/renderer/ListRenderer;->makeListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 334
    sget-object v9, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    .line 335
    invoke-virtual {v6, v8}, Lcom/itextpdf/layout/renderer/ListRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 336
    sget-object v9, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    invoke-interface {v7, v8, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_1
    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 341
    iget-object v8, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v7, v8}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-object/from16 v9, p1

    .line 342
    invoke-interface {v7, v9}, Lcom/itextpdf/layout/renderer/IRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v8

    .line 343
    invoke-interface {v7, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    goto :goto_1

    :cond_2
    move-object/from16 v9, p1

    move-object v8, v1

    .line 345
    :goto_1
    iget-object v10, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v10, v1}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 346
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v11, 0x1a

    invoke-virtual {v6, v11}, Lcom/itextpdf/layout/renderer/ListRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v8, :cond_3

    .line 348
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v11

    if-eq v11, v3, :cond_3

    move v11, v3

    goto :goto_2

    :cond_3
    move v11, v4

    :goto_2
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    move-object v7, v1

    .line 353
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_5

    if-nez v10, :cond_5

    .line 355
    new-instance v7, Lcom/itextpdf/layout/layout/LayoutResult;

    const/4 v3, 0x0

    .line 356
    invoke-virtual {v8}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v5

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v0, v7

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    move v7, v2

    move v5, v4

    .line 361
    :goto_3
    iget-object v9, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x53

    if-ge v5, v9, :cond_8

    .line 362
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v9, :cond_7

    .line 364
    iget-object v11, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 365
    invoke-static {v11, v6, v10}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/properties/ListSymbolPosition;

    sget-object v11, Lcom/itextpdf/layout/properties/ListSymbolPosition;->INSIDE:Lcom/itextpdf/layout/properties/ListSymbolPosition;

    if-eq v10, v11, :cond_7

    .line 368
    invoke-interface {v9}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/layout/layout/LayoutArea;->getBBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v9

    .line 367
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const/16 v5, 0x27

    .line 373
    invoke-virtual {v6, v5}, Lcom/itextpdf/layout/renderer/ListRenderer;->getPropertyAsFloat(I)Ljava/lang/Float;

    move-result-object v5

    .line 375
    iget-object v9, v6, Lcom/itextpdf/layout/renderer/ListRenderer;->childRenderers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 376
    invoke-interface {v11, v6}, Lcom/itextpdf/layout/renderer/IRenderer;->setParent(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    .line 379
    sget-object v12, Lcom/itextpdf/layout/properties/BaseDirection;->RIGHT_TO_LEFT:Lcom/itextpdf/layout/properties/BaseDirection;

    .line 380
    invoke-interface {v11, v8}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_9

    const/16 v12, 0x2d

    goto :goto_5

    :cond_9
    const/16 v12, 0x2c

    .line 382
    :goto_5
    invoke-interface {v11, v12}, Lcom/itextpdf/layout/renderer/IRenderer;->deleteOwnProperty(I)V

    .line 384
    invoke-static {v2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/properties/UnitValue;

    .line 385
    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->isPointValue()Z

    move-result v14

    if-nez v14, :cond_a

    .line 386
    const-class v14, Lcom/itextpdf/layout/renderer/ListRenderer;

    invoke-static {v14}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v14

    .line 389
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    .line 387
    const-string v2, "Property {0} in percents is not supported"

    invoke-static {v2, v15}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 391
    :cond_a
    invoke-virtual {v13}, Lcom/itextpdf/layout/properties/UnitValue;->getValue()F

    move-result v2

    .line 392
    invoke-static {v11, v6, v10}, Lcom/itextpdf/layout/renderer/ListRenderer;->getListItemOrListProperty(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/layout/properties/ListSymbolPosition;

    sget-object v14, Lcom/itextpdf/layout/properties/ListSymbolPosition;->DEFAULT:Lcom/itextpdf/layout/properties/ListSymbolPosition;

    if-ne v13, v14, :cond_c

    if-eqz v5, :cond_b

    .line 394
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v13

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    :goto_6
    add-float/2addr v13, v7

    add-float/2addr v2, v13

    .line 396
    :cond_c
    invoke-static {v2}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object v2

    invoke-interface {v11, v12, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x1

    .line 398
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 399
    check-cast v11, Lcom/itextpdf/layout/renderer/ListItemRenderer;

    invoke-virtual {v11, v4, v7}, Lcom/itextpdf/layout/renderer/ListItemRenderer;->addSymbolRenderer(Lcom/itextpdf/layout/renderer/IRenderer;F)V

    if-eqz v4, :cond_e

    const/16 v11, 0x6c

    .line 401
    invoke-virtual {v6, v11}, Lcom/itextpdf/layout/renderer/ListRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v11, :cond_e

    .line 403
    instance-of v12, v4, Lcom/itextpdf/layout/renderer/LineRenderer;

    const-string v13, "Lbl"

    if-eqz v12, :cond_d

    .line 404
    invoke-interface {v4}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/IPropertyContainer;

    invoke-virtual {v11, v4, v13}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->setRoleHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/String;)V

    goto :goto_7

    .line 406
    :cond_d
    invoke-virtual {v11, v4, v13}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->setRoleHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/String;)V

    :cond_e
    :goto_7
    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_f
    return-object v1
.end method

.method private surroundTextBullet(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/LineRenderer;
    .locals 4

    .line 245
    new-instance v0, Lcom/itextpdf/layout/renderer/LineRenderer;

    invoke-direct {v0}, Lcom/itextpdf/layout/renderer/LineRenderer;-><init>()V

    .line 246
    new-instance v1, Lcom/itextpdf/layout/element/Text;

    const-string v2, "\u200d"

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Lcom/itextpdf/layout/element/Text;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v2

    const-string v3, "Artifact"

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 248
    new-instance v2, Lcom/itextpdf/layout/renderer/TextRenderer;

    invoke-direct {v2, v1}, Lcom/itextpdf/layout/renderer/TextRenderer;-><init>(Lcom/itextpdf/layout/element/Text;)V

    .line 249
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 250
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    .line 251
    invoke-virtual {v0, v2}, Lcom/itextpdf/layout/renderer/LineRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-object v0
.end method


# virtual methods
.method protected createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createOverflowRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    const/16 v0, 0x28

    .line 136
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    return-object p1
.end method

.method protected createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;
    .locals 2

    .line 126
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->createSplitRenderer(I)Lcom/itextpdf/layout/renderer/AbstractRenderer;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/ListRenderer;->getOwnProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->addAllProperties(Ljava/util/Map;)V

    const/16 v0, 0x28

    .line 128
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/layout/renderer/AbstractRenderer;->setProperty(ILjava/lang/Object;)V

    return-object p1
.end method

.method public getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;
    .locals 5

    .line 142
    new-instance v0, Lcom/itextpdf/layout/layout/LayoutContext;

    new-instance v1, Lcom/itextpdf/layout/layout/LayoutArea;

    new-instance v2, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-static {}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->getInfWidth()F

    move-result v3

    const v4, 0x49742400    # 1000000.0f

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/renderer/ListRenderer;->initializeListSymbols(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidthUtils;->countDefaultMinMaxWidth(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/layout/renderer/BlockRenderer;->getMinMaxWidth()Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    move-result-object v0

    return-object v0
.end method

.method public getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 120
    const-class v0, Lcom/itextpdf/layout/renderer/ListRenderer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;->logWarningIfGetNextRendererNotOverridden(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 121
    new-instance v0, Lcom/itextpdf/layout/renderer/ListRenderer;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/ListRenderer;->modelElement:Lcom/itextpdf/layout/IPropertyContainer;

    check-cast v1, Lcom/itextpdf/layout/element/List;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;-><init>(Lcom/itextpdf/layout/element/List;)V

    return-object v0
.end method

.method public layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 3

    .line 91
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/ListRenderer;->initializeListSymbols(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/layout/renderer/BlockRenderer;->layout(Lcom/itextpdf/layout/layout/LayoutContext;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    .line 97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/renderer/ListRenderer;->getPropertyAsBoolean(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p0, v1, v0, p1}, Lcom/itextpdf/layout/renderer/ListRenderer;->correctListSplitting(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 100
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itextpdf/layout/layout/LayoutResult;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/itextpdf/layout/renderer/ListRenderer;->correctListSplitting(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/layout/LayoutArea;)Lcom/itextpdf/layout/layout/LayoutResult;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected makeListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/renderer/ListRenderer;->createListSymbolRenderer(ILcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 153
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/16 v0, 0x4a

    invoke-interface {p1, v0, p2}, Lcom/itextpdf/layout/renderer/IRenderer;->setProperty(ILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method
