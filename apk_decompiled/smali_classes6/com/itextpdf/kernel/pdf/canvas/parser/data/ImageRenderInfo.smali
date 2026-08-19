.class public Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;
.super Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;
.source "ImageRenderInfo.java"


# instance fields
.field private final canvasTagHierarchy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation
.end field

.field private final colorSpaceDictionary:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field private final ctm:Lcom/itextpdf/kernel/geom/Matrix;

.field private final image:Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

.field private final isInline:Z

.field private final resourceName:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Ljava/util/Stack;Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/geom/Matrix;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfDictionary;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;",
            "Lcom/itextpdf/kernel/geom/Matrix;",
            "Lcom/itextpdf/kernel/pdf/PdfStream;",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Z)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    .line 99
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    .line 100
    iput-object p5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->resourceName:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 101
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    .line 102
    new-instance p1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {p1, p4}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 103
    iput-object p6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 104
    iput-boolean p7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->isInline:Z

    return-void
.end method


# virtual methods
.method public getArea()F
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Matrix;->getDeterminant()F

    move-result v0

    return v0
.end method

.method public getCanvasTagHierarchy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    return-object v0
.end method

.method public getColorSpaceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->colorSpaceDictionary:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->image:Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    return-object v0
.end method

.method public getImageCtm()Lcom/itextpdf/kernel/geom/Matrix;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    return-object v0
.end method

.method public getImageResourceName()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->resourceName:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getMcid()I
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 195
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->hasMcid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getMcid()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getStartPoint()Lcom/itextpdf/kernel/geom/Vector;
    .locals 3

    .line 138
    new-instance v0, Lcom/itextpdf/kernel/geom/Vector;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/itextpdf/kernel/geom/Vector;-><init>(FFF)V

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->ctm:Lcom/itextpdf/kernel/geom/Matrix;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/geom/Vector;->cross(Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Vector;

    move-result-object v0

    return-object v0
.end method

.method public hasMcid(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->hasMcid(IZ)Z

    move-result p1

    return p1
.end method

.method public hasMcid(IZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 223
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 224
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->getMcid()I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 228
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->canvasTagHierarchy:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    .line 229
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->hasMcid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getMcid()I

    move-result v2

    if-ne v2, p1, :cond_2

    return v0

    :cond_3
    return v1
.end method

.method public isInline()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/ImageRenderInfo;->isInline:Z

    return v0
.end method
