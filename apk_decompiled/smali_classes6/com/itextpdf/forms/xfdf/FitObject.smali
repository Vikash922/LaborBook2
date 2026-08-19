.class public Lcom/itextpdf/forms/xfdf/FitObject;
.super Ljava/lang/Object;
.source "FitObject.java"


# instance fields
.field private bottom:F

.field private left:F

.field private page:Lcom/itextpdf/kernel/pdf/PdfObject;

.field private right:F

.field private top:F

.field private zoom:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->page:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void

    .line 90
    :cond_0
    new-instance p1, Lcom/itextpdf/forms/exceptions/XfdfException;

    const-string v0, "Required Page attribute is missing."

    invoke-direct {p1, v0}, Lcom/itextpdf/forms/exceptions/XfdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 149
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->bottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->left:F

    return v0
.end method

.method public getPage()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->page:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0
.end method

.method public getRight()F
    .locals 1

    .line 169
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->right:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->top:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/itextpdf/forms/xfdf/FitObject;->zoom:F

    return v0
.end method

.method public setBottom(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0

    .line 159
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->bottom:F

    return-object p0
.end method

.method public setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0

    .line 139
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->left:F

    return-object p0
.end method

.method public setRight(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0

    .line 179
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->right:F

    return-object p0
.end method

.method public setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0

    .line 120
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->top:F

    return-object p0
.end method

.method public setZoom(F)Lcom/itextpdf/forms/xfdf/FitObject;
    .locals 0

    .line 201
    iput p1, p0, Lcom/itextpdf/forms/xfdf/FitObject;->zoom:F

    return-object p0
.end method
