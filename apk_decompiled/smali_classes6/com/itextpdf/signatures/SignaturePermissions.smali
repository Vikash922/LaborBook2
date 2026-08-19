.class public Lcom/itextpdf/signatures/SignaturePermissions;
.super Ljava/lang/Object;
.source "SignaturePermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;
    }
.end annotation


# instance fields
.field annotationsAllowed:Z

.field certification:Z

.field fieldLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;",
            ">;"
        }
    .end annotation
.end field

.field fillInAllowed:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/signatures/SignaturePermissions;)V
    .locals 7

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->certification:Z

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    .line 105
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 119
    iget-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    invoke-virtual {p2}, Lcom/itextpdf/signatures/SignaturePermissions;->isAnnotationsAllowed()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    .line 120
    iget-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    invoke-virtual {p2}, Lcom/itextpdf/signatures/SignaturePermissions;->isFillInAllowed()Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    .line 121
    iget-object v2, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    invoke-virtual {p2}, Lcom/itextpdf/signatures/SignaturePermissions;->getFieldLocks()Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_0
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_6

    move p2, v0

    .line 125
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 126
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 127
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 128
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->TransformMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignaturePermissions;->certification:Z

    .line 131
    :cond_1
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Action:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v4, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    new-instance v5, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    invoke-direct {v5, p0, v2, v6}, Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;-><init>(Lcom/itextpdf/signatures/SignaturePermissions;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    goto :goto_1

    .line 143
    :cond_4
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    .line 145
    :cond_5
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getFieldLocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/SignaturePermissions$FieldLock;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fieldLocks:Ljava/util/List;

    return-object v0
.end method

.method public isAnnotationsAllowed()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->annotationsAllowed:Z

    return v0
.end method

.method public isCertification()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->certification:Z

    return v0
.end method

.method public isFillInAllowed()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/itextpdf/signatures/SignaturePermissions;->fillInAllowed:Z

    return v0
.end method
