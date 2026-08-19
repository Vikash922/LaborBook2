.class public Lcom/itextpdf/layout/element/Paragraph;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "Paragraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/Paragraph;",
        ">;"
    }
.end annotation


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/element/Text;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/element/Paragraph;->add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;-><init>(Lcom/itextpdf/layout/element/Text;)V

    return-void
.end method

.method private addTabStopsAsProperty(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/TabStop;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x45

    .line 269
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 271
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 272
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    .line 274
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/TabStop;

    .line 275
    invoke-virtual {v0}, Lcom/itextpdf/layout/element/TabStop;->getTabPosition()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    .line 101
    new-instance v0, Lcom/itextpdf/layout/element/Text;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/element/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/util/List;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2::",
            "Lcom/itextpdf/layout/element/ILeafElement;",
            ">(",
            "Ljava/util/List<",
            "TT2;>;)",
            "Lcom/itextpdf/layout/element/Paragraph;"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/element/ILeafElement;

    .line 135
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->add(Lcom/itextpdf/layout/element/ILeafElement;)Lcom/itextpdf/layout/element/Paragraph;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addTabStops(Ljava/util/List;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/TabStop;",
            ">;)",
            "Lcom/itextpdf/layout/element/Paragraph;"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/element/Paragraph;->addTabStopsAsProperty(Ljava/util/List;)V

    return-object p0
.end method

.method public varargs addTabStops([Lcom/itextpdf/layout/element/TabStop;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 0

    .line 148
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/element/Paragraph;->addTabStopsAsProperty(Ljava/util/List;)V

    return-object p0
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "P"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method public getDefaultProperty(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    const/16 v0, 0x12

    if-eq p1, v0, :cond_4

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    .line 193
    invoke-super {p0, p1}, Lcom/itextpdf/layout/element/BlockElement;->getDefaultProperty(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 p1, 0x42480000    # 50.0f

    .line 191
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1
    const/high16 p1, 0x40800000    # 4.0f

    .line 189
    invoke-static {p1}, Lcom/itextpdf/layout/properties/UnitValue;->createPointValue(F)Lcom/itextpdf/layout/properties/UnitValue;

    move-result-object p1

    return-object p1

    .line 184
    :cond_2
    new-instance p1, Lcom/itextpdf/layout/properties/Leading;

    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/layout/element/Paragraph;->childElements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/layout/element/Image;

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const v0, 0x3faccccd    # 1.35f

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lcom/itextpdf/layout/properties/Leading;-><init>(IF)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 186
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 265
    new-instance v0, Lcom/itextpdf/layout/renderer/ParagraphRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/ParagraphRenderer;-><init>(Lcom/itextpdf/layout/element/Paragraph;)V

    return-object v0
.end method

.method public removeTabStop(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    const/16 v0, 0x45

    .line 173
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/element/Paragraph;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setFirstLineIndent(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    const/16 v0, 0x12

    .line 205
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setFixedLeading(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2

    .line 239
    new-instance v0, Lcom/itextpdf/layout/properties/Leading;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/layout/properties/Leading;-><init>(IF)V

    const/16 p1, 0x21

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMultipliedLeading(F)Lcom/itextpdf/layout/element/Paragraph;
    .locals 2

    .line 251
    new-instance v0, Lcom/itextpdf/layout/properties/Leading;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/layout/properties/Leading;-><init>(IF)V

    const/16 p1, 0x21

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setOrphansControl(Lcom/itextpdf/layout/properties/ParagraphOrphansControl;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    const/16 v0, 0x79

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setWidowsControl(Lcom/itextpdf/layout/properties/ParagraphWidowsControl;)Lcom/itextpdf/layout/element/Paragraph;
    .locals 1

    const/16 v0, 0x7a

    .line 227
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Paragraph;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method
