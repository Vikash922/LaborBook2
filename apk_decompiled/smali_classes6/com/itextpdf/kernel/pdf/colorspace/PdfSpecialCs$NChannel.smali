.class public Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;
.source "PdfSpecialCs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NChannel"
.end annotation


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$DeviceN;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 280
    invoke-static {p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;->getNChannelCsArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/function/IPdfFunction;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;",
            "Lcom/itextpdf/kernel/pdf/function/IPdfFunction;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .line 314
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 315
    invoke-interface {p3}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getAsPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 314
    invoke-direct {p0, v0, p1, v2, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 316
    invoke-interface {p3}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getInputSize()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 317
    invoke-interface {p3}, Lcom/itextpdf/kernel/pdf/function/IPdfFunction;->getOutputSize()I

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 318
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Function is not compatible with ColorSpace."

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/function/PdfFunction;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;",
            "Lcom/itextpdf/kernel/pdf/function/PdfFunction;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {p0, v0, p1, v2, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 297
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getInputSize()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 298
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/function/PdfFunction;->getOutputSize()I

    move-result p1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    .line 299
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Function is not compatible with ColorSpace."

    invoke-direct {p1, p2, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method protected static getNChannelCsArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 0

    .line 326
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$NChannel;->getDeviceNCsArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p0

    .line 327
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object p0
.end method
