.class Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;
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
    name = "TextSetTextMatrixOperator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$1;)V
    .locals 0

    .line 738
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$TextSetTextMatrixOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/pdf/PdfLiteral;Ljava/util/List;)V
    .locals 7
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

    const/4 p2, 0x0

    .line 743
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    const/4 p2, 0x1

    .line 744
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    const/4 p2, 0x2

    .line 745
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    const/4 p2, 0x3

    .line 746
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v4

    const/4 p2, 0x4

    .line 747
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v5

    const/4 p2, 0x5

    .line 748
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v6

    .line 750
    new-instance p2, Lcom/itextpdf/kernel/geom/Matrix;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/geom/Matrix;-><init>(FFFFFF)V

    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->access$4902(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    .line 751
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->access$4900(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;)Lcom/itextpdf/kernel/geom/Matrix;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->access$5002(Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;Lcom/itextpdf/kernel/geom/Matrix;)Lcom/itextpdf/kernel/geom/Matrix;

    return-void
.end method
