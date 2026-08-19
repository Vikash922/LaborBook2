.class public Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
.super Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;
.source "PdfStructureDestination.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method private add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 4

    .line 131
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_0
    return-object p0
.end method

.method private add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object p0
.end method

.method private add(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 1

    .line 138
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-object p0

    .line 139
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Structure element referenced by a structure destination shall be an indirect object."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 1

    .line 102
    new-instance v0, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;-><init>()V

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    invoke-direct {p0, p5}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    invoke-direct {p0, p6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->add(F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFit(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 74
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fit:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitB(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 90
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitB:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitBH(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 94
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitBV(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 98
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitH(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 78
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitH:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitR(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;FFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 86
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitR:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createFitV(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;F)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 82
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FitV:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method

.method public static createXYZ(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;FFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;
    .locals 7

    .line 70
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    const/high16 v3, 0x7fc00000    # Float.NaN

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->create(Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;Lcom/itextpdf/kernel/pdf/PdfName;FFFFF)Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDestinationPage(Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 3
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

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/navigation/PdfStructureDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 109
    new-instance v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 111
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;->getKids()Ljava/util/List;

    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/IStructureNode;

    goto :goto_1

    :cond_0
    move-object p1, v2

    .line 113
    :goto_1
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    if-eqz v1, :cond_1

    .line 114
    check-cast p1, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getPageObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    if-eqz v1, :cond_2

    .line 116
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/tagging/PdfStructElem;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
