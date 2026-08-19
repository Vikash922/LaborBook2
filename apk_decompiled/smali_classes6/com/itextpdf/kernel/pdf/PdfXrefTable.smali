.class public Lcom/itextpdf/kernel/pdf/PdfXrefTable;
.super Ljava/lang/Object;
.source "PdfXrefTable.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final MAX_GENERATION:I = 0xffff

.field private static final freeXRefEntry:[B

.field private static final inUseXRefEntry:[B


# instance fields
.field private count:I

.field private final freeReferencesLinkedList:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

.field private readingCompleted:Z

.field private xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-string v0, "f \n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeXRefEntry:[B

    .line 73
    const-string v0, "n \n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->inUseXRefEntry:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 92
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>(ILcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)V

    return-void
.end method

.method public constructor <init>(ILcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)V
    .locals 6

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/16 p1, 0x20

    if-nez p2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->getMaxNumberOfElementsInXrefStructure()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 124
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    if-eqz p2, :cond_2

    .line 126
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->checkIfXrefStructureExceedsTheLimit(I)V

    .line 128
    :cond_2
    new-array p1, p1, [Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 129
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    .line 130
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const v3, 0xffff

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)V
    .locals 1

    const/16 v0, 0x20

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>(ILcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)V

    return-void
.end method

.method private appendNewRefToFreeList(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 581
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 582
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 v2, 0x8

    .line 588
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 589
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createSections(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 533
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 534
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v5, v5, v2

    .line 535
    iget-object v6, p1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v6, v6, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    const/16 v6, 0x8

    .line 536
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :cond_1
    if-nez v5, :cond_3

    if-lez v3, :cond_2

    .line 542
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    move v4, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-lez v3, :cond_6

    .line 556
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private ensureCount(I)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    .line 642
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->extendXref(I)V

    :cond_0
    return-void
.end method

.method private extendXref(I)V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->checkIfXrefStructureExceedsTheLimit(I)V

    .line 650
    :cond_0
    new-array p1, p1, [Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 651
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-void
.end method

.method private getOffsetSize(J)I
    .locals 7

    const/4 v0, 0x5

    const-wide v1, 0xff00000000L

    :goto_0
    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    and-long v3, v1, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    shr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private removeFreeRefFromList(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    :cond_1
    if-gez p1, :cond_6

    .line 613
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v2

    const v3, 0xffff

    if-lt v2, v3, :cond_3

    goto :goto_0

    .line 617
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_5

    return-object v1

    .line 623
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 626
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object p1, v0, p1

    .line 627
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-nez v0, :cond_7

    return-object v1

    .line 631
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_8

    .line 633
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 634
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    :cond_8
    return-object p1
.end method

.method protected static writeKeyInfo(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getFingerPrint()Lcom/itextpdf/kernel/pdf/FingerPrint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/FingerPrint;->getProducts()Ljava/util/Collection;

    move-result-object p0

    .line 209
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/commons/actions/data/ProductData;->getVersion()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%iText-{0}-no-registered-products\n"

    invoke-static {v1, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    goto :goto_1

    .line 213
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/commons/actions/data/ProductData;

    .line 215
    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/data/ProductData;->getPublicProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/commons/actions/data/ProductData;->getVersion()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%iText-{0}-{1}\n"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    .line 153
    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    .line 154
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->ensureCount(I)V

    .line 155
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aput-object p1, v1, v0

    return-object p1
.end method

.method clear()V
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    .line 520
    :goto_0
    iget v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    if-gt v1, v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_1
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    return-void
.end method

.method createNewIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 2

    .line 511
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V

    .line 512
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 p1, 0x8

    .line 513
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object p1
.end method

.method protected createNextIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 2

    .line 227
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;I)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 p1, 0x8

    .line 229
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object p1
.end method

.method protected freeReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 3

    .line 238
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x20

    .line 241
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    const-class v1, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    if-eqz v0, :cond_1

    .line 242
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 243
    const-string v0, "An attempt is made to free an indirect reference which was already used in the flushed object. Indirect reference wasn\'t freed."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 246
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 248
    const-string v0, "An attempt is made to free already flushed indirect object reference. Indirect reference wasn\'t freed."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    .line 252
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 254
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->appendNewRefToFreeList(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 256
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v1

    const v2, 0xffff

    if-ge v1, v2, :cond_3

    .line 257
    iget v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->genNr:I

    :cond_3
    return-void
.end method

.method public get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 192
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getCapacity()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v0, v0

    return v0
.end method

.method public getCountOfIndirectObjects()I
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method initFreeReferencesList(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 10

    .line 454
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 457
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 458
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x1

    .line 459
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 460
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 461
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v3, v3, v1

    .line 467
    :goto_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 469
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 470
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v4

    long-to-int v4, v4

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    .line 472
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v5, v5, v4

    if-nez v5, :cond_4

    goto :goto_3

    .line 476
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v3, v3, v4

    .line 478
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 481
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    if-nez v4, :cond_a

    .line 482
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 483
    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v8, v8, v4

    if-nez v8, :cond_7

    .line 484
    iget-object v6, p1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v6, v6, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v6, :cond_6

    goto :goto_3

    .line 487
    :cond_6
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {v7, p1, v4, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;II)V

    invoke-virtual {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aput-object v7, v6, v4

    goto :goto_4

    .line 488
    :cond_7
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v8

    const v9, 0xffff

    if-ne v8, v9, :cond_8

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 491
    :cond_8
    :goto_4
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 492
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v5, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 494
    :cond_9
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v3, v3, v4

    goto :goto_3

    .line 498
    :cond_a
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v8

    cmp-long p1, v8, v6

    if-eqz p1, :cond_b

    .line 499
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 501
    :cond_b
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method isReadingCompleted()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->readingCompleted:Z

    return v0
.end method

.method markReadingCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 436
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->readingCompleted:Z

    return-void
.end method

.method protected setCapacity(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->extendXref(I)V

    :cond_0
    return-void
.end method

.method public setMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    return-void
.end method

.method public size()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected writeXrefTableAndTrailer(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v4

    .line 293
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v5, v5, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 294
    iget v5, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    :goto_0
    if-lez v5, :cond_1

    .line 295
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    aget-object v7, v7, v5

    if-eqz v7, :cond_0

    .line 296
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 297
    :cond_0
    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->removeFreeRefFromList(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 298
    iget v7, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 307
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    .line 308
    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    const/4 v8, 0x0

    .line 310
    invoke-direct {v0, v1, v8}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createSections(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Ljava/util/List;

    move-result-object v9

    .line 311
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_4

    if-eqz v5, :cond_3

    .line 312
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v11, :cond_3

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v12, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->count:I

    if-ne v10, v12, :cond_3

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v6, :cond_3

    goto :goto_2

    :cond_3
    move v10, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v6

    .line 313
    :goto_3
    iget-object v12, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v12, v12, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v12, :cond_5

    if-eqz v10, :cond_5

    .line 315
    iput-object v7, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-void

    .line 319
    :cond_5
    sget-object v10, Lcom/itextpdf/kernel/pdf/IsoKey;->XREF_TABLE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {v1, v0, v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 321
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCurrentPos()J

    move-result-wide v12

    if-eqz v5, :cond_d

    .line 324
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->XRef:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v10, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 325
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v3, :cond_6

    .line 327
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 328
    :cond_6
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v14

    invoke-direct {v10, v14}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v5, v7, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v7

    int-to-long v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-direct {v0, v14, v15}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->getOffsetSize(J)I

    move-result v7

    .line 331
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v15, 0x3

    new-array v15, v15, [Lcom/itextpdf/kernel/pdf/PdfObject;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v11, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v11, v15, v8

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v11, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v11, v15, v6

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v6, 0x2

    invoke-direct {v11, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    aput-object v11, v15, v6

    .line 332
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v14, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;)V

    .line 331
    invoke-virtual {v5, v10, v14}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 333
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 334
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 335
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 336
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 337
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v14, v11}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_4

    .line 339
    :cond_7
    iget-object v10, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v10, v10, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v10, :cond_8

    iget-object v10, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-boolean v10, v10, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    if-nez v10, :cond_8

    .line 341
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v11, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfReader;->getLastXref()J

    move-result-wide v14

    long-to-double v14, v14

    invoke-direct {v10, v14, v15}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    .line 342
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v11, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 344
    :cond_8
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Index:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v10, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 345
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v6

    move v10, v8

    .line 347
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    .line 348
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v14, v10, 0x1

    .line 349
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v15, v11

    :goto_6
    add-int v8, v11, v14

    if-ge v15, v8, :cond_b

    .line 351
    invoke-virtual {v6, v15}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v8

    .line 352
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v20, v6

    .line 353
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 354
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    move/from16 v19, v10

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(JI)V

    .line 355
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    goto :goto_7

    :cond_9
    move-object/from16 v20, v6

    move-object/from16 v21, v9

    move/from16 v19, v10

    const/4 v9, 0x2

    .line 356
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v6

    if-nez v6, :cond_a

    .line 357
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 358
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(JI)V

    .line 359
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    goto :goto_7

    .line 361
    :cond_a
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 362
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v10

    invoke-virtual {v6, v10, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    .line 363
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getIndex()I

    move-result v8

    invoke-virtual {v6, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(II)V

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v19

    move-object/from16 v6, v20

    move-object/from16 v9, v21

    goto/16 :goto_6

    :cond_b
    move-object/from16 v20, v6

    move-object/from16 v21, v9

    move/from16 v19, v10

    const/4 v9, 0x2

    add-int/lit8 v10, v19, 0x2

    move-object/from16 v9, v21

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_c
    move-object/from16 v21, v9

    .line 367
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    move-wide v5, v12

    goto :goto_8

    :cond_d
    move-object/from16 v21, v9

    const-wide/16 v5, -0x1

    .line 374
    :goto_8
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v7, v7, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v7, :cond_16

    iget-object v7, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-boolean v7, v7, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    if-eqz v7, :cond_16

    .line 377
    :cond_e
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCurrentPos()J

    move-result-wide v12

    .line 378
    const-string v7, "xref\n"

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v7

    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_f

    const/4 v9, 0x1

    .line 382
    invoke-direct {v0, v1, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createSections(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Ljava/util/List;

    move-result-object v9

    goto :goto_9

    :cond_f
    move-object/from16 v9, v21

    :goto_9
    const/4 v10, 0x0

    .line 384
    :goto_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_12

    .line 385
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v15, v10, 0x1

    .line 386
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 387
    invoke-virtual {v4, v11}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-object/from16 v16, v9

    const/16 v9, 0xa

    invoke-virtual {v14, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeByte(B)V

    move v9, v11

    :goto_b
    add-int v14, v11, v15

    if-ge v9, v14, :cond_11

    .line 389
    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v14

    move-object/from16 v17, v7

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v18, v11

    const-string v11, "0000000000"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v19, v12

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 392
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "00000"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 393
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/16 v13, 0xa

    sub-int/2addr v12, v13

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 394
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 395
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 396
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeXRefEntry:[B

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_c

    .line 398
    :cond_10
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->inUseXRefEntry:[B

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeBytes([B)Ljava/io/OutputStream;

    :goto_c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v17

    move/from16 v11, v18

    move-wide/from16 v12, v19

    goto :goto_b

    :cond_11
    move-object/from16 v17, v7

    move-wide/from16 v19, v12

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v9, v16

    goto/16 :goto_a

    :cond_12
    move-wide/from16 v19, v12

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 404
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 405
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Index:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 406
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 407
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 408
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v11

    invoke-direct {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 409
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v8, :cond_13

    .line 411
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XRefStm:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    long-to-double v5, v5

    invoke-direct {v8, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v7, v2, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_13
    if-eqz v3, :cond_14

    .line 414
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 415
    :cond_14
    const-string v2, "trailer\n"

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 416
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v2, v2, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v2, :cond_15

    .line 417
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->getLastXref()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-direct {v2, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    .line 418
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 420
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 v2, 0xa

    .line 421
    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(I)V

    move-wide/from16 v12, v19

    .line 423
    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->writeKeyInfo(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 424
    const-string v1, "startxref\n"

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 425
    invoke-virtual {v1, v12, v13}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const-string v2, "\n%%EOF\n"

    .line 426
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    const/4 v1, 0x0

    .line 427
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->xref:[Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 428
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->freeReferencesLinkedList:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    return-void
.end method
