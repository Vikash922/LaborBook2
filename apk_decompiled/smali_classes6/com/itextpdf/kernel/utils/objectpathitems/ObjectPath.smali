.class public Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;
.super Ljava/lang/Object;
.source "ObjectPath.java"


# instance fields
.field private baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field private baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field private indirects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;",
            ">;"
        }
    .end annotation
.end field

.field protected path:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    .line 99
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 100
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 101
    new-instance v1, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;",
            ">;",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    .line 106
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 107
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 108
    invoke-virtual {p3}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    .line 109
    invoke-virtual {p4}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    .line 72
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    .line 86
    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->getBaseCmpObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 87
    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->getBaseOutObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 88
    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->getLocalPath()Ljava/util/Stack;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    .line 89
    invoke-virtual {p1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->getIndirectPath()Ljava/util/Stack;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    .line 309
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    .line 316
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v3, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-ne v2, v3, :cond_2

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 320
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 323
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    iget-object v3, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 324
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v2

    iget-object v3, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    move v2, v1

    .line 327
    :goto_2
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v4, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-ne v3, v4, :cond_5

    :goto_3
    move v3, v0

    goto :goto_5

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 331
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_6

    goto :goto_4

    .line 334
    :cond_6
    iget-object v3, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    iget-object v4, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v4

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 335
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    iget-object v4, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    if-ne v3, v4, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    move v3, v1

    :goto_5
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    .line 338
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    iget-object p1, p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    return v0

    :cond_9
    :goto_7
    return v1
.end method

.method public getBaseCmpObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getBaseOutObject()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getIndirectPath()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public getLocalPath()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 289
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;

    mul-int/lit8 v0, v0, 0x1f

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    return v0
.end method

.method public isComparing(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pop()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public pushArrayItemToPath(I)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/objectpathitems/ArrayPathItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/utils/objectpathitems/ArrayPathItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/objectpathitems/DictPathItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/utils/objectpathitems/DictPathItem;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushOffsetToPath(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    new-instance v1, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/utils/objectpathitems/OffsetPathItem;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetDirectPath(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;
    .locals 3

    .line 127
    new-instance v0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    .line 128
    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Ljava/util/Stack;Ljava/util/Stack;)V

    .line 129
    iget-object v1, v0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->indirects:Ljava/util/Stack;

    new-instance v2, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;

    invoke-direct {v2, p1, p2}, Lcom/itextpdf/kernel/utils/objectpathitems/IndirectPathItem;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Base cmp object: {0} obj. Base out object: {1} obj"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 257
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 258
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    const/16 v3, 0xa

    .line 261
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 264
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;
    .locals 5

    .line 225
    const-string v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 226
    const-string v1, "base"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseCmpObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 228
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 227
    const-string v3, "{0} {1} obj"

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "cmp"

    invoke-interface {v1, v4, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->baseOutObject:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 230
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 229
    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "out"

    invoke-interface {v1, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 232
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 234
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->path:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 239
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/utils/objectpathitems/LocalPathItem;->toXmlNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
