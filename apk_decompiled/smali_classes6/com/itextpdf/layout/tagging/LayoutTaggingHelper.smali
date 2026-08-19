.class public Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
.super Ljava/lang/Object;
.source "LayoutTaggingHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final RETVAL_NO_PARENT:I

.field private final RETVAL_PARENT_AND_KID_FINISHED:I

.field private autoTaggingPointerSavedPosition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private existingTagsDummies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/layout/tagging/TaggingDummyElement;",
            ">;"
        }
    .end annotation
.end field

.field private immediateFlush:Z

.field private kidsHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private parentHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;"
        }
    .end annotation
.end field

.field private taggingRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/ITaggingRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->RETVAL_NO_PARENT:I

    const/4 v0, -0x2

    .line 88
    iput v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->RETVAL_PARENT_AND_KID_FINISHED:I

    .line 91
    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 92
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 93
    iput-boolean p2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->immediateFlush:Z

    .line 95
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->autoTaggingPointerSavedPosition:Ljava/util/Map;

    .line 99
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    .line 100
    iget-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getTagStructureTargetVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerRules(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 102
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    return-void
.end method

.method private addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;IZ)V"
        }
    .end annotation

    .line 503
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 508
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    goto :goto_0

    :cond_1
    return-void

    .line 513
    :cond_2
    const-class v0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-nez p4, :cond_3

    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 515
    const-string p2, "Layout tagging hints addition failed: cannot add new kid hints to a parent which hint is already marked as finished. Consider using com.itextpdf.layout.tagging.LayoutTaggingHelper#replaceKidHint method for replacing not yet finished kid hint of a finished parent hint."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 519
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    :cond_4
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_6

    .line 525
    invoke-direct {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isTagAlreadyExistsForHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 526
    :goto_2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 527
    invoke-virtual {v4}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_3

    .line 531
    :cond_8
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    if-nez p4, :cond_a

    .line 538
    invoke-virtual {v4}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 539
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 540
    const-string v5, "Layout tagging hints addition failed: cannot add a hint that is already marked as finished. Consider using com.itextpdf.layout.tagging.LayoutTaggingHelper#moveKidHint method for moving already finished kid hint from not yet finished parent hint."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const/4 v5, -0x1

    if-le p3, v5, :cond_b

    add-int/lit8 v5, p3, 0x1

    .line 544
    invoke-interface {v1, p3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p3, v5

    goto :goto_4

    .line 546
    :cond_b
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :goto_4
    iget-object v5, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 551
    invoke-virtual {v4}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v5

    instance-of v5, v5, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v5, :cond_c

    .line 552
    new-instance v5, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v6, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    .line 554
    :cond_c
    invoke-static {v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 555
    invoke-virtual {p0, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 556
    invoke-virtual {v5}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v6

    instance-of v6, v6, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v6, :cond_d

    .line 557
    new-instance v6, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v7, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    .line 559
    :cond_d
    invoke-direct {p0, v2, v5}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    goto :goto_5

    .line 562
    :cond_e
    invoke-direct {p0, v2, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    goto/16 :goto_3

    .line 567
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    .line 568
    iget-object p2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public static addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 1

    .line 106
    invoke-interface {p1}, Lcom/itextpdf/layout/renderer/IRenderer;->getChildRenderers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    .line 112
    invoke-static {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addTreeHints(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createSingleTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z
    .locals 4

    .line 573
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 574
    const-class p1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 575
    const-string p2, "Attempt to create a tag for a hint which is already marked as finished, tag will not be created."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v1

    .line 579
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    .line 583
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    return v1

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v0

    .line 588
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 590
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v1

    .line 592
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 596
    invoke-virtual {v0, p2, v2}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v2

    .line 598
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 599
    invoke-direct {p0, v0, p2, v2, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getNearestNextSiblingTagIndex(Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/util/List;I)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 603
    :goto_0
    invoke-interface {v1}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(ILcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 604
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 605
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setRole(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 607
    :cond_3
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->assignWaitingState(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object p2

    .line 610
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 611
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method private finishDummyKids(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;)V"
        }
    .end annotation

    .line 656
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 657
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v1, :cond_1

    .line 659
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/IPropertyContainer;

    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 661
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 662
    :cond_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishDummyKids(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1

    const/16 v0, 0x6d

    .line 117
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    return-object p0
.end method

.method private getNearestNextSiblingTagIndex(Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;I)I"
        }
    .end annotation

    .line 690
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    .line 691
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_1

    .line 692
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    .line 693
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->isPointingToSameTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getIndexInParentKidsList()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public static getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-static {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;Z)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p0

    return-object p0
.end method

.method private static getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;Z)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 5

    const/16 v0, 0x6d

    .line 477
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/IPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    if-nez v1, :cond_5

    .line 480
    instance-of v1, p0, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v1, :cond_0

    .line 481
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    goto :goto_0

    .line 482
    :cond_0
    instance-of v1, p0, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v2

    instance-of v2, v2, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v2, :cond_1

    .line 483
    invoke-interface {v1}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 485
    :goto_0
    new-instance v2, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    instance-of v3, p0, Lcom/itextpdf/layout/element/IElement;

    invoke-direct {v2, v1, v3}, Lcom/itextpdf/layout/tagging/TaggingHintKey;-><init>(Lcom/itextpdf/layout/tagging/IAccessibleElement;Z)V

    if-eqz v1, :cond_2

    .line 486
    invoke-interface {v1}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Artifact"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    invoke-virtual {v2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setArtifact()V

    .line 488
    invoke-virtual {v2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    :cond_2
    if-eqz p1, :cond_4

    .line 492
    instance-of p1, v1, Lcom/itextpdf/layout/element/ILargeElement;

    if-eqz p1, :cond_3

    check-cast v1, Lcom/itextpdf/layout/element/ILargeElement;

    invoke-interface {v1}, Lcom/itextpdf/layout/element/ILargeElement;->isComplete()Z

    move-result p1

    if-nez p1, :cond_3

    .line 493
    invoke-interface {v1, v0, v2}, Lcom/itextpdf/layout/element/ILargeElement;->setProperty(ILjava/lang/Object;)V

    goto :goto_1

    .line 495
    :cond_3
    invoke-interface {p0, v0, v2}, Lcom/itextpdf/layout/IPropertyContainer;->setProperty(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    move-object v1, v2

    :cond_5
    return-object v1
.end method

.method private static isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object p0

    invoke-interface {p0}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSomeKidNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 3

    .line 767
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 768
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 771
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isSomeKidNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isSomeParentNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 756
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 759
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 762
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    goto :goto_0
.end method

.method private isTagAlreadyExistsForHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->isObjectAssociatedWithWaitingTag(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private moveKidTagIfCreated(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)V
    .locals 4

    .line 670
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 671
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v1

    .line 672
    invoke-virtual {v1, v0, p2}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 676
    :cond_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 677
    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 681
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 682
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getNearestNextSiblingTagIndex(Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/util/List;I)I

    move-result p1

    .line 684
    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setNextNewKidIndex(I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 685
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->relocate(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-void
.end method

.method private registerRules(Lcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 4

    .line 779
    new-instance v0, Lcom/itextpdf/layout/tagging/TableTaggingRule;

    invoke-direct {v0}, Lcom/itextpdf/layout/tagging/TableTaggingRule;-><init>()V

    .line 780
    const-string v1, "Table"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 781
    const-string v2, "TFoot"

    invoke-direct {p0, v2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 782
    const-string v3, "THead"

    invoke-direct {p0, v3, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 783
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_5:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result p1

    if-gez p1, :cond_0

    .line 784
    new-instance p1, Lcom/itextpdf/layout/tagging/TableTaggingPriorToOneFiveVersionRule;

    invoke-direct {p1}, Lcom/itextpdf/layout/tagging/TableTaggingPriorToOneFiveVersionRule;-><init>()V

    .line 785
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 786
    invoke-direct {p0, v3, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    .line 787
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V

    :cond_0
    return-void
.end method

.method private registerSingleRule(Ljava/lang/String;Lcom/itextpdf/layout/tagging/ITaggingRule;)V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private releaseHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Set;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;Z)V"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 711
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 713
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isSomeParentNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    if-eqz v1, :cond_1

    .line 718
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isSomeKidNotFinished(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 724
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 730
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    :cond_3
    if-eqz v1, :cond_5

    .line 733
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 734
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 736
    :cond_4
    iget-object p2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_5
    new-instance p2, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object p3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p2, p3}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 740
    iget-object p3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 741
    iget-object p3, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    .line 742
    iget-boolean p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->immediateFlush:Z

    if-eqz p1, :cond_7

    .line 743
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->flushParentsIfAllKidsFlushed()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    goto :goto_1

    .line 746
    :cond_6
    iget-object p2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method private removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 627
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v1

    .line 628
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p1, -0x2

    return p1

    .line 632
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result p1

    return p1
.end method

.method private removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 640
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 642
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 643
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 649
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 650
    iget-object p1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v2
.end method


# virtual methods
.method public addKidsHint(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getPointerStructElem(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 126
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/layout/tagging/TaggingDummyElement;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v0

    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->assignWaitingState(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V

    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 136
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;I)V

    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/itextpdf/layout/IPropertyContainer;",
            ">;I)V"
        }
    .end annotation

    .line 140
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/IPropertyContainer;

    .line 148
    instance-of v2, v1, Lcom/itextpdf/layout/renderer/AreaBreakRenderer;

    if-eqz v2, :cond_1

    return-void

    .line 151
    :cond_1
    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0, p1, v0, p3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;I)V

    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 157
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;I)V

    return-void
.end method

.method public addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V

    return-void
.end method

.method public createTag(Lcom/itextpdf/layout/renderer/IRenderer;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z
    .locals 3

    .line 350
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 353
    invoke-static {p1, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;Z)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    .line 355
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result p1

    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    .line 358
    iget-object p2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    :cond_2
    return p1
.end method

.method public createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z
    .locals 3

    .line 364
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 368
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createSingleTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 371
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object p1

    .line 372
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 373
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v1, :cond_1

    .line 374
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->createTag(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Z

    goto :goto_0

    :cond_2
    return p2
.end method

.method public finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V
    .locals 4

    .line 382
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 385
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isElementBasedFinishingOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of p1, p1, Lcom/itextpdf/layout/element/IElement;

    if-nez p1, :cond_1

    return-void

    .line 394
    :cond_1
    invoke-static {v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 395
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object p1

    .line 396
    invoke-interface {p1}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getOverriddenRole()Ljava/lang/String;

    move-result-object p1

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->taggingRules:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/ITaggingRule;

    if-eqz v2, :cond_3

    .line 404
    invoke-interface {v3, p0, v0}, Lcom/itextpdf/layout/tagging/ITaggingRule;->onTagFinish(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    if-nez v1, :cond_6

    return-void

    .line 412
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    :cond_7
    :goto_2
    return-void
.end method

.method public getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 251
    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 254
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAccessibleParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 276
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p1
.end method

.method public getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->kidsHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 239
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getParentHint(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 0

    .line 262
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    return-object p1
.end method

.method public getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    return-object p1
.end method

.method public getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public isArtifact(Lcom/itextpdf/layout/IPropertyContainer;)Z
    .locals 2

    .line 177
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isArtifact()Z

    move-result p1

    return p1

    .line 182
    :cond_0
    instance-of v0, p1, Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/layout/renderer/IRenderer;

    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v1, :cond_1

    .line 183
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getModelElement()Lcom/itextpdf/layout/IPropertyContainer;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    goto :goto_0

    .line 184
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    if-eqz v0, :cond_2

    .line 185
    check-cast p1, Lcom/itextpdf/layout/tagging/IAccessibleElement;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 188
    invoke-interface {p1}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Artifact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public markArtifactHint(Lcom/itextpdf/layout/IPropertyContainer;)V
    .locals 0

    .line 195
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    return-void
.end method

.method public markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V
    .locals 3

    .line 200
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setArtifact()V

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setFinished()V

    .line 202
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 203
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->tryMovePointerToWaitingTag(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-class v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 205
    const-string v2, "A layout tagging hint for which an actual tag was already created in tags structure is marked as artifact. Existing tag will be left in the tags tree."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeWaitingState(Ljava/lang/Object;)Z

    .line 208
    iget-boolean v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->immediateFlush:Z

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->flushParentsIfAllKidsFlushed()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 214
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->markArtifactHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    return-void
.end method

.method public moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I
    .locals 1

    const/4 v0, -0x1

    .line 450
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;I)I

    move-result p1

    return p1
.end method

.method public moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;I)I
    .locals 4

    .line 454
    invoke-virtual {p2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v0

    const-class v1, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 455
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 456
    const-string p2, "Layout tagging hints modification failed: cannot move kid hint to a parent that is already marked as finished."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v2

    .line 460
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result v0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 462
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V

    return v0

    .line 463
    :cond_2
    :goto_0
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 464
    const-string p2, "Layout tagging hints modification failed: cannot move kid hint for which both itself and it\'s parent are already marked as finished."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v2
.end method

.method public releaseAllHints()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    .line 320
    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishTaggingHint(Lcom/itextpdf/layout/IPropertyContainer;)V

    .line 321
    invoke-static {v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishDummyKids(Ljava/util/List;)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->existingTagsDummies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 325
    invoke-virtual {p0}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseFinishedHints()V

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 328
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 333
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 342
    invoke-direct {p0, v1, v2, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Set;Z)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public releaseFinishedHints()V
    .locals 9

    .line 281
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->parentHints:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 288
    invoke-virtual {v2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 291
    :cond_2
    invoke-virtual {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->finishDummyKids(Ljava/util/List;)V

    goto :goto_1

    .line 294
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 295
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 296
    invoke-static {v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->isNonAccessibleHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 297
    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v3

    .line 299
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_2
    move v6, v5

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 300
    invoke-virtual {v7}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    move v6, v4

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_5

    .line 304
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 311
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 312
    invoke-virtual {v2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 313
    invoke-direct {p0, v2, v1, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->releaseHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Set;Z)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public replaceKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/tagging/TaggingHintKey;",
            ">;)I"
        }
    .end annotation

    .line 416
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v2

    const-class v3, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;

    if-eqz v2, :cond_1

    .line 421
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 422
    const-string p2, "Layout tagging hints modification failed: cannot replace a kid hint that is already marked as finished."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v1

    .line 430
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result p1

    .line 432
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 434
    invoke-direct {p0, v4}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->removeParentHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_3

    if-ne v5, v1, :cond_2

    .line 436
    invoke-virtual {v4}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 441
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    :cond_3
    :goto_1
    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 438
    const-string v5, "Layout tagging hints modification failed: cannot move kid hint for which both itself and it\'s parent are already marked as finished."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    .line 444
    invoke-direct {p0, v0, v2, p1, p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;IZ)V

    return p1
.end method

.method public restoreAutoTaggingPointerPosition(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->autoTaggingPointerSavedPosition:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToPointer(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    :cond_0
    return-void
.end method

.method public setRoleHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-static {p1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->setOverriddenRole(Ljava/lang/String;)V

    return-void
.end method

.method public useAutoTaggingPointerAndRememberItsPosition(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    .line 222
    iget-object v2, p0, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->autoTaggingPointerSavedPosition:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
