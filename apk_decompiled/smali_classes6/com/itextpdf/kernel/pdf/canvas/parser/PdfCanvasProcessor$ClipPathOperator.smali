.class Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;
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
    name = "ClipPathOperator"
.end annotation


# instance fields
.field private rule:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;->rule:I

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

    const/4 p2, 0x1

    .line 1634
    iput-boolean p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->isClip:Z

    .line 1635
    iget p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor$ClipPathOperator;->rule:I

    iput p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->clippingRule:I

    return-void
.end method
