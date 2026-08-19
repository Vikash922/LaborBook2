.class public Lcom/itextpdf/kernel/utils/PdfSplitter;
.super Ljava/lang/Object;
.source "PdfSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;,
        Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;
    }
.end annotation


# instance fields
.field private metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

.field private pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private preserveOutlines:Z

.field private preserveTagged:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->preserveTagged:Z

    .line 81
    iput-boolean p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->preserveOutlines:Z

    return-void

    .line 77
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot split document that is being written."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createPdfDocument(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 3

    .line 261
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/utils/PdfSplitter;->getNextPdfWriter(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object p1

    new-instance v1, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 262
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->preserveTagged:Z

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setTagged()Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->preserveOutlines:Z

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->initializeOutlines()V

    :cond_1
    return-object v0
.end method

.method private getAbsoluteTreeNextOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 5

    .line 359
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getAllChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 364
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 370
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/PdfSplitter;->getAbsoluteTreeNextOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method private getNextRange(IIJ)Lcom/itextpdf/kernel/utils/PageRange;
    .locals 10

    .line 377
    new-instance v0, Lcom/itextpdf/kernel/utils/PdfResourceCounter;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/utils/PdfResourceCounter;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 378
    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/PdfResourceCounter;->getResources()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 380
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/utils/PdfResourceCounter;->getLength(Ljava/util/Map;)J

    move-result-wide v2

    const/4 v0, 0x0

    move v4, p1

    .line 385
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v5

    .line 386
    new-instance v7, Lcom/itextpdf/kernel/utils/PdfResourceCounter;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/utils/PdfResourceCounter;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 387
    invoke-virtual {v7, v1}, Lcom/itextpdf/kernel/utils/PdfResourceCounter;->getLength(Ljava/util/Map;)J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 388
    invoke-virtual {v7}, Lcom/itextpdf/kernel/utils/PdfResourceCounter;->getResources()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 390
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/itextpdf/kernel/utils/PdfSplitter;->xrefLength(I)J

    move-result-wide v7

    add-long/2addr v7, v2

    cmp-long v5, v7, p3

    const/4 v7, 0x1

    if-lez v5, :cond_0

    move v0, v7

    :cond_0
    if-gt v6, p2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    if-eq v4, p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    .line 402
    :goto_2
    new-instance p2, Lcom/itextpdf/kernel/utils/PageRange;

    invoke-direct {p2}, Lcom/itextpdf/kernel/utils/PageRange;-><init>()V

    sub-int/2addr v4, v7

    invoke-virtual {p2, p1, v4}, Lcom/itextpdf/kernel/utils/PageRange;->addPageSequence(II)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object p1

    return-object p1
.end method

.method private getPageByOutline(ILcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    :goto_0
    if-gt p1, v0, :cond_2

    .line 339
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    const/4 v2, 0x0

    .line 340
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getOutlines(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 342
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 343
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private splitByOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 12

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/utils/PdfSplitter;->createPdfDocument(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    move v6, v3

    move v7, v6

    move v5, v4

    :goto_0
    if-gt v5, v2, :cond_3

    .line 306
    iget-object v8, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    const/4 v9, 0x0

    .line 307
    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfPage;->getOutlines(Z)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 309
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 310
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 311
    iget-object v6, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v6

    .line 312
    invoke-direct {p0, v10}, Lcom/itextpdf/kernel/utils/PdfSplitter;->getAbsoluteTreeNextOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 314
    iget-object v8, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0, v5, v7}, Lcom/itextpdf/kernel/utils/PdfSplitter;->getPageByOutline(ILcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    sub-int v8, v6, v7

    if-ne v8, v4, :cond_2

    move v7, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eq v6, v3, :cond_5

    if-ne v7, v3, :cond_4

    goto :goto_2

    .line 331
    :cond_4
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v6, v7, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    return-object v1

    :cond_5
    :goto_2
    return-object v0
.end method

.method private xrefLength(I)J
    .locals 4

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    const-wide/16 v2, 0x14

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public extractPageRange(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 240
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/utils/PdfSplitter;->extractPageRanges(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object p1
.end method

.method public extractPageRanges(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/utils/PageRange;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/utils/PageRange;

    .line 223
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/utils/PdfSplitter;->createPdfDocument(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    .line 224
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/utils/PageRange;->getQualifyingPageNums(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getNextPdfWriter(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1

    .line 257
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfWriter;

    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;)V

    return-object p1
.end method

.method public getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-void
.end method

.method public setPreserveOutlines(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->preserveOutlines:Z

    return-void
.end method

.method public setPreserveTagged(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->preserveTagged:Z

    return-void
.end method

.method public splitByOutlines(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/utils/PdfSplitter;->splitByOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 283
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public splitByPageCount(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v1, Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/kernel/utils/PdfSplitter;->splitByPageCount(ILcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;)V

    return-object v0
.end method

.method public splitByPageCount(ILcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;)V
    .locals 6

    const/4 v0, 0x1

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int v1, v0, p1

    add-int/lit8 v2, v1, -0x1

    .line 187
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 189
    new-instance v3, Lcom/itextpdf/kernel/utils/PageRange;

    invoke-direct {v3}, Lcom/itextpdf/kernel/utils/PageRange;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/itextpdf/kernel/utils/PageRange;->addPageSequence(II)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object v3

    .line 190
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/utils/PdfSplitter;->createPdfDocument(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    .line 191
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5, v0, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    .line 192
    invoke-interface {p2, v4, v3}, Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;->documentReady(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/PageRange;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public splitByPageNumbers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v1, Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/utils/PdfSplitter$SplitReadyListener;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/kernel/utils/PdfSplitter;->splitByPageNumbers(Ljava/util/List;Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;)V

    return-object v0
.end method

.method public splitByPageNumbers(Ljava/util/List;Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    .line 149
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    if-nez v1, :cond_1

    if-ne v3, v0, :cond_1

    goto :goto_2

    .line 154
    :cond_1
    new-instance v4, Lcom/itextpdf/kernel/utils/PageRange;

    invoke-direct {v4}, Lcom/itextpdf/kernel/utils/PageRange;-><init>()V

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v2, v5}, Lcom/itextpdf/kernel/utils/PageRange;->addPageSequence(II)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object v4

    .line 155
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/utils/PdfSplitter;->createPdfDocument(Lcom/itextpdf/kernel/utils/PageRange;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    .line 156
    iget-object v7, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v7, v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    .line 157
    invoke-interface {p2, v6, v4}, Lcom/itextpdf/kernel/utils/PdfSplitter$IDocumentReadyListener;->documentReady(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/PageRange;)V

    move v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public splitBySize(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/PdfSplitter;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-gt v3, v1, :cond_0

    .line 129
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/itextpdf/kernel/utils/PdfSplitter;->getNextRange(IIJ)Lcom/itextpdf/kernel/utils/PageRange;

    move-result-object v3

    .line 130
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/utils/PageRange;->getQualifyingPageNums(I)Ljava/util/List;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/PdfSplitter;->extractPageRanges(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
