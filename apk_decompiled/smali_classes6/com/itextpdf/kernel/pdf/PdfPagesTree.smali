.class Lcom/itextpdf/kernel/pdf/PdfPagesTree;
.super Ljava/lang/Object;
.source "PdfPagesTree.java"


# static fields
.field static final DEFAULT_LEAF_SIZE:I = 0xa

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private generated:Z

.field private final leafSize:I

.field private pageRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation
.end field

.field private parents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPages;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/itextpdf/kernel/pdf/PdfPages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;)V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 66
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->leafSize:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generated:Z

    .line 83
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    .line 87
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    const v3, 0x7fffffff

    invoke-direct {v1, v0, v3, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(IILcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 94
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid page structure. /Pages must be PdfDictionary."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 101
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private correctPdfPagesFromProperty(II)V
    .locals 1

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfPages;->correctFrom(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findPageParent(I)I
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_1

    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    .line 519
    div-int/lit8 v2, v2, 0x2

    .line 520
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->compareTo(I)I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private internalRemovePage(I)Z
    .locals 5

    .line 492
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 494
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPages;->removePage(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 495
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 497
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->removeFromParent()V

    add-int/lit8 v0, v0, -0x1

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 502
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    const/4 v1, -0x1

    .line 504
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->correctPdfPagesFromProperty(II)V

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v2

    :cond_2
    return v3
.end method

.method private loadPage(I)V
    .locals 1

    .line 353
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(ILjava/util/Set;)V

    return-void
.end method

.method private loadPage(ILjava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;)V"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v0

    .line 371
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 372
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    .line 373
    const-string v3, "Invalid page structure {0}."

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 374
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 378
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_1
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, v3}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v4

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 381
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getKids()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 385
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 392
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    .line 393
    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 400
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 402
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_2

    .line 406
    :cond_3
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, v3}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v4

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 410
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfReader;->isMemorySavingMode()Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v8, :cond_5

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v10

    add-int/2addr v10, v7

    if-eq v10, p1, :cond_5

    .line 411
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 397
    :cond_6
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, v3}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v4

    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    :cond_7
    if-eqz v8, :cond_d

    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    .line 420
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_b

    if-lez v5, :cond_b

    .line 432
    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    .line 433
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    if-nez v9, :cond_9

    if-nez v7, :cond_8

    .line 439
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v9

    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v7, v9, v10, v1}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    .line 440
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 441
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 445
    :cond_8
    invoke-virtual {v2, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    add-int/lit8 v6, v6, -0x1

    .line 450
    :goto_4
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->decrementCount()V

    .line 451
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_9
    if-nez v7, :cond_a

    .line 457
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v7

    goto :goto_5

    .line 458
    :cond_a
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v9

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v7

    add-int/2addr v7, v9

    .line 459
    :goto_5
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-direct {v9, v7, v5, v8, v1}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(IILcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfPages;)V

    .line 460
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v7

    sub-int/2addr v5, v7

    move-object v7, v9

    :goto_6
    add-int/2addr v6, v4

    goto :goto_3

    .line 464
    :cond_b
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 465
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_7
    if-ltz v1, :cond_c

    .line 466
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 471
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(ILjava/util/Set;)V

    goto :goto_a

    .line 473
    :cond_d
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result p1

    move p2, v6

    .line 478
    :goto_8
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_f

    .line 479
    invoke-virtual {v2, p2, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 480
    instance-of v3, v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v3, :cond_e

    .line 481
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    add-int v4, p1, p2

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 483
    :cond_e
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    add-int v4, p1, p2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_f
    :goto_a
    return-void

    .line 383
    :cond_10
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, v3}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 241
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 245
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-void

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 249
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 250
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 252
    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Z

    .line 253
    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 254
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->correctPdfPagesFromProperty(II)V

    .line 255
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 216
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 220
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 221
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getFrom()I

    move-result v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 222
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 226
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 227
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 228
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 229
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected clearPageRefs()V
    .locals 1

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 335
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    return-void
.end method

.method protected findPageParent(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPages;
    .locals 1

    .line 347
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 348
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result p1

    .line 349
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfPages;

    return-object p1
.end method

.method protected generateTree()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 9

    .line 297
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Attempt to generate PDF pages tree without any pages, so a new page will be added."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generated:Z

    if-nez v0, :cond_6

    .line 305
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xa

    const/4 v4, 0x0

    move v5, v3

    .line 311
    :goto_1
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 312
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 313
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPages;->getCount()I

    move-result v7

    .line 314
    rem-int v8, v2, v5

    if-nez v8, :cond_2

    if-gt v7, v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 318
    :cond_1
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfPages;

    const/4 v5, -0x1

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v4, v5, v7}, Lcom/itextpdf/kernel/pdf/PdfPages;-><init>(ILcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 319
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    .line 323
    :cond_2
    :goto_2
    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfPages;->addPages(Lcom/itextpdf/kernel/pdf/PdfPages;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    :cond_3
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    goto :goto_0

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfPages;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 329
    :cond_5
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generated:Z

    .line 330
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 302
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "PdfPages tree could be generated only once."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getNumberOfPages()I

    move-result v0

    if-gt p1, v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    .line 120
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 121
    const-string v2, "Page tree is broken. Failed to retrieve page number {0}. Null will be returned."

    if-nez v1, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 123
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 124
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(I)I

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 126
    instance-of v5, v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v5, :cond_0

    .line 127
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v1

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {v1, v4}, Lcom/itextpdf/kernel/pdf/IPdfPageFactory;->createPdfPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    .line 128
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfPages;

    iput-object v3, v1, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    goto :goto_0

    .line 130
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 131
    invoke-static {v2, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 135
    invoke-static {v2, v4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    .line 141
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 142
    invoke-static {v2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 116
    const-string v1, "Requested page number {0} is out of bounds."

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p1

    if-lez p1, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 191
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->loadPage(I)V

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected getParents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPages;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->parents:Ljava/util/List;

    return-object v0
.end method

.method protected getRoot()Lcom/itextpdf/kernel/pdf/PdfPages;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->root:Lcom/itextpdf/kernel/pdf/PdfPages;

    return-object v0
.end method

.method releasePage(I)V
    .locals 4

    add-int/lit8 p1, p1, -0x1

    .line 282
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 283
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    .line 284
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pageRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->pages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public removePage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 3

    .line 269
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "The page requested to be removed has already been flushed."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 273
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->internalRemovePage(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
