.class public Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
.super Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
.source "PdfExplicitRemoteGoToDestination.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 4

    .line 196
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_0
    return-object p0
.end method

.method private add(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object p0
.end method

.method private add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object p0
.end method

.method public static create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 1

    .line 187
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;-><init>()V

    add-int/lit8 p0, p0, -0x1

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->add(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    invoke-direct {p0, p5}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    invoke-direct {p0, p6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFit(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 95
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fit:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitB(I)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 146
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitB:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitBH(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 158
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    move v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitBV(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 170
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitH(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 107
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    move v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitR(IFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 135
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v6, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitV(IF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 119
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitV:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createXYZ(IFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;
    .locals 7

    .line 84
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move v0, p0

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->create(ILcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDestinationPage(Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfObject;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfExplicitRemoteGoToDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
