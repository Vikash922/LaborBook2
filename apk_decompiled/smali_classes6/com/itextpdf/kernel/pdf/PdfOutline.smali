.class public Lcom/itextpdf/kernel/pdf/PdfOutline;
.super Ljava/lang/Object;
.source "PdfOutline.java"


# static fields
.field public static FLAG_BOLD:I = 0x2

.field public static FLAG_ITALIC:I = 0x1


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;"
        }
    .end annotation
.end field

.field private content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field private destination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

.field private parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

.field private pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 112
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 113
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 114
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 115
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addRootOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 86
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfOutline;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 98
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 100
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 101
    iget-object p1, p3, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 102
    iget-object p1, p3, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method private getOutlineRoot()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method private isOutlineRoot()Z
    .locals 2

    .line 404
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getOutlineRoot()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->A:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/action/PdfAction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public addDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 2

    .line 224
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 225
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Dest:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public addOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 2

    .line 324
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 327
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getAllChildren()Ljava/util/List;

    move-result-object p1

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 329
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Lcom/itextpdf/kernel/pdf/PdfOutline;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public addOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 1

    const/4 v0, -0x1

    .line 313
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Ljava/lang/String;I)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object p1

    return-object p1
.end method

.method public addOutline(Ljava/lang/String;I)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 273
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 274
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 275
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-direct {v1, p1, v0, p0}, Lcom/itextpdf/kernel/pdf/PdfOutline;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfOutline;)V

    .line 276
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Title:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 277
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 278
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    .line 280
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 281
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 282
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 284
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p2, p1, :cond_2

    .line 285
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 286
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 287
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_2
    if-nez p2, :cond_3

    .line 292
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 293
    :cond_3
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 294
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Last:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 296
    :cond_4
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 297
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_6

    .line 298
    :cond_5
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 300
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v1
.end method

.method clear()V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAllChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    return-object v0
.end method

.method public getColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->C:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v0

    .line 157
    invoke-static {v1, v0}, Lcom/itextpdf/kernel/colors/Color;->makeColor(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;[F)Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->destination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

    return-object v0
.end method

.method public getStyle()Ljava/lang/Integer;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public removeOutline()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->isOutlineRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->parent:Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 344
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    .line 345
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 346
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 347
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 348
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfOutline;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 349
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Last:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfOutline;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 355
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 359
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 360
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 362
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Next:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 365
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_3
    :goto_0
    return-void

    .line 351
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->removeOutline()V

    return-void

    .line 340
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->pdfDoc:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Outlines:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    return-void
.end method

.method public setColor(Lcom/itextpdf/kernel/colors/Color;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->C:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method setDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->destination:Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    return-void
.end method

.method public setOpen(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Count:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_0
    return-void
.end method

.method public setStyle(I)V
    .locals 3

    .line 168
    sget v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->FLAG_BOLD:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/itextpdf/kernel/pdf/PdfOutline;->FLAG_ITALIC:I

    if-ne p1, v0, :cond_1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 134
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->title:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfOutline;->content:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Title:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method
