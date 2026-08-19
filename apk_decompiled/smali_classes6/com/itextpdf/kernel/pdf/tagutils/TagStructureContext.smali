.class public Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
.super Ljava/lang/Object;
.source "TagStructureContext.java"


# static fields
.field private static final ALLOWED_ROOT_TAG_ROLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected autoTaggingPointer:Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private documentDefaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

.field private forbidUnknownRoles:Z

.field private nameToNamespace:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private namespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

.field private tagStructureTargetVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field private waitingTagsManager:Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 95
    const-string v1, "Document"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v1, "Part"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "Art"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "Sect"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "Div"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->ALLOWED_ROOT_TAG_ROLES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 125
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 141
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->waitingTagsManager:Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    .line 145
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->namespaces:Ljava/util/Set;

    .line 146
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->nameToNamespace:Ljava/util/Map;

    .line 148
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->tagStructureTargetVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->forbidUnknownRoles:Z

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->initRegisteredNamespaces()V

    .line 153
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->setNamespaceForNewTagsBasedOnExistingRoot()V

    :cond_0
    return-void

    .line 142
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Must be a tagged document."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private actualizeNamespacesInStructTreeRoot()V
    .locals 5

    .line 657
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->namespaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 658
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getNamespacesObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 660
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->namespaces:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    .line 661
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 662
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 664
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 665
    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 667
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 668
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :cond_2
    return-void
.end method

.method private composeExceptionBasedOnNamespacePresence(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 703
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 705
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object p3

    .line 706
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 709
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " obj)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 712
    :cond_1
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private composeInvalidRoleException(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Ljava/lang/String;
    .locals 2

    .line 637
    const-string v0, "Role \"{0}\" is not mapped to any standard role."

    const-string v1, "Role \"{0}\" in namespace {1} is not mapped to any standard role."

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->composeExceptionBasedOnNamespacePresence(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private composeTooMuchTransitiveMappingsException(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Ljava/lang/String;
    .locals 2

    .line 643
    const-string v0, "Cannot resolve \"{0}\" role mapping to standard role, because of the too much transitive mappings."

    const-string v1, "Cannot resolve \"{0}\" role in {1} namespace mapping to standard role, because of the too much transitive mappings."

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->composeExceptionBasedOnNamespacePresence(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initRegisteredNamespaces()V
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 651
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->namespaces:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->nameToNamespace:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isRoleAllowedToBeRoot(Ljava/lang/String;)Z
    .locals 1

    .line 604
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const-string v0, "Document"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 607
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->ALLOWED_ROOT_TAG_ROLES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private removePageTagFromParent(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V
    .locals 2

    .line 674
    instance-of v0, p2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v0, :cond_2

    .line 675
    move-object v0, p2

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 676
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->removeKid(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)I

    .line 678
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 679
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->waitingTagsManager:Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->getObjForStructDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;->getKids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 680
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v1

    instance-of v1, v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-nez v1, :cond_2

    .line 681
    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->removePageTagFromParent(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V

    .line 682
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 686
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    goto :goto_0

    .line 690
    :cond_0
    instance-of p1, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-nez p1, :cond_1

    goto :goto_0

    .line 691
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Cannot remove tag, because its parent is flushed."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method private setNamespaceForNewTagsBasedOnExistingRoot()V
    .locals 5

    .line 612
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKids()Ljava/util/List;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "http://iso.org/pdf2/ssn"

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 614
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 615
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v3

    if-nez v3, :cond_2

    .line 618
    :cond_0
    const-class v3, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 620
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 621
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 623
    :cond_1
    invoke-static {}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->getDefault()Ljava/lang/String;

    move-result-object v4

    .line 626
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 625
    const-string v4, "Existing tag structure of the document has a root of \"{0}\" role in \"{1}\" namespace that is not mapped to the standard role."

    invoke-static {v4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 628
    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://iso.org/pdf/ssn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 629
    :cond_3
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->fetchNamespace(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->documentDefaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    goto :goto_1

    .line 632
    :cond_4
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->fetchNamespace(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->documentDefaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public checkIfRoleShallBeMappedToStandardRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createPointerForStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 524
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-object v0
.end method

.method ensureNamespaceRegistered(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 539
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 540
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->namespaces:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->namespaces:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->nameToNamespace:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public fetchNamespace(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->nameToNamespace:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->nameToNamespace:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public flushPageTags(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 444
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 445
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->flushParentIfBelongsToPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method flushParentIfBelongsToPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 3

    .line 572
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->waitingTagsManager:Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->getObjForStructDict(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 573
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    instance-of v0, v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 580
    instance-of v2, v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz v2, :cond_2

    .line 581
    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 586
    :cond_2
    instance-of v1, v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 595
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v0

    .line 596
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->flush()V

    .line 597
    instance-of p1, v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz p1, :cond_4

    .line 598
    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->flushParentIfBelongsToPage(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getAutoTaggingPointer()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->autoTaggingPointer:Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->autoTaggingPointer:Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->autoTaggingPointer:Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-object v0
.end method

.method getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->documentDefaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-object v0
.end method

.method public getPointerStructElem(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 0

    .line 513
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getCurrentStructElem()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object p1

    return-object p1
.end method

.method public getRoleMappingResolver(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRoleMappingResolver(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object p1

    return-object p1
.end method

.method public getRoleMappingResolver(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-object v0

    .line 296
    :cond_0
    new-instance p2, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-object p2
.end method

.method getRootTag()Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->normalizeDocumentRootTag()V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    return-object v0
.end method

.method public getTagStructureTargetVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->tagStructureTargetVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    return-object v0
.end method

.method public getWaitingTagsManager()Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->waitingTagsManager:Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    return-object v0
.end method

.method public normalizeDocumentRootTag()V
    .locals 6

    .line 472
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->forbidUnknownRoles:Z

    const/4 v1, 0x0

    .line 473
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->forbidUnknownRoles:Z

    .line 475
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getKids()Ljava/util/List;

    move-result-object v2

    .line 477
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 478
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 479
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 482
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    .line 483
    invoke-interface {v3}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    invoke-interface {v3}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->isRoleAllowedToBeRoot(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    goto :goto_1

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->K:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 488
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, p0, v3, v4}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->makeSingleStandardRootTag(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 490
    :goto_1
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->forbidUnknownRoles:Z

    return-void
.end method

.method public prepareToDocumentClosing()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->waitingTagsManager:Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/WaitingTagsManager;->removeAllWaitingStates()V

    .line 499
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->actualizeNamespacesInStructTreeRoot()V

    return-void
.end method

.method public removeAnnotationTag(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 4

    .line 359
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 361
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 363
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->findObjRefByStructParentIndex(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfObjRef;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 367
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->removeKid(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)I

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 371
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StructParent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 372
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v2, :cond_1

    .line 375
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public removeContentItem(Lcom/itextpdf/kernel/pdf/PdfPage;I)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->findMcrByMcid(Lcom/itextpdf/kernel/pdf/PdfDictionary;I)Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 397
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 398
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->removeKid(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)I

    .line 399
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object p1

    return-object p1
.end method

.method public removePageTags(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    .line 412
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPageMarkedContentReferences(Lcom/itextpdf/kernel/pdf/PdfPage;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    .line 417
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getParent()Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->removePageTagFromParent(Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;
    .locals 4

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRoleMappingResolver(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->resolveNextMapping()Z

    const/4 v1, 0x0

    .line 335
    :cond_0
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleShallBeMappedToStandard()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-le v1, v3, :cond_1

    .line 337
    const-class v0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->composeTooMuchTransitiveMappingsException(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-object v2

    .line 341
    :cond_1
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->resolveNextMapping()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_2
    return-object v0
.end method

.method public setDocumentDefaultNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->documentDefaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-object p0
.end method

.method public setForbidUnknownRoles(Z)Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->forbidUnknownRoles:Z

    return-object p0
.end method

.method targetTagStructureVersionIs2()Z
    .locals 2

    .line 568
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->tagStructureTargetVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method throwExceptionIfRoleIsInvalid(Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V
    .locals 1

    .line 548
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 552
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->throwExceptionIfRoleIsInvalid(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    return-void
.end method

.method throwExceptionIfRoleIsInvalid(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V
    .locals 1

    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->checkIfRoleShallBeMappedToStandardRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->composeInvalidRoleException(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Ljava/lang/String;

    move-result-object p1

    .line 558
    iget-boolean p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->forbidUnknownRoles:Z

    if-nez p2, :cond_0

    .line 561
    const-class p2, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 562
    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_0
    new-instance p2, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
