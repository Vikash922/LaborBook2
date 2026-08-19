.class public Lcom/itextpdf/kernel/pdf/PdfAnnotationBorder;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfAnnotationBorder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfAnnotationBorder;-><init>(FFFLcom/itextpdf/kernel/pdf/PdfDashPattern;)V

    return-void
.end method

.method public constructor <init>(FFFLcom/itextpdf/kernel/pdf/PdfDashPattern;)V
    .locals 3

    .line 84
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    if-eqz p4, :cond_2

    .line 86
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 87
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfAnnotationBorder;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 88
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->getDash()F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_0

    .line 89
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->getDash()F

    move-result v0

    float-to-double v0, v0

    invoke-direct {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 91
    :cond_0
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->getGap()F

    move-result p2

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_1

    .line 92
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->getGap()F

    move-result v0

    float-to-double v0, v0

    invoke-direct {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 94
    :cond_1
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->getPhase()F

    move-result p1

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfAnnotationBorder;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfDashPattern;->getPhase()F

    move-result p3

    float-to-double p3, p3

    invoke-direct {p2, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
