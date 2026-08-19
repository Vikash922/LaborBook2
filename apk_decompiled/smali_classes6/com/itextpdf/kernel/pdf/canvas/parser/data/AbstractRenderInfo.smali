.class public Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;
.super Ljava/lang/Object;
.source "AbstractRenderInfo.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/data/IEventData;


# instance fields
.field private graphicsStateIsPreserved:Z

.field protected gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    return-void
.end method


# virtual methods
.method protected checkGraphicsState()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Graphics state is always deleted after event dispatching. If you want to preserve it in renderer info, use preserveGraphicsState method after receiving renderer info."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGraphicsState()Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->checkGraphicsState()V

    .line 60
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->graphicsStateIsPreserved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    :goto_0
    return-object v0
.end method

.method public isGraphicsStatePreserved()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->graphicsStateIsPreserved:Z

    return v0
.end method

.method public preserveGraphicsState()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->checkGraphicsState()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->graphicsStateIsPreserved:Z

    .line 70
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    return-void
.end method

.method public releaseGraphicsState()V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->graphicsStateIsPreserved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/data/AbstractRenderInfo;->gs:Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;

    :cond_0
    return-void
.end method
