.class Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;
.super Ljava/lang/Object;
.source "RoleMappingResolverPdf2.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;


# instance fields
.field private currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

.field private currRole:Lcom/itextpdf/kernel/pdf/PdfName;

.field private defaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 66
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 68
    invoke-static {}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->getDefault()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p2

    .line 70
    new-instance p3, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-direct {p3, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->setNamespaceRoleMap(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->defaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    .line 72
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    if-nez p2, :cond_0

    .line 73
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    :cond_0
    return-void
.end method


# virtual methods
.method public currentRoleIsStandard()Z
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://iso.org/pdf/ssn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 88
    invoke-static {v0, v2}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->roleBelongsToStandardNamespace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "http://iso.org/pdf2/ssn"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-static {v0, v5}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->roleBelongsToStandardNamespace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    return v3
.end method

.method public currentRoleShallBeMappedToStandard()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currentRoleIsStandard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->isKnownDomainSpecificNamespace(Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveNextMapping()Z
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;->getNamespaceRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 110
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 111
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->defaultNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    move v2, v4

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 119
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 120
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    move v2, v4

    :cond_4
    if-eqz v2, :cond_5

    .line 125
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 126
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolverPdf2;->currNamespace:Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;

    :cond_5
    :goto_2
    return v2
.end method
