.class public Lcom/itextpdf/kernel/pdf/canvas/parser/PdfDocumentContentParser;
.super Ljava/lang/Object;
.source "PdfDocumentContentParser.java"


# instance fields
.field private final pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfDocumentContentParser;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method


# virtual methods
.method public processContent(ILcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;",
            ">(ITE;)TE;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfDocumentContentParser;->processContent(ILcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;

    move-result-object p1

    return-object p1
.end method

.method public processContent(ILcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;",
            ">(ITE;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/IContentOperator;",
            ">;)TE;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;

    invoke-direct {v0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/listener/IEventListener;Ljava/util/Map;)V

    .line 77
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfDocumentContentParser;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/PdfCanvasProcessor;->processPageContent(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-object p2
.end method
