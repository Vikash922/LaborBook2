.class public Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;
.super Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
.source "ParserGraphicsState.java"


# instance fields
.field private clippingPath:Lcom/itextpdf/kernel/geom/Path;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    .line 80
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/geom/Path;-><init>(Lcom/itextpdf/kernel/geom/Path;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    :cond_0
    return-void
.end method

.method private transformClippingPath(Lcom/itextpdf/kernel/geom/Matrix;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/geom/ShapeTransformUtil;->transformPath(Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    return-void
.end method


# virtual methods
.method public clip(Lcom/itextpdf/kernel/geom/Path;I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/geom/Path;-><init>(Lcom/itextpdf/kernel/geom/Path;)V

    .line 110
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Path;->closeAllSubpaths()V

    .line 112
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-static {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)V

    .line 114
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->CLIP:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-static {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;Lcom/itextpdf/kernel/geom/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)V

    .line 116
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;-><init>()V

    .line 117
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->INTERSECTION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-static {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->getFillType(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    move-result-object p2

    invoke-interface {p1, v1, v0, v2, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    .line 119
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBridge;->convertToPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)Lcom/itextpdf/kernel/geom/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    :cond_1
    :goto_0
    return-void
.end method

.method public getClippingPath()Lcom/itextpdf/kernel/geom/Path;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    return-object v0
.end method

.method public setClippingPath(Lcom/itextpdf/kernel/geom/Path;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/itextpdf/kernel/geom/Path;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/geom/Path;-><init>(Lcom/itextpdf/kernel/geom/Path;)V

    .line 144
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/Path;->closeAllSubpaths()V

    .line 145
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    return-void
.end method

.method public updateCtm(Lcom/itextpdf/kernel/geom/Matrix;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;->updateCtm(Lcom/itextpdf/kernel/geom/Matrix;)V

    .line 88
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->clippingPath:Lcom/itextpdf/kernel/geom/Path;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/ParserGraphicsState;->transformClippingPath(Lcom/itextpdf/kernel/geom/Matrix;)V

    :cond_0
    return-void
.end method
