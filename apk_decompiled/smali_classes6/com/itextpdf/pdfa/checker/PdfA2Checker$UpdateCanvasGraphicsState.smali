.class final Lcom/itextpdf/pdfa/checker/PdfA2Checker$UpdateCanvasGraphicsState;
.super Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;
.source "PdfA2Checker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/pdfa/checker/PdfA2Checker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateCanvasGraphicsState"
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 1102
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;-><init>()V

    .line 1103
    new-instance v0, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/pdfa/checker/PdfA2Checker$UpdateCanvasGraphicsState;->updateFromExtGState(Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;)V

    return-void
.end method
