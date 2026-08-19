.class Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;
.super Ljava/lang/Object;
.source "PdfCanvasProcessor.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaintPathOperator"
.end annotation


# instance fields
.field private close:Z

.field private operation:I

.field private rule:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;->operation:I

    .line 1603
    iput p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;->rule:I

    .line 1604
    iput-boolean p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;->close:Z

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;",
            "Lcom/itextpdf/kernel/pdf/PdfLiteral;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 1611
    iget-boolean p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;->close:Z

    if-eqz p2, :cond_0

    .line 1612
    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->currentPath:Lcom/itextpdf/kernel/geom/Path;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Path;->closeSubpath()V

    .line 1615
    :cond_0
    iget p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;->operation:I

    iget p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$PaintPathOperator;->rule:I

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->paintPath(II)V

    return-void
.end method
