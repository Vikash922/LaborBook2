.class final Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;
.super Ljava/lang/Object;
.source "PdfSplitter.java"

# interfaces
.implements Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/PdfSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplitReadyListener"
.end annotation


# instance fields
.field private splitDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;)V"
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;->splitDocuments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public documentReady(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/PageRange;)V
    .locals 0

    .line 419
    iget-object p2, p0, Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;->splitDocuments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
