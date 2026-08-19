.class public Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;
.super Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
.source "PdfShading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axial"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;FF[FFF[F)V
    .locals 2

    .line 380
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    .line 382
    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setCoords(FFFF)V

    .line 383
    new-instance v0, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;

    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array p1, v1, [F

    fill-array-data p1, :array_0

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance p5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p5, p4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance p6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p6, p7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    new-instance p7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 p1, 0x1

    invoke-direct {p7, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    const/4 p3, 0x0

    move-object p1, v0

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    invoke-direct/range {p1 .. p6}, Lcom/itextpdf/kernel/pdf/function/PdfFunction$Type2;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfNumber;)V

    .line 385
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setFunction(Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;FF[FFF[F[Z)V
    .locals 0

    .line 403
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;FF[FFF[F)V

    if-eqz p8, :cond_0

    .line 405
    array-length p1, p8

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 408
    aget-boolean p1, p8, p1

    const/4 p2, 0x1

    aget-boolean p2, p8, p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setExtend(ZZ)V

    return-void

    .line 406
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "extend"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V
    .locals 2

    .line 438
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;ILcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;)V

    .line 439
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setCoords(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    if-eqz p3, :cond_0

    .line 441
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setDomain(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 443
    :cond_0
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setFunction(Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;-><init>(Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/function/PdfFunction;)V

    return-void
.end method


# virtual methods
.method public getCoords()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 454
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Coords:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    .line 491
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setDomain(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getExtend()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Extend:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([Z)V

    .line 528
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setExtend(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public setCoords(FFFF)V
    .locals 3

    .line 466
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    const/4 p1, 0x3

    aput p4, v1, p1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setCoords(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method

.method public setCoords(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2

    .line 477
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Coords:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 478
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method

.method public setDomain(FF)V
    .locals 3

    .line 504
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setDomain(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method

.method public setDomain(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Domain:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 515
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method

.method public setExtend(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2

    .line 551
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Extend:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 552
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-void
.end method

.method public setExtend(ZZ)V
    .locals 3

    .line 540
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    const/4 p1, 0x1

    aput-boolean p2, v1, p1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([Z)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/colorspace/PdfShading$Axial;->setExtend(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method
