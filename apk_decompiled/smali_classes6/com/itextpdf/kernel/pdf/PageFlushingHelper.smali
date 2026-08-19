.class public Lcom/itextpdf/kernel/pdf/PageFlushingHelper;
.super Ljava/lang/Object;
.source "PageFlushingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final pageContext:Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;


# instance fields
.field private currNestedObjParents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field private layersRefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private release:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    invoke-static {}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->initPageFlushingContext()Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pageContext:Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    .line 116
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    .line 120
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method private arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 427
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 428
    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 429
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V
    .locals 4

    .line 388
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz p2, :cond_1

    .line 391
    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;->isKeyInBlackList(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;->getInnerContextFor(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    .line 396
    invoke-virtual {p1, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 397
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushObjectRecursively(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 417
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->makeIndirectIfNeeded(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 419
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 421
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    :cond_1
    return-void
.end method

.method private flushObjectRecursively(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 346
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 347
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 352
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 354
    :cond_4
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirect()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    .line 361
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isDocumentFont(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    .line 365
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 371
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 372
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 375
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    move v3, v2

    .line 376
    :goto_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 377
    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushObjectRecursively(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 379
    :cond_9
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 366
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 369
    :cond_b
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 370
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->currNestedObjParents:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_c
    :goto_5
    if-nez v1, :cond_d

    .line 383
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushOrRelease(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_d
    :goto_6
    return-void
.end method

.method private flushOrRelease(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isReleaseForbidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    goto :goto_1

    .line 407
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->makeIndirectIfNeeded(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 408
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isReleaseForbidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 411
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    goto :goto_1

    .line 409
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    :cond_3
    :goto_1
    return-void
.end method

.method private flushPage(I)Z
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 279
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-nez v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v3, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v4, "EndPdfPage"

    invoke-direct {v3, v4, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 281
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->initCurrentLayers(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 284
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 288
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->initResources(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 289
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources(Z)Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 290
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfResources;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_2

    .line 291
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 292
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 293
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    const/4 v2, 0x1

    .line 297
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    .line 298
    invoke-direct {p0, v3, v4}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 299
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushOrRelease(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 302
    :cond_3
    sget-object v3, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pageContext:Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    invoke-direct {p0, v1, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushDictRecursively(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 304
    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    if-eqz v1, :cond_4

    .line 305
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v1

    if-nez v1, :cond_8

    .line 306
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->releasePage(I)V

    .line 307
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->unsetForbidRelease()V

    .line 308
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    goto :goto_1

    .line 311
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 312
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->tryFlushPageTags()V

    .line 314
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->releasePage(I)V

    .line 321
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->unsetForbidRelease()V

    .line 322
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    goto :goto_1

    .line 315
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->releaseInstanceFields()V

    .line 316
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 326
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return v2
.end method

.method private initCurrentLayers(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2

    .line 332
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOCPropertiesMayHaveChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getLayers()Ljava/util/List;

    move-result-object p1

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;

    .line 335
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->layersRefs:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/layer/PdfLayer;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static initPageFlushingContext()Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;
    .locals 13

    .line 441
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 445
    new-instance v1, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v2, Ljava/util/LinkedHashSet;

    const/16 v3, 0x8

    new-array v3, v3, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->SD:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Dp:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Annotation:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->T:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const/4 v4, 0x6

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->AN:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v11, v3, v4

    const/4 v4, 0x7

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->TA:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v11, v3, v4

    .line 447
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 460
    new-instance v2, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;)V

    .line 468
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 470
    new-instance v4, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v11, Ljava/util/LinkedHashSet;

    new-array v10, v10, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v12, v10, v5

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v12, v10, v6

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v12, v10, v7

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v12, v10, v8

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v8, v10, v9

    .line 472
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v11, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 483
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->PA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v3, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v8, Ljava/util/LinkedHashSet;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 491
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v8, v0}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 499
    new-instance v8, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v0}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 507
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 509
    new-instance v9, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v10, Ljava/util/LinkedHashSet;

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 511
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v9, v10, v0}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 517
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->NA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->PA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 525
    new-instance v1, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;

    new-instance v10, Ljava/util/LinkedHashSet;

    new-array v7, v7, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v11, v7, v5

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DPart:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v5, v7, v6

    .line 526
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v10, v0}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper$DeepFlushingContext;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 533
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->AA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SeparationInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->PresSteps:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private makeIndirectIfNeeded(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    const/16 v0, 0x40

    .line 434
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public appendModeFlush(I)V
    .locals 6

    .line 215
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v3, "EndPdfPage"

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 226
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v1

    .line 227
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    const/4 v2, 0x1

    .line 228
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    .line 229
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushPage(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    .line 231
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 232
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 233
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 236
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Thumb:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 237
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 239
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 240
    instance-of v4, v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/16 v5, 0x8

    if-eqz v4, :cond_5

    .line 241
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v2

    if-nez v2, :cond_7

    .line 242
    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 244
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_2

    .line 247
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    goto :goto_2

    .line 250
    :cond_5
    instance-of v2, v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v2, :cond_6

    .line 251
    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->arrayFlushIfModified(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_2

    .line 252
    :cond_6
    instance-of v2, v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v2, :cond_7

    .line 253
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushIfModified(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_7
    :goto_2
    if-nez v1, :cond_8

    .line 261
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 262
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->releasePage(I)V

    .line 263
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->unsetForbidRelease()V

    .line 264
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->release()V

    goto :goto_3

    .line 267
    :cond_8
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->releaseInstanceFields()V

    .line 268
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    :goto_3
    return-void

    .line 216
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Flushing writes the object to the output stream and releases it from memory. It is only possible for documents that have a PdfWriter associated with them. Use PageFlushingHelper#releaseDeep method instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseDeep(I)V
    .locals 1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    .line 189
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushPage(I)Z

    return-void
.end method

.method public unsafeFlushDeep(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->release:Z

    .line 164
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PageFlushingHelper;->flushPage(I)Z

    return-void

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Flushing writes the object to the output stream and releases it from memory. It is only possible for documents that have a PdfWriter associated with them. Use PageFlushingHelper#releaseDeep method instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
