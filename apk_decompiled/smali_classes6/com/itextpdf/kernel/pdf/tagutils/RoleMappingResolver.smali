.class Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;
.super Ljava/lang/Object;
.source "RoleMappingResolver.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/tagutils/IRoleMappingResolver;


# instance fields
.field private currRole:Lcom/itextpdf/kernel/pdf/PdfName;

.field private roleMap:Lcom/itextpdf/kernel/pdf/PdfDictionary;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->convertRoleToPdfName(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 60
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getRoleMap()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->roleMap:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-void
.end method


# virtual methods
.method public currentRoleIsStandard()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://iso.org/pdf/ssn"

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/pdf/tagging/StandardNamespaces;->roleBelongsToStandardNamespace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public currentRoleShallBeMappedToStandard()Z
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->currentRoleIsStandard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNamespace()Lcom/itextpdf/kernel/pdf/tagging/PdfNamespace;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveNextMapping()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->roleMap:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/tagutils/RoleMappingResolver;->currRole:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v0, 0x1

    return v0
.end method
