.class public Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfCollectionItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field private schema:Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;->getField(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/collection/PdfCollectionField;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionField;->getValue(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public addItem(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDate;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;->getField(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/collection/PdfCollectionField;

    move-result-object v0

    .line 87
    iget v0, v0, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionField;->subType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDate;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method

.method public addItem(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfNumber;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->schema:Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionSchema;->getField(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/collection/PdfCollectionField;

    move-result-object v0

    .line 100
    iget v0, v0, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionField;->subType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;
    .locals 3

    .line 114
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 120
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 121
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v2, p2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 122
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollectionItem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0

    .line 117
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "You must set a value before adding a prefix."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
