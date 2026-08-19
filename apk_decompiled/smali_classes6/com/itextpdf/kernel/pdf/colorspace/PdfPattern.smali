.class public abstract Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;,
        Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;
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
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public static getPatternInstance(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;
    .locals 3

    .line 81
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->PatternType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_0

    .line 83
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;

    check-cast p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Tiling;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 85
    new-instance v0, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern$Shading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v0

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "pdfObject"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public flush()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    return-void
.end method

.method public getMatrix()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMatrix(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfPattern;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method
