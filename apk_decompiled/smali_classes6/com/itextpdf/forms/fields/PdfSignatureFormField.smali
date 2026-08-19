.class public Lcom/itextpdf/forms/fields/PdfSignatureFormField;
.super Lcom/itextpdf/forms/fields/PdfFormField;
.source "PdfSignatureFormField.java"


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method


# virtual methods
.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 78
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getSigFieldLockDictionary()Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Lock:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v1, Lcom/itextpdf/forms/PdfSigFieldLock;

    invoke-direct {v1, v0}, Lcom/itextpdf/forms/PdfSigFieldLock;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public setValue(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .locals 1

    .line 88
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    return-object p1
.end method
