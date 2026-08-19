.class public Lcom/itextpdf/kernel/pdf/PdfPage;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfPage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final PAGE_EXCLUDED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final XOBJECT_EXCLUDED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ignorePageRotationForContent:Z

.field private mcid:I

.field private pageRotationInverseMatrixWritten:Z

.field parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

.field private resources:Lcom/itextpdf/kernel/pdf/PdfResources;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->StructParents:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->B:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfPage;->PAGE_EXCLUDED_KEYS:Ljava/util/List;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    new-array v1, v1, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v4

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v6

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v3, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/itextpdf/kernel/pdf/PdfPage;->XOBJECT_EXCLUDED_KEYS:Ljava/util/List;

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->mcid:I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->ignorePageRotationForContent:Z

    .line 106
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->pageRotationInverseMatrixWritten:Z

    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setForbidRelease()V

    .line 111
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->ensureObjectIsAddedToDocument(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)V
    .locals 3

    .line 115
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 116
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 117
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 119
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 120
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 121
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->setTabOrder(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :cond_0
    return-void
.end method

.method private copyAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 7

    .line 1293
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1294
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-interface {p3, v2, v3, v4}, Lcom/itextpdf/kernel/utils/ICopyFilter;->shouldProcess(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v6, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 1295
    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v2

    .line 1299
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1300
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v1, v3, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->rebuildFormFieldParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    :cond_1
    const/4 v1, -0x1

    .line 1303
    invoke-virtual {p2, v1, v2, v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(ILcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private copyInheritedProperties(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 3

    .line 1365
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1366
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->copyObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    .line 1368
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1370
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    if-nez p3, :cond_1

    .line 1372
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getMediaBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfPage;->setMediaBox(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 1374
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    if-nez p3, :cond_2

    .line 1376
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz p3, :cond_2

    .line 1379
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 1382
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rotate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    if-nez p3, :cond_3

    .line 1384
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Rotate:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v0, 0x8

    invoke-direct {p0, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    if-eqz p3, :cond_3

    .line 1387
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rotate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :cond_3
    return-void
.end method

.method private flushAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 1344
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1347
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1348
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v1, :cond_1

    .line 1349
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1350
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1351
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    .line 1352
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1353
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushMustBeIndirectObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private flushMustBeIndirectObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    .line 1361
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    return-void
.end method

.method private flushResourcesContentStreams()V
    .locals 4

    .line 1309
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushResourcesContentStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v0, 0x0

    .line 1311
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnots(Z)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1312
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1313
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1314
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1316
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushAppearanceStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private flushResourcesContentStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1323
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1324
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushWithResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1325
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Pattern:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushWithResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1326
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Shading:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushWithResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    :cond_0
    return-void
.end method

.method private flushWithResources(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1331
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1335
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1336
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1338
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushResourcesContentStreams(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1339
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushMustBeIndirectObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getAnnots(Z)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1228
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1230
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1231
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :cond_0
    return-object v0
.end method

.method private getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    if-nez v0, :cond_0

    .line 1238
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->findPageParent(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPages;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfPages;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1241
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfPages;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    if-eqz p0, :cond_1

    .line 1246
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1247
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPages;->getParent()Lcom/itextpdf/kernel/pdf/PdfPages;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfPages;Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private newContentStream(Z)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 3

    .line 1258
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 1260
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_1

    .line 1261
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1262
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1264
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 1266
    :cond_0
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1268
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_1

    .line 1269
    :cond_1
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_2

    .line 1270
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 1274
    :goto_1
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1277
    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    .line 1279
    :cond_3
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1281
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1282
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_3

    .line 1284
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_3

    .line 1287
    :cond_5
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :goto_3
    return-object v0
.end method

.method private rebuildFormFieldParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 6

    .line 1393
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1396
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x3

    .line 1398
    new-array v1, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1399
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v2

    .line 1398
    invoke-virtual {p1, p3, v1, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1400
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1401
    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1402
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v1

    .line 1401
    invoke-virtual {p1, p3, v0, v4, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1404
    :cond_1
    invoke-direct {p0, p1, v1, p3}, Lcom/itextpdf/kernel/pdf/PdfPage;->rebuildFormFieldParent(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 1406
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1410
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-virtual {v1, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1412
    :cond_2
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_3
    return-void
.end method


# virtual methods
.method public addAnnotation(ILcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 868
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 870
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object p3

    .line 871
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 872
    invoke-virtual {p3, p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addAnnotationTag(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setPageForTagging(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getTabOrder()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p3

    if-nez p3, :cond_1

    .line 878
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfPage;->setTabOrder(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :cond_1
    const/4 p3, 0x1

    .line 882
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnots(Z)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 884
    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 886
    :cond_2
    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 889
    :goto_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    if-nez p1, :cond_3

    .line 891
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_1

    .line 894
    :cond_3
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_1
    return-object p0
.end method

.method public addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 853
    invoke-virtual {p0, v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAnnotation(ILcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Z)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public addAssociatedFile(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 1

    const/4 v0, 0x0

    .line 1187
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V

    return-void
.end method

.method public addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 3

    .line 1160
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1161
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1162
    const-string v1, "For associated files their associated file specification dictionaries shall include the AFRelationship key."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1165
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addNameToNameTree(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1167
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1169
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1170
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 1172
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public addOutputIntent(Lcom/itextpdf/kernel/pdf/PdfOutputIntent;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1100
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1101
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 1103
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputIntent;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object p0
.end method

.method public containsAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z
    .locals 3

    .line 837
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 838
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public copyAsFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getCropBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 430
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 431
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfPage;->XOBJECT_EXCLUDED_KEYS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 435
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 436
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 437
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v4, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 442
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 443
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources()Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v2, 0x1

    .line 444
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v3

    .line 443
    invoke-virtual {v1, p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 445
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_3
    return-object v0
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 4

    .line 402
    new-instance v0, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/DestinationResolverCopyFilter;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 403
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfPage;->PAGE_EXCLUDED_KEYS:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;ZLcom/itextpdf/kernel/utils/ICopyFilter;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/itextpdf/kernel/pdf/IPdfPageFactory;->createPdfPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    .line 405
    invoke-static {}, Lcom/itextpdf/kernel/utils/NullCopyFilter;->getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->copyInheritedProperties(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    .line 406
    invoke-direct {p0, p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->copyAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    if-eqz p2, :cond_0

    .line 409
    invoke-interface {p2, p0, v1}, Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;->copy(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    goto :goto_0

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object p2

    iget-boolean p2, p2, Lcom/itextpdf/kernel/pdf/PdfWriter;->isUserWarnedAboutAcroFormCopying:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasAcroForm()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 412
    const-class p2, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 413
    const-string v0, "Source document has AcroForm dictionary. The pages you are going to copy may have FormFields, but they will not be copied, because you have not used any IPdfPageExtraCopier"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object p1

    iput-boolean v3, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->isUserWarnedAboutAcroFormCopying:Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flush(Z)V

    return-void
.end method

.method public flush(Z)V
    .locals 4

    .line 497
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    new-instance v1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v2, "EndPdfPage"

    invoke-direct {v1, v2, p0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 502
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->tryFlushPageTags()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 508
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->initResources(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->isModified()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfResources;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    sget-object v0, Lcom/itextpdf/kernel/pdf/IsoKey;->PAGE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {p1, p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 514
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->flushResourcesContentStreams()V

    .line 517
    :cond_4
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnots(Z)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 519
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 520
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 521
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 523
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Thumb:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 530
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 533
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 535
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isFlushed()Z

    move-result p1

    if-nez p1, :cond_9

    .line 536
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result p1

    move v0, v1

    :goto_2
    if-ge v0, p1, :cond_9

    .line 538
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 540
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush(Z)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 544
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->releaseInstanceFields()V

    .line 546
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    return-void
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;",
            ">;"
        }
    .end annotation

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    .line 810
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 811
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 815
    :cond_0
    invoke-static {v4}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->makeAnnotation(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 819
    :cond_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 820
    :goto_1
    invoke-virtual {v5, p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_3

    .line 822
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    const/16 v5, 0x80

    .line 823
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getAnnotsSize()I
    .locals 2

    const/4 v0, 0x0

    .line 940
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnots(Z)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 943
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    return v0
.end method

.method public getArtBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 686
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ArtBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getCropBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAssociatedFiles(Z)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1197
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1199
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1200
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :cond_0
    return-object v0
.end method

.method public getBleedBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 657
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BleedBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getCropBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContentBytes()[B
    .locals 9

    .line 726
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->getAllMemoryUsedForDecompression()J

    move-result-wide v1

    .line 729
    :goto_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;-><init>()V

    .line 730
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    .line 733
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getStreamBytes(I)[B

    move-result-object v6

    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->getAllMemoryUsedForDecompression()J

    move-result-wide v7

    cmp-long v7, v1, v7

    if-gez v7, :cond_1

    .line 736
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->getMaxSizeOfSingleDecompressedPdfStream()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->setMaxStreamSize(I)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;

    .line 738
    :cond_1
    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->write([B)V

    .line 739
    array-length v7, v6

    if-eqz v7, :cond_2

    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_2

    const/16 v6, 0xa

    .line 740
    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->write(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 743
    :cond_3
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 745
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Cannot get content bytes."

    invoke-direct {v1, v2, v0, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v1
.end method

.method public getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 199
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_0

    .line 200
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    return-object v0

    .line 201
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_1

    .line 202
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 203
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 197
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Index: {0}, Size: {1}"

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContentStreamCount()I
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-eqz v1, :cond_1

    .line 220
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCropBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 614
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 616
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getMediaBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0

    .line 621
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 457
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastContentStream()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStreamCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 245
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 8

    .line 557
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 559
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    :cond_0
    if-eqz v0, :cond_5

    .line 565
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    if-le v2, v3, :cond_1

    .line 567
    const-class v4, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 568
    invoke-interface {v4}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 570
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 569
    const-string v6, "Wrong media box size: {0}. The arguments beyond the 4th will be ignored"

    invoke-static {v6, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_1
    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 575
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Wrong media box size: {0}. Need at least 4 arguments"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 580
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    .line 581
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    const/4 v3, 0x2

    .line 582
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    const/4 v4, 0x3

    .line 583
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 587
    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 588
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 589
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 590
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v0

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {v4, v5, v6, v2, v0}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    return-object v4

    .line 585
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Tne media box object has incorrect values."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Invalid PDF. There is no media box attribute for page or its parents."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextMcid()I
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->mcid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    .line 772
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getNextMcidForPage(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->mcid:I

    .line 774
    :cond_0
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->mcid:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->mcid:I

    return v0

    .line 768
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Must be a tagged document."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutlines(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;"
        }
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 956
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPagesWithOutlines()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getPageSize()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getMediaBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getPageSizeWithRotation()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 145
    new-instance v0, Lcom/itextpdf/kernel/geom/PageSize;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPageSize()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/geom/PageSize;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 146
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getRotation()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/itextpdf/kernel/geom/PageSize;->rotate()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    add-int/lit8 v1, v1, -0x5a

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getResources()Lcom/itextpdf/kernel/pdf/PdfResources;
    .locals 1

    const/4 v0, 0x1

    .line 283
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getResources(Z)Lcom/itextpdf/kernel/pdf/PdfResources;

    move-result-object v0

    return-object v0
.end method

.method getResources(Z)Lcom/itextpdf/kernel/pdf/PdfResources;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 288
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->initResources(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    return-object p1
.end method

.method public getRotation()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Rotate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rotate:Lcom/itextpdf/kernel/pdf/PdfName;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    :cond_0
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 169
    :goto_0
    rem-int/lit16 v0, v0, 0x168

    if-gez v0, :cond_2

    add-int/lit16 v0, v0, 0x168

    :cond_2
    return v0
.end method

.method public getStreamBytes(I)[B
    .locals 0

    .line 757
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getContentStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public getStructParentIndex()I
    .locals 2

    .line 784
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StructParents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StructParents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabOrder()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2

    .line 1061
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Tabs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailImage()Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 2

    .line 1082
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Thumb:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTrimBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 2

    .line 714
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getCropBox()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getXmpMetadata()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    return-object v0
.end method

.method initResources(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 4

    .line 295
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getInheritedValue(Lcom/itextpdf/kernel/pdf/PdfName;I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 305
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    if-eqz p1, :cond_2

    .line 308
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfResources;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfResources;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 309
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->setReadOnly(Z)V

    :cond_2
    return-object v0
.end method

.method public isIgnorePageRotationForContent()Z
    .locals 1

    .line 964
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->ignorePageRotationForContent:Z

    return v0
.end method

.method public isPageRotationInverseMatrixWritten()Z
    .locals 1

    .line 1132
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->pageRotationInverseMatrixWritten:Z

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newContentStreamAfter()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->newContentStream(Z)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    return-object v0
.end method

.method public newContentStreamBefore()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1

    const/4 v0, 0x1

    .line 256
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->newContentStream(Z)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 1116
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1117
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object p0
.end method

.method releaseInstanceFields()V
    .locals 1

    const/4 v0, 0x0

    .line 1218
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    .line 1219
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->parentPages:Lcom/itextpdf/kernel/pdf/PdfPages;

    return-void
.end method

.method public removeAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 3

    const/4 v0, 0x0

    .line 909
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnots(Z)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 911
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 913
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Annots:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 915
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    .line 916
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 917
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 921
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 922
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->removeAnnotationTag(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 924
    const-string v1, "Annot"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Form"

    .line 925
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 926
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getKidsRoles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 927
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->removeTag()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    :cond_4
    return-object p0
.end method

.method public setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 0

    .line 796
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->setAdditionalAction(Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/action/PdfAction;)V

    return-object p0
.end method

.method public setArtBox(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 671
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 672
    const-string v1, "Only one of artbox or trimbox can exist on the page. The trimbox will be deleted"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 674
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ArtBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method public setBleedBox(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 645
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->BleedBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method public setCropBox(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 633
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CropBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method public setIgnorePageRotationForContent(Z)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 0

    .line 976
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->ignorePageRotationForContent:Z

    return-object p0
.end method

.method public setMediaBox(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 601
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->MediaBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method public setPageLabel(Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    const/4 v0, 0x1

    .line 989
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setPageLabel(Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;Ljava/lang/String;I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public setPageLabel(Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;Ljava/lang/String;I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 3

    const/4 v0, 0x1

    if-lt p3, v0, :cond_8

    .line 1006
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    if-eqz p1, :cond_5

    .line 1008
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfPage$1;->$SwitchMap$com$itextpdf$kernel$pdf$PageLabelNumberingStyle:[I

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PageLabelNumberingStyle;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->a:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 1019
    :cond_1
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 1016
    :cond_2
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->r:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 1013
    :cond_3
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 1010
    :cond_4
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 1028
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v2, p2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_6
    if-eq p3, v0, :cond_7

    .line 1032
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->St:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1034
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageLabelsTree(Z)Lcom/itextpdf/kernel/pdf/PdfNumTree;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v1}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->addEntry(ILcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object p0

    .line 1004
    :cond_8
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "In a page label the page numbers must be greater or equal to 1."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPageRotationInverseMatrixWritten()V
    .locals 1

    const/4 v0, 0x1

    .line 1144
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->pageRotationInverseMatrixWritten:Z

    return-void
.end method

.method public setResources(Lcom/itextpdf/kernel/pdf/PdfResources;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 321
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Resources:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 322
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfPage;->resources:Lcom/itextpdf/kernel/pdf/PdfResources;

    return-object p0
.end method

.method public setRotation(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 181
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Rotate:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method public setTabOrder(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 1048
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Tabs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method public setThumbnailImage(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 1072
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Thumb:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public setTrimBox(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 697
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ArtBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ArtBox:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 699
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 700
    const-string v1, "Only one of artbox or trimbox can exist on the page. The trimbox will be deleted"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 702
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TrimBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method public setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>()V

    const/16 v1, 0x7d0

    .line 365
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setPadding(I)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->setXmpMetadata([B)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public setXmpMetadata([B)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 335
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 336
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 337
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XML:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 338
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-object p0
.end method

.method tryFlushPageTags()V
    .locals 3

    .line 1207
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    if-nez v0, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->flushPageTags(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->savePageStructParentIndexIfNeeded(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1212
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Tag structure flushing failed: it might be corrupted."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
