.class public abstract Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareFilter;
.super Ljava/lang/Object;
.source "MemoryLimitsAwareFilter.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/io/ByteArrayOutputStream;
    .locals 2

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    .line 71
    iget-boolean v1, p1, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->getMaxSizeOfSingleDecompressedPdfStream()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->setMaxStreamSize(I)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;

    :cond_1
    return-object v0
.end method
