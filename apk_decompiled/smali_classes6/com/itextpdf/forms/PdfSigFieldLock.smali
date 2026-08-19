.class public Lcom/itextpdf/forms/PdfSigFieldLock;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfSigFieldLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;,
        Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/PdfSigFieldLock;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 74
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->SigFieldLock:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method public static getLockActionValue(Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 107
    sget-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction:[I

    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 115
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->All:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 113
    :cond_0
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Exclude:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 111
    :cond_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->Include:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0

    .line 109
    :cond_2
    sget-object p0, Lcom/itextpdf/kernel/pdf/PdfName;->All:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object p0
.end method

.method public static getLockPermission(Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;)Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 1

    .line 120
    sget-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions:[I

    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 128
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object p0

    .line 126
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object p0

    .line 124
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object p0

    .line 122
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDocumentPermissions(Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;)Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/forms/PdfSigFieldLock;->getLockPermission(Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public varargs setFieldLock(Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;[Ljava/lang/String;)Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 5

    .line 97
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 98
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 99
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Action:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/forms/PdfSigFieldLock;->getLockActionValue(Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 102
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method
