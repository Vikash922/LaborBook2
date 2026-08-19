.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;
.super Ljava/lang/Object;
.source "MetaState.java"


# static fields
.field public static final ALTERNATE:I = 0x1

.field public static final OPAQUE:I = 0x2

.field public static final TA_BASELINE:I = 0x18

.field public static final TA_BOTTOM:I = 0x8

.field public static final TA_CENTER:I = 0x6

.field public static final TA_LEFT:I = 0x0

.field public static final TA_NOUPDATECP:I = 0x0

.field public static final TA_RIGHT:I = 0x2

.field public static final TA_TOP:I = 0x0

.field public static final TA_UPDATECP:I = 0x1

.field public static final TRANSPARENT:I = 0x1

.field public static final WINDING:I = 0x2


# instance fields
.field public MetaObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;",
            ">;"
        }
    .end annotation
.end field

.field public backgroundMode:I

.field public currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

.field public currentBrush:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

.field public currentFont:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

.field public currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

.field public currentPoint:Lcom/itextpdf/kernel/geom/Point;

.field public currentTextColor:Lcom/itextpdf/kernel/colors/Color;

.field public extentWx:I

.field public extentWy:I

.field public lineJoin:I

.field public offsetWx:I

.field public offsetWy:I

.field public polyFillMode:I

.field public savedStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;",
            ">;"
        }
    .end annotation
.end field

.field public scalingX:F

.field public scalingY:F

.field public textAlign:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 116
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentTextColor:Lcom/itextpdf/kernel/colors/Color;

    const/4 v0, 0x2

    .line 121
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->backgroundMode:I

    const/4 v0, 0x1

    .line 126
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->polyFillMode:I

    .line 131
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    .line 173
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    .line 175
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 176
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    .line 177
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBrush:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    .line 178
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentFont:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->WHITE:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 116
    sget-object v0, Lcom/itextpdf/kernel/colors/ColorConstants;->BLACK:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentTextColor:Lcom/itextpdf/kernel/colors/Color;

    const/4 v0, 0x2

    .line 121
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->backgroundMode:I

    const/4 v0, 0x1

    .line 126
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->polyFillMode:I

    .line 131
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    .line 187
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setMetaState(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)V

    return-void
.end method


# virtual methods
.method public addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V
    .locals 2

    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanup(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteMetaObject(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBackgroundMode()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->backgroundMode:I

    return v0
.end method

.method public getCurrentBackgroundColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getCurrentBrush()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBrush:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    return-object v0
.end method

.method public getCurrentFont()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentFont:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    return-object v0
.end method

.method public getCurrentPen()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    return-object v0
.end method

.method public getCurrentPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    return-object v0
.end method

.method public getCurrentTextColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentTextColor:Lcom/itextpdf/kernel/colors/Color;

    return-object v0
.end method

.method public getLineNeutral()Z
    .locals 1

    .line 576
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPolyFillMode()I
    .locals 1

    .line 536
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->polyFillMode:I

    return v0
.end method

.method public getTextAlign()I
    .locals 1

    .line 522
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->textAlign:I

    return v0
.end method

.method public restoreState(ILcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 2

    if-gez p1, :cond_0

    neg-int p1, p1

    .line 320
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p1, -0x1

    if-eqz p1, :cond_2

    .line 327
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 328
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    move p1, v1

    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setMetaState(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)V

    return-void
.end method

.method public saveState(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    .line 306
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 307
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-direct {p1, p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;-><init>(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)V

    .line 308
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public selectMetaObject(ILcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 285
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentFont:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    goto/16 :goto_0

    .line 244
    :cond_2
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBrush:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    .line 245
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->getStyle()I

    move-result p1

    if-nez p1, :cond_3

    .line 247
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBrush:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object p1

    .line 248
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_9

    .line 251
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 252
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 257
    :cond_4
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    .line 258
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->getStyle()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    .line 260
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    .line 261
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setStrokeColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 262
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->getPenWidth()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingX:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWx:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineWidth(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v0, 0x0

    if-eq p1, v2, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    .line 277
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 271
    :cond_5
    const-string p1, "[9 3 3 3 3 3]0 d\n"

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    .line 268
    :cond_6
    const-string p1, "[9 6 3 6]0 d\n"

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->writeLiteral(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_7
    const/high16 p1, 0x40400000    # 3.0f

    .line 274
    invoke-virtual {p2, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_0

    :cond_8
    const/high16 p1, 0x41900000    # 18.0f

    const/high16 v1, 0x40c00000    # 6.0f

    .line 265
    invoke-virtual {p2, p1, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineDash(FFF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_9
    :goto_0
    return-void
.end method

.method public setBackgroundMode(I)V
    .locals 0

    .line 515
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->backgroundMode:I

    return-void
.end method

.method public setCurrentBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public setCurrentPoint(Lcom/itextpdf/kernel/geom/Point;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    return-void
.end method

.method public setCurrentTextColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentTextColor:Lcom/itextpdf/kernel/colors/Color;

    return-void
.end method

.method public setExtentWx(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWx:I

    return-void
.end method

.method public setExtentWy(I)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWy:I

    return-void
.end method

.method public setLineJoinPolygon(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    .line 564
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 565
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    .line 566
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineJoinStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method public setLineJoinRectangle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1

    .line 552
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 553
    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    .line 554
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineJoinStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    :cond_0
    return-void
.end method

.method public setMetaState(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)V
    .locals 1

    .line 196
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->savedStates:Ljava/util/Stack;

    .line 197
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->MetaObjects:Ljava/util/List;

    .line 198
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPoint:Lcom/itextpdf/kernel/geom/Point;

    .line 199
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentPen:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    .line 200
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBrush:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBrush:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    .line 201
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentFont:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentFont:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    .line 202
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentBackgroundColor:Lcom/itextpdf/kernel/colors/Color;

    .line 203
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentTextColor:Lcom/itextpdf/kernel/colors/Color;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->currentTextColor:Lcom/itextpdf/kernel/colors/Color;

    .line 204
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->backgroundMode:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->backgroundMode:I

    .line 205
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->polyFillMode:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->polyFillMode:I

    .line 206
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->textAlign:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->textAlign:I

    .line 207
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->lineJoin:I

    .line 208
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWx:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWx:I

    .line 209
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWy:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWy:I

    .line 210
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWx:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWx:I

    .line 211
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWy:I

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWy:I

    .line 212
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingX:F

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingX:F

    .line 213
    iget p1, p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingY:F

    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingY:F

    return-void
.end method

.method public setOffsetWx(I)V
    .locals 0

    .line 388
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWx:I

    return-void
.end method

.method public setOffsetWy(I)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWy:I

    return-void
.end method

.method public setPolyFillMode(I)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->polyFillMode:I

    return-void
.end method

.method public setScalingX(F)V
    .locals 0

    .line 370
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingX:F

    return-void
.end method

.method public setScalingY(F)V
    .locals 0

    .line 379
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingY:F

    return-void
.end method

.method public setTextAlign(I)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->textAlign:I

    return-void
.end method

.method public transformAngle(F)F
    .locals 4

    .line 426
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    neg-float p1, p1

    .line 427
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    float-to-double v2, p1

    sub-double/2addr v0, v2

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    :goto_0
    double-to-float p1, v0

    return p1
.end method

.method public transformX(I)F
    .locals 1

    int-to-float p1, p1

    .line 351
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWx:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingX:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWx:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public transformY(I)F
    .locals 1

    int-to-float p1, p1

    .line 361
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->offsetWy:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->extentWy:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->scalingY:F

    mul-float/2addr v0, p1

    return v0
.end method
