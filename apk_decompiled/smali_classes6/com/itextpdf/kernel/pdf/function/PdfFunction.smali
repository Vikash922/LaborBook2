.class public Lcom/itextpdf/kernel/pdf/function/PdfFunction;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type4;,
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;,
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;,
        Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public static makeFunction(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/function/PdfFunction;
    .locals 2

    .line 254
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 262
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type4;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type4;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    .line 260
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type3;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 258
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 256
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type0;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type0;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0
.end method


# virtual methods
.method public checkCompatibilityWithColorSpace(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getInputSize()I
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOutputSize()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Range:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FunctionType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
