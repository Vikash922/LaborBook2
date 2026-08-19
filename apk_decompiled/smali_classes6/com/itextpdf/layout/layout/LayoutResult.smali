.class public Lcom/itextpdf/layout/layout/LayoutResult;
.super Ljava/lang/Object;
.source "LayoutResult.java"


# static fields
.field public static final FULL:I = 0x1

.field public static final NOTHING:I = 0x3

.field public static final PARTIAL:I = 0x2


# instance fields
.field protected areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

.field protected causeOfNothing:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

.field protected overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected status:I


# direct methods
.method public constructor <init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/layout/layout/LayoutResult;-><init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V

    return-void
.end method

.method public constructor <init>(ILcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->status:I

    .line 126
    iput-object p2, p0, Lcom/itextpdf/layout/layout/LayoutResult;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    .line 127
    iput-object p3, p0, Lcom/itextpdf/layout/layout/LayoutResult;->splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 128
    iput-object p4, p0, Lcom/itextpdf/layout/layout/LayoutResult;->overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    .line 129
    iput-object p5, p0, Lcom/itextpdf/layout/layout/LayoutResult;->causeOfNothing:Lcom/itextpdf/layout/renderer/IRenderer;

    return-void
.end method


# virtual methods
.method public getAreaBreak()Lcom/itextpdf/layout/element/AreaBreak;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    return-object v0
.end method

.method public getCauseOfNothing()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->causeOfNothing:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method public getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    return-object v0
.end method

.method public getOverflowRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method public getSplitRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/itextpdf/layout/layout/LayoutResult;->status:I

    return v0
.end method

.method public setAreaBreak(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/layout/LayoutResult;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    return-object p0
.end method

.method public setOverflowRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->overflowRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-void
.end method

.method public setSplitRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->splitRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 230
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 241
    const-string v0, "None"

    goto :goto_0

    .line 236
    :cond_0
    const-string v0, "Nothing"

    goto :goto_0

    .line 239
    :cond_1
    const-string v0, "Partial"

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "Full"

    .line 244
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LayoutResult{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaBreak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->areaBreak:Lcom/itextpdf/layout/element/AreaBreak;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", occupiedArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/layout/LayoutResult;->occupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
