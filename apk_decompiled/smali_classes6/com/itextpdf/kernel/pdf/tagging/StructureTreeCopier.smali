.class Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;
.super Ljava/lang/Object;
.source "StructureTreeCopier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;,
        Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;,
        Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;
    }
.end annotation


# static fields
.field private static ignoreKeysForClone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static ignoreKeysForCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    .line 80
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->NS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllParentsToSet(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Ljava/util/Set;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 606
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->retrieveParents(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)Ljava/util/List;

    move-result-object p0

    .line 607
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 608
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    :goto_0
    return-object p0
.end method

.method private static cloneParents(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 5

    .line 584
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eq v0, p0, :cond_1

    .line 585
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object v1, p0

    move-object v2, v0

    .line 588
    :goto_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eq v3, v4, :cond_0

    .line 589
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 590
    sget-object v3, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 591
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 592
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object v2, v3

    goto :goto_0

    .line 596
    :cond_0
    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v1, -0x1

    invoke-static {p2, v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKidObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 597
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 598
    iput-object p0, p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    :cond_1
    return-void
.end method

.method private static copyNamespaceDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 9

    .line 475
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0, v1, v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 478
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->addCopiedNamespace(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 480
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    .line 482
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz p0, :cond_2

    if-nez v3, :cond_2

    .line 484
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 485
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->RoleMapNS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 487
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 490
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 491
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 492
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 493
    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 494
    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyNamespaceDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 495
    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 498
    :cond_0
    const-class v5, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 501
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 499
    const-string v6, "Role mapping for \"{0}\" from source document is not copied. Mapping to namespace is in an invalid form (should be [PdfName, PdfDictionary])."

    invoke-static {v6, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v5, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    .line 507
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 508
    invoke-virtual {v3, v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method private static copyObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 7

    .line 355
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->isCopyFromDestDocument()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 356
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 361
    :cond_0
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 363
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->isCopyFromDestDocument()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eq v3, p1, :cond_1

    .line 365
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    .line 373
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    sget-object v3, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForCopy:Ljava/util/List;

    invoke-virtual {p0, v0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 375
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 380
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v4

    new-array v5, v2, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 381
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 384
    :cond_3
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->NS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 386
    invoke-static {v3, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyNamespaceDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 387
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->NS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 390
    :cond_4
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 392
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getPage2page()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez p2, :cond_5

    move-object p2, p1

    move v3, v2

    goto :goto_0

    :cond_5
    move v3, v1

    .line 399
    :goto_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Pg:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move p2, v3

    .line 403
    :cond_6
    :goto_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 405
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 406
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 407
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move v4, v1

    .line 408
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 409
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5, v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObjectKid(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 411
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 414
    :cond_8
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    .line 415
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p0

    if-ne p0, v2, :cond_9

    .line 416
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_3

    .line 418
    :cond_9
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_3

    .line 422
    :cond_a
    invoke-static {p0, v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObjectKid(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 424
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_b
    :goto_3
    return-object v0
.end method

.method private static copyObjectKid(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 432
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_5

    .line 434
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object p2

    new-instance p3, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;

    move-object p4, p0

    check-cast p4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {p3, p4, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;-><init>(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 435
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    return-object p0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 441
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getObjectsToCopy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->shouldTableElementBeCopied(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 443
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    .line 444
    invoke-static {p0, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 446
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 449
    :cond_2
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 450
    new-instance p2, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    new-instance p3, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {p3, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {p2, p0, p3}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 451
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Obj:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 452
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 453
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p3

    if-nez p3, :cond_3

    return-object v1

    .line 457
    :cond_3
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNextStructParentIndex()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 459
    :cond_4
    new-instance p2, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    new-instance p3, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-direct {p3, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {p2, p0, p3}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    .line 461
    :goto_0
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getToDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    :goto_1
    return-object p0

    :cond_5
    return-object v1
.end method

.method private static copyStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)",
            "Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;"
        }
    .end annotation

    if-eqz p3, :cond_0

    move-object p2, p0

    .line 309
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 310
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 316
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 317
    instance-of v6, v5, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    if-nez v6, :cond_3

    instance-of v6, v5, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    if-eqz v6, :cond_4

    .line 318
    :cond_3
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_4
    invoke-static {v5, v1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->addAllParentsToSet(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Ljava/util/Set;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 322
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 325
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 326
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfPage;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 323
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Cannot copy flushed tag."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKids()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    if-nez v3, :cond_8

    goto :goto_1

    .line 337
    :cond_8
    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 338
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 339
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 342
    :cond_9
    new-instance p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;

    invoke-direct {p2, v1, p0, v2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;-><init>(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Z)V

    .line 343
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p3

    .line 344
    invoke-virtual {p3, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 345
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 347
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v2, 0x0

    invoke-static {p3, v1, v2, p2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;ZLcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p3

    .line 348
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 350
    :cond_a
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$StructElemCopyingParams;->getCopiedNamespaces()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object p1
.end method

.method public static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 123
    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    return-void
.end method

.method private static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)V"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 257
    invoke-static {p0, p2, p3, p4, p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;ZI)V

    :cond_1
    return-void
.end method

.method public static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    return-void
.end method

.method private static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 269
    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;ZI)V

    return-void
.end method

.method private static copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "ZI)V"
        }
    .end annotation

    .line 273
    invoke-static {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->copyStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;

    move-result-object p1

    .line 274
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 276
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;->getTopsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 277
    invoke-virtual {v0, p4, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V

    const/4 v1, -0x1

    if-le p4, v1, :cond_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_5

    .line 284
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;->getCopiedNamespaces()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 285
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getNamespacesObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$CopyStructureResult;->getCopiedNamespaces()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->addAll(Ljava/util/Collection;)V

    .line 288
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    .line 289
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    .line 290
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 292
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {p1, p3, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 294
    :cond_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 295
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " -> "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 298
    const-class p4, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;

    invoke-static {p4}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p4

    .line 299
    const-string v0, "Role mapping \"{0}\" from source document is not copied. Destination document already has \"{1}\" mapping."

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method private static getTopmostParent(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    const/4 v0, 0x0

    .line 618
    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->retrieveParents(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object p0
.end method

.method public static move(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfPage;I)V
    .locals 5

    .line 134
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-lt p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-le p2, v1, :cond_0

    goto/16 :goto_4

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, p2, :cond_8

    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x0

    if-le v1, p2, :cond_2

    .line 144
    invoke-static {p0, v0, p2, v3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    .line 145
    invoke-static {p0, p2, v1, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result p2

    .line 146
    invoke-static {p0, v1, v2, p2}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {p0, v0, v1, v3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    .line 149
    invoke-static {p0, v1, v2, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    .line 150
    invoke-static {p0, v2, p2, v0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result v0

    .line 153
    :goto_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 156
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 157
    invoke-static {v1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->getTopmostParent(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 162
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Cannot move flushed tag"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 169
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 170
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 171
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    if-ge v3, v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 179
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 180
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V

    move v0, v2

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method private static retrieveParents(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 623
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object p0

    .line 625
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    move-object v1, v2

    :goto_1
    if-eqz p0, :cond_3

    .line 626
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p1, :cond_1

    .line 628
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    :goto_2
    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 634
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private static separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    .line 516
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isStructElem(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 523
    invoke-static {v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    goto/16 :goto_5

    .line 526
    :cond_0
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x0

    .line 528
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 529
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 535
    invoke-static {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isStructElem(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 536
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 537
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v2, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    goto/16 :goto_4

    .line 539
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 546
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 547
    invoke-static {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->cloneParents(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    add-int/lit8 v3, v1, -0x1

    .line 549
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 550
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v1, v4, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKidObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_3

    .line 540
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Tag from the existing tag structure is flushed. Cannot add copied page tags."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 554
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 555
    invoke-static {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->cloneParents(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    if-eqz v3, :cond_6

    .line 559
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->MCR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 560
    new-instance v5, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;

    new-instance v6, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v7, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_2

    .line 562
    :cond_5
    new-instance v5, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    new-instance v6, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v7, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_2

    .line 565
    :cond_6
    new-instance v5, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;

    move-object v3, v2

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    new-instance v6, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v7, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    invoke-direct {v5, v3, v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcrNumber;-><init>(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    :goto_2
    add-int/lit8 v3, v1, -0x1

    .line 568
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 569
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v1, v4, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKidObject(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 571
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeHandler()Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/tagging/ParentTreeHandler;->registerMcr(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V

    :goto_3
    move v1, v3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 577
    :cond_8
    :goto_5
    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-ne p1, p0, :cond_9

    .line 578
    iget-object p0, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    iput-object p0, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 579
    iget-object p0, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    iput-object p0, p2, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    :cond_9
    return-void
.end method

.method private static separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-static {p0, v0, p1, v1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I

    move-result p0

    return p0
.end method

.method private static separateStructure(Lcom/itextpdf/kernel/pdf/PdfDocument;III)I
    .locals 8

    .line 192
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    if-gt v0, p1, :cond_b

    if-gt p1, p2, :cond_b

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-le p2, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-ne p2, p1, :cond_1

    return p3

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-ne p2, v1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p0

    return p0

    .line 202
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_6

    .line 204
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 207
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 208
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v3, v1}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->addAllParentsToSet(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;Ljava/util/Set;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 210
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 211
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p1, "Tag from the existing tag structure is flushed. Cannot add copied page tags."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 218
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKidsObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    sub-int/2addr p3, v0

    const/4 v2, 0x0

    move v3, v2

    .line 224
    :goto_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 225
    invoke-virtual {p2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    .line 226
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 229
    new-instance p3, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;

    invoke-direct {p3}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;-><init>()V

    .line 230
    iput-object v4, p3, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->ancestor:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 231
    sget-object v5, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->ignoreKeysForClone:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->clone(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 232
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 233
    iput-object v5, p3, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;->clone:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 235
    invoke-static {v4, v1, p3, p0}, Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier;->separateKids(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;Lcom/itextpdf/kernel/pdf/tagging/StructureTreeCopier$LastClonedAncestor;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 237
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 238
    invoke-virtual {v5, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 239
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move p3, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 244
    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_a

    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p2

    add-int/lit8 v1, p3, 0x1

    add-int/2addr v1, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2, v1, v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKidObject(ILcom/itextpdf/kernel/pdf/PdfDictionary;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    add-int/2addr p3, v0

    return p3

    :cond_b
    :goto_4
    const/4 p0, -0x1

    return p0
.end method

.method static shouldTableElementBeCopied(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 2

    .line 470
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TD:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TH:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->TR:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 471
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
