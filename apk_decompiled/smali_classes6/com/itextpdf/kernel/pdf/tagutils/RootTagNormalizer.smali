.class Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;
.super Ljava/lang/Object;
.source "RootTagNormalizer.java"


# instance fields
.field private context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;


# direct methods
.method constructor <init>(Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 67
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 68
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void
.end method

.method private addStructTreeRootKidsToTheRootTag(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    .line 125
    check-cast v4, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 126
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    if-ne v5, v6, :cond_1

    move v3, v0

    goto :goto_0

    .line 134
    :cond_1
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Document:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v5

    .line 138
    const-string v6, "http://iso.org/pdf/ssn"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "http://iso.org/pdf2/ssn"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v1

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    .line 142
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v6, v2, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(ILcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v5, :cond_5

    .line 143
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    add-int/2addr v2, v6

    goto :goto_4

    .line 145
    :cond_6
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->addKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    :goto_4
    if-eqz v5, :cond_0

    .line 148
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->removeOldRoot(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method private createNewRootTag()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    const-string v2, "Document"

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->logCreatedRootTagHasMappingIssue(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;)V

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Document:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfName;)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 94
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 96
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->ensureNamespaceRegistered(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    :cond_2
    return-void
.end method

.method private ensureExistingRootTagIsDocument()V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getRoleMappingResolver(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Document"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->resolveMappingToStandardOrDomainSpecificRole(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->currentRoleIsStandard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 109
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->logCreatedRootTagHasMappingIssue(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;)V

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    .line 111
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->wrapAllKidsInTag(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Document:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setRole(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 113
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    .line 115
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->getDocumentDefaultNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->ensureNamespaceRegistered(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private logCreatedRootTagHasMappingIssue(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;)V
    .locals 5

    .line 178
    const-string v0, "\" namespace"

    const-string v1, " in \""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    const-string p1, ""

    :goto_0
    if-eqz p2, :cond_1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " to \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://iso.org/pdf/ssn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;->getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 189
    :cond_1
    const-string v2, " to not standard role"

    .line 192
    :cond_2
    :goto_1
    const-class p2, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 193
    const-string v0, "Created root tag has role mapping: \"/Document\" role{0} is mapped{1}. Resulting tag structure might have invalid root tag."

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method private removeOldRoot(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)V
    .locals 2

    .line 170
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 172
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->setCurrentStructElem(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->removeTag()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    return-void
.end method

.method private wrapAllKidsInTag(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)V
    .locals 3

    .line 154
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 156
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p2, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->addTag(ILjava/lang/String;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    .line 158
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->context:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->targetTagStructureVersionIs2()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->getProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->setNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    .line 162
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    invoke-direct {p1, v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;-><init>(Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)V

    .line 163
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->moveToParent()Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    :goto_0
    if-ge p2, v0, :cond_1

    const/4 p3, 0x1

    .line 165
    invoke-virtual {v1, p3, p1}, Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;->relocateKid(ILcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;)Lcom/itextpdf/kernel/pdf/tagutils/TagTreePointer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method makeSingleStandardRootTag(Ljava/util/List;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 73
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->createNewRootTag()V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 77
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->addKid(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    .line 78
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->ensureExistingRootTagIsDocument()V

    .line 81
    :goto_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->addStructTreeRootKidsToTheRootTag(Ljava/util/List;)V

    .line 83
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RootTagNormalizer;->rootTagElement:Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    return-object p1
.end method
